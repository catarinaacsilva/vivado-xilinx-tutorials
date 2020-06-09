-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../MultiClkDomainDemo.srcs/sources_1/ip/ClkGenerator/ClkGenerator_clk_wiz.v" \
  "../../../../MultiClkDomainDemo.srcs/sources_1/ip/ClkGenerator/ClkGenerator.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

