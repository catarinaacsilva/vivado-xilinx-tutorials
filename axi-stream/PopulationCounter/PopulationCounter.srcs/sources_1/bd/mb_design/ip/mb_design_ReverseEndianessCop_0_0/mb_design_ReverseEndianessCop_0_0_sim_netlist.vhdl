-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Jun 14 00:41:45 2020
-- Host        : GreatAtuin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/catar/Desktop/git/vivado-xilinx-tutorials/axi-stream/PopulationCounter/PopulationCounter.srcs/sources_1/bd/mb_design/ip/mb_design_ReverseEndianessCop_0_0/mb_design_ReverseEndianessCop_0_0_sim_netlist.vhdl
-- Design      : mb_design_ReverseEndianessCop_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0_S00_AXIS is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_dataValid_reg_0 : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0_S00_AXIS : entity is "ReverseEndianessCop_v1_0_S00_AXIS";
end mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0_S00_AXIS;

architecture STRUCTURE of mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0_S00_AXIS is
  signal \byteEnable[3]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal s_dataValid_i_1_n_0 : STD_LOGIC;
  signal \^s_datavalid_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s00_axis_tready_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_dataValid_i_1 : label is "soft_lutpair0";
begin
  s_dataValid_reg_0 <= \^s_datavalid_reg_0\;
\byteEnable[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => m00_axis_tready,
      I2 => \^s_datavalid_reg_0\,
      I3 => s00_axis_tvalid,
      O => \byteEnable[3]_i_1_n_0\
    );
\byteEnable_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \byteEnable[3]_i_1_n_0\,
      D => s00_axis_tstrb(3),
      Q => m00_axis_tstrb(0),
      R => '0'
    );
\byteEnable_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \byteEnable[3]_i_1_n_0\,
      D => s00_axis_tstrb(2),
      Q => m00_axis_tstrb(1),
      R => '0'
    );
\byteEnable_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \byteEnable[3]_i_1_n_0\,
      D => s00_axis_tstrb(1),
      Q => m00_axis_tstrb(2),
      R => '0'
    );
\byteEnable_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \byteEnable[3]_i_1_n_0\,
      D => s00_axis_tstrb(0),
      Q => m00_axis_tstrb(3),
      R => '0'
    );
lastWord_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \byteEnable[3]_i_1_n_0\,
      D => s00_axis_tlast,
      Q => m00_axis_tlast,
      R => '0'
    );
\reversedData[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => s00_axis_tstrb(2),
      I2 => m00_axis_tready,
      I3 => \^s_datavalid_reg_0\,
      O => p_1_in(15)
    );
\reversedData[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => s00_axis_tstrb(1),
      I2 => m00_axis_tready,
      I3 => \^s_datavalid_reg_0\,
      O => p_1_in(23)
    );
\reversedData[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => p_0_in
    );
\reversedData[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => s00_axis_tstrb(0),
      I2 => m00_axis_tready,
      I3 => \^s_datavalid_reg_0\,
      O => p_1_in(31)
    );
\reversedData[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => s00_axis_tstrb(3),
      I2 => m00_axis_tready,
      I3 => \^s_datavalid_reg_0\,
      O => p_1_in(7)
    );
\reversedData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(7),
      D => s00_axis_tdata(24),
      Q => m00_axis_tdata(0),
      R => p_0_in
    );
\reversedData_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(15),
      D => s00_axis_tdata(18),
      Q => m00_axis_tdata(10),
      R => p_0_in
    );
\reversedData_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(15),
      D => s00_axis_tdata(19),
      Q => m00_axis_tdata(11),
      R => p_0_in
    );
\reversedData_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(15),
      D => s00_axis_tdata(20),
      Q => m00_axis_tdata(12),
      R => p_0_in
    );
\reversedData_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(15),
      D => s00_axis_tdata(21),
      Q => m00_axis_tdata(13),
      R => p_0_in
    );
\reversedData_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(15),
      D => s00_axis_tdata(22),
      Q => m00_axis_tdata(14),
      R => p_0_in
    );
\reversedData_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(15),
      D => s00_axis_tdata(23),
      Q => m00_axis_tdata(15),
      R => p_0_in
    );
\reversedData_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(23),
      D => s00_axis_tdata(8),
      Q => m00_axis_tdata(16),
      R => p_0_in
    );
\reversedData_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(23),
      D => s00_axis_tdata(9),
      Q => m00_axis_tdata(17),
      R => p_0_in
    );
\reversedData_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(23),
      D => s00_axis_tdata(10),
      Q => m00_axis_tdata(18),
      R => p_0_in
    );
\reversedData_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(23),
      D => s00_axis_tdata(11),
      Q => m00_axis_tdata(19),
      R => p_0_in
    );
\reversedData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(7),
      D => s00_axis_tdata(25),
      Q => m00_axis_tdata(1),
      R => p_0_in
    );
\reversedData_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(23),
      D => s00_axis_tdata(12),
      Q => m00_axis_tdata(20),
      R => p_0_in
    );
\reversedData_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(23),
      D => s00_axis_tdata(13),
      Q => m00_axis_tdata(21),
      R => p_0_in
    );
\reversedData_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(23),
      D => s00_axis_tdata(14),
      Q => m00_axis_tdata(22),
      R => p_0_in
    );
\reversedData_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(23),
      D => s00_axis_tdata(15),
      Q => m00_axis_tdata(23),
      R => p_0_in
    );
\reversedData_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(31),
      D => s00_axis_tdata(0),
      Q => m00_axis_tdata(24),
      R => p_0_in
    );
\reversedData_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(31),
      D => s00_axis_tdata(1),
      Q => m00_axis_tdata(25),
      R => p_0_in
    );
\reversedData_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(31),
      D => s00_axis_tdata(2),
      Q => m00_axis_tdata(26),
      R => p_0_in
    );
\reversedData_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(31),
      D => s00_axis_tdata(3),
      Q => m00_axis_tdata(27),
      R => p_0_in
    );
\reversedData_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(31),
      D => s00_axis_tdata(4),
      Q => m00_axis_tdata(28),
      R => p_0_in
    );
\reversedData_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(31),
      D => s00_axis_tdata(5),
      Q => m00_axis_tdata(29),
      R => p_0_in
    );
\reversedData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(7),
      D => s00_axis_tdata(26),
      Q => m00_axis_tdata(2),
      R => p_0_in
    );
\reversedData_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(31),
      D => s00_axis_tdata(6),
      Q => m00_axis_tdata(30),
      R => p_0_in
    );
\reversedData_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(31),
      D => s00_axis_tdata(7),
      Q => m00_axis_tdata(31),
      R => p_0_in
    );
\reversedData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(7),
      D => s00_axis_tdata(27),
      Q => m00_axis_tdata(3),
      R => p_0_in
    );
\reversedData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(7),
      D => s00_axis_tdata(28),
      Q => m00_axis_tdata(4),
      R => p_0_in
    );
\reversedData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(7),
      D => s00_axis_tdata(29),
      Q => m00_axis_tdata(5),
      R => p_0_in
    );
\reversedData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(7),
      D => s00_axis_tdata(30),
      Q => m00_axis_tdata(6),
      R => p_0_in
    );
\reversedData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(7),
      D => s00_axis_tdata(31),
      Q => m00_axis_tdata(7),
      R => p_0_in
    );
\reversedData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(15),
      D => s00_axis_tdata(16),
      Q => m00_axis_tdata(8),
      R => p_0_in
    );
\reversedData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => p_1_in(15),
      D => s00_axis_tdata(17),
      Q => m00_axis_tdata(9),
      R => p_0_in
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \^s_datavalid_reg_0\,
      O => s00_axis_tready
    );
s_dataValid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F400"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \^s_datavalid_reg_0\,
      I2 => s00_axis_tvalid,
      I3 => s00_axis_aresetn,
      O => s_dataValid_i_1_n_0
    );
s_dataValid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => s_dataValid_i_1_n_0,
      Q => \^s_datavalid_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0 is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_dataValid_reg : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0 : entity is "ReverseEndianessCop_v1_0";
end mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0;

architecture STRUCTURE of mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0 is
begin
ReverseEndianessCop_v1_0_S00_AXIS_inst: entity work.mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0_S00_AXIS
     port map (
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tstrb(3 downto 0) => m00_axis_tstrb(3 downto 0),
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tstrb(3 downto 0) => s00_axis_tstrb(3 downto 0),
      s00_axis_tvalid => s00_axis_tvalid,
      s_dataValid_reg_0 => s_dataValid_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_ReverseEndianessCop_0_0 is
  port (
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mb_design_ReverseEndianessCop_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_design_ReverseEndianessCop_0_0 : entity is "mb_design_ReverseEndianessCop_0_0,ReverseEndianessCop_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mb_design_ReverseEndianessCop_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mb_design_ReverseEndianessCop_0_0 : entity is "ReverseEndianessCop_v1_0,Vivado 2019.2";
end mb_design_ReverseEndianessCop_0_0;

architecture STRUCTURE of mb_design_ReverseEndianessCop_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute x_interface_parameter of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_parameter of m00_axis_tvalid : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute x_interface_parameter of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute x_interface_parameter of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute x_interface_parameter of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
U0: entity work.mb_design_ReverseEndianessCop_0_0_ReverseEndianessCop_v1_0
     port map (
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tstrb(3 downto 0) => m00_axis_tstrb(3 downto 0),
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tstrb(3 downto 0) => s00_axis_tstrb(3 downto 0),
      s00_axis_tvalid => s00_axis_tvalid,
      s_dataValid_reg => m00_axis_tvalid
    );
end STRUCTURE;
