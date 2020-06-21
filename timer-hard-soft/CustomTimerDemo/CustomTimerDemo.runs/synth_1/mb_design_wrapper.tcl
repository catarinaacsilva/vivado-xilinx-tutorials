# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 1
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.cache/wt [current_project]
set_property parent.project_path C:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:nexys4:part0:1.1 [current_project]
set_property ip_repo_paths c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/ip_repo/Nexys4DisplayPort_1.0 [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/hdl/mb_design_wrapper.vhd
add_files C:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/mb_design.bd
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_microblaze_0_0/mb_design_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_microblaze_0_0/mb_design_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_microblaze_0_0/mb_design_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_dlmb_v10_0/mb_design_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_dlmb_v10_0/mb_design_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_ilmb_v10_0/mb_design_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_ilmb_v10_0/mb_design_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_dlmb_bram_if_cntlr_0/mb_design_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_ilmb_bram_if_cntlr_0/mb_design_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_lmb_bram_0/mb_design_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_xbar_0/mb_design_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_microblaze_0_axi_intc_0/mb_design_microblaze_0_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_microblaze_0_axi_intc_0/mb_design_microblaze_0_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_microblaze_0_axi_intc_0/mb_design_microblaze_0_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_mdm_1_0/mb_design_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_mdm_1_0/mb_design_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_clk_wiz_1_0/mb_design_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_clk_wiz_1_0/mb_design_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_clk_wiz_1_0/mb_design_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_0/mb_design_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_0/mb_design_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_0/mb_design_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_0_0/mb_design_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_0_0/mb_design_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_0_0/mb_design_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_1_0/mb_design_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_1_0/mb_design_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_1_0/mb_design_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_2_0/mb_design_axi_gpio_2_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_2_0/mb_design_axi_gpio_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_2_0/mb_design_axi_gpio_2_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_3_0/mb_design_axi_gpio_3_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_3_0/mb_design_axi_gpio_3_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_gpio_3_0/mb_design_axi_gpio_3_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_uartlite_0_0/mb_design_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_uartlite_0_0/mb_design_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_uartlite_0_0/mb_design_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_timer_0_0/mb_design_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_axi_timer_0_0/mb_design_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_fit_timer_0_0/mb_design_fit_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/mb_design_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/timer-hard-soft/CustomTimerDemo/CustomTimerDemo.srcs/sources_1/bd/mb_design/ip/mb_design_microblaze_0_0/data/mb_bootloop_le.elf]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top mb_design_wrapper -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef mb_design_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file mb_design_wrapper_utilization_synth.rpt -pb mb_design_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
