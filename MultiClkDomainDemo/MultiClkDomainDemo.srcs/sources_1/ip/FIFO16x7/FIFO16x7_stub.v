// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon May 21 20:25:02 2018
// Host        : id4552 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top FIFO16x7 -prefix
//               FIFO16x7_ FIFO16x7_stub.v
// Design      : FIFO16x7
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_1,Vivado 2017.4" *)
module FIFO16x7(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[6:0],wr_en,rd_en,dout[6:0],full,empty" */;
  input clk;
  input srst;
  input [6:0]din;
  input wr_en;
  input rd_en;
  output [6:0]dout;
  output full;
  output empty;
endmodule
