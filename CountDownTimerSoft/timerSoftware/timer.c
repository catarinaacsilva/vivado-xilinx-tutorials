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
#include "xgpio_l.h"
#include "xtmrctr_l.h"

//-----------------digits-----------------
static unsigned int digit0 = 9;
static unsigned int digit1 = 5;
static unsigned int digit2 = 9;
static unsigned int digit3 = 5;
static unsigned int value0 = 9;
static unsigned int value1 = 5;
static unsigned int value2 = 9;
static unsigned int value3 = 5;
// ---------------end digits----------------
// -----------------Buttons-----------------
static unsigned int reset = 0;
static unsigned int start_stop = 0;
static unsigned int set = 0;
static unsigned int up, down = 0;
// ---------------end buttons---------------
// ------------Vars like booleans-----------
static unsigned int hasStarted = 0;
//-----------end vars like booleans---------


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


void button_set(){
    unsigned int value = XGpio_ReadReg(XPAR_AXI_GPIO_PUSH_BUT_BASEADDR, XGPIO_DATA_OFFSET);
    if(value & 1<<1){
	    state = (state+1) % 4; // circular
	}
}

void button_reset(){
    unsigned int value = XGpio_ReadReg(XPAR_AXI_GPIO_PUSH_BUT_BASEADDR, XGPIO_DATA_OFFSET);
    if(value & 1){
        value0 = 9;
        value1 = 5;
        value2 = 9;
        value3 = 5;
        start_stop = 0; // reset -> state = stop
    }
}

void button_down(){
    unsigned int value = XGpio_ReadReg(XPAR_AXI_GPIO_PUSH_BUT_BASEADDR, XGPIO_DATA_OFFSET);
    if(value & 1 & (down == 1)){
        if(!hasStarted){
            if(state == 0){ //seg less significant
                if(digit0 <= 9 && digit0 >= 0){
                    digit0 --;
                }
                else{
                    digit0 = 9;
                }
            }
            else if(state==1){
                if(digit1 <= 9 && digit1 >= 0){
                    digit1 --;
                }
                else{
                    digit1 = 9;
                }
            }
            else if(state==2){
               if(digit2 <= 9 && digit2 >= 0){
                    digit2 --;
                }
                else{
                    digit2 = 9;
                }
            }
            else if(state==3){
                if(digit3 <= 9 && digit3 >= 0){
                    digit3 --;
                }
                else{
                    digit3 = 9;
                }
            }
            value0 = digit0;
            value1 = digit1;
            value2 = digit2;
            value3 = digit3;
        }
    }
}


void button_up(){
    unsigned int value = XGpio_ReadReg(XPAR_AXI_GPIO_PUSH_BUT_BASEADDR, XGPIO_DATA_OFFSET);
    if(value & 1 & (up == 1)){
        if(!hasStarted){
            if(state == 0){ //seg less significant
                if(digit0 <= 9 && digit0 >= 0){
                    digit0 ++;
                }
                else{
                    digit0 = 0;
                }
            }
            else if(state==1){
                if(digit1 <= 9 && digit1 >= 0){
                    digit1 ++;
                }
                else{
                    digit1 = 0;
                }
            }
            else if(state==2){
                if(digit2 <= 9 && digit2 >= 0){
                    digit2 ++;
                }
                else{
                    digit2 = 0;
                }
            }
            else if(state==3){
                if(digit3 <= 9 && digit3 >= 0){
                    digit3 ++;
                }
                else{
                    digit3 = 0;
                }
            }
            value0 = digit0;
            value1 = digit1;
            value2 = digit2;
            value3 = digit3;
        }
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