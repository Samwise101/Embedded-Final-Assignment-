#include "utils.hpp"


void dense(const float input[], float output[], const float weights[], int in_size, int out_size) {
#pragma HLS INLINE
    for (int o = 0; o < out_size; ++o) {
        float sum = 0;
        for (int i = 0; i < in_size; ++i) {
#pragma HLS PIPELINE
            sum += input[i] * weights[o * in_size + i];
        }
        // Apply activation (ReLU or softmax later)
        output[o] = (sum > 0) ? sum : 0; // ReLU activation
    }
}

void softmax(float input[], float output[], int size, int &prediction) {
    float sum_exp = 0;

    // Calculate the sum of exponentials
    for (int i = 0; i < size; ++i) {
        #pragma HLS PIPELINE
        sum_exp += hls::expf(input[i]);
    }

    // Calculate the softmax values
    for (int i = 0; i < size; ++i) {
        #pragma HLS PIPELINE
        output[i] = hls::expf(input[i]) / sum_exp;
    }

    // Find the index of the maximum value in the output
    float max_val = output[0];
    prediction = 0;
    for (int i = 1; i < size; ++i) {
        #pragma HLS PIPELINE
        if (output[i] > max_val) {
            max_val = output[i];
            prediction = i;
        }
    }
}
