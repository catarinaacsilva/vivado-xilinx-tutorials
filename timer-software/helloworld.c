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
#include "sleep.h"
#include "xgpio_l.h"
#include "xtmrctr_l.h"

unsigned char Bin2Hex(unsigned char value)
{
	static char bin2HexLUT[] = {0xC0, 0xF9 /* TBC*/};

	return bin2HexLUT[value];
}

int DetectRisingEdge(unsigned int oldValue, unsigned int newValue, unsigned char bitIndex)
{
	unsigned int mask = 1 << bitIndex;

	return ((~oldValue & mask) & (newValue & mask)) == mask;
}

int main()
{
    init_platform();

    print("Hello World\n\r");

//	Tri-state configuration
//	Inputs
    XGpio_WriteReg(XPAR_AXI_GPIO_SWITCHES_BASEADDR, XGPIO_TRI_OFFSET,  0xFFFFFFFF);
    XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR,  XGPIO_TRI_OFFSET,  0xFFFFFFFF);

//	Outputs
    XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR,     XGPIO_TRI_OFFSET,  0xFFFF0000);
    XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR,  XGPIO_TRI_OFFSET,  0xFFFFFF00);
    XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR,  XGPIO_TRI2_OFFSET, 0xFFFFFF00);

//  Output fixed patterns
    /*XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR,    XGPIO_DATA_OFFSET, 0x5555);
    XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET, 0x00);
    XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA2_OFFSET, 0x00); /*

//	Switches - LEDs loopback
/*  unsigned int switchesVal;

    while(1)
    {
    	switchesVal = XGpio_ReadReg(XPAR_AXI_GPIO_SWITCHES_BASEADDR, XGPIO_DATA_OFFSET);

    	XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR, XGPIO_DATA_OFFSET, switchesVal);
    }

//	Displays refresh demo
/*  while(1)
    {
    	XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET,  0xFE);
    	XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA2_OFFSET, Bin2Hex(0));

    	usleep(1000);

    	XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET,  0xFD);
    	XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA2_OFFSET, Bin2Hex(1));

    	usleep(1000);
    }*/

//	Buttons readback demo
/*  unsigned int newValue;

    while(1)
    {
    	newValue = XGpio_ReadReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_DATA_OFFSET);

    	xil_printf("\r\n%02x", newValue);
    }*/

//	Buttons rising-edge detection
/*  unsigned int oldValue = 0xFF;
    unsigned int newValue;

	while(1)
	{
		newValue = XGpio_ReadReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_DATA_OFFSET);

		print("\r\n");
		for (int i = 4; i >= 0; i--)
		{
			if (DetectRisingEdge(oldValue, newValue, i))
			{
				print("|");
			}
			else
			{
				print(".");
			}
		}

		oldValue = newValue;
		usleep(100000);
	}*/

//	Timer event detection using polling
/*	Timer Demonstration

 	// Disable timer
 	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 0x0);

	// Set timer load value
    XTmrCtr_SetLoadReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 500000000);
    XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_LOAD_MASK);

	// Enable timer, down counting with auto reload
    XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_DOWN_COUNT_MASK);

  	while (1)
  	{
  		// Print current count register
  		xil_printf("\r\n%09d", XTmrCtr_GetTimerCounterReg(XPAR_AXI_TIMER_0_BASEADDR, 0));

		// Detection using polling of timer event
  		unsigned int tmrCtrlStatReg = XTmrCtr_GetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0);

  		if (tmrCtrlStatReg & XTC_CSR_INT_OCCURED_MASK)
  		{
  			print("*****");

			XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, tmrCtrlStatReg | XTC_CSR_INT_OCCURED_MASK);
		}
   	}*/

    cleanup_platform();
    return 0;
}
