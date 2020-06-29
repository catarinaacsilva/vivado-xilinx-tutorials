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

#include <stdlib.h>
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xaxidma.h"
#include "xtmrctr_l.h"
#include "xil_printf.h"

/****************************** Definitions **********************************/

typedef int bool;

#define min(a, b)		((a < b) ? a : b)

#define N				4096

#define DMA_DEVICE_ID	XPAR_AXIDMA_0_DEVICE_ID


/*********************** DMA Configuration Function **************************/

int DMAConfig(u16 dmaDeviceId, XAxiDma* pDMAInstDefs)
{
	XAxiDma_Config* pDMAConfig;
	int status;

	// Initialize the XAxiDma device
	pDMAConfig = XAxiDma_LookupConfig(dmaDeviceId);
	if (!pDMAConfig)
	{
		xil_printf("No DMA configuration found for %d.\r\n", dmaDeviceId);
		return XST_FAILURE;
	}

	status = XAxiDma_CfgInitialize(pDMAInstDefs, pDMAConfig);
	if (status != XST_SUCCESS)
	{
		xil_printf("DMA Initialization failed %d.\r\n", status);
		return XST_FAILURE;
	}

	if (XAxiDma_HasSg(pDMAInstDefs))
	{
		xil_printf("Device configured as SG mode.\r\n");
		return XST_FAILURE;
	}

	// Disable interrupts, we use polling mode
	XAxiDma_IntrDisable(pDMAInstDefs, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(pDMAInstDefs, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	return XST_SUCCESS;
}

/*********************** Reverse Endianess Functions *************************/

void ReverseEndianessSw(int* pDst, int* pSrc, unsigned int size)
{
	int* p;

	for (p = pSrc; p < pSrc + size; p++, pDst++)
	{
		*pDst = ((((*p) << 24) & 0xFF000000) | (((*p) <<  8) & 0x00FF0000) |
				 (((*p) >>  8) & 0x0000FF00) | (((*p) >> 24) & 0x000000FF));
	}
}

bool CheckReversedEndianess(int* pData1, int* pData2, unsigned int size)
{
	int* p;

	for (p = pData1; p < pData1 + size; p++, pData2++)
	{
		if (*pData2 != ((((*p) << 24) & 0xFF000000) | (((*p) <<  8) & 0x00FF0000) |
						(((*p) >>  8) & 0x0000FF00) | (((*p) >> 24) & 0x000000FF)))
		{
			return FALSE;
		}
	}

	return TRUE;
}

/*****************************  Helper Functions *****************************/

void PrintDataArray(int* pData, unsigned int size)
{
	int* p;

	xil_printf("\n\r");
	for (p = pData; p < pData + size; p++)
	{
		xil_printf("%08x  ", *p);
	}
}

void ResetPerformanceTimer()
{
	XTmrCtr_Disable(XPAR_TMRCTR_0_BASEADDR, 0);
	XTmrCtr_SetLoadReg(XPAR_TMRCTR_0_BASEADDR, 0, 0x00000001);
	XTmrCtr_LoadTimerCounterReg(XPAR_TMRCTR_0_BASEADDR, 0);
	XTmrCtr_SetControlStatusReg(XPAR_TMRCTR_0_BASEADDR, 0, 0x00000000);
}

void RestartPerformanceTimer()
{
	ResetPerformanceTimer();
	XTmrCtr_Enable(XPAR_TMRCTR_0_BASEADDR, 0);
}

unsigned int GetPerformanceTimer()
{
	return XTmrCtr_GetTimerCounterReg(XPAR_TMRCTR_0_BASEADDR, 0);
}

unsigned int StopAndGetPerformanceTimer()
{
	XTmrCtr_Disable(XPAR_TMRCTR_0_BASEADDR, 0);
	return GetPerformanceTimer();
}

/******************************  Main Functions ******************************/

int main()
{
	int status;
	XAxiDma dmaInstDefs;

	int srcData[N], dstData[N];
	unsigned int timeElapsed;

	xil_printf("\r\nDMA with Reverse Endianess Demo Program - Entering main()...");
	init_platform();

	xil_printf("\r\nFilling memory with pseudo-random data...");
	RestartPerformanceTimer();
	srand(0);
	for (int i = 0; i < N; i++)
	{
		srcData[i] = rand();
	}
	timeElapsed = StopAndGetPerformanceTimer();
	xil_printf("\n\rMemory initialization time: %d microseconds\n\r",
			   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
	PrintDataArray(srcData, min(8, N));
	xil_printf("\n\r");

	// Software only
	RestartPerformanceTimer();
	ReverseEndianessSw(dstData, srcData, N);
	timeElapsed = StopAndGetPerformanceTimer();
	xil_printf("\n\rSoftware only reverse endianess time: %d microseconds",
			   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
	PrintDataArray(dstData, min(8, N));
	xil_printf("\n\rChecking result: %s\n\r",
			   CheckReversedEndianess(srcData, dstData, N) ? "OK" : "Error");

	xil_printf("\r\nConfiguring DMA...");
	status = DMAConfig(DMA_DEVICE_ID, &dmaInstDefs);
	if (status != XST_SUCCESS)
	{
		xil_printf("\r\nConfiguration failed.");
		return XST_FAILURE;
	}
	xil_printf("\r\nDMA running...");

	// DMA and Hardware assisted
	RestartPerformanceTimer();
	status = XAxiDma_SimpleTransfer(&dmaInstDefs,(UINTPTR) dstData, N * sizeof(int),
									XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(&dmaInstDefs,(UINTPTR) srcData, N * sizeof(int),
									XAXIDMA_DMA_TO_DEVICE);
	if (status != XST_SUCCESS)
	{
		xil_printf("\r\nDMA transfer failed.");
		return XST_FAILURE;
	}
	while ((XAxiDma_Busy(&dmaInstDefs, XAXIDMA_DEVICE_TO_DMA)) ||
		   (XAxiDma_Busy(&dmaInstDefs, XAXIDMA_DMA_TO_DEVICE)))
	{
		/* Wait */
	}
	timeElapsed = StopAndGetPerformanceTimer();
	xil_printf("\n\rDMA Hardware assisted reverse endianess time: %d microseconds",
			   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
	PrintDataArray(dstData, min(8, N));
	xil_printf("\n\rChecking result: %s\n\r",
			   CheckReversedEndianess(srcData, dstData, N) ? "OK" : "Error");

	cleanup_platform();
	return XST_SUCCESS;
}
