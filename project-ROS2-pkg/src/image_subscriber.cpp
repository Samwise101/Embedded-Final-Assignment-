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

void ImageSubscriber::flattenImage(cv::Mat& inputImage, float* image_flat) {

	int count = 0;
	for(int i = 0; i < IMAGE_ROW; i++){
		for(int j = 0; j < IMAGE_ROW; j++){
			image_flat[count] = inputImage.at<uint8_t>(i,j)/255.0f;
			count++;
		}
	}
}

uint32_t ImageSubscriber::runNN(cv::Mat& inputImage) {

	float flat_image[DATA_SIZE];
	flattenImage(inputImage, flat_image);

 	while(!XNn_inference_IsIdle(&this->ip_inst));

	XNn_inference_Write_input_img_Words(&this->ip_inst, 0, (word_type*)flat_image, DATA_SIZE/sizeof(word_type));

	if(XNn_inference_IsReady(&this->ip_inst)){
		XNn_inference_Start(&this->ip_inst);
	}
	
	while(!XNn_inference_IsIdle(&this->ip_inst));

	BRAM bram_test(0, 4);
	uint32_t read_value = bram_test[0];
	std::cout << "Read value: 0x" << std::hex << read_value << std::endl;
	return read_value;
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

	RCLCPP_INFO(this->get_logger(), "Publishing to topic!");
	sensor_msgs::msg::Image::SharedPtr img_msg = cv_bridge::CvImage(std_msgs::msg::Header(), "mono8", resized).toImageMsg();
	publisher_->publish(*img_msg.get());

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
