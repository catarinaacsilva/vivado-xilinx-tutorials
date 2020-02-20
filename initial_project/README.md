# Vivado Tutorial

Based on [Tutorial Vivado 2013](https://www.xilinx.com/support/documentation/university/Vivado-Teaching/HDL-Design/2013x/Nexys4/Verilog/docs-pdf/Vivado_tutorial.pdf)


## Requirements

- Vivado 2019.2

## Create project

1. Open Vivado
2. Create `New project`
3. Click on `next`
4. Insert `Project name` and `Project location`
5. Click on `Next`
6. Select `RTL Project`
7. Select `VHDL` as `Target language`a and `Simulate language`
8. Click on `Next`
9. Add file (e.g. tutorial.vhd)
10. Click on `Next`
11. Click `Next` at the `Add Existing IP form`   (verify in this version)
12. Add file .xdc to `Add Constraints forms`
13. Click on `Next`
14. Select `xc7a100tcsg324-1` for Nexys4 DDR and click on `Next`
15. Click on `Finish`

## First use

1. Open/create/write .vhd file source and analyze/create the content **Note**: this file will be on `Design Sources`
2. Edit .xdc file (Sources/Constraints/constr_1/Nexys4_Master.xdc). To the example tutorial.vhd, it is necessary unncomment `SW[7:0]` and `LED[7:0]`. 

    2.1. So, you must unncoment what you need on .vhd file. 

    2.2. To unncoment several lines, you can use `Toggle Line Comments` on vivado interface or use right buttom of mouse.

## Perform RTL analysis on the source file. 

1. On left menu of Vivado Interface, open `RTL Analysis`
2. Open `Open Elaborated Design`
3. Select `Schematic`
4. A logic view of the design is displayed. 

## I/O constraints  

1. Select `I/O Planning` on upper right corner `Default Layout`

## Add sources

1. On sources menu, use right click to open menu
2. Select `Add Sources`
3. Select option that you want:

    3.1. If you add **testbench** file: `Add or create simulation sources`
4. Select file and `Add`
5. Click on `Finish`

If you add testbench file:

- On menu of sources was created a menu `Simulation Sources` with `sim_1` and inside of that you can find file of testbench.

## Simulate the design for 1000 ns using the XSIM simulator.

1. On lateral menu, click on `Settings` and change the `Simulation time` to 1000ns on `Simulation` tag. Cick `Apply` and then `OK`.
2.  Select tutorial_tb and click on `Run Simulation` under the `Flow Navigator`pane. select `Run Behavioral Simulation`.

## Synthesize the Design

1. Click on Run Synthesis under the `Synthesis tasks` of the `Flow Navigator` pane.
2. Select the `Open Synthesized` Design option and click `OK` as we want to look at the synthesis output before progressing to the implementation stage.
3. Select the `Project Summary` tab and understand various windows 
4. Click on the `Dashboard` link in the Project Summary tab.
5. Click on Schematic under the Synthesized Design tasks of Synthesis tasks of the Flow Navigatorpane to view the synthesized design in schematic view

## Implement the Design

1. Select `tutorial` under the `Design Sources `group, and click on `Run Implementation` under the `Implementation` tasks of the `Flow Navigator` pane.
2. Select `Open Implemented Design` and click `OK` as we want to look at the implementation output.
3. Select the `Project Summary` tab and observe the results.  

## Perform Timing Simulation 

1. Click on `Run Simulation` under `Simulation` in the `Flow Navigator` pane.
2. Select `Run Post-ImplementationTiming Simulation`
3. lick on the `Zoom Fit` button to see the waveform window from 0 to 1000 ns.
4. Left click at 110 ns (where the switch input changes to 0000010b. Click on the Add Markerbutton. 
5. Drag the marker to where `leds` change (at the 114 ns mark).
6. Click on the `Add Marker` button again and move to where led_exp_out changes (180 ns).
7. Close the simulator by selecting `File > Close simulation` without saving any changes. 


## Generate the Bitstream and Verify Functionality 

1. Make sure that the power supply source jumper is set to USB
2. Connect the board and power it ON. 
3. Power ON the switch on the board.
4. Click on the `Generate Bitstream` entry under the `Program and Debug` tasks of the `Flow Navigator` pane.
5. Select the `Open Hardware Manager` option and click `OK`.
6. Click on the `Open target` link
7. Select `Auto Connect`
8. lick on the `Program device` and select the unique option should be available
9. Verify the functionality by flipping switches and observing the output on the LEDs.
10. Close the hardware session by selecting `File > Close Hardware Manager`.
11. Power OFF the board. 

## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details


Ativos low
segmentos