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

- On menu of sources ws created a menu `Simulation Sources` with `sim_1` and inside of that you can find file of testbench.

**Testbench**: 

The VHDL testbench has the same structure as any VHDL design source code. There are a few exceptions that need some explanation. After the library declarations, note that the Entity declaration is left empty on Lines 16 and 17. The Unit Under Test (UUT; or the VHDL code being simulated) is instantiated as a component declaration from Lines 20 to 25.To generate the expected results during simulation, Lines 38 through 48 emulate the behavior of the UUT. Lines 49 to 52 is the port declaration for the UUT. Lines 56 through 86 define the stimuli generation and compares the expected output against the UUT output. Line 87 ends the testbench. 

## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details