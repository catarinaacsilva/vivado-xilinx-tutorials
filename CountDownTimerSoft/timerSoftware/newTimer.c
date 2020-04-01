/**
 * ----------------------------------Timer----------------------------------
 * 
 * Count Down Timer only based on Software
 * 
 * Author: Catarina Silva
 * Email: c.alexandracorreia@ua.pt
 * 
 * Version 1.0
 * 
 * */


#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xgpio_l.h"
#include "xtmrctr_l.h"

/******************************************
	Data types
*******************************************/

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
	int minMSValue;
	int minLSValue;
	int secMSValue;
	int secLSValue;
} TTimerValue;

/******************************************
	Helper functions
*******************************************/

// 7 segment decoder
unsigned char Bin2Hex(int value)
{
	static char bin2HexLUT[] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78,
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
bool ModularInc(int* pValue, unsigned int modulo)
{
	(*pValue)++;

	if (*pValue >= modulo)
	{
		*pValue = 0;
		return TRUE;
	}
	else
	{
		return FALSE;
	}
}

// Modular decrement
bool ModularDec(int* pValue, unsigned int modulo)
{
	(*pValue)--;

	if (*pValue < 0)
	{
		*pValue = modulo - 1;
		return TRUE;
	}
	else
	{
		return FALSE;
	}
}

bool IsTimerValueZero(const TTimerValue* pTimerValue)
{
	return ((pTimerValue->secLSValue == 0) && (pTimerValue->secMSValue == 0) &&
			(pTimerValue->minLSValue == 0) && (pTimerValue->minMSValue));
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

/******************************************
	Countdown timer operations functions
*******************************************/

void RefreshDisplays(unsigned char digitEnables, const unsigned int digitValues[8], unsigned char decPtEnables)
{
	static unsigned int digitRefreshIdx = 0; // static variable - is preserved across calls

	// Insert your code here...
	

	digitRefreshIdx++;
	digitRefreshIdx &= 0x07;
}

void ReadButtons(TButtonStatus* pButtonStatus)
{
	unsigned int buttonsPattern;

	buttonsPattern = // Insert your code here...

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
	
	
}

void SetCountDownTimer(TFSMState fsmState, const TButtonStatus* pButtonStatus, TTimerValue* pTimerValue)
{
	// Insert your code here...
}

/**
 * Logic of timer - normal count
 *  */
void DecCountDownTimer(TFSMState fsmState, TTimerValue* pTimerValue) {
	unsigned int tmpValue = 0, digitValues[8];

	while(fsmState == Started){
		if(pTimerValue == 0)
			tmpValue = 5959;
		else{
			pTimerValue = digitValues[2]*1000 + digitValues[3]*100 + digitValues[4]*10 + digitValues[5];
			tmpValue = pTimerValue - 1;
			digitValues[2] = tmpValue/1000;
			digitValues[3] = (tmpValue - digitValues[2]*1000)/100;
			digitValues[4] = (tmpValue-digitValues[2]*1000-digitValues[3]*100)/10;
			digitValues[5] = tmpValue-(digitValues[2]*1000+digitValues[3]*100+digitValues[4]*10);
		}
		TimerValue2DigitValues(pTimerValue, digitValues);
	}
}

int main()
{
    init_platform();
    print("\n\rCount down timer started\n\r");

    //	GPIO tri-state configuration
    //	Inputs
    XGpio_WriteReg(XPAR_AXI_GPIO_SWITCHES_BASEADDR, XGPIO_TRI_OFFSET,  0xFFFFFFFF);
    XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR,  XGPIO_TRI_OFFSET,  0xFFFFFFFF);

    //	Outputs
    XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR,     XGPIO_TRI_OFFSET,  0xFFFF0000);
    XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR,  XGPIO_TRI_OFFSET,  0xFFFFFF00);
    XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR,  XGPIO_TRI2_OFFSET, 0xFFFFFF00);

 	// Disable hardware timer
 	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 0x00000000);
	// Set hardware timer load value
    XTmrCtr_SetLoadReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 125000); // Counter will wrap around every 1.25 ms
    XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_LOAD_MASK);
	// Enable hardware timer, down counting with auto reload
    XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_DOWN_COUNT_MASK);

    // Timer event software counter
    unsigned hwTmrEventCount = 0;

    TFSMState     fsmState       = Stopped;
    unsigned char setFlags       = 0x0;
    TButtonStatus buttonStatus   = {FALSE, FALSE, FALSE, FALSE, FALSE, FALSE};
    TTimerValue   timerValue     = {5, 9, 5, 9};
    bool          zeroFlag       = FALSE;

    unsigned char digitEnables   = 0x3C;
    unsigned int  digitValues[8] = {0, 0, 5, 9, 5, 9, 0, 0};
    unsigned char decPtEnables   = 0x00;

    bool          blink1HzStat   = FALSE;
	bool          blink2HzStat   = FALSE;

  	while (1)
  	{
  		unsigned int tmrCtrlStatReg = XTmrCtr_GetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0);

  		if (tmrCtrlStatReg & XTC_CSR_INT_OCCURED_MASK)
		{
  			// Clear hardware timer event (interrupt request flag)
			XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, tmrCtrlStatReg | XTC_CSR_INT_OCCURED_MASK);
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
					digitEnables = 0x3C;
				}
				else
				{
					digitEnables = (~(setFlags << 2)) & 0x3C;
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
