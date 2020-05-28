// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May 14 19:17:21 2020
// Host        : GreatAtuin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/axi-stream/StreamCopDemo/StreamCopDemo.srcs/sources_1/bd/mb_design/ip/mb_design_ReverseEndianessCop_0_0/mb_design_ReverseEndianessCop_0_0_sim_netlist.v
// Design      : mb_design_ReverseEndianessCop_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mb_design_ReverseEndianessCop_0_0,ReverseEndianessCop_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "ReverseEndianessCop_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mb_design_ReverseEndianessCop_0_0
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
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0 U0
       (.m00_axis_tdata(m00_axis_tdata),
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

(* ORIG_REF_NAME = "ReverseEndianessCop_v1_0" *) 
module mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0
   (m00_axis_tdata,
    s_validOut_reg,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_aclk,
    m00_axis_tready,
    s00_axis_tvalid,
    s00_axis_aresetn);
  output [31:0]m00_axis_tdata;
  output s_validOut_reg;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input s00_axis_aclk;
  input m00_axis_tready;
  input s00_axis_tvalid;
  input s00_axis_aresetn;

  wire [31:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire s_validOut_reg;

  mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0_S00_AXIS ReverseEndianessCop_v1_0_S00_AXIS_inst
       (.m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tready(m00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s_validOut_reg_0(s_validOut_reg));
endmodule

(* ORIG_REF_NAME = "ReverseEndianessCop_v1_0_S00_AXIS" *) 
module mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0_S00_AXIS
   (m00_axis_tdata,
    s_validOut_reg_0,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_aclk,
    m00_axis_tready,
    s00_axis_tvalid,
    s00_axis_aresetn);
  output [31:0]m00_axis_tdata;
  output s_validOut_reg_0;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input s00_axis_aclk;
  input m00_axis_tready;
  input s00_axis_tvalid;
  input s00_axis_aresetn;

  wire [31:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire p_0_in;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire s_validOut;
  wire s_validOut_i_1_n_0;
  wire s_validOut_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s00_axis_tready_INST_0
       (.I0(m00_axis_tready),
        .I1(s_validOut_reg_0),
        .O(s00_axis_tready));
  LUT1 #(
    .INIT(2'h1)) 
    \s_dataOut[31]_i_1 
       (.I0(s00_axis_aresetn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hA2)) 
    \s_dataOut[31]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(s_validOut_reg_0),
        .I2(m00_axis_tready),
        .O(s_validOut));
  FDRE \s_dataOut_reg[0] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[24]),
        .Q(m00_axis_tdata[0]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[10] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[18]),
        .Q(m00_axis_tdata[10]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[11] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[19]),
        .Q(m00_axis_tdata[11]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[12] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[20]),
        .Q(m00_axis_tdata[12]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[13] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[21]),
        .Q(m00_axis_tdata[13]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[14] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[22]),
        .Q(m00_axis_tdata[14]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[15] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[23]),
        .Q(m00_axis_tdata[15]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[16] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[8]),
        .Q(m00_axis_tdata[16]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[17] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[9]),
        .Q(m00_axis_tdata[17]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[18] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[10]),
        .Q(m00_axis_tdata[18]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[19] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[11]),
        .Q(m00_axis_tdata[19]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[1] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[25]),
        .Q(m00_axis_tdata[1]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[20] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[12]),
        .Q(m00_axis_tdata[20]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[21] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[13]),
        .Q(m00_axis_tdata[21]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[22] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[14]),
        .Q(m00_axis_tdata[22]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[23] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[15]),
        .Q(m00_axis_tdata[23]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[24] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[0]),
        .Q(m00_axis_tdata[24]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[25] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[1]),
        .Q(m00_axis_tdata[25]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[26] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[2]),
        .Q(m00_axis_tdata[26]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[27] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[3]),
        .Q(m00_axis_tdata[27]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[28] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[4]),
        .Q(m00_axis_tdata[28]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[29] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[5]),
        .Q(m00_axis_tdata[29]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[2] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[26]),
        .Q(m00_axis_tdata[2]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[30] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[6]),
        .Q(m00_axis_tdata[30]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[31] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[7]),
        .Q(m00_axis_tdata[31]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[3] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[27]),
        .Q(m00_axis_tdata[3]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[4] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[28]),
        .Q(m00_axis_tdata[4]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[5] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[29]),
        .Q(m00_axis_tdata[5]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[6] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[30]),
        .Q(m00_axis_tdata[6]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[7] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[31]),
        .Q(m00_axis_tdata[7]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[8] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[16]),
        .Q(m00_axis_tdata[8]),
        .R(p_0_in));
  FDRE \s_dataOut_reg[9] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s00_axis_tdata[17]),
        .Q(m00_axis_tdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
