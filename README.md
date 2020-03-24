# Vivado tutorial 

This repository provides some project example or tutorials about use Vivado 2019.2.

The idea is to learn more about that and provides some ways to implement projects like this.


## Requirements

- Vivado 2019.2
- Nexys4 Digilent Xilinx (FPGA)
- Vhdl

## Create project - FPGA

- `xc7a100tcsg324-1`

## Struct of these tutorials

Each directory is a different project with new challenges.

## Notes

- The XDC constraint file assigns the physical IO locations on FPGA to the pins located on the board. It is necessary, to each project, uncomment the lines corresponding to used pins. Sometimes, should be necessary rename the used ports (in each line, after get_ports) according to the top level signal names in the project.

    - Nexys4_Master.xdc

## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details