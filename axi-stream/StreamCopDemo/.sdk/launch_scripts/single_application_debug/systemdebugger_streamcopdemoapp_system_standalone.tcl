connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys4 210274504848A" && level==0} -index 0
fpga -file C:/Users/catar/Desktop/git/vivado-xilinx-tutorials/axi-stream/StreamCopDemo/StreamCopDemoApp/_ide/bitstream/mb_design_wrapper.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
