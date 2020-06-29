// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May  7 12:30:50 2020
// Host        : ASUS-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Pedro/Dropbox/UA/CR/Labs/Lab6/CountDownTimerFreeRTOS/CountDownTimerFreeRTOS.srcs/sources_1/bd/mb_design/ip/mb_design_Nexys4DisplayDriverE_0_0/mb_design_Nexys4DisplayDriverE_0_0_sim_netlist.v
// Design      : mb_design_Nexys4DisplayDriverE_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mb_design_Nexys4DisplayDriverE_0_0,Nexys4DisplayDriverExtended_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Nexys4DisplayDriverExtended_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mb_design_Nexys4DisplayDriverE_0_0
   (dispEn_n,
    dispSeg_n,
    dispPt_n,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [7:0]dispEn_n;
  output [6:0]dispSeg_n;
  output dispPt_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire [7:0]dispEn_n;
  wire dispPt_n;
  wire [6:0]dispSeg_n;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .dispEn_n(dispEn_n),
        .dispPt_n(dispPt_n),
        .dispSeg_n(dispSeg_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Nexys4DisplayDriver" *) 
module mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriver
   (SR,
    dispSeg_n,
    dispPt_n,
    dispEn_n,
    s00_axi_aclk,
    Q,
    s00_axi_aresetn,
    dispPt_n_0,
    \dispSeg_n[6]_INST_0_i_4_0 );
  output [0:0]SR;
  output [6:0]dispSeg_n;
  output dispPt_n;
  output [7:0]dispEn_n;
  input s00_axi_aclk;
  input [5:0]Q;
  input s00_axi_aresetn;
  input [15:0]dispPt_n_0;
  input [31:0]\dispSeg_n[6]_INST_0_i_4_0 ;

  wire [19:0]\BRIGTHNESS_LUT[0,0] ;
  wire [20:20]\BRIGTHNESS_LUT[0,4] ;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [7:0]dispEn_n;
  wire dispPt_n;
  wire [15:0]dispPt_n_0;
  wire dispPt_n_INST_0_i_1_n_0;
  wire dispPt_n_INST_0_i_2_n_0;
  wire [6:0]dispSeg_n;
  wire \dispSeg_n[6]_INST_0_i_10_n_0 ;
  wire \dispSeg_n[6]_INST_0_i_11_n_0 ;
  wire \dispSeg_n[6]_INST_0_i_12_n_0 ;
  wire \dispSeg_n[6]_INST_0_i_13_n_0 ;
  wire \dispSeg_n[6]_INST_0_i_14_n_0 ;
  wire \dispSeg_n[6]_INST_0_i_15_n_0 ;
  wire [31:0]\dispSeg_n[6]_INST_0_i_4_0 ;
  wire \dispSeg_n[6]_INST_0_i_6_n_0 ;
  wire \dispSeg_n[6]_INST_0_i_7_n_0 ;
  wire \dispSeg_n[6]_INST_0_i_8_n_0 ;
  wire \dispSeg_n[6]_INST_0_i_9_n_0 ;
  wire p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [7:7]s_brightControl;
  wire s_brightControl0_carry__0_i_1_n_0;
  wire s_brightControl0_carry__0_i_2_n_0;
  wire s_brightControl0_carry__0_i_3_n_0;
  wire s_brightControl0_carry__0_i_4_n_0;
  wire s_brightControl0_carry__0_i_5_n_0;
  wire s_brightControl0_carry__0_i_6_n_0;
  wire s_brightControl0_carry__0_i_7_n_0;
  wire s_brightControl0_carry__0_i_8_n_0;
  wire s_brightControl0_carry__0_n_0;
  wire s_brightControl0_carry__0_n_1;
  wire s_brightControl0_carry__0_n_2;
  wire s_brightControl0_carry__0_n_3;
  wire s_brightControl0_carry__1_i_1_n_0;
  wire s_brightControl0_carry__1_i_2_n_0;
  wire s_brightControl0_carry__1_i_3_n_0;
  wire s_brightControl0_carry__1_i_4_n_0;
  wire s_brightControl0_carry__1_i_5_n_0;
  wire s_brightControl0_carry__1_i_6_n_0;
  wire s_brightControl0_carry__1_i_7_n_0;
  wire s_brightControl0_carry__1_i_8_n_0;
  wire s_brightControl0_carry__1_n_0;
  wire s_brightControl0_carry__1_n_1;
  wire s_brightControl0_carry__1_n_2;
  wire s_brightControl0_carry__1_n_3;
  wire s_brightControl0_carry__2_i_1_n_0;
  wire s_brightControl0_carry__2_i_2_n_0;
  wire s_brightControl0_carry__2_i_3_n_0;
  wire s_brightControl0_carry__2_i_4_n_0;
  wire s_brightControl0_carry__2_i_5_n_0;
  wire s_brightControl0_carry__2_i_6_n_0;
  wire s_brightControl0_carry__2_i_7_n_0;
  wire s_brightControl0_carry__2_i_8_n_0;
  wire s_brightControl0_carry__2_n_1;
  wire s_brightControl0_carry__2_n_2;
  wire s_brightControl0_carry__2_n_3;
  wire s_brightControl0_carry_i_1_n_0;
  wire s_brightControl0_carry_i_2_n_0;
  wire s_brightControl0_carry_i_3_n_0;
  wire s_brightControl0_carry_i_4_n_0;
  wire s_brightControl0_carry_i_5_n_0;
  wire s_brightControl0_carry_i_6_n_0;
  wire s_brightControl0_carry_i_7_n_0;
  wire s_brightControl0_carry_i_8_n_0;
  wire s_brightControl0_carry_n_0;
  wire s_brightControl0_carry_n_1;
  wire s_brightControl0_carry_n_2;
  wire s_brightControl0_carry_n_3;
  wire \s_brightControl[7]_i_1_n_0 ;
  wire s_clkEnable;
  wire s_clkEnbCnt0_carry__0_i_1_n_0;
  wire s_clkEnbCnt0_carry__0_i_2_n_0;
  wire s_clkEnbCnt0_carry__0_i_3_n_0;
  wire s_clkEnbCnt0_carry__0_i_4_n_0;
  wire s_clkEnbCnt0_carry__0_i_5_n_0;
  wire s_clkEnbCnt0_carry__0_i_6_n_0;
  wire s_clkEnbCnt0_carry__0_i_7_n_0;
  wire s_clkEnbCnt0_carry__0_i_8_n_0;
  wire s_clkEnbCnt0_carry__0_n_0;
  wire s_clkEnbCnt0_carry__0_n_1;
  wire s_clkEnbCnt0_carry__0_n_2;
  wire s_clkEnbCnt0_carry__0_n_3;
  wire s_clkEnbCnt0_carry__1_i_1_n_0;
  wire s_clkEnbCnt0_carry__1_i_2_n_0;
  wire s_clkEnbCnt0_carry__1_i_3_n_0;
  wire s_clkEnbCnt0_carry__1_i_4_n_0;
  wire s_clkEnbCnt0_carry__1_i_5_n_0;
  wire s_clkEnbCnt0_carry__1_i_6_n_0;
  wire s_clkEnbCnt0_carry__1_i_7_n_0;
  wire s_clkEnbCnt0_carry__1_i_8_n_0;
  wire s_clkEnbCnt0_carry__1_n_0;
  wire s_clkEnbCnt0_carry__1_n_1;
  wire s_clkEnbCnt0_carry__1_n_2;
  wire s_clkEnbCnt0_carry__1_n_3;
  wire s_clkEnbCnt0_carry__2_i_1_n_0;
  wire s_clkEnbCnt0_carry__2_i_2_n_0;
  wire s_clkEnbCnt0_carry__2_i_3_n_0;
  wire s_clkEnbCnt0_carry__2_i_4_n_0;
  wire s_clkEnbCnt0_carry__2_i_5_n_0;
  wire s_clkEnbCnt0_carry__2_i_6_n_0;
  wire s_clkEnbCnt0_carry__2_i_7_n_0;
  wire s_clkEnbCnt0_carry__2_i_8_n_0;
  wire s_clkEnbCnt0_carry__2_n_0;
  wire s_clkEnbCnt0_carry__2_n_1;
  wire s_clkEnbCnt0_carry__2_n_2;
  wire s_clkEnbCnt0_carry__2_n_3;
  wire s_clkEnbCnt0_carry_i_1_n_0;
  wire s_clkEnbCnt0_carry_i_2_n_0;
  wire s_clkEnbCnt0_carry_i_3_n_0;
  wire s_clkEnbCnt0_carry_i_4_n_0;
  wire s_clkEnbCnt0_carry_i_5_n_0;
  wire s_clkEnbCnt0_carry_i_6_n_0;
  wire s_clkEnbCnt0_carry_i_7_n_0;
  wire s_clkEnbCnt0_carry_i_8_n_0;
  wire s_clkEnbCnt0_carry_n_0;
  wire s_clkEnbCnt0_carry_n_1;
  wire s_clkEnbCnt0_carry_n_2;
  wire s_clkEnbCnt0_carry_n_3;
  wire \s_clkEnbCnt[0]_i_1_n_0 ;
  wire \s_clkEnbCnt[0]_i_3_n_0 ;
  wire [31:0]s_clkEnbCnt_reg;
  wire \s_clkEnbCnt_reg[0]_i_2_n_0 ;
  wire \s_clkEnbCnt_reg[0]_i_2_n_1 ;
  wire \s_clkEnbCnt_reg[0]_i_2_n_2 ;
  wire \s_clkEnbCnt_reg[0]_i_2_n_3 ;
  wire \s_clkEnbCnt_reg[0]_i_2_n_4 ;
  wire \s_clkEnbCnt_reg[0]_i_2_n_5 ;
  wire \s_clkEnbCnt_reg[0]_i_2_n_6 ;
  wire \s_clkEnbCnt_reg[0]_i_2_n_7 ;
  wire \s_clkEnbCnt_reg[12]_i_1_n_0 ;
  wire \s_clkEnbCnt_reg[12]_i_1_n_1 ;
  wire \s_clkEnbCnt_reg[12]_i_1_n_2 ;
  wire \s_clkEnbCnt_reg[12]_i_1_n_3 ;
  wire \s_clkEnbCnt_reg[12]_i_1_n_4 ;
  wire \s_clkEnbCnt_reg[12]_i_1_n_5 ;
  wire \s_clkEnbCnt_reg[12]_i_1_n_6 ;
  wire \s_clkEnbCnt_reg[12]_i_1_n_7 ;
  wire \s_clkEnbCnt_reg[16]_i_1_n_0 ;
  wire \s_clkEnbCnt_reg[16]_i_1_n_1 ;
  wire \s_clkEnbCnt_reg[16]_i_1_n_2 ;
  wire \s_clkEnbCnt_reg[16]_i_1_n_3 ;
  wire \s_clkEnbCnt_reg[16]_i_1_n_4 ;
  wire \s_clkEnbCnt_reg[16]_i_1_n_5 ;
  wire \s_clkEnbCnt_reg[16]_i_1_n_6 ;
  wire \s_clkEnbCnt_reg[16]_i_1_n_7 ;
  wire \s_clkEnbCnt_reg[20]_i_1_n_0 ;
  wire \s_clkEnbCnt_reg[20]_i_1_n_1 ;
  wire \s_clkEnbCnt_reg[20]_i_1_n_2 ;
  wire \s_clkEnbCnt_reg[20]_i_1_n_3 ;
  wire \s_clkEnbCnt_reg[20]_i_1_n_4 ;
  wire \s_clkEnbCnt_reg[20]_i_1_n_5 ;
  wire \s_clkEnbCnt_reg[20]_i_1_n_6 ;
  wire \s_clkEnbCnt_reg[20]_i_1_n_7 ;
  wire \s_clkEnbCnt_reg[24]_i_1_n_0 ;
  wire \s_clkEnbCnt_reg[24]_i_1_n_1 ;
  wire \s_clkEnbCnt_reg[24]_i_1_n_2 ;
  wire \s_clkEnbCnt_reg[24]_i_1_n_3 ;
  wire \s_clkEnbCnt_reg[24]_i_1_n_4 ;
  wire \s_clkEnbCnt_reg[24]_i_1_n_5 ;
  wire \s_clkEnbCnt_reg[24]_i_1_n_6 ;
  wire \s_clkEnbCnt_reg[24]_i_1_n_7 ;
  wire \s_clkEnbCnt_reg[28]_i_1_n_1 ;
  wire \s_clkEnbCnt_reg[28]_i_1_n_2 ;
  wire \s_clkEnbCnt_reg[28]_i_1_n_3 ;
  wire \s_clkEnbCnt_reg[28]_i_1_n_4 ;
  wire \s_clkEnbCnt_reg[28]_i_1_n_5 ;
  wire \s_clkEnbCnt_reg[28]_i_1_n_6 ;
  wire \s_clkEnbCnt_reg[28]_i_1_n_7 ;
  wire \s_clkEnbCnt_reg[4]_i_1_n_0 ;
  wire \s_clkEnbCnt_reg[4]_i_1_n_1 ;
  wire \s_clkEnbCnt_reg[4]_i_1_n_2 ;
  wire \s_clkEnbCnt_reg[4]_i_1_n_3 ;
  wire \s_clkEnbCnt_reg[4]_i_1_n_4 ;
  wire \s_clkEnbCnt_reg[4]_i_1_n_5 ;
  wire \s_clkEnbCnt_reg[4]_i_1_n_6 ;
  wire \s_clkEnbCnt_reg[4]_i_1_n_7 ;
  wire \s_clkEnbCnt_reg[8]_i_1_n_0 ;
  wire \s_clkEnbCnt_reg[8]_i_1_n_1 ;
  wire \s_clkEnbCnt_reg[8]_i_1_n_2 ;
  wire \s_clkEnbCnt_reg[8]_i_1_n_3 ;
  wire \s_clkEnbCnt_reg[8]_i_1_n_4 ;
  wire \s_clkEnbCnt_reg[8]_i_1_n_5 ;
  wire \s_clkEnbCnt_reg[8]_i_1_n_6 ;
  wire \s_clkEnbCnt_reg[8]_i_1_n_7 ;
  wire [2:0]s_counter;
  wire \s_counter[0]_i_1_n_0 ;
  wire \s_counter[1]_i_1_n_0 ;
  wire \s_counter[2]_i_1_n_0 ;
  wire [3:0]s_currentV__27;
  wire s_enableDigit__6;
  wire [3:0]NLW_s_brightControl0_carry_O_UNCONNECTED;
  wire [3:0]NLW_s_brightControl0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_s_brightControl0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_s_brightControl0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_s_clkEnbCnt0_carry_O_UNCONNECTED;
  wire [3:0]NLW_s_clkEnbCnt0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_s_clkEnbCnt0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_s_clkEnbCnt0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_s_clkEnbCnt_reg[28]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dispEn_n[0]_INST_0 
       (.I0(s_counter[0]),
        .I1(s_counter[2]),
        .I2(s_counter[1]),
        .I3(s_brightControl),
        .O(dispEn_n[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \dispEn_n[1]_INST_0 
       (.I0(s_counter[0]),
        .I1(s_counter[2]),
        .I2(s_counter[1]),
        .I3(s_brightControl),
        .O(dispEn_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \dispEn_n[2]_INST_0 
       (.I0(s_counter[1]),
        .I1(s_counter[0]),
        .I2(s_counter[2]),
        .I3(s_brightControl),
        .O(dispEn_n[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \dispEn_n[3]_INST_0 
       (.I0(s_counter[2]),
        .I1(s_counter[0]),
        .I2(s_counter[1]),
        .I3(s_brightControl),
        .O(dispEn_n[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \dispEn_n[4]_INST_0 
       (.I0(s_counter[2]),
        .I1(s_counter[0]),
        .I2(s_counter[1]),
        .I3(s_brightControl),
        .O(dispEn_n[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \dispEn_n[5]_INST_0 
       (.I0(s_counter[1]),
        .I1(s_counter[0]),
        .I2(s_counter[2]),
        .I3(s_brightControl),
        .O(dispEn_n[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \dispEn_n[6]_INST_0 
       (.I0(s_counter[0]),
        .I1(s_counter[2]),
        .I2(s_counter[1]),
        .I3(s_brightControl),
        .O(dispEn_n[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \dispEn_n[7]_INST_0 
       (.I0(s_counter[1]),
        .I1(s_counter[0]),
        .I2(s_counter[2]),
        .I3(s_brightControl),
        .O(dispEn_n[7]));
  MUXF7 dispPt_n_INST_0
       (.I0(dispPt_n_INST_0_i_1_n_0),
        .I1(dispPt_n_INST_0_i_2_n_0),
        .O(dispPt_n),
        .S(s_counter[2]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    dispPt_n_INST_0_i_1
       (.I0(dispPt_n_0[11]),
        .I1(dispPt_n_0[10]),
        .I2(s_counter[1]),
        .I3(dispPt_n_0[9]),
        .I4(s_counter[0]),
        .I5(dispPt_n_0[8]),
        .O(dispPt_n_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    dispPt_n_INST_0_i_2
       (.I0(dispPt_n_0[15]),
        .I1(dispPt_n_0[14]),
        .I2(s_counter[1]),
        .I3(dispPt_n_0[13]),
        .I4(s_counter[0]),
        .I5(dispPt_n_0[12]),
        .O(dispPt_n_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h4814FFFF)) 
    \dispSeg_n[0]_INST_0 
       (.I0(s_currentV__27[1]),
        .I1(s_currentV__27[0]),
        .I2(s_currentV__27[2]),
        .I3(s_currentV__27[3]),
        .I4(s_enableDigit__6),
        .O(dispSeg_n[0]));
  LUT5 #(
    .INIT(32'hD860FFFF)) 
    \dispSeg_n[1]_INST_0 
       (.I0(s_currentV__27[0]),
        .I1(s_currentV__27[1]),
        .I2(s_currentV__27[2]),
        .I3(s_currentV__27[3]),
        .I4(s_enableDigit__6),
        .O(dispSeg_n[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8A04FFFF)) 
    \dispSeg_n[2]_INST_0 
       (.I0(s_currentV__27[2]),
        .I1(s_currentV__27[1]),
        .I2(s_currentV__27[0]),
        .I3(s_currentV__27[3]),
        .I4(s_enableDigit__6),
        .O(dispSeg_n[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8294FFFF)) 
    \dispSeg_n[3]_INST_0 
       (.I0(s_currentV__27[1]),
        .I1(s_currentV__27[0]),
        .I2(s_currentV__27[2]),
        .I3(s_currentV__27[3]),
        .I4(s_enableDigit__6),
        .O(dispSeg_n[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02AEFFFF)) 
    \dispSeg_n[4]_INST_0 
       (.I0(s_currentV__27[0]),
        .I1(s_currentV__27[2]),
        .I2(s_currentV__27[1]),
        .I3(s_currentV__27[3]),
        .I4(s_enableDigit__6),
        .O(dispSeg_n[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h408EFFFF)) 
    \dispSeg_n[5]_INST_0 
       (.I0(s_currentV__27[1]),
        .I1(s_currentV__27[0]),
        .I2(s_currentV__27[2]),
        .I3(s_currentV__27[3]),
        .I4(s_enableDigit__6),
        .O(dispSeg_n[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0491FFFF)) 
    \dispSeg_n[6]_INST_0 
       (.I0(s_currentV__27[1]),
        .I1(s_currentV__27[2]),
        .I2(s_currentV__27[0]),
        .I3(s_currentV__27[3]),
        .I4(s_enableDigit__6),
        .O(dispSeg_n[6]));
  MUXF7 \dispSeg_n[6]_INST_0_i_1 
       (.I0(\dispSeg_n[6]_INST_0_i_6_n_0 ),
        .I1(\dispSeg_n[6]_INST_0_i_7_n_0 ),
        .O(s_currentV__27[1]),
        .S(s_counter[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_10 
       (.I0(\dispSeg_n[6]_INST_0_i_4_0 [12]),
        .I1(\dispSeg_n[6]_INST_0_i_4_0 [8]),
        .I2(s_counter[1]),
        .I3(\dispSeg_n[6]_INST_0_i_4_0 [4]),
        .I4(s_counter[0]),
        .I5(\dispSeg_n[6]_INST_0_i_4_0 [0]),
        .O(\dispSeg_n[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_11 
       (.I0(\dispSeg_n[6]_INST_0_i_4_0 [28]),
        .I1(\dispSeg_n[6]_INST_0_i_4_0 [24]),
        .I2(s_counter[1]),
        .I3(\dispSeg_n[6]_INST_0_i_4_0 [20]),
        .I4(s_counter[0]),
        .I5(\dispSeg_n[6]_INST_0_i_4_0 [16]),
        .O(\dispSeg_n[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_12 
       (.I0(\dispSeg_n[6]_INST_0_i_4_0 [15]),
        .I1(\dispSeg_n[6]_INST_0_i_4_0 [11]),
        .I2(s_counter[1]),
        .I3(\dispSeg_n[6]_INST_0_i_4_0 [7]),
        .I4(s_counter[0]),
        .I5(\dispSeg_n[6]_INST_0_i_4_0 [3]),
        .O(\dispSeg_n[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_13 
       (.I0(\dispSeg_n[6]_INST_0_i_4_0 [31]),
        .I1(\dispSeg_n[6]_INST_0_i_4_0 [27]),
        .I2(s_counter[1]),
        .I3(\dispSeg_n[6]_INST_0_i_4_0 [23]),
        .I4(s_counter[0]),
        .I5(\dispSeg_n[6]_INST_0_i_4_0 [19]),
        .O(\dispSeg_n[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_14 
       (.I0(dispPt_n_0[3]),
        .I1(dispPt_n_0[2]),
        .I2(s_counter[1]),
        .I3(dispPt_n_0[1]),
        .I4(s_counter[0]),
        .I5(dispPt_n_0[0]),
        .O(\dispSeg_n[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_15 
       (.I0(dispPt_n_0[7]),
        .I1(dispPt_n_0[6]),
        .I2(s_counter[1]),
        .I3(dispPt_n_0[5]),
        .I4(s_counter[0]),
        .I5(dispPt_n_0[4]),
        .O(\dispSeg_n[6]_INST_0_i_15_n_0 ));
  MUXF7 \dispSeg_n[6]_INST_0_i_2 
       (.I0(\dispSeg_n[6]_INST_0_i_8_n_0 ),
        .I1(\dispSeg_n[6]_INST_0_i_9_n_0 ),
        .O(s_currentV__27[2]),
        .S(s_counter[2]));
  MUXF7 \dispSeg_n[6]_INST_0_i_3 
       (.I0(\dispSeg_n[6]_INST_0_i_10_n_0 ),
        .I1(\dispSeg_n[6]_INST_0_i_11_n_0 ),
        .O(s_currentV__27[0]),
        .S(s_counter[2]));
  MUXF7 \dispSeg_n[6]_INST_0_i_4 
       (.I0(\dispSeg_n[6]_INST_0_i_12_n_0 ),
        .I1(\dispSeg_n[6]_INST_0_i_13_n_0 ),
        .O(s_currentV__27[3]),
        .S(s_counter[2]));
  MUXF7 \dispSeg_n[6]_INST_0_i_5 
       (.I0(\dispSeg_n[6]_INST_0_i_14_n_0 ),
        .I1(\dispSeg_n[6]_INST_0_i_15_n_0 ),
        .O(s_enableDigit__6),
        .S(s_counter[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_6 
       (.I0(\dispSeg_n[6]_INST_0_i_4_0 [13]),
        .I1(\dispSeg_n[6]_INST_0_i_4_0 [9]),
        .I2(s_counter[1]),
        .I3(\dispSeg_n[6]_INST_0_i_4_0 [5]),
        .I4(s_counter[0]),
        .I5(\dispSeg_n[6]_INST_0_i_4_0 [1]),
        .O(\dispSeg_n[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_7 
       (.I0(\dispSeg_n[6]_INST_0_i_4_0 [29]),
        .I1(\dispSeg_n[6]_INST_0_i_4_0 [25]),
        .I2(s_counter[1]),
        .I3(\dispSeg_n[6]_INST_0_i_4_0 [21]),
        .I4(s_counter[0]),
        .I5(\dispSeg_n[6]_INST_0_i_4_0 [17]),
        .O(\dispSeg_n[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_8 
       (.I0(\dispSeg_n[6]_INST_0_i_4_0 [14]),
        .I1(\dispSeg_n[6]_INST_0_i_4_0 [10]),
        .I2(s_counter[1]),
        .I3(\dispSeg_n[6]_INST_0_i_4_0 [6]),
        .I4(s_counter[0]),
        .I5(\dispSeg_n[6]_INST_0_i_4_0 [2]),
        .O(\dispSeg_n[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dispSeg_n[6]_INST_0_i_9 
       (.I0(\dispSeg_n[6]_INST_0_i_4_0 [30]),
        .I1(\dispSeg_n[6]_INST_0_i_4_0 [26]),
        .I2(s_counter[1]),
        .I3(\dispSeg_n[6]_INST_0_i_4_0 [22]),
        .I4(s_counter[0]),
        .I5(\dispSeg_n[6]_INST_0_i_4_0 [18]),
        .O(\dispSeg_n[6]_INST_0_i_9_n_0 ));
  CARRY4 s_brightControl0_carry
       (.CI(1'b0),
        .CO({s_brightControl0_carry_n_0,s_brightControl0_carry_n_1,s_brightControl0_carry_n_2,s_brightControl0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({s_brightControl0_carry_i_1_n_0,s_brightControl0_carry_i_2_n_0,s_brightControl0_carry_i_3_n_0,s_brightControl0_carry_i_4_n_0}),
        .O(NLW_s_brightControl0_carry_O_UNCONNECTED[3:0]),
        .S({s_brightControl0_carry_i_5_n_0,s_brightControl0_carry_i_6_n_0,s_brightControl0_carry_i_7_n_0,s_brightControl0_carry_i_8_n_0}));
  CARRY4 s_brightControl0_carry__0
       (.CI(s_brightControl0_carry_n_0),
        .CO({s_brightControl0_carry__0_n_0,s_brightControl0_carry__0_n_1,s_brightControl0_carry__0_n_2,s_brightControl0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({s_brightControl0_carry__0_i_1_n_0,s_brightControl0_carry__0_i_2_n_0,s_brightControl0_carry__0_i_3_n_0,s_brightControl0_carry__0_i_4_n_0}),
        .O(NLW_s_brightControl0_carry__0_O_UNCONNECTED[3:0]),
        .S({s_brightControl0_carry__0_i_5_n_0,s_brightControl0_carry__0_i_6_n_0,s_brightControl0_carry__0_i_7_n_0,s_brightControl0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry__0_i_1
       (.I0(s_clkEnbCnt_reg[14]),
        .I1(\BRIGTHNESS_LUT[0,0] [14]),
        .I2(\BRIGTHNESS_LUT[0,0] [15]),
        .I3(s_clkEnbCnt_reg[15]),
        .O(s_brightControl0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h008FEC2600C8DA9C)) 
    s_brightControl0_carry__0_i_10
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\BRIGTHNESS_LUT[0,0] [15]));
  LUT6 #(
    .INIT(64'hDA8FC8269C257033)) 
    s_brightControl0_carry__0_i_11
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\BRIGTHNESS_LUT[0,0] [12]));
  LUT6 #(
    .INIT(64'hECDA8FC8269C2570)) 
    s_brightControl0_carry__0_i_12
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\BRIGTHNESS_LUT[0,0] [13]));
  LUT6 #(
    .INIT(64'hC89C70552625338F)) 
    s_brightControl0_carry__0_i_13
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\BRIGTHNESS_LUT[0,0] [10]));
  LUT6 #(
    .INIT(64'h8F252633C8709C55)) 
    s_brightControl0_carry__0_i_14
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\BRIGTHNESS_LUT[0,0] [11]));
  LUT6 #(
    .INIT(64'h9528C55F70300030)) 
    s_brightControl0_carry__0_i_15
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\BRIGTHNESS_LUT[0,0] [8]));
  LUT6 #(
    .INIT(64'h269C257033558F00)) 
    s_brightControl0_carry__0_i_16
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\BRIGTHNESS_LUT[0,0] [9]));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry__0_i_2
       (.I0(s_clkEnbCnt_reg[12]),
        .I1(\BRIGTHNESS_LUT[0,0] [12]),
        .I2(\BRIGTHNESS_LUT[0,0] [13]),
        .I3(s_clkEnbCnt_reg[13]),
        .O(s_brightControl0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry__0_i_3
       (.I0(s_clkEnbCnt_reg[10]),
        .I1(\BRIGTHNESS_LUT[0,0] [10]),
        .I2(\BRIGTHNESS_LUT[0,0] [11]),
        .I3(s_clkEnbCnt_reg[11]),
        .O(s_brightControl0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry__0_i_4
       (.I0(s_clkEnbCnt_reg[8]),
        .I1(\BRIGTHNESS_LUT[0,0] [8]),
        .I2(\BRIGTHNESS_LUT[0,0] [9]),
        .I3(s_clkEnbCnt_reg[9]),
        .O(s_brightControl0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry__0_i_5
       (.I0(s_clkEnbCnt_reg[14]),
        .I1(\BRIGTHNESS_LUT[0,0] [14]),
        .I2(s_clkEnbCnt_reg[15]),
        .I3(\BRIGTHNESS_LUT[0,0] [15]),
        .O(s_brightControl0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry__0_i_6
       (.I0(s_clkEnbCnt_reg[12]),
        .I1(\BRIGTHNESS_LUT[0,0] [12]),
        .I2(s_clkEnbCnt_reg[13]),
        .I3(\BRIGTHNESS_LUT[0,0] [13]),
        .O(s_brightControl0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry__0_i_7
       (.I0(s_clkEnbCnt_reg[10]),
        .I1(\BRIGTHNESS_LUT[0,0] [10]),
        .I2(s_clkEnbCnt_reg[11]),
        .I3(\BRIGTHNESS_LUT[0,0] [11]),
        .O(s_brightControl0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry__0_i_8
       (.I0(s_clkEnbCnt_reg[8]),
        .I1(\BRIGTHNESS_LUT[0,0] [8]),
        .I2(s_clkEnbCnt_reg[9]),
        .I3(\BRIGTHNESS_LUT[0,0] [9]),
        .O(s_brightControl0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h00DAC89CEC8F2625)) 
    s_brightControl0_carry__0_i_9
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\BRIGTHNESS_LUT[0,0] [14]));
  CARRY4 s_brightControl0_carry__1
       (.CI(s_brightControl0_carry__0_n_0),
        .CO({s_brightControl0_carry__1_n_0,s_brightControl0_carry__1_n_1,s_brightControl0_carry__1_n_2,s_brightControl0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({s_brightControl0_carry__1_i_1_n_0,s_brightControl0_carry__1_i_2_n_0,s_brightControl0_carry__1_i_3_n_0,s_brightControl0_carry__1_i_4_n_0}),
        .O(NLW_s_brightControl0_carry__1_O_UNCONNECTED[3:0]),
        .S({s_brightControl0_carry__1_i_5_n_0,s_brightControl0_carry__1_i_6_n_0,s_brightControl0_carry__1_i_7_n_0,s_brightControl0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    s_brightControl0_carry__1_i_1
       (.I0(s_clkEnbCnt_reg[22]),
        .I1(s_clkEnbCnt_reg[23]),
        .O(s_brightControl0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000D0A0000E8CF)) 
    s_brightControl0_carry__1_i_10
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\BRIGTHNESS_LUT[0,0] [18]));
  LUT6 #(
    .INIT(64'h0000000000EC00DA)) 
    s_brightControl0_carry__1_i_11
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\BRIGTHNESS_LUT[0,0] [19]));
  LUT6 #(
    .INIT(64'h0000DAC800EC8F26)) 
    s_brightControl0_carry__1_i_12
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\BRIGTHNESS_LUT[0,0] [16]));
  LUT6 #(
    .INIT(64'h00000000E8CFDCA8)) 
    s_brightControl0_carry__1_i_13
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\BRIGTHNESS_LUT[0,0] [17]));
  LUT6 #(
    .INIT(64'hFFFFFFFF222A2A2A)) 
    s_brightControl0_carry__1_i_2
       (.I0(s_clkEnbCnt_reg[20]),
        .I1(\BRIGTHNESS_LUT[0,4] ),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(s_clkEnbCnt_reg[21]),
        .O(s_brightControl0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry__1_i_3
       (.I0(s_clkEnbCnt_reg[18]),
        .I1(\BRIGTHNESS_LUT[0,0] [18]),
        .I2(\BRIGTHNESS_LUT[0,0] [19]),
        .I3(s_clkEnbCnt_reg[19]),
        .O(s_brightControl0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry__1_i_4
       (.I0(s_clkEnbCnt_reg[16]),
        .I1(\BRIGTHNESS_LUT[0,0] [16]),
        .I2(\BRIGTHNESS_LUT[0,0] [17]),
        .I3(s_clkEnbCnt_reg[17]),
        .O(s_brightControl0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_brightControl0_carry__1_i_5
       (.I0(s_clkEnbCnt_reg[22]),
        .I1(s_clkEnbCnt_reg[23]),
        .O(s_brightControl0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000AA955555)) 
    s_brightControl0_carry__1_i_6
       (.I0(s_clkEnbCnt_reg[20]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(\BRIGTHNESS_LUT[0,4] ),
        .I5(s_clkEnbCnt_reg[21]),
        .O(s_brightControl0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry__1_i_7
       (.I0(s_clkEnbCnt_reg[18]),
        .I1(\BRIGTHNESS_LUT[0,0] [18]),
        .I2(s_clkEnbCnt_reg[19]),
        .I3(\BRIGTHNESS_LUT[0,0] [19]),
        .O(s_brightControl0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry__1_i_8
       (.I0(s_clkEnbCnt_reg[16]),
        .I1(\BRIGTHNESS_LUT[0,0] [16]),
        .I2(s_clkEnbCnt_reg[17]),
        .I3(\BRIGTHNESS_LUT[0,0] [17]),
        .O(s_brightControl0_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    s_brightControl0_carry__1_i_9
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\BRIGTHNESS_LUT[0,4] ));
  CARRY4 s_brightControl0_carry__2
       (.CI(s_brightControl0_carry__1_n_0),
        .CO({p_1_in,s_brightControl0_carry__2_n_1,s_brightControl0_carry__2_n_2,s_brightControl0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({s_brightControl0_carry__2_i_1_n_0,s_brightControl0_carry__2_i_2_n_0,s_brightControl0_carry__2_i_3_n_0,s_brightControl0_carry__2_i_4_n_0}),
        .O(NLW_s_brightControl0_carry__2_O_UNCONNECTED[3:0]),
        .S({s_brightControl0_carry__2_i_5_n_0,s_brightControl0_carry__2_i_6_n_0,s_brightControl0_carry__2_i_7_n_0,s_brightControl0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    s_brightControl0_carry__2_i_1
       (.I0(s_clkEnbCnt_reg[30]),
        .I1(s_clkEnbCnt_reg[31]),
        .O(s_brightControl0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_brightControl0_carry__2_i_2
       (.I0(s_clkEnbCnt_reg[28]),
        .I1(s_clkEnbCnt_reg[29]),
        .O(s_brightControl0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_brightControl0_carry__2_i_3
       (.I0(s_clkEnbCnt_reg[26]),
        .I1(s_clkEnbCnt_reg[27]),
        .O(s_brightControl0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_brightControl0_carry__2_i_4
       (.I0(s_clkEnbCnt_reg[24]),
        .I1(s_clkEnbCnt_reg[25]),
        .O(s_brightControl0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_brightControl0_carry__2_i_5
       (.I0(s_clkEnbCnt_reg[30]),
        .I1(s_clkEnbCnt_reg[31]),
        .O(s_brightControl0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_brightControl0_carry__2_i_6
       (.I0(s_clkEnbCnt_reg[28]),
        .I1(s_clkEnbCnt_reg[29]),
        .O(s_brightControl0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_brightControl0_carry__2_i_7
       (.I0(s_clkEnbCnt_reg[26]),
        .I1(s_clkEnbCnt_reg[27]),
        .O(s_brightControl0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_brightControl0_carry__2_i_8
       (.I0(s_clkEnbCnt_reg[24]),
        .I1(s_clkEnbCnt_reg[25]),
        .O(s_brightControl0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry_i_1
       (.I0(s_clkEnbCnt_reg[6]),
        .I1(\BRIGTHNESS_LUT[0,0] [6]),
        .I2(\BRIGTHNESS_LUT[0,0] [7]),
        .I3(s_clkEnbCnt_reg[7]),
        .O(s_brightControl0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h25708F0033550000)) 
    s_brightControl0_carry_i_10
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\BRIGTHNESS_LUT[0,0] [7]));
  LUT6 #(
    .INIT(64'h558F00EC0000DA8F)) 
    s_brightControl0_carry_i_11
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\BRIGTHNESS_LUT[0,0] [4]));
  LUT6 #(
    .INIT(64'h33558F000000ECDA)) 
    s_brightControl0_carry_i_12
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\BRIGTHNESS_LUT[0,0] [5]));
  LUT6 #(
    .INIT(64'h000000ECDA8FECDA)) 
    s_brightControl0_carry_i_13
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\BRIGTHNESS_LUT[0,0] [2]));
  LUT6 #(
    .INIT(64'h8FEC008F00DA00EC)) 
    s_brightControl0_carry_i_14
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\BRIGTHNESS_LUT[0,0] [3]));
  LUT6 #(
    .INIT(64'h00ECDA8FECDA8FEC)) 
    s_brightControl0_carry_i_15
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\BRIGTHNESS_LUT[0,0] [0]));
  LUT6 #(
    .INIT(64'h008FECDA00ECDA8F)) 
    s_brightControl0_carry_i_16
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\BRIGTHNESS_LUT[0,0] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry_i_2
       (.I0(s_clkEnbCnt_reg[4]),
        .I1(\BRIGTHNESS_LUT[0,0] [4]),
        .I2(\BRIGTHNESS_LUT[0,0] [5]),
        .I3(s_clkEnbCnt_reg[5]),
        .O(s_brightControl0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry_i_3
       (.I0(s_clkEnbCnt_reg[2]),
        .I1(\BRIGTHNESS_LUT[0,0] [2]),
        .I2(\BRIGTHNESS_LUT[0,0] [3]),
        .I3(s_clkEnbCnt_reg[3]),
        .O(s_brightControl0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    s_brightControl0_carry_i_4
       (.I0(s_clkEnbCnt_reg[0]),
        .I1(\BRIGTHNESS_LUT[0,0] [0]),
        .I2(\BRIGTHNESS_LUT[0,0] [1]),
        .I3(s_clkEnbCnt_reg[1]),
        .O(s_brightControl0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry_i_5
       (.I0(s_clkEnbCnt_reg[6]),
        .I1(\BRIGTHNESS_LUT[0,0] [6]),
        .I2(s_clkEnbCnt_reg[7]),
        .I3(\BRIGTHNESS_LUT[0,0] [7]),
        .O(s_brightControl0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry_i_6
       (.I0(s_clkEnbCnt_reg[4]),
        .I1(\BRIGTHNESS_LUT[0,0] [4]),
        .I2(s_clkEnbCnt_reg[5]),
        .I3(\BRIGTHNESS_LUT[0,0] [5]),
        .O(s_brightControl0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry_i_7
       (.I0(s_clkEnbCnt_reg[2]),
        .I1(\BRIGTHNESS_LUT[0,0] [2]),
        .I2(s_clkEnbCnt_reg[3]),
        .I3(\BRIGTHNESS_LUT[0,0] [3]),
        .O(s_brightControl0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_brightControl0_carry_i_8
       (.I0(s_clkEnbCnt_reg[0]),
        .I1(\BRIGTHNESS_LUT[0,0] [0]),
        .I2(s_clkEnbCnt_reg[1]),
        .I3(\BRIGTHNESS_LUT[0,0] [1]),
        .O(s_brightControl0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h70330000558F00EC)) 
    s_brightControl0_carry_i_9
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\BRIGTHNESS_LUT[0,0] [6]));
  LUT3 #(
    .INIT(8'h54)) 
    \s_brightControl[7]_i_1 
       (.I0(s_clkEnbCnt0_carry__2_n_0),
        .I1(p_1_in),
        .I2(s_brightControl),
        .O(\s_brightControl[7]_i_1_n_0 ));
  FDSE \s_brightControl_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_brightControl[7]_i_1_n_0 ),
        .Q(s_brightControl),
        .S(SR));
  FDRE s_clkEnable_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_clkEnbCnt0_carry__2_n_0),
        .Q(s_clkEnable),
        .R(SR));
  CARRY4 s_clkEnbCnt0_carry
       (.CI(1'b0),
        .CO({s_clkEnbCnt0_carry_n_0,s_clkEnbCnt0_carry_n_1,s_clkEnbCnt0_carry_n_2,s_clkEnbCnt0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({s_clkEnbCnt0_carry_i_1_n_0,s_clkEnbCnt0_carry_i_2_n_0,s_clkEnbCnt0_carry_i_3_n_0,s_clkEnbCnt0_carry_i_4_n_0}),
        .O(NLW_s_clkEnbCnt0_carry_O_UNCONNECTED[3:0]),
        .S({s_clkEnbCnt0_carry_i_5_n_0,s_clkEnbCnt0_carry_i_6_n_0,s_clkEnbCnt0_carry_i_7_n_0,s_clkEnbCnt0_carry_i_8_n_0}));
  CARRY4 s_clkEnbCnt0_carry__0
       (.CI(s_clkEnbCnt0_carry_n_0),
        .CO({s_clkEnbCnt0_carry__0_n_0,s_clkEnbCnt0_carry__0_n_1,s_clkEnbCnt0_carry__0_n_2,s_clkEnbCnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({s_clkEnbCnt0_carry__0_i_1_n_0,s_clkEnbCnt0_carry__0_i_2_n_0,s_clkEnbCnt0_carry__0_i_3_n_0,s_clkEnbCnt0_carry__0_i_4_n_0}),
        .O(NLW_s_clkEnbCnt0_carry__0_O_UNCONNECTED[3:0]),
        .S({s_clkEnbCnt0_carry__0_i_5_n_0,s_clkEnbCnt0_carry__0_i_6_n_0,s_clkEnbCnt0_carry__0_i_7_n_0,s_clkEnbCnt0_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hF20E8000)) 
    s_clkEnbCnt0_carry__0_i_1
       (.I0(s_clkEnbCnt_reg[14]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(s_clkEnbCnt_reg[15]),
        .O(s_clkEnbCnt0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h323B0022)) 
    s_clkEnbCnt0_carry__0_i_2
       (.I0(s_clkEnbCnt_reg[12]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(s_clkEnbCnt_reg[13]),
        .O(s_clkEnbCnt0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h3BFB2220)) 
    s_clkEnbCnt0_carry__0_i_3
       (.I0(s_clkEnbCnt_reg[10]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(s_clkEnbCnt_reg[11]),
        .O(s_clkEnbCnt0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hEFFB0A82)) 
    s_clkEnbCnt0_carry__0_i_4
       (.I0(s_clkEnbCnt_reg[8]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(s_clkEnbCnt_reg[9]),
        .O(s_clkEnbCnt0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h12848824)) 
    s_clkEnbCnt0_carry__0_i_5
       (.I0(s_clkEnbCnt_reg[14]),
        .I1(s_clkEnbCnt_reg[15]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(s_clkEnbCnt0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h82848141)) 
    s_clkEnbCnt0_carry__0_i_6
       (.I0(s_clkEnbCnt_reg[12]),
        .I1(s_clkEnbCnt_reg[13]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(s_clkEnbCnt0_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h81412142)) 
    s_clkEnbCnt0_carry__0_i_7
       (.I0(s_clkEnbCnt_reg[10]),
        .I1(s_clkEnbCnt_reg[11]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(s_clkEnbCnt0_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h24111241)) 
    s_clkEnbCnt0_carry__0_i_8
       (.I0(s_clkEnbCnt_reg[8]),
        .I1(s_clkEnbCnt_reg[9]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(s_clkEnbCnt0_carry__0_i_8_n_0));
  CARRY4 s_clkEnbCnt0_carry__1
       (.CI(s_clkEnbCnt0_carry__0_n_0),
        .CO({s_clkEnbCnt0_carry__1_n_0,s_clkEnbCnt0_carry__1_n_1,s_clkEnbCnt0_carry__1_n_2,s_clkEnbCnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({s_clkEnbCnt0_carry__1_i_1_n_0,s_clkEnbCnt0_carry__1_i_2_n_0,s_clkEnbCnt0_carry__1_i_3_n_0,s_clkEnbCnt0_carry__1_i_4_n_0}),
        .O(NLW_s_clkEnbCnt0_carry__1_O_UNCONNECTED[3:0]),
        .S({s_clkEnbCnt0_carry__1_i_5_n_0,s_clkEnbCnt0_carry__1_i_6_n_0,s_clkEnbCnt0_carry__1_i_7_n_0,s_clkEnbCnt0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    s_clkEnbCnt0_carry__1_i_1
       (.I0(s_clkEnbCnt_reg[22]),
        .I1(s_clkEnbCnt_reg[23]),
        .O(s_clkEnbCnt0_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    s_clkEnbCnt0_carry__1_i_2
       (.I0(s_clkEnbCnt_reg[20]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(s_clkEnbCnt_reg[21]),
        .O(s_clkEnbCnt0_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFF0A8A0)) 
    s_clkEnbCnt0_carry__1_i_3
       (.I0(s_clkEnbCnt_reg[18]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(s_clkEnbCnt_reg[19]),
        .O(s_clkEnbCnt0_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFA80200)) 
    s_clkEnbCnt0_carry__1_i_4
       (.I0(s_clkEnbCnt_reg[16]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_clkEnbCnt_reg[17]),
        .I4(Q[2]),
        .O(s_clkEnbCnt0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_clkEnbCnt0_carry__1_i_5
       (.I0(s_clkEnbCnt_reg[22]),
        .I1(s_clkEnbCnt_reg[23]),
        .O(s_clkEnbCnt0_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h00005556)) 
    s_clkEnbCnt0_carry__1_i_6
       (.I0(s_clkEnbCnt_reg[20]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(s_clkEnbCnt_reg[21]),
        .O(s_clkEnbCnt0_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h050605A0)) 
    s_clkEnbCnt0_carry__1_i_7
       (.I0(s_clkEnbCnt_reg[18]),
        .I1(Q[0]),
        .I2(s_clkEnbCnt_reg[19]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(s_clkEnbCnt0_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h0056A900)) 
    s_clkEnbCnt0_carry__1_i_8
       (.I0(s_clkEnbCnt_reg[16]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_clkEnbCnt_reg[17]),
        .I4(Q[2]),
        .O(s_clkEnbCnt0_carry__1_i_8_n_0));
  CARRY4 s_clkEnbCnt0_carry__2
       (.CI(s_clkEnbCnt0_carry__1_n_0),
        .CO({s_clkEnbCnt0_carry__2_n_0,s_clkEnbCnt0_carry__2_n_1,s_clkEnbCnt0_carry__2_n_2,s_clkEnbCnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({s_clkEnbCnt0_carry__2_i_1_n_0,s_clkEnbCnt0_carry__2_i_2_n_0,s_clkEnbCnt0_carry__2_i_3_n_0,s_clkEnbCnt0_carry__2_i_4_n_0}),
        .O(NLW_s_clkEnbCnt0_carry__2_O_UNCONNECTED[3:0]),
        .S({s_clkEnbCnt0_carry__2_i_5_n_0,s_clkEnbCnt0_carry__2_i_6_n_0,s_clkEnbCnt0_carry__2_i_7_n_0,s_clkEnbCnt0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    s_clkEnbCnt0_carry__2_i_1
       (.I0(s_clkEnbCnt_reg[30]),
        .I1(s_clkEnbCnt_reg[31]),
        .O(s_clkEnbCnt0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_clkEnbCnt0_carry__2_i_2
       (.I0(s_clkEnbCnt_reg[28]),
        .I1(s_clkEnbCnt_reg[29]),
        .O(s_clkEnbCnt0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_clkEnbCnt0_carry__2_i_3
       (.I0(s_clkEnbCnt_reg[26]),
        .I1(s_clkEnbCnt_reg[27]),
        .O(s_clkEnbCnt0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_clkEnbCnt0_carry__2_i_4
       (.I0(s_clkEnbCnt_reg[24]),
        .I1(s_clkEnbCnt_reg[25]),
        .O(s_clkEnbCnt0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_clkEnbCnt0_carry__2_i_5
       (.I0(s_clkEnbCnt_reg[30]),
        .I1(s_clkEnbCnt_reg[31]),
        .O(s_clkEnbCnt0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_clkEnbCnt0_carry__2_i_6
       (.I0(s_clkEnbCnt_reg[28]),
        .I1(s_clkEnbCnt_reg[29]),
        .O(s_clkEnbCnt0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_clkEnbCnt0_carry__2_i_7
       (.I0(s_clkEnbCnt_reg[26]),
        .I1(s_clkEnbCnt_reg[27]),
        .O(s_clkEnbCnt0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_clkEnbCnt0_carry__2_i_8
       (.I0(s_clkEnbCnt_reg[24]),
        .I1(s_clkEnbCnt_reg[25]),
        .O(s_clkEnbCnt0_carry__2_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFBFA828)) 
    s_clkEnbCnt0_carry_i_1
       (.I0(s_clkEnbCnt_reg[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(s_clkEnbCnt_reg[7]),
        .O(s_clkEnbCnt0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF8CA008)) 
    s_clkEnbCnt0_carry_i_2
       (.I0(s_clkEnbCnt_reg[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(s_clkEnbCnt_reg[5]),
        .O(s_clkEnbCnt0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h8CCC0880)) 
    s_clkEnbCnt0_carry_i_3
       (.I0(s_clkEnbCnt_reg[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_clkEnbCnt_reg[3]),
        .O(s_clkEnbCnt0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hF0008000)) 
    s_clkEnbCnt0_carry_i_4
       (.I0(s_clkEnbCnt_reg[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(s_clkEnbCnt_reg[1]),
        .O(s_clkEnbCnt0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h11124112)) 
    s_clkEnbCnt0_carry_i_5
       (.I0(s_clkEnbCnt_reg[6]),
        .I1(s_clkEnbCnt_reg[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(s_clkEnbCnt0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h11224818)) 
    s_clkEnbCnt0_carry_i_6
       (.I0(s_clkEnbCnt_reg[4]),
        .I1(s_clkEnbCnt_reg[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(s_clkEnbCnt0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h48181828)) 
    s_clkEnbCnt0_carry_i_7
       (.I0(s_clkEnbCnt_reg[2]),
        .I1(s_clkEnbCnt_reg[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(s_clkEnbCnt0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h06A0A0A0)) 
    s_clkEnbCnt0_carry_i_8
       (.I0(s_clkEnbCnt_reg[0]),
        .I1(Q[0]),
        .I2(s_clkEnbCnt_reg[1]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(s_clkEnbCnt0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \s_clkEnbCnt[0]_i_1 
       (.I0(s_clkEnbCnt0_carry__2_n_0),
        .I1(s00_axi_aresetn),
        .O(\s_clkEnbCnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_clkEnbCnt[0]_i_3 
       (.I0(s_clkEnbCnt_reg[0]),
        .O(\s_clkEnbCnt[0]_i_3_n_0 ));
  FDRE \s_clkEnbCnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[0]_i_2_n_7 ),
        .Q(s_clkEnbCnt_reg[0]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  CARRY4 \s_clkEnbCnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\s_clkEnbCnt_reg[0]_i_2_n_0 ,\s_clkEnbCnt_reg[0]_i_2_n_1 ,\s_clkEnbCnt_reg[0]_i_2_n_2 ,\s_clkEnbCnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\s_clkEnbCnt_reg[0]_i_2_n_4 ,\s_clkEnbCnt_reg[0]_i_2_n_5 ,\s_clkEnbCnt_reg[0]_i_2_n_6 ,\s_clkEnbCnt_reg[0]_i_2_n_7 }),
        .S({s_clkEnbCnt_reg[3:1],\s_clkEnbCnt[0]_i_3_n_0 }));
  FDRE \s_clkEnbCnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[8]_i_1_n_5 ),
        .Q(s_clkEnbCnt_reg[10]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[8]_i_1_n_4 ),
        .Q(s_clkEnbCnt_reg[11]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[12]_i_1_n_7 ),
        .Q(s_clkEnbCnt_reg[12]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  CARRY4 \s_clkEnbCnt_reg[12]_i_1 
       (.CI(\s_clkEnbCnt_reg[8]_i_1_n_0 ),
        .CO({\s_clkEnbCnt_reg[12]_i_1_n_0 ,\s_clkEnbCnt_reg[12]_i_1_n_1 ,\s_clkEnbCnt_reg[12]_i_1_n_2 ,\s_clkEnbCnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_clkEnbCnt_reg[12]_i_1_n_4 ,\s_clkEnbCnt_reg[12]_i_1_n_5 ,\s_clkEnbCnt_reg[12]_i_1_n_6 ,\s_clkEnbCnt_reg[12]_i_1_n_7 }),
        .S(s_clkEnbCnt_reg[15:12]));
  FDRE \s_clkEnbCnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[12]_i_1_n_6 ),
        .Q(s_clkEnbCnt_reg[13]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[12]_i_1_n_5 ),
        .Q(s_clkEnbCnt_reg[14]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[12]_i_1_n_4 ),
        .Q(s_clkEnbCnt_reg[15]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[16]_i_1_n_7 ),
        .Q(s_clkEnbCnt_reg[16]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  CARRY4 \s_clkEnbCnt_reg[16]_i_1 
       (.CI(\s_clkEnbCnt_reg[12]_i_1_n_0 ),
        .CO({\s_clkEnbCnt_reg[16]_i_1_n_0 ,\s_clkEnbCnt_reg[16]_i_1_n_1 ,\s_clkEnbCnt_reg[16]_i_1_n_2 ,\s_clkEnbCnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_clkEnbCnt_reg[16]_i_1_n_4 ,\s_clkEnbCnt_reg[16]_i_1_n_5 ,\s_clkEnbCnt_reg[16]_i_1_n_6 ,\s_clkEnbCnt_reg[16]_i_1_n_7 }),
        .S(s_clkEnbCnt_reg[19:16]));
  FDRE \s_clkEnbCnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[16]_i_1_n_6 ),
        .Q(s_clkEnbCnt_reg[17]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[16]_i_1_n_5 ),
        .Q(s_clkEnbCnt_reg[18]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[16]_i_1_n_4 ),
        .Q(s_clkEnbCnt_reg[19]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[0]_i_2_n_6 ),
        .Q(s_clkEnbCnt_reg[1]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[20]_i_1_n_7 ),
        .Q(s_clkEnbCnt_reg[20]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  CARRY4 \s_clkEnbCnt_reg[20]_i_1 
       (.CI(\s_clkEnbCnt_reg[16]_i_1_n_0 ),
        .CO({\s_clkEnbCnt_reg[20]_i_1_n_0 ,\s_clkEnbCnt_reg[20]_i_1_n_1 ,\s_clkEnbCnt_reg[20]_i_1_n_2 ,\s_clkEnbCnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_clkEnbCnt_reg[20]_i_1_n_4 ,\s_clkEnbCnt_reg[20]_i_1_n_5 ,\s_clkEnbCnt_reg[20]_i_1_n_6 ,\s_clkEnbCnt_reg[20]_i_1_n_7 }),
        .S(s_clkEnbCnt_reg[23:20]));
  FDRE \s_clkEnbCnt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[20]_i_1_n_6 ),
        .Q(s_clkEnbCnt_reg[21]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[20]_i_1_n_5 ),
        .Q(s_clkEnbCnt_reg[22]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[20]_i_1_n_4 ),
        .Q(s_clkEnbCnt_reg[23]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[24]_i_1_n_7 ),
        .Q(s_clkEnbCnt_reg[24]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  CARRY4 \s_clkEnbCnt_reg[24]_i_1 
       (.CI(\s_clkEnbCnt_reg[20]_i_1_n_0 ),
        .CO({\s_clkEnbCnt_reg[24]_i_1_n_0 ,\s_clkEnbCnt_reg[24]_i_1_n_1 ,\s_clkEnbCnt_reg[24]_i_1_n_2 ,\s_clkEnbCnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_clkEnbCnt_reg[24]_i_1_n_4 ,\s_clkEnbCnt_reg[24]_i_1_n_5 ,\s_clkEnbCnt_reg[24]_i_1_n_6 ,\s_clkEnbCnt_reg[24]_i_1_n_7 }),
        .S(s_clkEnbCnt_reg[27:24]));
  FDRE \s_clkEnbCnt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[24]_i_1_n_6 ),
        .Q(s_clkEnbCnt_reg[25]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[24]_i_1_n_5 ),
        .Q(s_clkEnbCnt_reg[26]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[24]_i_1_n_4 ),
        .Q(s_clkEnbCnt_reg[27]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[28]_i_1_n_7 ),
        .Q(s_clkEnbCnt_reg[28]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  CARRY4 \s_clkEnbCnt_reg[28]_i_1 
       (.CI(\s_clkEnbCnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_s_clkEnbCnt_reg[28]_i_1_CO_UNCONNECTED [3],\s_clkEnbCnt_reg[28]_i_1_n_1 ,\s_clkEnbCnt_reg[28]_i_1_n_2 ,\s_clkEnbCnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_clkEnbCnt_reg[28]_i_1_n_4 ,\s_clkEnbCnt_reg[28]_i_1_n_5 ,\s_clkEnbCnt_reg[28]_i_1_n_6 ,\s_clkEnbCnt_reg[28]_i_1_n_7 }),
        .S(s_clkEnbCnt_reg[31:28]));
  FDRE \s_clkEnbCnt_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[28]_i_1_n_6 ),
        .Q(s_clkEnbCnt_reg[29]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[0]_i_2_n_5 ),
        .Q(s_clkEnbCnt_reg[2]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[28]_i_1_n_5 ),
        .Q(s_clkEnbCnt_reg[30]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[28]_i_1_n_4 ),
        .Q(s_clkEnbCnt_reg[31]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[0]_i_2_n_4 ),
        .Q(s_clkEnbCnt_reg[3]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[4]_i_1_n_7 ),
        .Q(s_clkEnbCnt_reg[4]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  CARRY4 \s_clkEnbCnt_reg[4]_i_1 
       (.CI(\s_clkEnbCnt_reg[0]_i_2_n_0 ),
        .CO({\s_clkEnbCnt_reg[4]_i_1_n_0 ,\s_clkEnbCnt_reg[4]_i_1_n_1 ,\s_clkEnbCnt_reg[4]_i_1_n_2 ,\s_clkEnbCnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_clkEnbCnt_reg[4]_i_1_n_4 ,\s_clkEnbCnt_reg[4]_i_1_n_5 ,\s_clkEnbCnt_reg[4]_i_1_n_6 ,\s_clkEnbCnt_reg[4]_i_1_n_7 }),
        .S(s_clkEnbCnt_reg[7:4]));
  FDRE \s_clkEnbCnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[4]_i_1_n_6 ),
        .Q(s_clkEnbCnt_reg[5]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[4]_i_1_n_5 ),
        .Q(s_clkEnbCnt_reg[6]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[4]_i_1_n_4 ),
        .Q(s_clkEnbCnt_reg[7]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  FDRE \s_clkEnbCnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[8]_i_1_n_7 ),
        .Q(s_clkEnbCnt_reg[8]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  CARRY4 \s_clkEnbCnt_reg[8]_i_1 
       (.CI(\s_clkEnbCnt_reg[4]_i_1_n_0 ),
        .CO({\s_clkEnbCnt_reg[8]_i_1_n_0 ,\s_clkEnbCnt_reg[8]_i_1_n_1 ,\s_clkEnbCnt_reg[8]_i_1_n_2 ,\s_clkEnbCnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_clkEnbCnt_reg[8]_i_1_n_4 ,\s_clkEnbCnt_reg[8]_i_1_n_5 ,\s_clkEnbCnt_reg[8]_i_1_n_6 ,\s_clkEnbCnt_reg[8]_i_1_n_7 }),
        .S(s_clkEnbCnt_reg[11:8]));
  FDRE \s_clkEnbCnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_clkEnbCnt_reg[8]_i_1_n_6 ),
        .Q(s_clkEnbCnt_reg[9]),
        .R(\s_clkEnbCnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_counter[0]_i_1 
       (.I0(s_clkEnable),
        .I1(s_counter[0]),
        .O(\s_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \s_counter[1]_i_1 
       (.I0(s_counter[0]),
        .I1(s_clkEnable),
        .I2(s_counter[1]),
        .O(\s_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \s_counter[2]_i_1 
       (.I0(s_counter[1]),
        .I1(s_counter[0]),
        .I2(s_clkEnable),
        .I3(s_counter[2]),
        .O(\s_counter[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_counter[0]_i_1_n_0 ),
        .Q(s_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_counter[1]_i_1_n_0 ),
        .Q(s_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\s_counter[2]_i_1_n_0 ),
        .Q(s_counter[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Nexys4DisplayDriverExtended_v1_0" *) 
module mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0
   (dispSeg_n,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    dispPt_n,
    dispEn_n,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [6:0]dispSeg_n;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output dispPt_n;
  output [7:0]dispEn_n;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]dispEn_n;
  wire dispPt_n;
  wire [6:0]dispSeg_n;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0_S00_AXI Nexys4DisplayDriverExtended_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .dispEn_n(dispEn_n),
        .dispPt_n(dispPt_n),
        .dispSeg_n(dispSeg_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Nexys4DisplayDriverExtended_v1_0_S00_AXI" *) 
module mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0_S00_AXI
   (dispSeg_n,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    dispPt_n,
    dispEn_n,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [6:0]dispSeg_n;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output dispPt_n;
  output [7:0]dispEn_n;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [3:0]data1;
  wire [3:0]data2;
  wire [3:0]data3;
  wire [3:0]data4;
  wire [3:0]data5;
  wire [3:0]data6;
  wire [3:0]data7;
  wire [7:0]dispEn_n;
  wire dispPt_n;
  wire [6:0]dispSeg_n;
  wire display_driver_n_0;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(display_driver_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(display_driver_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(display_driver_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(display_driver_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(display_driver_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(display_driver_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(display_driver_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(display_driver_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[0] ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(data2[2]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(data2[3]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(data3[0]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(data3[1]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(data3[2]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(data3[3]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(data4[0]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(data4[1]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(data4[2]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(data4[3]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg1_reg_n_0_[1] ),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(data5[0]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(data5[1]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(data5[2]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(data5[3]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(data6[0]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(data6[1]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(data6[2]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(data6[3]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(data7[0]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(data7[1]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(data7[2]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(data7[3]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg1_reg_n_0_[3] ),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(sel0[0]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(data1[0]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(sel0[1]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(data1[1]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(sel0[2]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(data1[2]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(data1[3]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(data2[0]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(data2[1]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(display_driver_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(display_driver_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(display_driver_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(display_driver_n_0));
  mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriver display_driver
       (.Q({sel0,\slv_reg2_reg_n_0_[2] ,\slv_reg2_reg_n_0_[1] ,\slv_reg2_reg_n_0_[0] }),
        .SR(display_driver_n_0),
        .dispEn_n(dispEn_n),
        .dispPt_n(dispPt_n),
        .dispPt_n_0(slv_reg0[15:0]),
        .dispSeg_n(dispSeg_n),
        .\dispSeg_n[6]_INST_0_i_4_0 ({data7,data6,data5,data4,data3,data2,data1,\slv_reg1_reg_n_0_[3] ,\slv_reg1_reg_n_0_[2] ,\slv_reg1_reg_n_0_[1] ,\slv_reg1_reg_n_0_[0] }),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(display_driver_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(display_driver_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(data2[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(data2[3]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(data3[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(data3[1]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(data3[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(data3[3]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(data4[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(data4[1]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(data4[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(data4[3]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(data5[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(data5[1]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(data5[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(data5[3]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(data6[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(data6[1]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(data6[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(data6[3]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(data7[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(data7[1]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(data7[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(data7[3]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(data1[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(data1[1]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(data1[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(data1[3]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(data2[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(data2[1]),
        .R(display_driver_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(sel0[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(sel0[1]),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(sel0[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(display_driver_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(display_driver_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(display_driver_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(display_driver_n_0));
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
