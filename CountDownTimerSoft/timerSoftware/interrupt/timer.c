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
#include "xstatus.h"
#include "platform.h"
#include "xparameters.h"
#include "xintc_l.h"
#include "xil_exception.h"
#include "xgpio_l.h"
#include "xtmrctr_l.h"

/******************* Macros for conditional compilation **********************/

#define __USE_AXI_HW_TIMER__ 	// define if AXI timer is used for timebase
								// do not define if FIT timer is used instead

/************************** Constant Definitions *****************************/

// The following constants map to the XPAR parameters created in
// the xparameters.h file. They are defined here such that a user
// can easily change all the needed parameters in one place

#define INTC_BASEADDR			XPAR_INTC_0_BASEADDR
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID

#ifdef __USE_AXI_HW_TIMER__			// use AXI hardware timer
	#define HARDWARE_TIMER_INT_ID		XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR
	#define HARDWARE_TIMER_INT_MASK		XPAR_AXI_TIMER_0_INTERRUPT_MASK
#else								// use FIT hardware timer
	#define HARDWARE_TIMER_INT_ID		XPAR_MICROBLAZE_0_AXI_INTC_FIT_TIMER_0_INTERRUPT_INTR
	#define HARDWARE_TIMER_INT_MASK		XPAR_FIT_TIMER_0_INTERRUPT_MASK
#endif

#define BUTTONS_INT_ID			XPAR_MICROBLAZE_0_AXI_INTC_AXI_GPIO_BUTTONS_IP2INTC_IRPT_INTR
#define BUTTONS_INT_MASK		XPAR_AXI_GPIO_BUTTONS_IP2INTC_IRPT_MASK

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

/********************** Global variables (module scope) **********************/

static TButtonStatus buttonStatus   = {FALSE, FALSE, FALSE, FALSE, FALSE, FALSE};
static TTimerValue   timerValue     = {5, 9, 5, 9};
static bool          zeroFlag       = FALSE;

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

void RefreshDisplays(unsigned char digitEnables, const unsigned int digitValues[8], unsigned char decPtEnables){

	static unsigned int digitRefreshIdx = 0;
	
	XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA_OFFSET,  ~(1 << digitRefreshIdx));

	unsigned int digit = 0x00;
	if ((digitEnables >> digitRefreshIdx) & 0x01) {
		digit = digit + Bin2Hex(digitValues[digitRefreshIdx]);
	}
	else {
		digit = digit + 0x7F;
	}
	XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR, XGPIO_DATA2_OFFSET, digit);
	

	digitRefreshIdx++;
	digitRefreshIdx &= 0x07;
}

void ReadButtons(TButtonStatus* pButtonStatus){
	unsigned int buttonsPattern;

	buttonsPattern = XGpio_ReadReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_DATA_OFFSET);

	pButtonStatus->upPressed    = buttonsPattern & BUTTON_UP_MASK;
	pButtonStatus->downPressed  = buttonsPattern & BUTTON_DOWN_MASK;
	pButtonStatus->setPressed   = buttonsPattern & BUTTON_CENTER_MASK;
	pButtonStatus->startPressed = buttonsPattern & BUTTON_RIGHT_MASK;
}


void UpdateStateMachine(TFSMState* pFSMState, TButtonStatus* pButtonStatus, bool zeroFlag, unsigned char* pSetFlags){
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

/************************ Interrupt callback functions ***********************/

/* These functions are designed to look like an interrupt handler in a device
   driver. These are typically 2nd level handlers that are called from the
   interrupt controller interrupt handler. These handlers would typically
   perform device specific processing such as reading and writing the
   registers of the device to transfer data and to clear the interrupt
   condition (in the device) and pass any data to an application.

  @param	callbackParam is passed back to the device driver's interrupt
 		handler by the XIntc driver.  It was given to the XIntc driver
 		in the XIntc_Connect() function call. It is typically a pointer
 		to the device driver instance variable if using the Xilinx Level
 		1 device drivers. In this example, we do not care about the
 		callback reference, so we passed it a 0 when connecting the
 		handler to the XIntc driver and we make no use of it here.

  @return	None.

  @note		None.

 IMPORTANT NOTE: time consuming operations must not be executed here!!!
 	 	 	 	 ISR and interrupt callbacks must perform the strictly
 	 	 	 	 necessary and return ASAP. Leave time consuming operations
 	 	 	 	 for the main function (or functions invoked in the context
 	 	 	 	 of the application) - not in the ISR or device driver context

******************************************************************************/

// This function will be called back by the INTC ISR at every timer IRQ
void TimerIntCallbackHandler(void* callbackParam) {
	// Timer event software counter
	static unsigned hwTmrEventCount = 0;
    hwTmrEventCount++;


    // Countdown timer status variables (static variables)
    static TFSMState     fsmState       = Stopped;
    static unsigned char setFlags       = 0x0;

    static unsigned char digitEnables   = 0x3C;
    static unsigned int  digitValues[8] = {0, 0, 9, 5, 9, 5, 0, 0};
    static unsigned char decPtEnables   = 0x00;

    static bool          blink1HzStat   = FALSE;
    static bool          blink2HzStat   = FALSE;


	// Put here operations that must be performed at 800Hz rate
	RefreshDisplays(digitEnables, digitValues, decPtEnables);

	if (hwTmrEventCount % 100 == 0) // 8Hz
	{
		// Put here operations that must be performed at 8Hz rate
		// Read push buttons
		ReadButtons(&buttonStatus);
		// Update state machine
		UpdateStateMachine(&fsmState, &buttonStatus, zeroFlag, &setFlags);
		if ((setFlags == 0x0) || (blink2HzStat)){
			digitEnables = 0x3C; // All digits active
		}
		else{
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


					// JUST FOR DEMONSTRATION PURPOSES
					timerValue.secLSValue++;

					// Reset hwTmrEventCount every second
					hwTmrEventCount = 1;
				}
			}
		}
	}

#ifdef __USE_AXI_HW_TIMER__
	// Clear hardware timer event (interrupt request flag)
	unsigned int tmrCtrlStatReg = XTmrCtr_GetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0);
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, tmrCtrlStatReg | XTC_CSR_INT_OCCURED_MASK);
#endif
}

// This function will be called back by the INTC ISR whenever a button is pressed or released
void ButtonsIntCallbackHandler(void* callbackParam) {
	// Read push buttons
	// Insert your code here...


	// Clear GPIO interrupt request flag
	XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_ISR_OFFSET, XGPIO_IR_CH1_MASK);
}

/************************* Interrupt Setup function **************************/

int SetupInterrupts(u32 intcBaseAddress) {
	// Connect a callback handler that will be called by the ISR when
	// an interrupt for the timer occurs, to perform the specific
	// interrupt processing for that device
	XIntc_RegisterHandler(intcBaseAddress, HARDWARE_TIMER_INT_ID,
						  (XInterruptHandler)TimerIntCallbackHandler, (void *)0);

	// Enable interrupts at the buttons GPIO
	XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_IER_OFFSET, XGPIO_IR_CH1_MASK);
	XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_GIE_OFFSET, XGPIO_GIE_GINTR_ENABLE_MASK);


	// Connect a callback handler that will be called by the ISR when
	// an interrupt for the buttons GPIO occurs, to perform the specific
	// interrupt processing for that device
	XIntc_RegisterHandler(intcBaseAddress, BUTTONS_INT_ID,
						  (XInterruptHandler)ButtonsIntCallbackHandler, (void *)0);

	// Enable interrupts for all devices that cause interrupts, and enable
	// the INTC master enable bit
	XIntc_EnableIntr(intcBaseAddress, HARDWARE_TIMER_INT_MASK | BUTTONS_INT_MASK);

	// Set the hardware and the master interrupt enable bits
	XIntc_Out32(intcBaseAddress + XIN_MER_OFFSET, XIN_INT_HARDWARE_ENABLE_MASK |
												  XIN_INT_MASTER_ENABLE_MASK);

	// This step is processor specific, connect the handler for the
	// interrupt controller to the interrupt source for the processor
	Xil_ExceptionInit();

	// Register the interrupt controller handler with the exception table
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
								 (Xil_ExceptionHandler)XIntc_DeviceInterruptHandler,
								 INTC_DEVICE_ID);

	// Enable exceptions
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/******************************* Main function *******************************/

int main() {
	int status;

	init_platform();

	xil_printf("\n\n\rCount down timer - interrupt based version.\n\rConfiguring...");

    //	GPIO tri-state configuration
    //	Inputs
    XGpio_WriteReg(XPAR_AXI_GPIO_SWITCHES_BASEADDR, XGPIO_TRI_OFFSET,  0xFFFFFFFF);
    XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR,  XGPIO_TRI_OFFSET,  0xFFFFFFFF);

    //	Outputs
    XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR,     XGPIO_TRI_OFFSET,  0xFFFF0000);
    XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR,  XGPIO_TRI_OFFSET,  0xFFFFFF00);
    XGpio_WriteReg(XPAR_AXI_GPIO_DISPLAY_BASEADDR,  XGPIO_TRI2_OFFSET, 0xFFFFFF00);

    xil_printf("\n\rIOs configured.");

#ifdef __USE_AXI_HW_TIMER__
    // Disable hardware timer
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 0x00000000);
	// Set hardware timer load value
	XTmrCtr_SetLoadReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 125000); // Counter will wrap around every 1.25 ms
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_LOAD_MASK);
#endif

	// Run the low level example of Interrupt Controller, specify the Base
	// Address generated in xparameters.h.
	status = SetupInterrupts(INTC_BASEADDR);
	if (status != XST_SUCCESS)
	{
		xil_printf("\n\rInterrupts setup failed\r\nExiting...");
		cleanup_platform();
		return XST_FAILURE;
	}
	xil_printf("\n\rInterrupts setup successful.");

#ifdef __USE_AXI_HW_TIMER__
	// Enable hardware timer, down counting with auto reload
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_ENABLE_TMR_MASK  |
															  XTC_CSR_ENABLE_INT_MASK  |
															  XTC_CSR_AUTO_RELOAD_MASK |
															  XTC_CSR_DOWN_COUNT_MASK);
	xil_printf("\n\rAXI timer configured.");
#else
	xil_printf("\n\rUsing FIT timer.");
#endif

	xil_printf("\n\rSystem running.\n\r");

	while (1) {
		// Put here operations that are performed whenever possible

		// JUST FOR DEMONSTRATION PURPOSES
		xil_printf("\r%d", timerValue.secLSValue);
		XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR, XGPIO_DATA_OFFSET, timerValue.secLSValue);
	}

    cleanup_platform();
    return XST_SUCCESS;
}
