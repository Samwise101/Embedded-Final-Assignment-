/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xnn_inference.h"
#include "xbram.h"
#include "data.h"

#define BRAM_BASE_ADDR 	XPAR_BRAM_0_BASEADDR

XNn_inference nn;
XNn_inference_Config *nn_config;

int main()
{
	int x_status;
	init_platform();
	print("Platform initialized\n\r");

	xil_printf("Platform initialized \r\n");;

	nn_config = XNn_inference_LookupConfig(XPAR_NN_INFERENCE_0_DEVICE_ID);
	x_status = XNn_inference_CfgInitialize(&nn,nn_config);
	x_status = XNn_inference_Initialize(&nn,XPAR_NN_INFERENCE_0_DEVICE_ID);
	print("Successfully initialized neural network kernel\r\n");


    // Initialize the BRAM driver instance
	XBram_Config *config;
	XBram bram_instance;


	config = XBram_LookupConfig(XPAR_BRAM_0_DEVICE_ID);
	if (!config) {
		xil_printf("BRAM Configuration not found\n");
		return XST_FAILURE;
	}

	int status = XBram_CfgInitialize(&bram_instance, config, config->CtrlBaseAddress);
	if (status != XST_SUCCESS) {
		xil_printf("BRAM Initialization failed\n");
		return XST_FAILURE;
	}

	while(!XNn_inference_IsIdle(&nn));

	for(int i = 0; i < TEST_IMG_COUNT; i++){

		switch(i){
		case 0:
			XNn_inference_Write_input_img_Words(&nn, 0, (word_type*)input_img1, DATA_SIZE);
			break;
		case 1:
			XNn_inference_Write_input_img_Words(&nn, 0, (word_type*)input_img2, DATA_SIZE);
			break;
		case 2:
			XNn_inference_Write_input_img_Words(&nn, 0, (word_type*)input_img3, DATA_SIZE);
			break;
		case 3:
			XNn_inference_Write_input_img_Words(&nn, 0, (word_type*)input_img4, DATA_SIZE);
			break;
		default:
			XNn_inference_Write_input_img_Words(&nn, 0, (word_type*)input_img1, DATA_SIZE);
			break;
		}


		if(XNn_inference_IsReady(&nn)){
			XNn_inference_Start(&nn);
		}
		while(!XNn_inference_IsIdle(&nn));

		u32 out = XBram_ReadReg(BRAM_BASE_ADDR, 0);
		xil_printf("Data read out of BRAM: %d\n", out);

	}

	print("Successfully ran NN test application");
	cleanup_platform();
    return 0;
}
