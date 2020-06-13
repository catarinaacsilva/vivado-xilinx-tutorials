// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Jun 14 00:41:46 2020
// Host        : GreatAtuin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/axi-stream/PopulationCounter/PopulationCounter.srcs/sources_1/bd/mb_design/ip/mb_design_PopulationCounterCop_0_0/mb_design_PopulationCounterCop_0_0_sim_netlist.v
// Design      : mb_design_PopulationCounterCop_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mb_design_PopulationCounterCop_0_0,PopulationCounterCop_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "PopulationCounterCop_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mb_design_PopulationCounterCop_0_0
   (s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire [5:0]\^m00_axis_tdata ;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5:0] = \^m00_axis_tdata [5:0];
  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0 U0
       (.m00_axis_tdata(\^m00_axis_tdata ),
        .m00_axis_tready(m00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s_validOut_reg(m00_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "PopulationCount" *) 
module mb_design_PopulationCounterCop_0_0_PopulationCount
   (D,
    s00_axis_tdata);
  output [5:0]D;
  input [31:0]s00_axis_tdata;

  wire [5:0]D;
  wire [31:0]s00_axis_tdata;
  wire \s_dataOut[0]_i_2_n_0 ;
  wire \s_dataOut[0]_i_3_n_0 ;
  wire \s_dataOut[0]_i_4_n_0 ;
  wire \s_dataOut[1]_i_10_n_0 ;
  wire \s_dataOut[1]_i_11_n_0 ;
  wire \s_dataOut[1]_i_12_n_0 ;
  wire \s_dataOut[1]_i_13_n_0 ;
  wire \s_dataOut[1]_i_14_n_0 ;
  wire \s_dataOut[1]_i_15_n_0 ;
  wire \s_dataOut[1]_i_16_n_0 ;
  wire \s_dataOut[1]_i_17_n_0 ;
  wire \s_dataOut[1]_i_18_n_0 ;
  wire \s_dataOut[1]_i_19_n_0 ;
  wire \s_dataOut[1]_i_20_n_0 ;
  wire \s_dataOut[1]_i_21_n_0 ;
  wire \s_dataOut[1]_i_2_n_0 ;
  wire \s_dataOut[1]_i_3_n_0 ;
  wire \s_dataOut[1]_i_4_n_0 ;
  wire \s_dataOut[1]_i_5_n_0 ;
  wire \s_dataOut[1]_i_6_n_0 ;
  wire \s_dataOut[1]_i_7_n_0 ;
  wire \s_dataOut[1]_i_8_n_0 ;
  wire \s_dataOut[1]_i_9_n_0 ;
  wire \s_dataOut[3]_i_2_n_0 ;
  wire \s_dataOut[5]_i_10_n_0 ;
  wire \s_dataOut[5]_i_11_n_0 ;
  wire \s_dataOut[5]_i_12_n_0 ;
  wire \s_dataOut[5]_i_13_n_0 ;
  wire \s_dataOut[5]_i_14_n_0 ;
  wire \s_dataOut[5]_i_15_n_0 ;
  wire \s_dataOut[5]_i_16_n_0 ;
  wire \s_dataOut[5]_i_17_n_0 ;
  wire \s_dataOut[5]_i_18_n_0 ;
  wire \s_dataOut[5]_i_19_n_0 ;
  wire \s_dataOut[5]_i_20_n_0 ;
  wire \s_dataOut[5]_i_21_n_0 ;
  wire \s_dataOut[5]_i_22_n_0 ;
  wire \s_dataOut[5]_i_23_n_0 ;
  wire \s_dataOut[5]_i_24_n_0 ;
  wire \s_dataOut[5]_i_25_n_0 ;
  wire \s_dataOut[5]_i_26_n_0 ;
  wire \s_dataOut[5]_i_4_n_0 ;
  wire \s_dataOut[5]_i_5_n_0 ;
  wire \s_dataOut[5]_i_6_n_0 ;
  wire \s_dataOut[5]_i_7_n_0 ;
  wire \s_dataOut[5]_i_8_n_0 ;
  wire \s_dataOut[5]_i_9_n_0 ;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \s_dataOut[0]_i_1 
       (.I0(\s_dataOut[0]_i_2_n_0 ),
        .I1(\s_dataOut[0]_i_3_n_0 ),
        .I2(s00_axis_tdata[20]),
        .I3(s00_axis_tdata[19]),
        .I4(s00_axis_tdata[21]),
        .I5(\s_dataOut[0]_i_4_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \s_dataOut[0]_i_2 
       (.I0(\s_dataOut[1]_i_14_n_0 ),
        .I1(s00_axis_tdata[31]),
        .I2(s00_axis_tdata[0]),
        .I3(\s_dataOut[1]_i_13_n_0 ),
        .I4(\s_dataOut[1]_i_12_n_0 ),
        .O(\s_dataOut[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[0]_i_3 
       (.I0(s00_axis_tdata[24]),
        .I1(s00_axis_tdata[22]),
        .I2(s00_axis_tdata[23]),
        .O(\s_dataOut[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[0]_i_4 
       (.I0(s00_axis_tdata[27]),
        .I1(s00_axis_tdata[25]),
        .I2(s00_axis_tdata[26]),
        .O(\s_dataOut[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \s_dataOut[1]_i_1 
       (.I0(\s_dataOut[1]_i_2_n_0 ),
        .I1(\s_dataOut[1]_i_3_n_0 ),
        .I2(\s_dataOut[1]_i_4_n_0 ),
        .I3(\s_dataOut[1]_i_5_n_0 ),
        .I4(\s_dataOut[1]_i_6_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \s_dataOut[1]_i_10 
       (.I0(\s_dataOut[5]_i_23_n_0 ),
        .I1(\s_dataOut[5]_i_24_n_0 ),
        .I2(s00_axis_tdata[27]),
        .I3(s00_axis_tdata[26]),
        .I4(s00_axis_tdata[25]),
        .O(\s_dataOut[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \s_dataOut[1]_i_11 
       (.I0(\s_dataOut[0]_i_4_n_0 ),
        .I1(s00_axis_tdata[21]),
        .I2(s00_axis_tdata[19]),
        .I3(s00_axis_tdata[20]),
        .I4(\s_dataOut[0]_i_3_n_0 ),
        .O(\s_dataOut[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \s_dataOut[1]_i_12 
       (.I0(\s_dataOut[1]_i_20_n_0 ),
        .I1(s00_axis_tdata[3]),
        .I2(s00_axis_tdata[1]),
        .I3(s00_axis_tdata[2]),
        .I4(\s_dataOut[1]_i_16_n_0 ),
        .O(\s_dataOut[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[1]_i_13 
       (.I0(s00_axis_tdata[30]),
        .I1(s00_axis_tdata[28]),
        .I2(s00_axis_tdata[29]),
        .O(\s_dataOut[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \s_dataOut[1]_i_14 
       (.I0(\s_dataOut[1]_i_21_n_0 ),
        .I1(s00_axis_tdata[12]),
        .I2(s00_axis_tdata[10]),
        .I3(s00_axis_tdata[11]),
        .I4(\s_dataOut[1]_i_18_n_0 ),
        .O(\s_dataOut[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[1]_i_15 
       (.I0(s00_axis_tdata[21]),
        .I1(s00_axis_tdata[19]),
        .I2(s00_axis_tdata[20]),
        .O(\s_dataOut[1]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[1]_i_16 
       (.I0(s00_axis_tdata[6]),
        .I1(s00_axis_tdata[4]),
        .I2(s00_axis_tdata[5]),
        .O(\s_dataOut[1]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[1]_i_17 
       (.I0(s00_axis_tdata[3]),
        .I1(s00_axis_tdata[1]),
        .I2(s00_axis_tdata[2]),
        .O(\s_dataOut[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[1]_i_18 
       (.I0(s00_axis_tdata[15]),
        .I1(s00_axis_tdata[13]),
        .I2(s00_axis_tdata[14]),
        .O(\s_dataOut[1]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[1]_i_19 
       (.I0(s00_axis_tdata[12]),
        .I1(s00_axis_tdata[10]),
        .I2(s00_axis_tdata[11]),
        .O(\s_dataOut[1]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \s_dataOut[1]_i_2 
       (.I0(s00_axis_tdata[3]),
        .I1(s00_axis_tdata[2]),
        .I2(s00_axis_tdata[1]),
        .I3(\s_dataOut[5]_i_14_n_0 ),
        .I4(\s_dataOut[5]_i_15_n_0 ),
        .O(\s_dataOut[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[1]_i_20 
       (.I0(s00_axis_tdata[9]),
        .I1(s00_axis_tdata[7]),
        .I2(s00_axis_tdata[8]),
        .O(\s_dataOut[1]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[1]_i_21 
       (.I0(s00_axis_tdata[18]),
        .I1(s00_axis_tdata[16]),
        .I2(s00_axis_tdata[17]),
        .O(\s_dataOut[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h14417DD7EBBE8228)) 
    \s_dataOut[1]_i_3 
       (.I0(s00_axis_tdata[31]),
        .I1(s00_axis_tdata[29]),
        .I2(s00_axis_tdata[28]),
        .I3(s00_axis_tdata[30]),
        .I4(s00_axis_tdata[0]),
        .I5(\s_dataOut[1]_i_7_n_0 ),
        .O(\s_dataOut[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[1]_i_4 
       (.I0(\s_dataOut[1]_i_8_n_0 ),
        .I1(\s_dataOut[1]_i_9_n_0 ),
        .I2(\s_dataOut[1]_i_10_n_0 ),
        .O(\s_dataOut[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7DD7D77DD77D7DD7)) 
    \s_dataOut[1]_i_5 
       (.I0(\s_dataOut[1]_i_11_n_0 ),
        .I1(\s_dataOut[1]_i_12_n_0 ),
        .I2(\s_dataOut[1]_i_13_n_0 ),
        .I3(s00_axis_tdata[0]),
        .I4(s00_axis_tdata[31]),
        .I5(\s_dataOut[1]_i_14_n_0 ),
        .O(\s_dataOut[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \s_dataOut[1]_i_6 
       (.I0(\s_dataOut[1]_i_14_n_0 ),
        .I1(\s_dataOut[1]_i_12_n_0 ),
        .I2(\s_dataOut[1]_i_13_n_0 ),
        .I3(s00_axis_tdata[0]),
        .I4(s00_axis_tdata[31]),
        .O(\s_dataOut[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \s_dataOut[1]_i_7 
       (.I0(\s_dataOut[0]_i_3_n_0 ),
        .I1(\s_dataOut[1]_i_15_n_0 ),
        .I2(s00_axis_tdata[27]),
        .I3(s00_axis_tdata[25]),
        .I4(s00_axis_tdata[26]),
        .O(\s_dataOut[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \s_dataOut[1]_i_8 
       (.I0(\s_dataOut[1]_i_16_n_0 ),
        .I1(\s_dataOut[1]_i_17_n_0 ),
        .I2(s00_axis_tdata[9]),
        .I3(s00_axis_tdata[7]),
        .I4(s00_axis_tdata[8]),
        .O(\s_dataOut[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \s_dataOut[1]_i_9 
       (.I0(\s_dataOut[1]_i_18_n_0 ),
        .I1(\s_dataOut[1]_i_19_n_0 ),
        .I2(s00_axis_tdata[18]),
        .I3(s00_axis_tdata[16]),
        .I4(s00_axis_tdata[17]),
        .O(\s_dataOut[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[2]_i_1 
       (.I0(\s_dataOut[5]_i_5_n_0 ),
        .I1(\s_dataOut[5]_i_7_n_0 ),
        .I2(\s_dataOut[5]_i_6_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \s_dataOut[3]_i_1 
       (.I0(\s_dataOut[5]_i_7_n_0 ),
        .I1(\s_dataOut[5]_i_6_n_0 ),
        .I2(\s_dataOut[5]_i_5_n_0 ),
        .I3(\s_dataOut[3]_i_2_n_0 ),
        .I4(\s_dataOut[5]_i_4_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2BBDBDD4)) 
    \s_dataOut[3]_i_2 
       (.I0(\s_dataOut[5]_i_10_n_0 ),
        .I1(\s_dataOut[5]_i_12_n_0 ),
        .I2(\s_dataOut[5]_i_18_n_0 ),
        .I3(\s_dataOut[5]_i_17_n_0 ),
        .I4(\s_dataOut[5]_i_16_n_0 ),
        .O(\s_dataOut[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE7E7E78EE78E8E8E)) 
    \s_dataOut[4]_i_1 
       (.I0(\s_dataOut[5]_i_8_n_0 ),
        .I1(\s_dataOut[5]_i_9_n_0 ),
        .I2(\s_dataOut[5]_i_4_n_0 ),
        .I3(\s_dataOut[5]_i_5_n_0 ),
        .I4(\s_dataOut[5]_i_6_n_0 ),
        .I5(\s_dataOut[5]_i_7_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h577575577FF7F77F)) 
    \s_dataOut[5]_i_10 
       (.I0(\s_dataOut[1]_i_7_n_0 ),
        .I1(s00_axis_tdata[31]),
        .I2(s00_axis_tdata[29]),
        .I3(s00_axis_tdata[28]),
        .I4(s00_axis_tdata[30]),
        .I5(s00_axis_tdata[0]),
        .O(\s_dataOut[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s_dataOut[5]_i_11 
       (.I0(\s_dataOut[5]_i_16_n_0 ),
        .I1(\s_dataOut[5]_i_18_n_0 ),
        .I2(\s_dataOut[5]_i_17_n_0 ),
        .O(\s_dataOut[5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_12 
       (.I0(\s_dataOut[1]_i_8_n_0 ),
        .I1(\s_dataOut[1]_i_9_n_0 ),
        .I2(\s_dataOut[1]_i_10_n_0 ),
        .O(\s_dataOut[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_13 
       (.I0(s00_axis_tdata[3]),
        .I1(s00_axis_tdata[2]),
        .I2(s00_axis_tdata[1]),
        .O(\s_dataOut[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    \s_dataOut[5]_i_14 
       (.I0(\s_dataOut[5]_i_19_n_0 ),
        .I1(s00_axis_tdata[15]),
        .I2(s00_axis_tdata[14]),
        .I3(s00_axis_tdata[13]),
        .I4(\s_dataOut[5]_i_20_n_0 ),
        .O(\s_dataOut[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    \s_dataOut[5]_i_15 
       (.I0(\s_dataOut[5]_i_21_n_0 ),
        .I1(s00_axis_tdata[6]),
        .I2(s00_axis_tdata[5]),
        .I3(s00_axis_tdata[4]),
        .I4(\s_dataOut[5]_i_22_n_0 ),
        .O(\s_dataOut[5]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \s_dataOut[5]_i_16 
       (.I0(\s_dataOut[5]_i_23_n_0 ),
        .I1(s00_axis_tdata[25]),
        .I2(s00_axis_tdata[26]),
        .I3(s00_axis_tdata[27]),
        .I4(\s_dataOut[5]_i_24_n_0 ),
        .O(\s_dataOut[5]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \s_dataOut[5]_i_17 
       (.I0(\s_dataOut[5]_i_20_n_0 ),
        .I1(\s_dataOut[5]_i_25_n_0 ),
        .I2(s00_axis_tdata[21]),
        .I3(s00_axis_tdata[20]),
        .I4(s00_axis_tdata[19]),
        .O(\s_dataOut[5]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \s_dataOut[5]_i_18 
       (.I0(\s_dataOut[5]_i_22_n_0 ),
        .I1(\s_dataOut[5]_i_26_n_0 ),
        .I2(s00_axis_tdata[12]),
        .I3(s00_axis_tdata[11]),
        .I4(s00_axis_tdata[10]),
        .O(\s_dataOut[5]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_19 
       (.I0(s00_axis_tdata[21]),
        .I1(s00_axis_tdata[20]),
        .I2(s00_axis_tdata[19]),
        .O(\s_dataOut[5]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_20 
       (.I0(s00_axis_tdata[18]),
        .I1(s00_axis_tdata[17]),
        .I2(s00_axis_tdata[16]),
        .O(\s_dataOut[5]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_21 
       (.I0(s00_axis_tdata[12]),
        .I1(s00_axis_tdata[11]),
        .I2(s00_axis_tdata[10]),
        .O(\s_dataOut[5]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_22 
       (.I0(s00_axis_tdata[9]),
        .I1(s00_axis_tdata[8]),
        .I2(s00_axis_tdata[7]),
        .O(\s_dataOut[5]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_23 
       (.I0(s00_axis_tdata[24]),
        .I1(s00_axis_tdata[23]),
        .I2(s00_axis_tdata[22]),
        .O(\s_dataOut[5]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_24 
       (.I0(s00_axis_tdata[30]),
        .I1(s00_axis_tdata[29]),
        .I2(s00_axis_tdata[28]),
        .O(\s_dataOut[5]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_25 
       (.I0(s00_axis_tdata[15]),
        .I1(s00_axis_tdata[14]),
        .I2(s00_axis_tdata[13]),
        .O(\s_dataOut[5]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_26 
       (.I0(s00_axis_tdata[6]),
        .I1(s00_axis_tdata[5]),
        .I2(s00_axis_tdata[4]),
        .O(\s_dataOut[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h5440000000000000)) 
    \s_dataOut[5]_i_3 
       (.I0(\s_dataOut[5]_i_4_n_0 ),
        .I1(\s_dataOut[5]_i_5_n_0 ),
        .I2(\s_dataOut[5]_i_6_n_0 ),
        .I3(\s_dataOut[5]_i_7_n_0 ),
        .I4(\s_dataOut[5]_i_8_n_0 ),
        .I5(\s_dataOut[5]_i_9_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h969696FF96FFFFFF)) 
    \s_dataOut[5]_i_4 
       (.I0(\s_dataOut[5]_i_10_n_0 ),
        .I1(\s_dataOut[5]_i_11_n_0 ),
        .I2(\s_dataOut[5]_i_12_n_0 ),
        .I3(\s_dataOut[5]_i_13_n_0 ),
        .I4(\s_dataOut[5]_i_14_n_0 ),
        .I5(\s_dataOut[5]_i_15_n_0 ),
        .O(\s_dataOut[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    \s_dataOut[5]_i_5 
       (.I0(\s_dataOut[5]_i_10_n_0 ),
        .I1(\s_dataOut[5]_i_11_n_0 ),
        .I2(\s_dataOut[5]_i_12_n_0 ),
        .I3(\s_dataOut[5]_i_13_n_0 ),
        .I4(\s_dataOut[5]_i_14_n_0 ),
        .I5(\s_dataOut[5]_i_15_n_0 ),
        .O(\s_dataOut[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB22B2BB2)) 
    \s_dataOut[5]_i_6 
       (.I0(\s_dataOut[1]_i_6_n_0 ),
        .I1(\s_dataOut[1]_i_5_n_0 ),
        .I2(\s_dataOut[1]_i_2_n_0 ),
        .I3(\s_dataOut[1]_i_3_n_0 ),
        .I4(\s_dataOut[1]_i_4_n_0 ),
        .O(\s_dataOut[5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_7 
       (.I0(\s_dataOut[1]_i_2_n_0 ),
        .I1(\s_dataOut[1]_i_4_n_0 ),
        .I2(\s_dataOut[1]_i_3_n_0 ),
        .O(\s_dataOut[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_dataOut[5]_i_8 
       (.I0(\s_dataOut[5]_i_16_n_0 ),
        .I1(\s_dataOut[5]_i_17_n_0 ),
        .I2(\s_dataOut[5]_i_18_n_0 ),
        .O(\s_dataOut[5]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \s_dataOut[5]_i_9 
       (.I0(\s_dataOut[5]_i_12_n_0 ),
        .I1(\s_dataOut[5]_i_10_n_0 ),
        .I2(\s_dataOut[5]_i_11_n_0 ),
        .O(\s_dataOut[5]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "PopulationCounterCop_v1_0" *) 
module mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0
   (m00_axis_tdata,
    s_validOut_reg,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_aclk,
    m00_axis_tready,
    s00_axis_tvalid,
    s00_axis_aresetn);
  output [5:0]m00_axis_tdata;
  output s_validOut_reg;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input s00_axis_aclk;
  input m00_axis_tready;
  input s00_axis_tvalid;
  input s00_axis_aresetn;

  wire [5:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire s_validOut_reg;

  mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0_S00_AXIS PopulationCounterCop_v1_0_S00_AXIS_inst
       (.m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tready(m00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s_validOut_reg_0(s_validOut_reg));
endmodule

(* ORIG_REF_NAME = "PopulationCounterCop_v1_0_S00_AXIS" *) 
module mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0_S00_AXIS
   (m00_axis_tdata,
    s_validOut_reg_0,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_aclk,
    m00_axis_tready,
    s00_axis_tvalid,
    s00_axis_aresetn);
  output [5:0]m00_axis_tdata;
  output s_validOut_reg_0;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input s00_axis_aclk;
  input m00_axis_tready;
  input s00_axis_tvalid;
  input s00_axis_aresetn;

  wire [5:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire p_0_in;
  wire population_count_n_0;
  wire population_count_n_1;
  wire population_count_n_2;
  wire population_count_n_3;
  wire population_count_n_4;
  wire population_count_n_5;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire s_validOut;
  wire s_validOut_i_1_n_0;
  wire s_validOut_reg_0;

  mb_design_PopulationCounterCop_0_0_PopulationCount population_count
       (.D({population_count_n_0,population_count_n_1,population_count_n_2,population_count_n_3,population_count_n_4,population_count_n_5}),
        .s00_axis_tdata(s00_axis_tdata));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s00_axis_tready_INST_0
       (.I0(m00_axis_tready),
        .I1(s_validOut_reg_0),
        .O(s00_axis_tready));
  LUT1 #(
    .INIT(2'h1)) 
    \s_dataOut[5]_i_1 
       (.I0(s00_axis_aresetn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hA2)) 
    \s_dataOut[5]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(s_validOut_reg_0),
        .I2(m00_axis_tready),
        .O(s_validOut));
  FDRE \s_dataOut_reg[0] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(population_count_n_5),
        .Q(m00_axis_tdata[0]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[1] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(population_count_n_4),
        .Q(m00_axis_tdata[1]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[2] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(population_count_n_3),
        .Q(m00_axis_tdata[2]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[3] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(population_count_n_2),
        .Q(m00_axis_tdata[3]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[4] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(population_count_n_1),
        .Q(m00_axis_tdata[4]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[5] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(population_count_n_0),
        .Q(m00_axis_tdata[5]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF400)) 
    s_validOut_i_1
       (.I0(m00_axis_tready),
        .I1(s_validOut_reg_0),
        .I2(s00_axis_tvalid),
        .I3(s00_axis_aresetn),
        .O(s_validOut_i_1_n_0));
  FDRE s_validOut_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(s_validOut_i_1_n_0),
        .Q(s_validOut_reg_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
