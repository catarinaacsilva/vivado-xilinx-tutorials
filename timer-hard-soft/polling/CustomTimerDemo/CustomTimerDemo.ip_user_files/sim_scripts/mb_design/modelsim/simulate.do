onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L microblaze_v11_0_2 -L xil_defaultlib -L lmb_v10_v3_0_10 -L lmb_bram_if_cntlr_v4_0_17 -L blk_mem_gen_v8_4_4 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_20 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_19 -L axi_crossbar_v2_1_21 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_14 -L xlconcat_v2_1_3 -L mdm_v3_2_17 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_22 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_24 -L axi_timer_v2_0_22 -L fit_timer_v2_0_10 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.mb_design xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {mb_design.udo}

run -all

quit -force
