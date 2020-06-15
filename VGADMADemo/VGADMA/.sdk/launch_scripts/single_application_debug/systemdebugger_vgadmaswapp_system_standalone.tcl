connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys4 210274505292A" && level==0} -index 0
fpga -file C:/Users/asroliveira/CloudStation/CR/VGADMA/VGADMASwApp/_ide/bitstream/mb_design_wrapper.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/asroliveira/CloudStation/CR/VGADMA/VGADMASwApp/Debug/VGADMASwApp.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
