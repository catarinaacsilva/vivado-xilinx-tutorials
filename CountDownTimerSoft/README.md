# Count Down Timer - Software

Count Down Timer based on software implementation.


## Requirements

- [Xilinx Vitis 2019.2 (Software Development Kit)](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html)

    - Xilinx registry website
    - 15GB of download
    - 77GB of the disk during the instalation
    - 37GB of the disk at the end of instalation

- Windows 10

## Installation of Vitis 2019.2

1. Select Install type: Insert your credentials and select `download and install now`
2. Accept all the License agreements
3. Select the first one option: `vitis`
4. On `Vitis Unified Software Platform` select the follows options: `Vitis Unified Software Platform` (All on this subset); `DocNav`; `7 series` (All on this subset); `Acquire or Manage a License Key`; `Enable WebTalk for Vivado to send usage statistics to Xilinx (Always enabled for WebPack license)`
5. Choose the directory to instalation
6. Install
7. Load license

**Driver to Linux** 

1. Run: `cd <VIVADO_INSTALL_PATH>/2019.2/data/xicom/cable_drivers/lin64/install_script/install_drivers/`

2. Run: `sudo ./install_drivers`


## Create project -  Vivado

1. Open Vivado

2. File -> Project -> New

3. Sign a name to project and the directory to storage the project.

4. At `Default Part` select `Boards` and write on seach field `Nexys4`.

5. `Create Block Design` on right panel.

6. Add (+) `Microblaze` and insert 64kb on Local Memory

7. `Run Block Automation`

8. Add Interrupt controller

9. `Run connection Automation` and select all the options

10. The reset must be shared by the components (like photo)

11. Double click on clocking wizard, then click on output clocks and finnaly set reset active low

12. Add reset like on photo

13. Fix error on the name of clk on clocking wizard: double click, then on board and change clk_in1 to sysclk

14. `Run connection Automation` again

15. Click on + and add gpio

16. `Run connection Automation` and select all the options

17. GPIO connect a switches

18. Change name of the axi_gpio_ to axi_gpio_switches

19. Add more 3 GPIO and double click to edit gpi01 to leds, push_buttons and seven_seg_led_an.

        19.1 gpio0 - leds
        19.2 gpio1 - push_buttons_5bits
        19.3 gpio2 - seven_seg_led_an

20. Double click on gpio connected to display. The gpio2 must be connected to segs: `dual seven`

21. `Run connection Automation`

22. Change name of these 3 gpio:

        22.1 gpio0 - axi_gpio_leds
        22.2 gpio1 - axi_gpio_buttons
        22.3 gpio2 - axi_gpio_display

23. Click on + and add a UART: `UARTLITE`

24. Click on + and add a timer: `AXI Timer`

25. `Run connection Automation`

26. Double click on timer and deactivate `Timer2` (remove enable)

27. Double click on UART to check:

    - baudrate = 9600
    - no parity
    - 8 bits data

28. Connect to ground: Add a constant and concat and connect like on [mb_design_1.pdf](https://github.com/catarinaacsilva/vivado-xilinx-tutorials/blob/master/CountDownTimerSoft/mb_design_1.pdf). The output of constante must be 0.

29. Right buttom on mb_desing (on design sources) and click on `Create HDL wrapper`

30. mb_desing_i: mb_design (...) click on `Generate Output Products` and then `Generate`

31. Store asx file on Vivado project directory.

31. File - Export - Export hardware - Include bitstream - Ok - Tools - Launch vitis

## Create project - Vitis

1. Select a directory as workspace: Choose dircetory of vivado project

2. Select Vitis Application Project and write a project name.

3. Select `Create from hardware`

4. Import de asx file resulting form vivado and stored on Vivado project directory: Use `+` on menu.

5. It isn't necessary change anything.

## Deploy

When you are finished the vivado project and before the init the vitis project you must be this [architecture](https://github.com/catarinaacsilva/vivado-xilinx-tutorials/blob/master/CountDownTimerSoft/mb_design_1.pdf).

[helloworld](https://github.com/catarinaacsilva/vivado-xilinx-tutorials/blob/master/CountDownTimerSoft/helloworld.c) is a intitial file to test and it should be used as tutorial to first experience with the system. You can uncomment some parts of the code to test on FPGA and terminal.

## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details