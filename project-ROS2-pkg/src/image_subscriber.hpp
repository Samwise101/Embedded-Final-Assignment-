#pragma once
#include "drivers/xnn_inference.h"
#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <cv_bridge/cv_bridge.h>

#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <vector>
#include <iostream>
#include <stdint.h>
#include "drivers/bram_uio.h"
#include <cstdlib>  // For system()
#include <string>   // For string manipulation


#define IMAGE_ROW 15
#define DATA_SIZE ((IMAGE_ROW * IMAGE_ROW + 3) & ~3) // Align to the next multiple of 4

// #define DATA_SIZE IMAGE_ROW*IMAGE_ROW

// #define BRAM_BASE_ADDR 0xA0000000U
// #define BRAM_SIZE 4                 // 32 bits

void send_position_command(int position);

class ImageSubscriber : public rclcpp::Node
{

public:
	ImageSubscriber();

	~ImageSubscriber();

private:
	void onImageMsg(const sensor_msgs::msg::Image::SharedPtr msg);
	void flattenImage(cv::Mat& inputImage, float* image_flat);
	uint32_t runNN(cv::Mat& inputImage);


public:
	rclcpp::Subscription<sensor_msgs::msg::Image>::SharedPtr camera_subscription_;
	rclcpp::Publisher<sensor_msgs::msg::Image>::SharedPtr publisher_;
	XNn_inference ip_inst;

private:
};
