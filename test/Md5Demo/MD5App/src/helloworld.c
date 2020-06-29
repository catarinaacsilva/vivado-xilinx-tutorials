#include <stdlib.h>
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "fsl.h"
#include "xtmrctr_l.h"
#include "xil_printf.h"

#include "xaxidma.h"

#define min(a, b)		((a < b) ? a : b)

#define N	1

#define DMA_DEVICE_ID	XPAR_AXIDMA_0_DEVICE_ID

// DMA configuration
int DMAConfig(u16 dmaDeviceId, XAxiDma* axidma)
{
	XAxiDma_Config *CfgPtr;
	int status;

	CfgPtr = XAxiDma_LookupConfig(dmaDeviceId);
	if (!CfgPtr) {
		xil_printf("No DMA configuration found for %d.\r\n", dmaDeviceId);
		return XST_FAILURE;
	}

	status = XAxiDma_CfgInitialize(axidma, CfgPtr);
	if (status != XST_SUCCESS) {
		xil_printf("DMA Initialization failed %d.\r\n", status);
		return XST_FAILURE;
	}

	if (XAxiDma_HasSg(axidma)) {
		xil_printf("Device configured as SG mode.\r\n");
		return XST_FAILURE;
	}

	// Disable interrupts
	XAxiDma_IntrDisable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	return XST_SUCCESS;
}


void md5Hw(int* pDst, int* pSrc, unsigned int size)
{
	int* p;

	for (p = pSrc; p < pSrc + size; p++, pDst++)
	{
		putfslx(*p, 0, FSL_DEFAULT);
		getfslx(*pDst, 0, FSL_DEFAULT);
	}
}


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


int main()
{
	uint32_t srcData[N], dstData[N];
	//uint32_t msgInput, msgOutput;

	unsigned int timeElapsed;
	int status;

	XAxiDma axiDma;

    init_platform();


    RestartPerformanceTimer();
    srand(0);

    /*for (int i = 0; i < N; i++) {
    	srcData[i] = rand();
    }*/

    srcData[0] = 1234599;

    //msgInput = 1234599;

    xil_printf("Input message: %x", srcData[0]);

    timeElapsed = StopAndGetPerformanceTimer();
    xil_printf("\n\rInput initialization time: %d microseconds\n\r", timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
    PrintDataArray(srcData, min(8, N));
    xil_printf("\n\r");


	// Configuring DMA
	xil_printf("\r\nConfiguring DMA");
	status = DMAConfig(DMA_DEVICE_ID, &axiDma);
	if (status != XST_SUCCESS)
	{
		xil_printf("\r\nConfiguration failed");
		return XST_FAILURE;
	}
	xil_printf("\r\nDMA running");

	// MD5
	RestartPerformanceTimer();
	//status = XAxiDma_SimpleTransfer(&axiDma,(UINTPTR) &msgOutput, N * sizeof(int), XAXIDMA_DEVICE_TO_DMA);
	//status = XAxiDma_SimpleTransfer(&axiDma,(UINTPTR) &msgInput, N * sizeof(int), XAXIDMA_DMA_TO_DEVICE);

	status = XAxiDma_SimpleTransfer(&axiDma,(UINTPTR) dstData, N * sizeof(int), XAXIDMA_DEVICE_TO_DMA);

	if (status != XST_SUCCESS)
		{
			xil_printf("\r\nDMA transfer failed");
			return XST_FAILURE;
		}

	status = XAxiDma_SimpleTransfer(&axiDma,(UINTPTR) srcData, N * sizeof(int), XAXIDMA_DMA_TO_DEVICE);


	if (status != XST_SUCCESS)
	{
		xil_printf("\r\nDMA transfer failed");
		return XST_FAILURE;
	}

	while ((XAxiDma_Busy(&axiDma, XAXIDMA_DEVICE_TO_DMA)) || (XAxiDma_Busy(&axiDma, XAXIDMA_DMA_TO_DEVICE))) {}


	timeElapsed = StopAndGetPerformanceTimer();
	xil_printf("\n\rDMA Hardware md5 time: %d microseconds", timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
	PrintDataArray(dstData, min(8, N));


    cleanup_platform();
    return 0;
}
