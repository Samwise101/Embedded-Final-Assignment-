#include "nn.hpp"

void float_to_fixed(volatile float input[n_inputs], ap_fixed<32,24> output[n_inputs]) {
	for(int i = 0; i < n_inputs; i++){
		output[i] = input[i];
	}
}


/* Layer 1 matrix multiplication */
void hwmm_layer1(const ap_fixed<32,24> input[n_inputs], ap_fixed<32,24> output[1][n_layer1]) {
    col4: for (int j = 0; j < n_layer1; ++j) {
//#pragma HLS PIPELINE II=5
    	ap_fixed<32,24> sum = 0;
      prod4: for (int k = 0; k < n_inputs; ++k){
        sum += input[k] * weights::layer1_weights[k][j];
      }
      output[0][j] = sum;
    }
}



/* Layer 2 matrix multiplication */
void hwmm_layer2(const ap_fixed<32,24> input[1][n_layer1], ap_fixed<32,24> output[1][n_layer2]) {
	col1: for (int j = 0; j < n_layer2; ++j) {
	    ap_fixed<32,24> sum = 0;
	    prod1: for (int k = 0; k < n_layer1; ++k) {
	        sum += input[0][k] * weights::layer2_weights[k][j];
	    }
	    output[0][j] = sum;
	}
}



/* Layer 3 matrix multiplication */
void hwmm_layer3(const ap_fixed<32,24> input[1][n_layer2], ap_fixed<32,24> output[1][n_layer3]) {

	col1: for (int j = 0; j < n_layer3; ++j) {
	    ap_fixed<32,24> sum = 0;
	    prod1: for (int k = 0; k < n_layer2; ++k) {
	        sum += input[0][k] * weights::layer3_weights[k][j];
	    }
	    output[0][j] = sum;
	}
}



/* Layer 4 matrix multiplication */
void hwmm_layer4(const ap_fixed<32,24> input[1][n_layer3], ap_fixed<32,24> output[1][n_layer4]) {

	col1: for (int j = 0; j < n_layer4; ++j) {
	    ap_fixed<32,24> sum = 0;
	    prod1: for (int k = 0; k < n_layer3; ++k) {
	        sum += input[0][k] * weights::layer4_weights[k][j];
	    }
	    output[0][j] = sum;
	}
}


/* ReLU layer 1 activation function */
void hw_act_layer1(const ap_fixed<32,24> input[1][n_layer1], ap_fixed<32,24> output[1][n_layer1]){
	loop4: for (int i = 0; i < n_layer1; i++){
		if (input[0][i] < 0.0)
			output[0][i] = 0.0;
		else
			output[0][i] = input[0][i];
	}
}



/* ReLU layer 2 activation function */
void hw_act_layer2(const ap_fixed<32,24> input[1][n_layer2], ap_fixed<32,24> output[1][n_layer2]){
	loop3: for (int i = 0; i < n_layer2; i++){
		if (input[0][i] < 0.0)
			output[0][i] = 0.0;
		else
			output[0][i] = input[0][i];
	}
}


/* ReLU layer 3 activation function */
void hw_act_layer3(const ap_fixed<32,24> input[1][n_layer3], ap_fixed<32,24> output[1][n_layer3]){
	loop2: for (int i = 0; i < n_layer3; i++){
		if (input[0][i] < 0.0)
			output[0][i] = 0.0;
		else
			output[0][i] = input[0][i];
	}
}


/* Softmax layer 4 activation function */
void hw_act_layer4(const ap_fixed<32,24> input[1][n_layer4], int &pred) {

    int max_idx = 0;         // Start with the first element as the max index
    ap_fixed<32,24> max_val = input[0][0];  // Initialize max_val with the first element

    // Loop to find the maximum value and index
    loop1: for (int i = 1; i < n_layer4; i++) { // Start from index 1 since we already have the first element
//#pragma HLS UNROLL factor=2
    	if (input[0][i] > max_val) {
            max_val = input[0][i];
            max_idx = i;
        }
    }

    pred = max_idx;  // Set the prediction to the index of the maximum value
}

void nn_inference(volatile float input_img[n_inputs], volatile int *bram_output) {
    #pragma HLS INTERFACE s_axilite port=input_img bundle=control
    #pragma HLS INTERFACE ap_vld port=bram_output
    #pragma HLS INTERFACE s_axilite port=return bundle=control


    ap_fixed<32,24> new_input[n_inputs];
    ap_fixed<32,24> temp_output[1][n_layer1];
    ap_fixed<32,24> temp_output2[1][n_layer2];
    ap_fixed<32,24> temp_output3[1][n_layer3];
    ap_fixed<32,24> temp_output4[1][n_layer4];

    int temp_pred;

    // Neural network layers
    float_to_fixed(input_img, new_input);
    hwmm_layer1(new_input, temp_output);
    hw_act_layer1(temp_output, temp_output);
    hwmm_layer2(temp_output, temp_output2);
    hw_act_layer2(temp_output2, temp_output2);
    hwmm_layer3(temp_output2, temp_output3);
    hw_act_layer3(temp_output3, temp_output3);
    hwmm_layer4(temp_output3, temp_output4);
    hw_act_layer4(temp_output4, temp_pred);

    // Write the result to BRAM
    *bram_output = temp_pred;
}
