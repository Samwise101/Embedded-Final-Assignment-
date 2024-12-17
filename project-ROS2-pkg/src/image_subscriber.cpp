#include <iostream>
#include <vector>
#include <stdio.h>
#include "image_subscriber.hpp"


ImageSubscriber::ImageSubscriber() : Node("image_subscriber") {
	int status = XNn_inference_Initialize(&this->ip_inst, "nn_inference");
	if (status != XST_SUCCESS) {
		RCLCPP_ERROR(this->get_logger(), "Error: Could not initialize the IP core.");
		return;
	}
	else{
		std::cout << "Image processor initiated\n";
	}

	RCLCPP_INFO(this->get_logger(), "Initializing ImageSubscriber node");

	RCLCPP_INFO(this->get_logger(), "Starting camera subscription");

	camera_subscription_ = this->create_subscription<sensor_msgs::msg::Image>(
				"/image_raw",
				10,
				std::bind(&ImageSubscriber::onImageMsg, this, std::placeholders::_1));

	publisher_ = this->create_publisher<sensor_msgs::msg::Image>("/processed_image", 10);

	BRAM bram_test(0, 4);
	uint32_t write_value = 0xFAFAFAFA; // Example value
	bram_test[0] = write_value;

        // Read the value back from BRAM
    uint32_t read_value = bram_test[0];
	std::cout << "Read value: 0x" << std::hex << read_value << std::endl;
}

ImageSubscriber::~ImageSubscriber()
{
	RCLCPP_INFO(this->get_logger(), "Subscriber out");
}

void ImageSubscriber::flattenImage(cv::Mat& inputImage, uint8_t* image_flat) {
    try {
        // Validate the input matrix dimensions
        if (inputImage.empty()) {
            throw std::runtime_error("Input image is empty.");
        }
        if (inputImage.rows != IMAGE_ROW || inputImage.cols != IMAGE_ROW) {
            throw std::invalid_argument("Input image dimensions do not match expected size.");
        }

        // Flatten the image and store each pixel as a byte
        int count = 0;
        for (int i = 0; i < IMAGE_ROW; i++) {
            for (int j = 0; j < IMAGE_ROW; j++) {
                uint8_t pixel_value = inputImage.at<uint8_t>(i,j); // Get pixel value (byte)
                image_flat[count] = pixel_value;
                count++;
            }
        }
    }
    catch (...) {
        std::cerr << "Unknown exception occurred in flattenImage!" << std::endl;
    }
}

uint32_t ImageSubscriber::runNN(cv::Mat& inputImage) {
    try {
        // Step 1: Flatten the image into a byte array
        uint8_t flat_image[DATA_SIZE];
        flattenImage(inputImage, flat_image);

        // Step 2: Wait until the hardware accelerator is idle
        while (!XNn_inference_IsIdle(&this->ip_inst)) {
            std::cout << "Waiting for hardware to be idle..." << std::endl;
        }

        // Step 3: Write the flattened image data to hardware (as bytes)
        std::cout << "Writing image data to hardware..." << std::endl;
        XNn_inference_Write_input_img_Bytes(&this->ip_inst, 0, reinterpret_cast<char*>(flat_image), DATA_SIZE);

        // Step 4: Check if the hardware accelerator is ready and start it
        if (XNn_inference_IsReady(&this->ip_inst)) {
            std::cout << "Starting inference..." << std::endl;
            XNn_inference_Start(&this->ip_inst);
        }

        // Step 5: Wait until inference completes
        while (!XNn_inference_IsIdle(&this->ip_inst)) {
            std::cout << "Waiting for inference to complete..." << std::endl;
        }

        // Step 6: Read the result from BRAM
        BRAM bram_test(0, 4);
        uint32_t read_value = bram_test[0];
        std::cout << "Read value from BRAM: 0x" << std::hex << read_value << std::endl;

        return read_value;
    }
    catch (...) {
        std::cerr << "Unknown exception occurred!" << std::endl;
        return -1; // Error code
    }
}



void ImageSubscriber::onImageMsg(const sensor_msgs::msg::Image::SharedPtr msg) {
	RCLCPP_INFO(this->get_logger(), "Received image!");

	cv_bridge::CvImagePtr cv_ptr = cv_bridge::toCvCopy(msg, "rgb8");
	cv::Mat img = cv_ptr->image;
	
	cv::Mat grey_scale;
	cv::cvtColor(img, grey_scale, cv::COLOR_RGB2GRAY);
	cv::Mat resized;
	resize(grey_scale, resized, cv::Size(IMAGE_ROW, IMAGE_ROW), cv::INTER_LINEAR);

	std::cout << ">> APPLYING CONVOLUTION" << std::endl;
	uint32_t prediction = runNN(resized);

 	std::cout << "Prediction = " << prediction << std::endl;
    
    send_position_command(prediction);  // Send initial position
    
    // Publish the NN result directly to the 'set_position' topic
    RCLCPP_INFO(this->get_logger(), "Publishing to /set_position topic!");



	RCLCPP_INFO(this->get_logger(), "Publishing to topic!");
	sensor_msgs::msg::Image::SharedPtr img_msg = cv_bridge::CvImage(std_msgs::msg::Header(), "mono8", resized).toImageMsg();
	publisher_->publish(*img_msg.get());

}

void send_position_command(int position)
{
    // Create the ROS 2 topic command with the dynamic position
    std::string command = "ros2 topic pub -1 /set_position dynamixel_sdk_custom_interfaces/msg/SetPosition \"{id: 1, position: " + std::to_string(position) + "}\"";
    // Execute the command
    int result = std::system(command.c_str());
    
    // Check if the command was successful
    if (result == 0)
    {
        std::cout << "Position command sent successfully with position: " << position << std::endl;
    }
    else
    {
        std::cerr << "Error executing the command." << std::endl;
    }
}

int main(int argc, char *argv[])
{
	setvbuf(stdout,NULL,_IONBF,BUFSIZ);

	std::cout << "Successfully initialized neural network kernel\n" << std::endl;

	rclcpp::init(argc,argv);
	// Initialize UART communication
	rclcpp::spin(std::make_shared<ImageSubscriber>());

	rclcpp::shutdown();
	return 0;
}
