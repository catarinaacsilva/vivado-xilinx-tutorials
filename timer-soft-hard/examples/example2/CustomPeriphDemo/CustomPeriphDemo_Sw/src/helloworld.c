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
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xuartlite_l.h"

#define RED_IDX		0
#define GREEN_IDX	1
#define BLUE_IDX	2
#define BRIGHT_IDX	3

int main()
{
	char ch;
	int sel = 0;
	int val[3] = {0, 0, 0};

    init_platform();

    xil_printf("Hello Custom Peripheral\n\r");

    Xil_Out32(XPAR_CUSTOMPERIPHIPCORE_0_S00_AXI_BASEADDR + (RED_IDX    * 4), val[RED_IDX]);
    Xil_Out32(XPAR_CUSTOMPERIPHIPCORE_0_S00_AXI_BASEADDR + (GREEN_IDX  * 4), val[GREEN_IDX]);
    Xil_Out32(XPAR_CUSTOMPERIPHIPCORE_0_S00_AXI_BASEADDR + (BLUE_IDX   * 4), val[BLUE_IDX]);
    Xil_Out32(XPAR_CUSTOMPERIPHIPCORE_0_S00_AXI_BASEADDR + (BRIGHT_IDX * 4), 500);

    xil_printf("\r(R,G,B)=(%03d,%03d,%03d)", val[RED_IDX], val[GREEN_IDX], val[BLUE_IDX]);

    while(1)
    {
    	ch = XUartLite_RecvByte(XPAR_AXI_UARTLITE_0_BASEADDR);

    	if ((ch == 'r') || (ch == 'R'))
		{
			sel = RED_IDX;
		}
    	else if ((ch == 'g') || (ch == 'G'))
		{
			sel = GREEN_IDX;
		}
    	else if ((ch == 'b') || (ch == 'B'))
		{
			sel = BLUE_IDX;
		}
    	else if (ch == '+')
    	{
    		if (val[sel] < 255)
    		{
    			val[sel]++;
    		}
    	}
    	else if (ch == '-')
    	{
    		if (val[sel] > 0)
			{
				val[sel]--;
			}
    	}

    	Xil_Out32(XPAR_CUSTOMPERIPHIPCORE_0_S00_AXI_BASEADDR + (sel * 4), val[sel]);
    	xil_printf("\r(R,G,B)=(%03d,%03d,%03d)", val[RED_IDX], val[GREEN_IDX], val[BLUE_IDX]);
    }

    cleanup_platform();
    return 0;
}
