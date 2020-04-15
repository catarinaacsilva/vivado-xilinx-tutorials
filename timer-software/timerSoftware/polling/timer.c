/******************************************************************************
*
* Timer based on Software - Polling
*
* Author: Catarina Silva
* Email: c.alexandracorreia@ua.pt
* Email: c.alexandracorreia@av.it.pt
*
* Version 1.0
*
******************************************************************************/


#include <stdio.h>
#include "xil_printf.h"
#include "platform.h"
#include "xparameters.h"
#include "xgpio_l.h"
#include "xtmrctr_l.h"

/******************************** Data types *********************************/

// Boolean data type (not defined in standard C)
typedef int bool;

// State machine status
typedef enum {Stopped, Started, SetLSSec, SetMSSec, SetLSMin, SetMSMin} TFSMState;

// Buttons GPIO masks
#define BUTTON_UP_MASK		0x01
#define BUTTON_DOWN_MASK	0x04
#define BUTTON_RIGHT_MASK	0x08
#define BUTTON_CENTER_MASK	0x10

// Data structure to store buttons status
typedef struct SButtonStatus
{
	bool upPressed;
	bool downPressed;
	bool setPressed;
	bool startPressed;

	bool setPrevious;
	bool startPrevious;
} TButtonStatus;

// Data structure to store countdown timer value
typedef struct STimerValue
{
	unsigned int minMSValue;
	unsigned int minLSValue;
	unsigned int secMSValue;
	unsigned int secLSValue;
} TTimerValue;

/***************************** Helper functions ******************************/

// 7 segment decoder
unsigned char Bin2Hex(int value)
{
	static const char bin2HexLUT[] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78,
			                    	  0x00, 0x10, 0x08, 0x03, 0x46, 0x21, 0x06, 0x0E};
	return bin2HexLUT[value];
}

// Rising edge detection and clear
bool DetectAndClearRisingEdge(bool* pOldValue, bool newValue)
{
	bool retValue;

	retValue = (!(*pOldValue)) && newValue;
	*pOldValue = newValue;
	return retValue;
}

// Modular increment
bool ModularInc(unsigned int* pValue, unsigned int modulo)
{
	if (*pValue < modulo - 1)
	{
		(*pValue)++;
		return FALSE;
	}
	else
	{
		*pValue = 0;
		return TRUE;
	}
}

// Modular decrement
bool ModularDec(unsigned int* pValue, unsigned int modulo)
{
	if (*pValue > 0)
	{
		(*pValue)--;
		return FALSE;
	}
	else
	{
		*pValue = modulo - 1;
		return TRUE;
	}
}

// Tests if all timer digits are zero
bool IsTimerValueZero(const TTimerValue* pTimerValue)
{
	return ((pTimerValue->secLSValue == 0) && (pTimerValue->secMSValue == 0) &&
			(pTimerValue->minLSValue == 0) && (pTimerValue->minMSValue == 0));
}

// Conversion of the countdown timer values stored in a structure to an array of digits
void TimerValue2DigitValues(const TTimerValue* pTimerValue, unsigned int digitValues[8])
{
	digitValues[0] = 0;
	digitValues[1] = 0;
	digitValues[2] = pTimerValue->secLSValue;
	digitValues[3] = pTimerValue->secMSValue;
	digitValues[4] = pTimerValue->minLSValue;
	digitValues[5] = pTimerValue->minMSValue;
	digitValues[6] = 0;
	digitValues[7] = 0;
}

/******************* Countdown timer operations functions ********************/

void RefreshDisplays(unsigned char digitEnables, const unsigned int digitValues[8], unsigned char decPtEnables)
{
	static unsigned int digitRefreshIdx = 0; // static variable - is preserved across calls

	switch (digitRefreshIdx) {
		case 0x2:
			if((digitEnables & 0x04) == 0x04) {
				XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET,  0xFB);
				XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA2_OFFSET, Bin2Hex(digitValues[2]) | 0x80);
			}
		break;

		case 0x3:
			if((digitEnables & 0x08) == 0x08) {
				XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET,  0xF7);
				XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA2_OFFSET, Bin2Hex(digitValues[3]) | 0x80);
			}
		break;

		case 0x4:
			if((digitEnables & 0x10) == 0x10) {
				XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET,  0xEF);
				if((decPtEnables & 0x10) == 0x10)
					XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA2_OFFSET, Bin2Hex(digitValues[4]) | 0x80);
				else
					XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA2_OFFSET, Bin2Hex(digitValues[4]));
			}
		break;

		case 0x5:
			if((digitEnables & 0x20) == 0x20) {
				XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET,  0xDF);
				XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA2_OFFSET, Bin2Hex(digitValues[5]) | 0x80);
			}
		break;

		default:
			XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET,  0xFF);
	}

	digitRefreshIdx++;
	digitRefreshIdx &= 0x07;
}

/**
 * Buttons Values (format 0xFFFFFFFF)
 *
 * */

void ReadButtons(TButtonStatus* pButtonStatus)
{
	unsigned int buttonsPattern;

	buttonsPattern = XGpio_ReadReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_DATA_OFFSET);

	pButtonStatus->upPressed    = buttonsPattern & BUTTON_UP_MASK;
	pButtonStatus->downPressed  = buttonsPattern & BUTTON_DOWN_MASK;
	pButtonStatus->setPressed   = buttonsPattern & BUTTON_CENTER_MASK;
	pButtonStatus->startPressed = buttonsPattern & BUTTON_RIGHT_MASK;
}

/**
 * Control Unit
 * The timer starts on stop mode
 *
 * */

void UpdateStateMachine(TFSMState* pFSMState, TButtonStatus* pButtonStatus, bool zeroFlag, unsigned char* pSetFlags) {
	switch (*pFSMState) {
		case Stopped:
			*pSetFlags = 0x0;
			if(zeroFlag == 1) {
				XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR, XGPIO_DATA_OFFSET, 0x0001);
			}else {
				XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR, XGPIO_DATA_OFFSET, 0x0000);
			}
			if((DetectAndClearRisingEdge(&(pButtonStatus->startPrevious), pButtonStatus->startPressed)) && (zeroFlag == 0)) {
				*pFSMState = Started;
			} else if (DetectAndClearRisingEdge(&(pButtonStatus->setPrevious), pButtonStatus->setPressed)) {
				*pFSMState = SetLSSec;
			} else {
				*pFSMState = Stopped;
			}
		break;

		case Started:
			*pSetFlags = 0x0;
			if ((DetectAndClearRisingEdge(&(pButtonStatus->startPrevious), pButtonStatus->startPressed)) || (zeroFlag == 1)) {
				*pFSMState = Stopped;
			} else {
				*pFSMState = Started;
			}
		break;

		case SetLSSec:
			*pSetFlags = 0x1;
			if(DetectAndClearRisingEdge(&(pButtonStatus->setPrevious), pButtonStatus->setPressed)) {
				*pFSMState = SetMSSec;
			} else {
				*pFSMState = SetLSSec;
			}
		break;

		case SetMSSec:
			*pSetFlags = 0x2;
			if(DetectAndClearRisingEdge(&(pButtonStatus->setPrevious), pButtonStatus->setPressed)) {
				*pFSMState = SetLSMin;
			} else {
				*pFSMState = SetMSSec;
			}
		break;

		case SetLSMin:
			*pSetFlags = 0x4;
			if(DetectAndClearRisingEdge(&(pButtonStatus->setPrevious), pButtonStatus->setPressed)) {
				*pFSMState = SetMSMin;
			} else {
				*pFSMState = SetLSMin;
			}
		break;

		case SetMSMin:
			*pSetFlags = 0x8;
			if(DetectAndClearRisingEdge(&(pButtonStatus->setPrevious), pButtonStatus->setPressed)) {
				*pFSMState = Stopped;
			} else {
				*pFSMState = SetMSMin;
			}
		break;
		default:
			*pSetFlags = 0x0; 	
			*pFSMState = Stopped;
			break;
	}

}

/**
 * Update values (up and down)
 *
 * */

void SetCountDownTimer(TFSMState fsmState, const TButtonStatus* pButtonStatus, TTimerValue* pTimerValue) {

	switch(fsmState){
		case SetLSSec:
			if(pButtonStatus->upPressed)
				ModularInc(&(pTimerValue->secLSValue), 10);
			else if (pButtonStatus->downPressed)
				ModularDec(&(pTimerValue->secLSValue), 10);
			break;
		case SetMSSec:
			if(pButtonStatus->upPressed)
				ModularInc(&(pTimerValue->secMSValue), 6);
			else if (pButtonStatus->downPressed)
				ModularDec(&(pTimerValue->secMSValue), 6);
			break;
		case SetLSMin:
			if(pButtonStatus->upPressed)
				ModularInc(&(pTimerValue->minLSValue), 10);
			else if (pButtonStatus->downPressed)
				ModularDec(&(pTimerValue->minLSValue), 10);
			break;
		case SetMSMin:
			if(pButtonStatus->upPressed)
				ModularInc(&(pTimerValue->minMSValue), 6);
			else if (pButtonStatus->downPressed)
				ModularDec(&(pTimerValue->minMSValue), 6);
			break;
		default:
			break;
	}

}

/**
 * Logic of timer - normal count
 *  */
void DecCountDownTimer(TFSMState fsmState, TTimerValue* pTimerValue) {

	if (fsmState == Started) {													
		bool count = ModularDec(&pTimerValue->secLSValue, 10);		
		if (count) {
			count = ModularDec(&pTimerValue->secMSValue, 6);		
			if (count) {
				count = ModularDec(&pTimerValue->minLSValue, 10);	
				if (count) {
					ModularDec(&pTimerValue->minMSValue, 6); 
				}
				else return;
			}
			else return;
		}
		else return;
	}

}
/******************************* Main function *******************************/

int main()
{
	init_platform();
	//  Outputs Initial
	XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET,  0xFF);

	xil_printf("\n\n\rCount down timer - polling based version.\n\rConfiguring...");



	//	GPIO tri-state configuration
	//	Inputs
	XGpio_WriteReg(XPAR_AXI_GPIO_SWITCHES_BASEADDR, XGPIO_TRI_OFFSET,  0xFFFFFFFF);
	XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR,  XGPIO_TRI_OFFSET,  0xFFFFFFFF);

	//	Outputs
	XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR,     XGPIO_TRI_OFFSET,  0xFFFF0000);
	XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR,  XGPIO_TRI_OFFSET,  0xFFFFFF00);
	XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR,  XGPIO_TRI2_OFFSET, 0xFFFFFF00);


	xil_printf("\n\rIOs configured.");

 	// Disable hardware timer
 	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 0x00000000);
	// Set hardware timer load value
	XTmrCtr_SetLoadReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 125000); // Counter will wrap around every 1.25 ms
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_LOAD_MASK);
	// Enable hardware timer, down counting with auto reload
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_ENABLE_TMR_MASK  |
															  XTC_CSR_AUTO_RELOAD_MASK |
															  XTC_CSR_DOWN_COUNT_MASK);

	xil_printf("\n\rHardware timer configured.");

	xil_printf("\n\rSystem running.\n\r");

	// Timer event software counter
	unsigned hwTmrEventCount = 0;

	TFSMState     fsmState       = Stopped;
	unsigned char setFlags       = 0x0;
	TButtonStatus buttonStatus   = {FALSE, FALSE, FALSE, FALSE, FALSE, FALSE};
	TTimerValue   timerValue     = {5, 9, 5, 9};
	bool          zeroFlag       = FALSE;

	unsigned char digitEnables   = 0x3C;
	unsigned int  digitValues[8] = {0, 0, 0, 0, 0, 0, 0, 0};
	unsigned char decPtEnables   = 0x00;

	bool          blink1HzStat   = FALSE;
	bool          blink2HzStat   = FALSE;

  	while (1)
  	{
  		unsigned int tmrCtrlStatReg = XTmrCtr_GetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0);

  		if (tmrCtrlStatReg & XTC_CSR_INT_OCCURED_MASK)
		{
  			// Clear hardware timer event (interrupt request flag)
			XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0,
										tmrCtrlStatReg | XTC_CSR_INT_OCCURED_MASK);
			hwTmrEventCount++;

			// Put here operations that must be performed at 800Hz rate
			// Refresh displays
			RefreshDisplays(digitEnables, digitValues, decPtEnables);


			if (hwTmrEventCount % 100 == 0) // 8Hz
			{
				// Put here operations that must be performed at 8Hz rate
				// Read push buttons
				ReadButtons(&buttonStatus);
				// Update state machine
				UpdateStateMachine(&fsmState, &buttonStatus, zeroFlag, &setFlags);
				if ((setFlags == 0x0) || (blink2HzStat))
				{
					digitEnables = 0x3C; // All digits active
				}
				else
				{
					digitEnables = (~(setFlags << 2)) & 0x3C; // Setting digit inactive
				}


				if (hwTmrEventCount % 200 == 0) // 4Hz
				{
					// Put here operations that must be performed at 4Hz rate
					// Switch digit set 2Hz blink status
					blink2HzStat = !blink2HzStat;


					if (hwTmrEventCount % 400 == 0) // 2Hz
					{
						// Put here operations that must be performed at 2Hz rate
						// Switch point 1Hz blink status
						blink1HzStat = !blink1HzStat;
						decPtEnables = (blink1HzStat ? 0x10 : 0x00);

						// Digit set increment/decrement
						SetCountDownTimer(fsmState, &buttonStatus, &timerValue);
						TimerValue2DigitValues(&timerValue, digitValues);

						if (hwTmrEventCount == 800) // 1Hz
						{
							// Put here operations that must be performed at 1Hz rate
							// Count down timer normal operation
							DecCountDownTimer(fsmState, &timerValue);
							zeroFlag = IsTimerValueZero(&timerValue);
							TimerValue2DigitValues(&timerValue, digitValues);

							// Reset hwTmrEventCount every second
							hwTmrEventCount = 1;
						}
					}
				}
			}
		}

  		// Put here operations that are performed whenever possible


	}

	cleanup_platform();
	return 0;
}
