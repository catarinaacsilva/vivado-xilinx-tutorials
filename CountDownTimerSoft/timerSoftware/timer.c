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
static unsigned int start = 0;
static unsigned int stop = 0;
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
	static unsigned char displayMap[10] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10};

	return displayMap[value];
}

/**
 * Detect rising edge to use buttons
 * return 1 - rising_edge
 * 
 * */
int DetectRisingEdge(unsigned int oldValue, unsigned int newValue, unsigned char bitIndex) {
	unsigned int mask = 1 << bitIndex;

	return ((~oldValue & mask) & (newValue & mask)) == mask;
}


/**
 * 
 * Send to displays the value of counter
 * 
 * digit - digit sends to display
 * an    - select the display
 * */
void send2Displays(digit, an){
    XGpio_WriteReg(XPAR_AXI_GPIO_DISP_AN_BASEADDR, XGPIO_DATA_OFFSET, an);
    XGpio_WriteReg(XPAR_AXI_GPIO_DISP_SEG_BASEADDR, XGPIO_DATA_OFFSET, displayMap[digit]);
}

/**
 * Logic of timer - normal count
 *  */
void countDownTimer(){
    unsigned int value = 0, tmpValue = 0;

    while(start == 1){
        if(value == 0)
            tmpValue = 5959;
        else{
            value = digit3*1000 + digit2*100 + digit1*10 + digit0;
            tmpValue = value - 1;
            digit3 = tmpValue/1000;
            digit2 = (tmpValue - digit3*1000)/100;
            digit1 = (tmpValue-digit3*1000-digit2*100)/10;
            digit0 = tmpValue-(digit3*1000+digit2*100+digit1*10);
        }
        send2Displays(digit3, 0xFE);
        send2Displays(digit2, 0xFD);
        send2Displays(digit1, 0xFB);
        send2Displays(digit0, 0xF7);
        
    }

}


/**
 * 
 * When button set is pressed
 * 
 * return the state of fsm
 * */
unsigned int button_set(){
    unsigned int state = 0; // state of fsm
    if((set == 1) && (hasStarted == 0)){
	    state = (state+1) % 4; // circular
	}
    return state;
}


/**
 * 
 * When button reset is pressed
 * */
void button_reset(){
    if((reset == 1) && (hasStarted == 1)){
        digit0 = 9;
        digit1 = 5;
        digit2 = 9;
        digit3 = 5;
        start  = 0;
        stop   = 1; // quando faz reset fica no estado stop
    }
}

/**
 * 
 * When button down is pressed
 * */
void button_down(){
    unsigned int an = 0, digit = 0;
    unsigned int state = button_set();
    if(down == 1){
        if(!hasStarted){
            if(state == 0){ //seg less significant
                if(digit0 <= 9 && digit0 >= 0){
                    digit0 --;
                }
                else{
                    digit0 = 9;
                }
                digit = digit0;
            }
            else if(state==1){
                if(digit1 <= 9 && digit1 >= 0){
                    digit1 --;
                }
                else{
                    digit1 = 9;
                }
                digit = digit1;
            }
            else if(state==2){
               if(digit2 <= 9 && digit2 >= 0){
                    digit2 --;
                }
                else{
                    digit2 = 9;
                }
                digit = digit2;
            }
            else if(state==3){
                if(digit3 <= 9 && digit3 >= 0){
                    digit3 --;
                }
                else{
                    digit3 = 9;
                }
                digit = digit3;
            }

            // send to diplays
            send2Displays(digit, an);
        }
    }
}

/**
 * 
 * When button up is pressed
 * */
void button_up(){
    unsigned int an = 0, digit = 0;
    unsigned int state = button_set();
    if(up == 1){
        if(!hasStarted){
            if(state == 0){ //seg less significant
                an = 0xFE;
                if(digit0 <= 9 && digit0 >= 0){
                    digit0 ++;
                }
                else{
                    digit0 = 0;
                }
                digit = digit0;
            }
            else if(state==1){
                an = 0xFD;
                if(digit1 <= 9 && digit1 >= 0){
                    digit1 ++;
                }
                else{
                    digit1 = 0;
                }
                digit = digit1;
            }
            else if(state==2){
                an = 0xFB;
                if(digit2 <= 9 && digit2 >= 0){
                    digit2 ++;
                }
                else{
                    digit2 = 0;
                }
                digit = digit2;
            }
            else if(state==3){
                an = 0xF7;
                if(digit3 <= 9 && digit3 >= 0){
                    digit3 ++;
                }
                else{
                    digit3 = 0;
                }
                digit = digit3;
            }
            
            // send to diplays
            send2Displays(digit, an);
        }
    }
}

/**
 * Control Unit
 * The timer starts on stop mode
 * 
 * */
void fsm(){
    while(start == 1){
        countDownTimer();
        hasStarted = 1;
        if (stop == 1)
            break;
    }       
    while(stop == 1){
        hasStarted = 0;
        //	Buttons rising-edge detection
        unsigned int set_oldValue = 0xFF;
        for(int i=0; i<=4; i++){
            if(DetectRisingEdge(set_oldValue, set, i)){
                //	Buttons rising-edge detection
                unsigned int up_oldValue = 0xFF;
                unsigned int down_oldValue = 0xFF;
                if(DetectRisingEdge(up_oldValue, up, i))
                    button_up();
                else if(DetectRisingEdge(down_oldValue, down, i))
                    button_down();
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