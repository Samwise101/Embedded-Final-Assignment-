#include <stdio.h>
#include <iostream>
#include "nn.hpp"


int main() {

float input_img1[n_inputs] = {01.000000,1.000000,1.000000,1.000000,1.000000,1.000000,1.000000,1.000000,1.000000,0.698039,1.000000,1.000000,0.996078,0.996078,1.000000,1.000000,1.000000,1.000000,1.000000,0.780392,0.984314,0.729412,0.819608,0.756863,0.741176,0.811765,0.996078,1.000000,1.000000,0.772549,0.952941,0.937255,0.996078,0.996078,0.988235,0.576471,0.992157,0.996078,1.000000,0.729412,1.000000,1.000000,0.992157,0.827451,0.682353,0.894118,0.996078,1.000000,1.000000,0.752941,
		0.996078,0.949020,0.647059,0.647059,0.737255,0.764706,0.937255,0.996078,1.000000,0.741176,1.000000,1.000000,1.000000,0.996078,0.996078,0.968627,0.709804,0.737255,0.996078,0.741176,1.000000,1.000000,1.000000,1.000000,1.000000,0.996078,0.992157,0.701961,0.843137,0.756863,0.866667,0.764706,0.850980,0.933333,0.984314,0.992157,0.988235,0.709804,0.803922,0.749020,0.996078,0.988235,0.890196,0.823529,0.745098,0.760784,0.741176,0.847059,0.996078,0.764706};
 // 3
int  pred1 = nn_inference(input_img1);
std::cout << "Checking for number 3:" << std::endl;
std::cout << "NN Prediction: " << pred1 << std::endl;
std::cout << std::endl;


float input_img2[n_inputs] = {0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.992157,0.996078,0.996078,0.992157,0.992157,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.984314,0.745098,0.968627,0.992157,0.925490,0.909804,0.996078,0.996078,0.996078,0.996078,0.968627,0.584314,0.984314,0.976471,0.639216,0.964706,0.996078,0.996078,0.996078,0.996078,0.949020,0.603922,0.866667,0.709804,0.764706,0.988235,0.996078,0.996078,0.996078,
		0.996078,0.988235,0.854902,0.858824,0.623529,0.968627,0.992157,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.976471,0.678431,0.984314,0.992157,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.980392,0.831373,0.988235,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,0.996078,
}; // 4
int  pred2 = nn_inference(input_img2);
std::cout << "Checking for number 4:" << std::endl;
std::cout << "NN Prediction: " << pred2 << std::endl;
std::cout << std::endl;

float input_img3[n_inputs] = {0.647059,0.647059,0.647059,0.643137,0.650980,0.647059,0.650980,0.647059,0.647059,0.647059,0.647059,0.643137,0.643137,0.639216,0.643137,0.643137,0.643137,0.635294,0.643137,0.647059,0.647059,0.643137,0.643137,0.603922,0.545098,0.541176,0.549020,0.568627,0.635294,0.639216,0.647059,0.639216,0.623529,0.494118,0.631373,0.639216,0.639216,0.639216,0.639216,0.635294,0.643137,0.643137,0.576471,0.541176,0.560784,0.607843,0.635294,0.639216,0.639216,0.631373,
		0.643137,0.643137,0.643137,0.643137,0.635294,0.521569,0.627451,0.631373,0.631373,0.635294,0.643137,0.611765,0.631373,0.639216,0.635294,0.498039,0.627451,0.627451,0.627451,0.627451,0.639216,0.529412,0.627451,0.615686,0.501961,0.588235,0.627451,0.627451,0.623529,0.619608,0.639216,0.627451,0.549020,0.545098,0.623529,0.631373,0.627451,0.627451,0.627451,0.623529,0.635294,0.635294,0.639216,0.635294,0.631373,0.627451,0.627451,0.627451,0.623529,0.619608};
// 5

int  pred3 = nn_inference(input_img3);
std::cout << "Checking for number 5:" << std::endl;
std::cout << "NN Prediction: " << pred3 << std::endl;
std::cout << std::endl;

return 0;
}