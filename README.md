# Vivado tutorial 

This repository provides some project example or tutorials about use Vivado 2019.2.

The idea is to learn more about that and provides some ways to implement projects like this.

Apply to Reconfigurable Computing.

## Requirements

- Vivado 2019.2
- Nexys4 Digilent Xilinx (FPGA)
- Vhdl

## Create project - FPGA

- `xc7a100tcsg324-1`

## Structure of these tutorials

Each directory is a different project with new challenges.

- **initial_project**: First project with the Xilinx Vivado IDE and the Digilent Nexys 4 kit
- **hardwareInferred**: Implementation of some simple examples just on hardware
- **nexys4DispDriver**: Implementation of a module to control the 7-segment displays of the Digilent Nexys 4 kit
- **timer-Hardware**: Implementation of countdown timer with countdown entirely in hardware
- **timer-software**: Software implementation of a countdown timer
- **timer-soft-hard**: Implementation in software and specialized hardware of a countdown timer
- **rtos** : Software implementation to be performed on an RTOS and specialized hardware of a countdown timer
- **axi-stream**: Implementation of specialized hardware coprocessors with AXI stream interfaces to accelerate "reverse endianess" and "population count" operations
- **dma**: Use of DMA transfers between memory and a coprocessor / peripheral with AXI4 stream interface
- **MultiClkDomainDemo**: Systems with multiple clock domains


- **nexys4DefaultPlatform**: Auxiliar default platform
- **PlatformWithExtMemory**: Auxiliar platform with external memory

## Important steps when finish a project

**On Vivado:**

- Generate Output Products
- Create HDL Wrapper
- Synthesis
- Implementation
- Generate Bitstream
- Export Hardware (Include bitstream)

**On Vitis:**

- Update Hardware Specification
- Hardware platform build
- Save all the files (.c, .ld, etc…)
- Application build

## Notes

- The XDC constraint file assigns the physical IO locations on FPGA to the pins located on the board. It is necessary, to each project, uncomment the lines corresponding to used pins. Sometimes, should be necessary rename the used ports (in each line, after get_ports) according to the top level signal names in the project.

    - Nexys4_Master.xdc

## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
