vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/microblaze_v11_0_2
vlib riviera/xil_defaultlib
vlib riviera/lmb_v10_v3_0_10
vlib riviera/lmb_bram_if_cntlr_v4_0_17
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_17
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_intc_v4_1_14
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_20
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_19
vlib riviera/axi_crossbar_v2_1_21
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_22
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_24
vlib riviera/axi_timer_v2_0_22
vlib riviera/xlconstant_v1_1_6
vlib riviera/xlconcat_v2_1_3

vmap xpm riviera/xpm
vmap microblaze_v11_0_2 riviera/microblaze_v11_0_2
vmap xil_defaultlib riviera/xil_defaultlib
vmap lmb_v10_v3_0_10 riviera/lmb_v10_v3_0_10
vmap lmb_bram_if_cntlr_v4_0_17 riviera/lmb_bram_if_cntlr_v4_0_17
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_17 riviera/mdm_v3_2_17
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_intc_v4_1_14 riviera/axi_intc_v4_1_14
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 riviera/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 riviera/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 riviera/axi_crossbar_v2_1_21
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_22 riviera/axi_gpio_v2_0_22
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_24 riviera/axi_uartlite_v2_0_24
vmap axi_timer_v2_0_22 riviera/axi_timer_v2_0_22
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6
vmap xlconcat_v2_1_3 riviera/xlconcat_v2_1_3

vlog -work xpm  -sv2k12 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_2 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/ip/mb_design_1_microblaze_0_0/sim/mb_design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_10 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/ip/mb_design_1_dlmb_v10_0/sim/mb_design_1_dlmb_v10_0.vhd" \
"../../../bd/mb_design_1/ip/mb_design_1_ilmb_v10_0/sim/mb_design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_17 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/ip/mb_design_1_dlmb_bram_if_cntlr_0/sim/mb_design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/mb_design_1/ip/mb_design_1_ilmb_bram_if_cntlr_0/sim/mb_design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../bd/mb_design_1/ip/mb_design_1_lmb_bram_0/sim/mb_design_1_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_17 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/ip/mb_design_1_mdm_1_0/sim/mb_design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../bd/mb_design_1/ip/mb_design_1_clk_wiz_1_0/mb_design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/mb_design_1/ip/mb_design_1_clk_wiz_1_0/mb_design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/ip/mb_design_1_rst_clk_wiz_1_100M_0/sim/mb_design_1_rst_clk_wiz_1_100M_0.vhd" \

vcom -work axi_intc_v4_1_14 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/f78a/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/ip/mb_design_1_axi_intc_0_0/sim/mb_design_1_axi_intc_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../bd/mb_design_1/ip/mb_design_1_xbar_0/sim/mb_design_1_xbar_0.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_22 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/f71e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/ip/mb_design_1_axi_gpio_0_0/sim/mb_design_1_axi_gpio_0_0.vhd" \
"../../../bd/mb_design_1/ip/mb_design_1_axi_gpio_1_0/sim/mb_design_1_axi_gpio_1_0.vhd" \
"../../../bd/mb_design_1/ip/mb_design_1_axi_gpio_2_0/sim/mb_design_1_axi_gpio_2_0.vhd" \
"../../../bd/mb_design_1/ip/mb_design_1_axi_gpio_3_0/sim/mb_design_1_axi_gpio_3_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_24 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/ip/mb_design_1_axi_uartlite_0_0/sim/mb_design_1_axi_uartlite_0_0.vhd" \

vcom -work axi_timer_v2_0_22 -93 \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/a141/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/ip/mb_design_1_axi_timer_0_0/sim/mb_design_1_axi_timer_0_0.vhd" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../bd/mb_design_1/ip/mb_design_1_xlconstant_0_1/sim/mb_design_1_xlconstant_0_1.v" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/4fba" "+incdir+../../../../CounterDownTimerSoft.srcs/sources_1/bd/mb_design_1/ipshared/ec67/hdl" \
"../../../bd/mb_design_1/ip/mb_design_1_xlconcat_0_2/sim/mb_design_1_xlconcat_0_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design_1/sim/mb_design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

