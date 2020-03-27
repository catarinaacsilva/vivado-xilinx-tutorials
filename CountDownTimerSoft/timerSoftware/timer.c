#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpio_l.h"
#include "xtmrctr_l.h"


static unsigned int initialMinutes = 59;
static unsigned int initialSeconds = 59;
static unsigned int minutes;
static unsigned int seconds;
//static unsigned int enable = 1;
static unsigned int start_stop = 0;
static unsigned int set = 0;
//static unsigned int digitPosition = 0; conseguimos controlar com o an?
static unsigned int hasStarted = 0;
static unsigned int reset = 0;

/**
 * Displays
 * 
 * */
unsigned char Bin2Hex(unsigned char value) {
	static unsigned char disp7SegMapTable[10] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10};

	return disp7SegMapTable[value];
}

/**
 * Detect rising edge to use buttons
 * return 1 - rising_edge
 * return 0 - no rising_edge
 * 
 * */
int DetectRisingEdge(unsigned int oldValue, unsigned int newValue, unsigned char bitIndex) {
	unsigned int mask = 1 << bitIndex;

	return ((~oldValue & mask) & (newValue & mask)) == mask;
}

/**
 * Logic of timer
 *  */
void countDownTimer(){

}

int state_an(){
    
}

/**
 * Increment or decremente based on button.
 * state: should be 0, 1, 2, 3 (each of the displays)
 * */
void Button_update_values(int state){
    unsigned int value = XGpio_ReadReg(XPAR_AXI_GPIO_PUSH_BUT_BASEADDR, XGPIO_DATA_OFFSET);

    // Button up
    if(value & 1){
        if(!hasStarted){
            if(state == 0){ //seg less significant
                if(initialSeconds % 10!=9){
                    initialSeconds = initialSeconds + 1;
                }
                else{
                    initialSeconds = initialSeconds - 9;
                }
            }
            else if(state==1){
                if (initialSeconds<50)
                    initialSeconds = initialSeconds + 10;
                else
                    initialSeconds = initialSeconds % 10;
            }
            else if(state==2){
                if(initialMinutes % 10 != 9)
                    initialMinutes = initialMinutes + 1;
                else
                    initialMinutes = initialMinutes - 9;
            }
            else if(state==3){
                if(initialMinutes<50)
                    initialMinutes = initialMinutes + 10;
                else
                    initialMinutes = initialMinutes % 10;
            }
            minutes = initialMinutes;
		    seconds = initialSeconds; 
        }
    }

    //

    // set button
    if(value & 1<<1){
	    digitPosition = (digitPosition+1) % 4; // circular
	}



}

/**
 * Control Unit
 * The timer starts on stop mode
 * start_stop =  1 -> start
 * start_stop =  0 -> stop
 * */
void fsm(){
    int nextState = 0;
    while(start_stop == 1){
        countDownTimer(); 
        if (reset = 1 || start_stop = 1)
            start_stop = 0;
    }
    while(start_stop == 0){
        for(int i=0; i<4; i++){
            if(set==1)
                nextState ++;
        }
        if(button_up == 1){

        }

        if(button_down == 1){

        }

    }



}


void main(){
    // Disable timer
 	//XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 0x0);

	// Set timer load value
    //XTmrCtr_SetLoadReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 500000000);
    //XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_LOAD_MASK);

	// Enable timer, down counting with auto reload
    //XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_DOWN_COUNT_MASK);

    //TODO: processo de contagem

    countDownTimer();

  	while (1) {
  		// Print current count register
  		xil_printf("\r\n%09d", XTmrCtr_GetTimerCounterReg(XPAR_AXI_TIMER_0_BASEADDR, 0));

		// Detection using polling of timer event
  		unsigned int tmrCtrlStatReg = XTmrCtr_GetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0);

        // TODO: enviar o valor para os displays
  		if (tmrCtrlStatReg & XTC_CSR_INT_OCCURED_MASK) {
  			//Enviar o valor para os displays

			XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, tmrCtrlStatReg | XTC_CSR_INT_OCCURED_MASK);
		}
   	}

    cleanup_platform();
    return 0;
}