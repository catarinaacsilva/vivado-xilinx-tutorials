# Vivado Tutorial




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
2. 

## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details