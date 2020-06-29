-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu May  7 12:30:50 2020
-- Host        : ASUS-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Pedro/Dropbox/UA/CR/Labs/Lab6/CountDownTimerFreeRTOS/CountDownTimerFreeRTOS.srcs/sources_1/bd/mb_design/ip/mb_design_Nexys4DisplayDriverE_0_0/mb_design_Nexys4DisplayDriverE_0_0_sim_netlist.vhdl
-- Design      : mb_design_Nexys4DisplayDriverE_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriver is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    dispSeg_n : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dispPt_n : out STD_LOGIC;
    dispEn_n : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    dispPt_n_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \dispSeg_n[6]_INST_0_i_4_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriver : entity is "Nexys4DisplayDriver";
end mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriver;

architecture STRUCTURE of mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriver is
  signal \BRIGTHNESS_LUT[0,0]\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \BRIGTHNESS_LUT[0,4]\ : STD_LOGIC_VECTOR ( 20 to 20 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dispPt_n_INST_0_i_1_n_0 : STD_LOGIC;
  signal dispPt_n_INST_0_i_2_n_0 : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \dispSeg_n[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal s_brightControl : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \s_brightControl0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_n_1\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_n_2\ : STD_LOGIC;
  signal \s_brightControl0_carry__0_n_3\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_n_1\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_n_2\ : STD_LOGIC;
  signal \s_brightControl0_carry__1_n_3\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_n_1\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_n_2\ : STD_LOGIC;
  signal \s_brightControl0_carry__2_n_3\ : STD_LOGIC;
  signal s_brightControl0_carry_i_1_n_0 : STD_LOGIC;
  signal s_brightControl0_carry_i_2_n_0 : STD_LOGIC;
  signal s_brightControl0_carry_i_3_n_0 : STD_LOGIC;
  signal s_brightControl0_carry_i_4_n_0 : STD_LOGIC;
  signal s_brightControl0_carry_i_5_n_0 : STD_LOGIC;
  signal s_brightControl0_carry_i_6_n_0 : STD_LOGIC;
  signal s_brightControl0_carry_i_7_n_0 : STD_LOGIC;
  signal s_brightControl0_carry_i_8_n_0 : STD_LOGIC;
  signal s_brightControl0_carry_n_0 : STD_LOGIC;
  signal s_brightControl0_carry_n_1 : STD_LOGIC;
  signal s_brightControl0_carry_n_2 : STD_LOGIC;
  signal s_brightControl0_carry_n_3 : STD_LOGIC;
  signal \s_brightControl[7]_i_1_n_0\ : STD_LOGIC;
  signal s_clkEnable : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__0_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__1_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt0_carry__2_n_3\ : STD_LOGIC;
  signal s_clkEnbCnt0_carry_i_1_n_0 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_i_2_n_0 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_i_3_n_0 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_i_4_n_0 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_i_5_n_0 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_i_6_n_0 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_i_7_n_0 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_i_8_n_0 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_n_0 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_n_1 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_n_2 : STD_LOGIC;
  signal s_clkEnbCnt0_carry_n_3 : STD_LOGIC;
  signal \s_clkEnbCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt[0]_i_3_n_0\ : STD_LOGIC;
  signal s_clkEnbCnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \s_clkEnbCnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \s_clkEnbCnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal s_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \s_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_currentV__27\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \s_enableDigit__6\ : STD_LOGIC;
  signal NLW_s_brightControl0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_brightControl0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_brightControl0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_brightControl0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_clkEnbCnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_clkEnbCnt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_clkEnbCnt0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_clkEnbCnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_clkEnbCnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dispEn_n[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dispEn_n[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dispEn_n[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dispEn_n[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dispEn_n[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dispEn_n[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dispEn_n[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dispEn_n[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dispSeg_n[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dispSeg_n[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dispSeg_n[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dispSeg_n[4]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dispSeg_n[5]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dispSeg_n[6]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_counter[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_counter[2]_i_1\ : label is "soft_lutpair6";
begin
  SR(0) <= \^sr\(0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\dispEn_n[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_counter(0),
      I1 => s_counter(2),
      I2 => s_counter(1),
      I3 => s_brightControl(7),
      O => dispEn_n(0)
    );
\dispEn_n[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => s_counter(0),
      I1 => s_counter(2),
      I2 => s_counter(1),
      I3 => s_brightControl(7),
      O => dispEn_n(1)
    );
\dispEn_n[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => s_counter(1),
      I1 => s_counter(0),
      I2 => s_counter(2),
      I3 => s_brightControl(7),
      O => dispEn_n(2)
    );
\dispEn_n[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => s_counter(2),
      I1 => s_counter(0),
      I2 => s_counter(1),
      I3 => s_brightControl(7),
      O => dispEn_n(3)
    );
\dispEn_n[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => s_counter(2),
      I1 => s_counter(0),
      I2 => s_counter(1),
      I3 => s_brightControl(7),
      O => dispEn_n(4)
    );
\dispEn_n[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => s_counter(1),
      I1 => s_counter(0),
      I2 => s_counter(2),
      I3 => s_brightControl(7),
      O => dispEn_n(5)
    );
\dispEn_n[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => s_counter(0),
      I1 => s_counter(2),
      I2 => s_counter(1),
      I3 => s_brightControl(7),
      O => dispEn_n(6)
    );
\dispEn_n[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => s_counter(1),
      I1 => s_counter(0),
      I2 => s_counter(2),
      I3 => s_brightControl(7),
      O => dispEn_n(7)
    );
dispPt_n_INST_0: unisim.vcomponents.MUXF7
     port map (
      I0 => dispPt_n_INST_0_i_1_n_0,
      I1 => dispPt_n_INST_0_i_2_n_0,
      O => dispPt_n,
      S => s_counter(2)
    );
dispPt_n_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => dispPt_n_0(11),
      I1 => dispPt_n_0(10),
      I2 => s_counter(1),
      I3 => dispPt_n_0(9),
      I4 => s_counter(0),
      I5 => dispPt_n_0(8),
      O => dispPt_n_INST_0_i_1_n_0
    );
dispPt_n_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => dispPt_n_0(15),
      I1 => dispPt_n_0(14),
      I2 => s_counter(1),
      I3 => dispPt_n_0(13),
      I4 => s_counter(0),
      I5 => dispPt_n_0(12),
      O => dispPt_n_INST_0_i_2_n_0
    );
\dispSeg_n[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4814FFFF"
    )
        port map (
      I0 => \s_currentV__27\(1),
      I1 => \s_currentV__27\(0),
      I2 => \s_currentV__27\(2),
      I3 => \s_currentV__27\(3),
      I4 => \s_enableDigit__6\,
      O => dispSeg_n(0)
    );
\dispSeg_n[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D860FFFF"
    )
        port map (
      I0 => \s_currentV__27\(0),
      I1 => \s_currentV__27\(1),
      I2 => \s_currentV__27\(2),
      I3 => \s_currentV__27\(3),
      I4 => \s_enableDigit__6\,
      O => dispSeg_n(1)
    );
\dispSeg_n[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A04FFFF"
    )
        port map (
      I0 => \s_currentV__27\(2),
      I1 => \s_currentV__27\(1),
      I2 => \s_currentV__27\(0),
      I3 => \s_currentV__27\(3),
      I4 => \s_enableDigit__6\,
      O => dispSeg_n(2)
    );
\dispSeg_n[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8294FFFF"
    )
        port map (
      I0 => \s_currentV__27\(1),
      I1 => \s_currentV__27\(0),
      I2 => \s_currentV__27\(2),
      I3 => \s_currentV__27\(3),
      I4 => \s_enableDigit__6\,
      O => dispSeg_n(3)
    );
\dispSeg_n[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02AEFFFF"
    )
        port map (
      I0 => \s_currentV__27\(0),
      I1 => \s_currentV__27\(2),
      I2 => \s_currentV__27\(1),
      I3 => \s_currentV__27\(3),
      I4 => \s_enableDigit__6\,
      O => dispSeg_n(4)
    );
\dispSeg_n[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"408EFFFF"
    )
        port map (
      I0 => \s_currentV__27\(1),
      I1 => \s_currentV__27\(0),
      I2 => \s_currentV__27\(2),
      I3 => \s_currentV__27\(3),
      I4 => \s_enableDigit__6\,
      O => dispSeg_n(5)
    );
\dispSeg_n[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0491FFFF"
    )
        port map (
      I0 => \s_currentV__27\(1),
      I1 => \s_currentV__27\(2),
      I2 => \s_currentV__27\(0),
      I3 => \s_currentV__27\(3),
      I4 => \s_enableDigit__6\,
      O => dispSeg_n(6)
    );
\dispSeg_n[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dispSeg_n[6]_INST_0_i_6_n_0\,
      I1 => \dispSeg_n[6]_INST_0_i_7_n_0\,
      O => \s_currentV__27\(1),
      S => s_counter(2)
    );
\dispSeg_n[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dispSeg_n[6]_INST_0_i_4_0\(12),
      I1 => \dispSeg_n[6]_INST_0_i_4_0\(8),
      I2 => s_counter(1),
      I3 => \dispSeg_n[6]_INST_0_i_4_0\(4),
      I4 => s_counter(0),
      I5 => \dispSeg_n[6]_INST_0_i_4_0\(0),
      O => \dispSeg_n[6]_INST_0_i_10_n_0\
    );
\dispSeg_n[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dispSeg_n[6]_INST_0_i_4_0\(28),
      I1 => \dispSeg_n[6]_INST_0_i_4_0\(24),
      I2 => s_counter(1),
      I3 => \dispSeg_n[6]_INST_0_i_4_0\(20),
      I4 => s_counter(0),
      I5 => \dispSeg_n[6]_INST_0_i_4_0\(16),
      O => \dispSeg_n[6]_INST_0_i_11_n_0\
    );
\dispSeg_n[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dispSeg_n[6]_INST_0_i_4_0\(15),
      I1 => \dispSeg_n[6]_INST_0_i_4_0\(11),
      I2 => s_counter(1),
      I3 => \dispSeg_n[6]_INST_0_i_4_0\(7),
      I4 => s_counter(0),
      I5 => \dispSeg_n[6]_INST_0_i_4_0\(3),
      O => \dispSeg_n[6]_INST_0_i_12_n_0\
    );
\dispSeg_n[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dispSeg_n[6]_INST_0_i_4_0\(31),
      I1 => \dispSeg_n[6]_INST_0_i_4_0\(27),
      I2 => s_counter(1),
      I3 => \dispSeg_n[6]_INST_0_i_4_0\(23),
      I4 => s_counter(0),
      I5 => \dispSeg_n[6]_INST_0_i_4_0\(19),
      O => \dispSeg_n[6]_INST_0_i_13_n_0\
    );
\dispSeg_n[6]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dispPt_n_0(3),
      I1 => dispPt_n_0(2),
      I2 => s_counter(1),
      I3 => dispPt_n_0(1),
      I4 => s_counter(0),
      I5 => dispPt_n_0(0),
      O => \dispSeg_n[6]_INST_0_i_14_n_0\
    );
\dispSeg_n[6]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dispPt_n_0(7),
      I1 => dispPt_n_0(6),
      I2 => s_counter(1),
      I3 => dispPt_n_0(5),
      I4 => s_counter(0),
      I5 => dispPt_n_0(4),
      O => \dispSeg_n[6]_INST_0_i_15_n_0\
    );
\dispSeg_n[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dispSeg_n[6]_INST_0_i_8_n_0\,
      I1 => \dispSeg_n[6]_INST_0_i_9_n_0\,
      O => \s_currentV__27\(2),
      S => s_counter(2)
    );
\dispSeg_n[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dispSeg_n[6]_INST_0_i_10_n_0\,
      I1 => \dispSeg_n[6]_INST_0_i_11_n_0\,
      O => \s_currentV__27\(0),
      S => s_counter(2)
    );
\dispSeg_n[6]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dispSeg_n[6]_INST_0_i_12_n_0\,
      I1 => \dispSeg_n[6]_INST_0_i_13_n_0\,
      O => \s_currentV__27\(3),
      S => s_counter(2)
    );
\dispSeg_n[6]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dispSeg_n[6]_INST_0_i_14_n_0\,
      I1 => \dispSeg_n[6]_INST_0_i_15_n_0\,
      O => \s_enableDigit__6\,
      S => s_counter(2)
    );
\dispSeg_n[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dispSeg_n[6]_INST_0_i_4_0\(13),
      I1 => \dispSeg_n[6]_INST_0_i_4_0\(9),
      I2 => s_counter(1),
      I3 => \dispSeg_n[6]_INST_0_i_4_0\(5),
      I4 => s_counter(0),
      I5 => \dispSeg_n[6]_INST_0_i_4_0\(1),
      O => \dispSeg_n[6]_INST_0_i_6_n_0\
    );
\dispSeg_n[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dispSeg_n[6]_INST_0_i_4_0\(29),
      I1 => \dispSeg_n[6]_INST_0_i_4_0\(25),
      I2 => s_counter(1),
      I3 => \dispSeg_n[6]_INST_0_i_4_0\(21),
      I4 => s_counter(0),
      I5 => \dispSeg_n[6]_INST_0_i_4_0\(17),
      O => \dispSeg_n[6]_INST_0_i_7_n_0\
    );
\dispSeg_n[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dispSeg_n[6]_INST_0_i_4_0\(14),
      I1 => \dispSeg_n[6]_INST_0_i_4_0\(10),
      I2 => s_counter(1),
      I3 => \dispSeg_n[6]_INST_0_i_4_0\(6),
      I4 => s_counter(0),
      I5 => \dispSeg_n[6]_INST_0_i_4_0\(2),
      O => \dispSeg_n[6]_INST_0_i_8_n_0\
    );
\dispSeg_n[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dispSeg_n[6]_INST_0_i_4_0\(30),
      I1 => \dispSeg_n[6]_INST_0_i_4_0\(26),
      I2 => s_counter(1),
      I3 => \dispSeg_n[6]_INST_0_i_4_0\(22),
      I4 => s_counter(0),
      I5 => \dispSeg_n[6]_INST_0_i_4_0\(18),
      O => \dispSeg_n[6]_INST_0_i_9_n_0\
    );
s_brightControl0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_brightControl0_carry_n_0,
      CO(2) => s_brightControl0_carry_n_1,
      CO(1) => s_brightControl0_carry_n_2,
      CO(0) => s_brightControl0_carry_n_3,
      CYINIT => '1',
      DI(3) => s_brightControl0_carry_i_1_n_0,
      DI(2) => s_brightControl0_carry_i_2_n_0,
      DI(1) => s_brightControl0_carry_i_3_n_0,
      DI(0) => s_brightControl0_carry_i_4_n_0,
      O(3 downto 0) => NLW_s_brightControl0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => s_brightControl0_carry_i_5_n_0,
      S(2) => s_brightControl0_carry_i_6_n_0,
      S(1) => s_brightControl0_carry_i_7_n_0,
      S(0) => s_brightControl0_carry_i_8_n_0
    );
\s_brightControl0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s_brightControl0_carry_n_0,
      CO(3) => \s_brightControl0_carry__0_n_0\,
      CO(2) => \s_brightControl0_carry__0_n_1\,
      CO(1) => \s_brightControl0_carry__0_n_2\,
      CO(0) => \s_brightControl0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \s_brightControl0_carry__0_i_1_n_0\,
      DI(2) => \s_brightControl0_carry__0_i_2_n_0\,
      DI(1) => \s_brightControl0_carry__0_i_3_n_0\,
      DI(0) => \s_brightControl0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_s_brightControl0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \s_brightControl0_carry__0_i_5_n_0\,
      S(2) => \s_brightControl0_carry__0_i_6_n_0\,
      S(1) => \s_brightControl0_carry__0_i_7_n_0\,
      S(0) => \s_brightControl0_carry__0_i_8_n_0\
    );
\s_brightControl0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(14),
      I1 => \BRIGTHNESS_LUT[0,0]\(14),
      I2 => \BRIGTHNESS_LUT[0,0]\(15),
      I3 => s_clkEnbCnt_reg(15),
      O => \s_brightControl0_carry__0_i_1_n_0\
    );
\s_brightControl0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008FEC2600C8DA9C"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \BRIGTHNESS_LUT[0,0]\(15)
    );
\s_brightControl0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DA8FC8269C257033"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \BRIGTHNESS_LUT[0,0]\(12)
    );
\s_brightControl0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECDA8FC8269C2570"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \BRIGTHNESS_LUT[0,0]\(13)
    );
\s_brightControl0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C89C70552625338F"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(0),
      O => \BRIGTHNESS_LUT[0,0]\(10)
    );
\s_brightControl0_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F252633C8709C55"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \BRIGTHNESS_LUT[0,0]\(11)
    );
\s_brightControl0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9528C55F70300030"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(1),
      O => \BRIGTHNESS_LUT[0,0]\(8)
    );
\s_brightControl0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"269C257033558F00"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \BRIGTHNESS_LUT[0,0]\(9)
    );
\s_brightControl0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(12),
      I1 => \BRIGTHNESS_LUT[0,0]\(12),
      I2 => \BRIGTHNESS_LUT[0,0]\(13),
      I3 => s_clkEnbCnt_reg(13),
      O => \s_brightControl0_carry__0_i_2_n_0\
    );
\s_brightControl0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(10),
      I1 => \BRIGTHNESS_LUT[0,0]\(10),
      I2 => \BRIGTHNESS_LUT[0,0]\(11),
      I3 => s_clkEnbCnt_reg(11),
      O => \s_brightControl0_carry__0_i_3_n_0\
    );
\s_brightControl0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(8),
      I1 => \BRIGTHNESS_LUT[0,0]\(8),
      I2 => \BRIGTHNESS_LUT[0,0]\(9),
      I3 => s_clkEnbCnt_reg(9),
      O => \s_brightControl0_carry__0_i_4_n_0\
    );
\s_brightControl0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(14),
      I1 => \BRIGTHNESS_LUT[0,0]\(14),
      I2 => s_clkEnbCnt_reg(15),
      I3 => \BRIGTHNESS_LUT[0,0]\(15),
      O => \s_brightControl0_carry__0_i_5_n_0\
    );
\s_brightControl0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(12),
      I1 => \BRIGTHNESS_LUT[0,0]\(12),
      I2 => s_clkEnbCnt_reg(13),
      I3 => \BRIGTHNESS_LUT[0,0]\(13),
      O => \s_brightControl0_carry__0_i_6_n_0\
    );
\s_brightControl0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(10),
      I1 => \BRIGTHNESS_LUT[0,0]\(10),
      I2 => s_clkEnbCnt_reg(11),
      I3 => \BRIGTHNESS_LUT[0,0]\(11),
      O => \s_brightControl0_carry__0_i_7_n_0\
    );
\s_brightControl0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(8),
      I1 => \BRIGTHNESS_LUT[0,0]\(8),
      I2 => s_clkEnbCnt_reg(9),
      I3 => \BRIGTHNESS_LUT[0,0]\(9),
      O => \s_brightControl0_carry__0_i_8_n_0\
    );
\s_brightControl0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DAC89CEC8F2625"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(0),
      O => \BRIGTHNESS_LUT[0,0]\(14)
    );
\s_brightControl0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_brightControl0_carry__0_n_0\,
      CO(3) => \s_brightControl0_carry__1_n_0\,
      CO(2) => \s_brightControl0_carry__1_n_1\,
      CO(1) => \s_brightControl0_carry__1_n_2\,
      CO(0) => \s_brightControl0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \s_brightControl0_carry__1_i_1_n_0\,
      DI(2) => \s_brightControl0_carry__1_i_2_n_0\,
      DI(1) => \s_brightControl0_carry__1_i_3_n_0\,
      DI(0) => \s_brightControl0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_s_brightControl0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \s_brightControl0_carry__1_i_5_n_0\,
      S(2) => \s_brightControl0_carry__1_i_6_n_0\,
      S(1) => \s_brightControl0_carry__1_i_7_n_0\,
      S(0) => \s_brightControl0_carry__1_i_8_n_0\
    );
\s_brightControl0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_clkEnbCnt_reg(22),
      I1 => s_clkEnbCnt_reg(23),
      O => \s_brightControl0_carry__1_i_1_n_0\
    );
\s_brightControl0_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000D0A0000E8CF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => \BRIGTHNESS_LUT[0,0]\(18)
    );
\s_brightControl0_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EC00DA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \BRIGTHNESS_LUT[0,0]\(19)
    );
\s_brightControl0_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DAC800EC8F26"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(0),
      O => \BRIGTHNESS_LUT[0,0]\(16)
    );
\s_brightControl0_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E8CFDCA8"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => \BRIGTHNESS_LUT[0,0]\(17)
    );
\s_brightControl0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF222A2A2A"
    )
        port map (
      I0 => s_clkEnbCnt_reg(20),
      I1 => \BRIGTHNESS_LUT[0,4]\(20),
      I2 => Q(5),
      I3 => Q(4),
      I4 => Q(3),
      I5 => s_clkEnbCnt_reg(21),
      O => \s_brightControl0_carry__1_i_2_n_0\
    );
\s_brightControl0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(18),
      I1 => \BRIGTHNESS_LUT[0,0]\(18),
      I2 => \BRIGTHNESS_LUT[0,0]\(19),
      I3 => s_clkEnbCnt_reg(19),
      O => \s_brightControl0_carry__1_i_3_n_0\
    );
\s_brightControl0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(16),
      I1 => \BRIGTHNESS_LUT[0,0]\(16),
      I2 => \BRIGTHNESS_LUT[0,0]\(17),
      I3 => s_clkEnbCnt_reg(17),
      O => \s_brightControl0_carry__1_i_4_n_0\
    );
\s_brightControl0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(22),
      I1 => s_clkEnbCnt_reg(23),
      O => \s_brightControl0_carry__1_i_5_n_0\
    );
\s_brightControl0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA955555"
    )
        port map (
      I0 => s_clkEnbCnt_reg(20),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      I4 => \BRIGTHNESS_LUT[0,4]\(20),
      I5 => s_clkEnbCnt_reg(21),
      O => \s_brightControl0_carry__1_i_6_n_0\
    );
\s_brightControl0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(18),
      I1 => \BRIGTHNESS_LUT[0,0]\(18),
      I2 => s_clkEnbCnt_reg(19),
      I3 => \BRIGTHNESS_LUT[0,0]\(19),
      O => \s_brightControl0_carry__1_i_7_n_0\
    );
\s_brightControl0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(16),
      I1 => \BRIGTHNESS_LUT[0,0]\(16),
      I2 => s_clkEnbCnt_reg(17),
      I3 => \BRIGTHNESS_LUT[0,0]\(17),
      O => \s_brightControl0_carry__1_i_8_n_0\
    );
\s_brightControl0_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      O => \BRIGTHNESS_LUT[0,4]\(20)
    );
\s_brightControl0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_brightControl0_carry__1_n_0\,
      CO(3) => p_1_in,
      CO(2) => \s_brightControl0_carry__2_n_1\,
      CO(1) => \s_brightControl0_carry__2_n_2\,
      CO(0) => \s_brightControl0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \s_brightControl0_carry__2_i_1_n_0\,
      DI(2) => \s_brightControl0_carry__2_i_2_n_0\,
      DI(1) => \s_brightControl0_carry__2_i_3_n_0\,
      DI(0) => \s_brightControl0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_s_brightControl0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \s_brightControl0_carry__2_i_5_n_0\,
      S(2) => \s_brightControl0_carry__2_i_6_n_0\,
      S(1) => \s_brightControl0_carry__2_i_7_n_0\,
      S(0) => \s_brightControl0_carry__2_i_8_n_0\
    );
\s_brightControl0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_clkEnbCnt_reg(30),
      I1 => s_clkEnbCnt_reg(31),
      O => \s_brightControl0_carry__2_i_1_n_0\
    );
\s_brightControl0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_clkEnbCnt_reg(28),
      I1 => s_clkEnbCnt_reg(29),
      O => \s_brightControl0_carry__2_i_2_n_0\
    );
\s_brightControl0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_clkEnbCnt_reg(26),
      I1 => s_clkEnbCnt_reg(27),
      O => \s_brightControl0_carry__2_i_3_n_0\
    );
\s_brightControl0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_clkEnbCnt_reg(24),
      I1 => s_clkEnbCnt_reg(25),
      O => \s_brightControl0_carry__2_i_4_n_0\
    );
\s_brightControl0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(30),
      I1 => s_clkEnbCnt_reg(31),
      O => \s_brightControl0_carry__2_i_5_n_0\
    );
\s_brightControl0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(28),
      I1 => s_clkEnbCnt_reg(29),
      O => \s_brightControl0_carry__2_i_6_n_0\
    );
\s_brightControl0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(26),
      I1 => s_clkEnbCnt_reg(27),
      O => \s_brightControl0_carry__2_i_7_n_0\
    );
\s_brightControl0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(24),
      I1 => s_clkEnbCnt_reg(25),
      O => \s_brightControl0_carry__2_i_8_n_0\
    );
s_brightControl0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(6),
      I1 => \BRIGTHNESS_LUT[0,0]\(6),
      I2 => \BRIGTHNESS_LUT[0,0]\(7),
      I3 => s_clkEnbCnt_reg(7),
      O => s_brightControl0_carry_i_1_n_0
    );
s_brightControl0_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25708F0033550000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(1),
      O => \BRIGTHNESS_LUT[0,0]\(7)
    );
s_brightControl0_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"558F00EC0000DA8F"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(1),
      O => \BRIGTHNESS_LUT[0,0]\(4)
    );
s_brightControl0_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33558F000000ECDA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \BRIGTHNESS_LUT[0,0]\(5)
    );
s_brightControl0_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000ECDA8FECDA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \BRIGTHNESS_LUT[0,0]\(2)
    );
s_brightControl0_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FEC008F00DA00EC"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \BRIGTHNESS_LUT[0,0]\(3)
    );
s_brightControl0_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00ECDA8FECDA8FEC"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \BRIGTHNESS_LUT[0,0]\(0)
    );
s_brightControl0_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008FECDA00ECDA8F"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \BRIGTHNESS_LUT[0,0]\(1)
    );
s_brightControl0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(4),
      I1 => \BRIGTHNESS_LUT[0,0]\(4),
      I2 => \BRIGTHNESS_LUT[0,0]\(5),
      I3 => s_clkEnbCnt_reg(5),
      O => s_brightControl0_carry_i_2_n_0
    );
s_brightControl0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(2),
      I1 => \BRIGTHNESS_LUT[0,0]\(2),
      I2 => \BRIGTHNESS_LUT[0,0]\(3),
      I3 => s_clkEnbCnt_reg(3),
      O => s_brightControl0_carry_i_3_n_0
    );
s_brightControl0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_clkEnbCnt_reg(0),
      I1 => \BRIGTHNESS_LUT[0,0]\(0),
      I2 => \BRIGTHNESS_LUT[0,0]\(1),
      I3 => s_clkEnbCnt_reg(1),
      O => s_brightControl0_carry_i_4_n_0
    );
s_brightControl0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(6),
      I1 => \BRIGTHNESS_LUT[0,0]\(6),
      I2 => s_clkEnbCnt_reg(7),
      I3 => \BRIGTHNESS_LUT[0,0]\(7),
      O => s_brightControl0_carry_i_5_n_0
    );
s_brightControl0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(4),
      I1 => \BRIGTHNESS_LUT[0,0]\(4),
      I2 => s_clkEnbCnt_reg(5),
      I3 => \BRIGTHNESS_LUT[0,0]\(5),
      O => s_brightControl0_carry_i_6_n_0
    );
s_brightControl0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(2),
      I1 => \BRIGTHNESS_LUT[0,0]\(2),
      I2 => s_clkEnbCnt_reg(3),
      I3 => \BRIGTHNESS_LUT[0,0]\(3),
      O => s_brightControl0_carry_i_7_n_0
    );
s_brightControl0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_clkEnbCnt_reg(0),
      I1 => \BRIGTHNESS_LUT[0,0]\(0),
      I2 => s_clkEnbCnt_reg(1),
      I3 => \BRIGTHNESS_LUT[0,0]\(1),
      O => s_brightControl0_carry_i_8_n_0
    );
s_brightControl0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70330000558F00EC"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(1),
      O => \BRIGTHNESS_LUT[0,0]\(6)
    );
\s_brightControl[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \s_clkEnbCnt0_carry__2_n_0\,
      I1 => p_1_in,
      I2 => s_brightControl(7),
      O => \s_brightControl[7]_i_1_n_0\
    );
\s_brightControl_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_brightControl[7]_i_1_n_0\,
      Q => s_brightControl(7),
      S => \^sr\(0)
    );
s_clkEnable_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt0_carry__2_n_0\,
      Q => s_clkEnable,
      R => \^sr\(0)
    );
s_clkEnbCnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_clkEnbCnt0_carry_n_0,
      CO(2) => s_clkEnbCnt0_carry_n_1,
      CO(1) => s_clkEnbCnt0_carry_n_2,
      CO(0) => s_clkEnbCnt0_carry_n_3,
      CYINIT => '1',
      DI(3) => s_clkEnbCnt0_carry_i_1_n_0,
      DI(2) => s_clkEnbCnt0_carry_i_2_n_0,
      DI(1) => s_clkEnbCnt0_carry_i_3_n_0,
      DI(0) => s_clkEnbCnt0_carry_i_4_n_0,
      O(3 downto 0) => NLW_s_clkEnbCnt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => s_clkEnbCnt0_carry_i_5_n_0,
      S(2) => s_clkEnbCnt0_carry_i_6_n_0,
      S(1) => s_clkEnbCnt0_carry_i_7_n_0,
      S(0) => s_clkEnbCnt0_carry_i_8_n_0
    );
\s_clkEnbCnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s_clkEnbCnt0_carry_n_0,
      CO(3) => \s_clkEnbCnt0_carry__0_n_0\,
      CO(2) => \s_clkEnbCnt0_carry__0_n_1\,
      CO(1) => \s_clkEnbCnt0_carry__0_n_2\,
      CO(0) => \s_clkEnbCnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \s_clkEnbCnt0_carry__0_i_1_n_0\,
      DI(2) => \s_clkEnbCnt0_carry__0_i_2_n_0\,
      DI(1) => \s_clkEnbCnt0_carry__0_i_3_n_0\,
      DI(0) => \s_clkEnbCnt0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_s_clkEnbCnt0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \s_clkEnbCnt0_carry__0_i_5_n_0\,
      S(2) => \s_clkEnbCnt0_carry__0_i_6_n_0\,
      S(1) => \s_clkEnbCnt0_carry__0_i_7_n_0\,
      S(0) => \s_clkEnbCnt0_carry__0_i_8_n_0\
    );
\s_clkEnbCnt0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F20E8000"
    )
        port map (
      I0 => s_clkEnbCnt_reg(14),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => s_clkEnbCnt_reg(15),
      O => \s_clkEnbCnt0_carry__0_i_1_n_0\
    );
\s_clkEnbCnt0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"323B0022"
    )
        port map (
      I0 => s_clkEnbCnt_reg(12),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => s_clkEnbCnt_reg(13),
      O => \s_clkEnbCnt0_carry__0_i_2_n_0\
    );
\s_clkEnbCnt0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3BFB2220"
    )
        port map (
      I0 => s_clkEnbCnt_reg(10),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => s_clkEnbCnt_reg(11),
      O => \s_clkEnbCnt0_carry__0_i_3_n_0\
    );
\s_clkEnbCnt0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFB0A82"
    )
        port map (
      I0 => s_clkEnbCnt_reg(8),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => s_clkEnbCnt_reg(9),
      O => \s_clkEnbCnt0_carry__0_i_4_n_0\
    );
\s_clkEnbCnt0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12848824"
    )
        port map (
      I0 => s_clkEnbCnt_reg(14),
      I1 => s_clkEnbCnt_reg(15),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      O => \s_clkEnbCnt0_carry__0_i_5_n_0\
    );
\s_clkEnbCnt0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82848141"
    )
        port map (
      I0 => s_clkEnbCnt_reg(12),
      I1 => s_clkEnbCnt_reg(13),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => \s_clkEnbCnt0_carry__0_i_6_n_0\
    );
\s_clkEnbCnt0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81412142"
    )
        port map (
      I0 => s_clkEnbCnt_reg(10),
      I1 => s_clkEnbCnt_reg(11),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => \s_clkEnbCnt0_carry__0_i_7_n_0\
    );
\s_clkEnbCnt0_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24111241"
    )
        port map (
      I0 => s_clkEnbCnt_reg(8),
      I1 => s_clkEnbCnt_reg(9),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => \s_clkEnbCnt0_carry__0_i_8_n_0\
    );
\s_clkEnbCnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_clkEnbCnt0_carry__0_n_0\,
      CO(3) => \s_clkEnbCnt0_carry__1_n_0\,
      CO(2) => \s_clkEnbCnt0_carry__1_n_1\,
      CO(1) => \s_clkEnbCnt0_carry__1_n_2\,
      CO(0) => \s_clkEnbCnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \s_clkEnbCnt0_carry__1_i_1_n_0\,
      DI(2) => \s_clkEnbCnt0_carry__1_i_2_n_0\,
      DI(1) => \s_clkEnbCnt0_carry__1_i_3_n_0\,
      DI(0) => \s_clkEnbCnt0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_s_clkEnbCnt0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \s_clkEnbCnt0_carry__1_i_5_n_0\,
      S(2) => \s_clkEnbCnt0_carry__1_i_6_n_0\,
      S(1) => \s_clkEnbCnt0_carry__1_i_7_n_0\,
      S(0) => \s_clkEnbCnt0_carry__1_i_8_n_0\
    );
\s_clkEnbCnt0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_clkEnbCnt_reg(22),
      I1 => s_clkEnbCnt_reg(23),
      O => \s_clkEnbCnt0_carry__1_i_1_n_0\
    );
\s_clkEnbCnt0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => s_clkEnbCnt_reg(20),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => s_clkEnbCnt_reg(21),
      O => \s_clkEnbCnt0_carry__1_i_2_n_0\
    );
\s_clkEnbCnt0_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0A8A0"
    )
        port map (
      I0 => s_clkEnbCnt_reg(18),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => s_clkEnbCnt_reg(19),
      O => \s_clkEnbCnt0_carry__1_i_3_n_0\
    );
\s_clkEnbCnt0_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA80200"
    )
        port map (
      I0 => s_clkEnbCnt_reg(16),
      I1 => Q(0),
      I2 => Q(1),
      I3 => s_clkEnbCnt_reg(17),
      I4 => Q(2),
      O => \s_clkEnbCnt0_carry__1_i_4_n_0\
    );
\s_clkEnbCnt0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(22),
      I1 => s_clkEnbCnt_reg(23),
      O => \s_clkEnbCnt0_carry__1_i_5_n_0\
    );
\s_clkEnbCnt0_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005556"
    )
        port map (
      I0 => s_clkEnbCnt_reg(20),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => s_clkEnbCnt_reg(21),
      O => \s_clkEnbCnt0_carry__1_i_6_n_0\
    );
\s_clkEnbCnt0_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"050605A0"
    )
        port map (
      I0 => s_clkEnbCnt_reg(18),
      I1 => Q(0),
      I2 => s_clkEnbCnt_reg(19),
      I3 => Q(2),
      I4 => Q(1),
      O => \s_clkEnbCnt0_carry__1_i_7_n_0\
    );
\s_clkEnbCnt0_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0056A900"
    )
        port map (
      I0 => s_clkEnbCnt_reg(16),
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_clkEnbCnt_reg(17),
      I4 => Q(2),
      O => \s_clkEnbCnt0_carry__1_i_8_n_0\
    );
\s_clkEnbCnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_clkEnbCnt0_carry__1_n_0\,
      CO(3) => \s_clkEnbCnt0_carry__2_n_0\,
      CO(2) => \s_clkEnbCnt0_carry__2_n_1\,
      CO(1) => \s_clkEnbCnt0_carry__2_n_2\,
      CO(0) => \s_clkEnbCnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \s_clkEnbCnt0_carry__2_i_1_n_0\,
      DI(2) => \s_clkEnbCnt0_carry__2_i_2_n_0\,
      DI(1) => \s_clkEnbCnt0_carry__2_i_3_n_0\,
      DI(0) => \s_clkEnbCnt0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_s_clkEnbCnt0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \s_clkEnbCnt0_carry__2_i_5_n_0\,
      S(2) => \s_clkEnbCnt0_carry__2_i_6_n_0\,
      S(1) => \s_clkEnbCnt0_carry__2_i_7_n_0\,
      S(0) => \s_clkEnbCnt0_carry__2_i_8_n_0\
    );
\s_clkEnbCnt0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_clkEnbCnt_reg(30),
      I1 => s_clkEnbCnt_reg(31),
      O => \s_clkEnbCnt0_carry__2_i_1_n_0\
    );
\s_clkEnbCnt0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_clkEnbCnt_reg(28),
      I1 => s_clkEnbCnt_reg(29),
      O => \s_clkEnbCnt0_carry__2_i_2_n_0\
    );
\s_clkEnbCnt0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_clkEnbCnt_reg(26),
      I1 => s_clkEnbCnt_reg(27),
      O => \s_clkEnbCnt0_carry__2_i_3_n_0\
    );
\s_clkEnbCnt0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_clkEnbCnt_reg(24),
      I1 => s_clkEnbCnt_reg(25),
      O => \s_clkEnbCnt0_carry__2_i_4_n_0\
    );
\s_clkEnbCnt0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(30),
      I1 => s_clkEnbCnt_reg(31),
      O => \s_clkEnbCnt0_carry__2_i_5_n_0\
    );
\s_clkEnbCnt0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(28),
      I1 => s_clkEnbCnt_reg(29),
      O => \s_clkEnbCnt0_carry__2_i_6_n_0\
    );
\s_clkEnbCnt0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(26),
      I1 => s_clkEnbCnt_reg(27),
      O => \s_clkEnbCnt0_carry__2_i_7_n_0\
    );
\s_clkEnbCnt0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(24),
      I1 => s_clkEnbCnt_reg(25),
      O => \s_clkEnbCnt0_carry__2_i_8_n_0\
    );
s_clkEnbCnt0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFA828"
    )
        port map (
      I0 => s_clkEnbCnt_reg(6),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => s_clkEnbCnt_reg(7),
      O => s_clkEnbCnt0_carry_i_1_n_0
    );
s_clkEnbCnt0_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8CA008"
    )
        port map (
      I0 => s_clkEnbCnt_reg(4),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => s_clkEnbCnt_reg(5),
      O => s_clkEnbCnt0_carry_i_2_n_0
    );
s_clkEnbCnt0_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CCC0880"
    )
        port map (
      I0 => s_clkEnbCnt_reg(2),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => s_clkEnbCnt_reg(3),
      O => s_clkEnbCnt0_carry_i_3_n_0
    );
s_clkEnbCnt0_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0008000"
    )
        port map (
      I0 => s_clkEnbCnt_reg(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => s_clkEnbCnt_reg(1),
      O => s_clkEnbCnt0_carry_i_4_n_0
    );
s_clkEnbCnt0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11124112"
    )
        port map (
      I0 => s_clkEnbCnt_reg(6),
      I1 => s_clkEnbCnt_reg(7),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      O => s_clkEnbCnt0_carry_i_5_n_0
    );
s_clkEnbCnt0_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11224818"
    )
        port map (
      I0 => s_clkEnbCnt_reg(4),
      I1 => s_clkEnbCnt_reg(5),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => s_clkEnbCnt0_carry_i_6_n_0
    );
s_clkEnbCnt0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48181828"
    )
        port map (
      I0 => s_clkEnbCnt_reg(2),
      I1 => s_clkEnbCnt_reg(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => s_clkEnbCnt0_carry_i_7_n_0
    );
s_clkEnbCnt0_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06A0A0A0"
    )
        port map (
      I0 => s_clkEnbCnt_reg(0),
      I1 => Q(0),
      I2 => s_clkEnbCnt_reg(1),
      I3 => Q(2),
      I4 => Q(1),
      O => s_clkEnbCnt0_carry_i_8_n_0
    );
\s_clkEnbCnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \s_clkEnbCnt0_carry__2_n_0\,
      I1 => s00_axi_aresetn,
      O => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clkEnbCnt_reg(0),
      O => \s_clkEnbCnt[0]_i_3_n_0\
    );
\s_clkEnbCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[0]_i_2_n_7\,
      Q => s_clkEnbCnt_reg(0),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_clkEnbCnt_reg[0]_i_2_n_0\,
      CO(2) => \s_clkEnbCnt_reg[0]_i_2_n_1\,
      CO(1) => \s_clkEnbCnt_reg[0]_i_2_n_2\,
      CO(0) => \s_clkEnbCnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \s_clkEnbCnt_reg[0]_i_2_n_4\,
      O(2) => \s_clkEnbCnt_reg[0]_i_2_n_5\,
      O(1) => \s_clkEnbCnt_reg[0]_i_2_n_6\,
      O(0) => \s_clkEnbCnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => s_clkEnbCnt_reg(3 downto 1),
      S(0) => \s_clkEnbCnt[0]_i_3_n_0\
    );
\s_clkEnbCnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[8]_i_1_n_5\,
      Q => s_clkEnbCnt_reg(10),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[8]_i_1_n_4\,
      Q => s_clkEnbCnt_reg(11),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[12]_i_1_n_7\,
      Q => s_clkEnbCnt_reg(12),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_clkEnbCnt_reg[8]_i_1_n_0\,
      CO(3) => \s_clkEnbCnt_reg[12]_i_1_n_0\,
      CO(2) => \s_clkEnbCnt_reg[12]_i_1_n_1\,
      CO(1) => \s_clkEnbCnt_reg[12]_i_1_n_2\,
      CO(0) => \s_clkEnbCnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_clkEnbCnt_reg[12]_i_1_n_4\,
      O(2) => \s_clkEnbCnt_reg[12]_i_1_n_5\,
      O(1) => \s_clkEnbCnt_reg[12]_i_1_n_6\,
      O(0) => \s_clkEnbCnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => s_clkEnbCnt_reg(15 downto 12)
    );
\s_clkEnbCnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[12]_i_1_n_6\,
      Q => s_clkEnbCnt_reg(13),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[12]_i_1_n_5\,
      Q => s_clkEnbCnt_reg(14),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[12]_i_1_n_4\,
      Q => s_clkEnbCnt_reg(15),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[16]_i_1_n_7\,
      Q => s_clkEnbCnt_reg(16),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_clkEnbCnt_reg[12]_i_1_n_0\,
      CO(3) => \s_clkEnbCnt_reg[16]_i_1_n_0\,
      CO(2) => \s_clkEnbCnt_reg[16]_i_1_n_1\,
      CO(1) => \s_clkEnbCnt_reg[16]_i_1_n_2\,
      CO(0) => \s_clkEnbCnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_clkEnbCnt_reg[16]_i_1_n_4\,
      O(2) => \s_clkEnbCnt_reg[16]_i_1_n_5\,
      O(1) => \s_clkEnbCnt_reg[16]_i_1_n_6\,
      O(0) => \s_clkEnbCnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => s_clkEnbCnt_reg(19 downto 16)
    );
\s_clkEnbCnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[16]_i_1_n_6\,
      Q => s_clkEnbCnt_reg(17),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[16]_i_1_n_5\,
      Q => s_clkEnbCnt_reg(18),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[16]_i_1_n_4\,
      Q => s_clkEnbCnt_reg(19),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[0]_i_2_n_6\,
      Q => s_clkEnbCnt_reg(1),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[20]_i_1_n_7\,
      Q => s_clkEnbCnt_reg(20),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_clkEnbCnt_reg[16]_i_1_n_0\,
      CO(3) => \s_clkEnbCnt_reg[20]_i_1_n_0\,
      CO(2) => \s_clkEnbCnt_reg[20]_i_1_n_1\,
      CO(1) => \s_clkEnbCnt_reg[20]_i_1_n_2\,
      CO(0) => \s_clkEnbCnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_clkEnbCnt_reg[20]_i_1_n_4\,
      O(2) => \s_clkEnbCnt_reg[20]_i_1_n_5\,
      O(1) => \s_clkEnbCnt_reg[20]_i_1_n_6\,
      O(0) => \s_clkEnbCnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => s_clkEnbCnt_reg(23 downto 20)
    );
\s_clkEnbCnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[20]_i_1_n_6\,
      Q => s_clkEnbCnt_reg(21),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[20]_i_1_n_5\,
      Q => s_clkEnbCnt_reg(22),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[20]_i_1_n_4\,
      Q => s_clkEnbCnt_reg(23),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[24]_i_1_n_7\,
      Q => s_clkEnbCnt_reg(24),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_clkEnbCnt_reg[20]_i_1_n_0\,
      CO(3) => \s_clkEnbCnt_reg[24]_i_1_n_0\,
      CO(2) => \s_clkEnbCnt_reg[24]_i_1_n_1\,
      CO(1) => \s_clkEnbCnt_reg[24]_i_1_n_2\,
      CO(0) => \s_clkEnbCnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_clkEnbCnt_reg[24]_i_1_n_4\,
      O(2) => \s_clkEnbCnt_reg[24]_i_1_n_5\,
      O(1) => \s_clkEnbCnt_reg[24]_i_1_n_6\,
      O(0) => \s_clkEnbCnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => s_clkEnbCnt_reg(27 downto 24)
    );
\s_clkEnbCnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[24]_i_1_n_6\,
      Q => s_clkEnbCnt_reg(25),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[24]_i_1_n_5\,
      Q => s_clkEnbCnt_reg(26),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[24]_i_1_n_4\,
      Q => s_clkEnbCnt_reg(27),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[28]_i_1_n_7\,
      Q => s_clkEnbCnt_reg(28),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_clkEnbCnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_s_clkEnbCnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \s_clkEnbCnt_reg[28]_i_1_n_1\,
      CO(1) => \s_clkEnbCnt_reg[28]_i_1_n_2\,
      CO(0) => \s_clkEnbCnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_clkEnbCnt_reg[28]_i_1_n_4\,
      O(2) => \s_clkEnbCnt_reg[28]_i_1_n_5\,
      O(1) => \s_clkEnbCnt_reg[28]_i_1_n_6\,
      O(0) => \s_clkEnbCnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => s_clkEnbCnt_reg(31 downto 28)
    );
\s_clkEnbCnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[28]_i_1_n_6\,
      Q => s_clkEnbCnt_reg(29),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[0]_i_2_n_5\,
      Q => s_clkEnbCnt_reg(2),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[28]_i_1_n_5\,
      Q => s_clkEnbCnt_reg(30),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[28]_i_1_n_4\,
      Q => s_clkEnbCnt_reg(31),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[0]_i_2_n_4\,
      Q => s_clkEnbCnt_reg(3),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[4]_i_1_n_7\,
      Q => s_clkEnbCnt_reg(4),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_clkEnbCnt_reg[0]_i_2_n_0\,
      CO(3) => \s_clkEnbCnt_reg[4]_i_1_n_0\,
      CO(2) => \s_clkEnbCnt_reg[4]_i_1_n_1\,
      CO(1) => \s_clkEnbCnt_reg[4]_i_1_n_2\,
      CO(0) => \s_clkEnbCnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_clkEnbCnt_reg[4]_i_1_n_4\,
      O(2) => \s_clkEnbCnt_reg[4]_i_1_n_5\,
      O(1) => \s_clkEnbCnt_reg[4]_i_1_n_6\,
      O(0) => \s_clkEnbCnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => s_clkEnbCnt_reg(7 downto 4)
    );
\s_clkEnbCnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[4]_i_1_n_6\,
      Q => s_clkEnbCnt_reg(5),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[4]_i_1_n_5\,
      Q => s_clkEnbCnt_reg(6),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[4]_i_1_n_4\,
      Q => s_clkEnbCnt_reg(7),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[8]_i_1_n_7\,
      Q => s_clkEnbCnt_reg(8),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_clkEnbCnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_clkEnbCnt_reg[4]_i_1_n_0\,
      CO(3) => \s_clkEnbCnt_reg[8]_i_1_n_0\,
      CO(2) => \s_clkEnbCnt_reg[8]_i_1_n_1\,
      CO(1) => \s_clkEnbCnt_reg[8]_i_1_n_2\,
      CO(0) => \s_clkEnbCnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_clkEnbCnt_reg[8]_i_1_n_4\,
      O(2) => \s_clkEnbCnt_reg[8]_i_1_n_5\,
      O(1) => \s_clkEnbCnt_reg[8]_i_1_n_6\,
      O(0) => \s_clkEnbCnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => s_clkEnbCnt_reg(11 downto 8)
    );
\s_clkEnbCnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_clkEnbCnt_reg[8]_i_1_n_6\,
      Q => s_clkEnbCnt_reg(9),
      R => \s_clkEnbCnt[0]_i_1_n_0\
    );
\s_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_clkEnable,
      I1 => s_counter(0),
      O => \s_counter[0]_i_1_n_0\
    );
\s_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_counter(0),
      I1 => s_clkEnable,
      I2 => s_counter(1),
      O => \s_counter[1]_i_1_n_0\
    );
\s_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => s_counter(1),
      I1 => s_counter(0),
      I2 => s_clkEnable,
      I3 => s_counter(2),
      O => \s_counter[2]_i_1_n_0\
    );
\s_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_counter[0]_i_1_n_0\,
      Q => s_counter(0),
      R => '0'
    );
\s_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_counter[1]_i_1_n_0\,
      Q => s_counter(1),
      R => '0'
    );
\s_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_counter[2]_i_1_n_0\,
      Q => s_counter(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0_S00_AXI is
  port (
    dispSeg_n : out STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dispPt_n : out STD_LOGIC;
    dispEn_n : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0_S00_AXI : entity is "Nexys4DisplayDriverExtended_v1_0_S00_AXI";
end mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0_S00_AXI;

architecture STRUCTURE of mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal display_driver_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair8";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => display_driver_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => display_driver_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => display_driver_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => display_driver_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => display_driver_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => display_driver_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => display_driver_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => display_driver_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[0]\,
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data2(2),
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data2(3),
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[11]\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data3(0),
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[12]\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data3(1),
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data3(2),
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[14]\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data3(3),
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data4(0),
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data4(1),
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data4(2),
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data4(3),
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[1]\,
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[1]\,
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data5(0),
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data5(1),
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data5(2),
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data5(3),
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data6(0),
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data6(1),
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data6(2),
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data6(3),
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data7(0),
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data7(1),
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[2]\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data7(2),
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data7(3),
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[3]\,
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => sel0(0),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data1(0),
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => sel0(1),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data1(1),
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => sel0(2),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data1(2),
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[6]\,
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data1(3),
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[7]\,
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data2(0),
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[8]\,
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data2(1),
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[9]\,
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => display_driver_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => display_driver_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => display_driver_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => display_driver_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => display_driver_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => display_driver_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => display_driver_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => display_driver_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => display_driver_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => display_driver_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => display_driver_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => display_driver_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => display_driver_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => display_driver_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => display_driver_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => display_driver_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => display_driver_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => display_driver_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => display_driver_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => display_driver_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => display_driver_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => display_driver_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => display_driver_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => display_driver_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => display_driver_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => display_driver_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => display_driver_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => display_driver_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => display_driver_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => display_driver_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => display_driver_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => display_driver_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => display_driver_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => display_driver_n_0
    );
display_driver: entity work.mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriver
     port map (
      Q(5 downto 3) => sel0(2 downto 0),
      Q(2) => \slv_reg2_reg_n_0_[2]\,
      Q(1) => \slv_reg2_reg_n_0_[1]\,
      Q(0) => \slv_reg2_reg_n_0_[0]\,
      SR(0) => display_driver_n_0,
      dispEn_n(7 downto 0) => dispEn_n(7 downto 0),
      dispPt_n => dispPt_n,
      dispPt_n_0(15 downto 0) => slv_reg0(15 downto 0),
      dispSeg_n(6 downto 0) => dispSeg_n(6 downto 0),
      \dispSeg_n[6]_INST_0_i_4_0\(31 downto 28) => data7(3 downto 0),
      \dispSeg_n[6]_INST_0_i_4_0\(27 downto 24) => data6(3 downto 0),
      \dispSeg_n[6]_INST_0_i_4_0\(23 downto 20) => data5(3 downto 0),
      \dispSeg_n[6]_INST_0_i_4_0\(19 downto 16) => data4(3 downto 0),
      \dispSeg_n[6]_INST_0_i_4_0\(15 downto 12) => data3(3 downto 0),
      \dispSeg_n[6]_INST_0_i_4_0\(11 downto 8) => data2(3 downto 0),
      \dispSeg_n[6]_INST_0_i_4_0\(7 downto 4) => data1(3 downto 0),
      \dispSeg_n[6]_INST_0_i_4_0\(3) => \slv_reg1_reg_n_0_[3]\,
      \dispSeg_n[6]_INST_0_i_4_0\(2) => \slv_reg1_reg_n_0_[2]\,
      \dispSeg_n[6]_INST_0_i_4_0\(1) => \slv_reg1_reg_n_0_[1]\,
      \dispSeg_n[6]_INST_0_i_4_0\(0) => \slv_reg1_reg_n_0_[0]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => display_driver_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => display_driver_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => display_driver_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => display_driver_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => display_driver_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => display_driver_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => display_driver_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => display_driver_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => display_driver_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => display_driver_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => display_driver_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => display_driver_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => display_driver_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => display_driver_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => display_driver_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => display_driver_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => display_driver_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => display_driver_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => display_driver_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => display_driver_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => display_driver_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => display_driver_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => display_driver_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => display_driver_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => display_driver_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => display_driver_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => display_driver_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => display_driver_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => display_driver_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => display_driver_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => display_driver_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => display_driver_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => display_driver_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => data2(2),
      R => display_driver_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => data2(3),
      R => display_driver_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => data3(0),
      R => display_driver_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => data3(1),
      R => display_driver_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => data3(2),
      R => display_driver_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => data3(3),
      R => display_driver_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => data4(0),
      R => display_driver_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => data4(1),
      R => display_driver_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => data4(2),
      R => display_driver_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => data4(3),
      R => display_driver_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => display_driver_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => data5(0),
      R => display_driver_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => data5(1),
      R => display_driver_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => data5(2),
      R => display_driver_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => data5(3),
      R => display_driver_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => data6(0),
      R => display_driver_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => data6(1),
      R => display_driver_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => data6(2),
      R => display_driver_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => data6(3),
      R => display_driver_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => data7(0),
      R => display_driver_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => data7(1),
      R => display_driver_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => display_driver_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => data7(2),
      R => display_driver_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => data7(3),
      R => display_driver_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => display_driver_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => data1(0),
      R => display_driver_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => data1(1),
      R => display_driver_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => data1(2),
      R => display_driver_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => data1(3),
      R => display_driver_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => data2(0),
      R => display_driver_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => data2(1),
      R => display_driver_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => sel0(0),
      R => display_driver_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => sel0(1),
      R => display_driver_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => sel0(2),
      R => display_driver_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2_reg_n_0_[8]\,
      R => display_driver_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => display_driver_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => display_driver_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => display_driver_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => display_driver_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => display_driver_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => display_driver_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => display_driver_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => display_driver_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => display_driver_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => display_driver_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => display_driver_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => display_driver_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => display_driver_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => display_driver_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => display_driver_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => display_driver_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => display_driver_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => display_driver_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => display_driver_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => display_driver_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => display_driver_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => display_driver_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => display_driver_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => display_driver_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => display_driver_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => display_driver_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => display_driver_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => display_driver_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => display_driver_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => display_driver_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => display_driver_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => display_driver_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => display_driver_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0 is
  port (
    dispSeg_n : out STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dispPt_n : out STD_LOGIC;
    dispEn_n : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0 : entity is "Nexys4DisplayDriverExtended_v1_0";
end mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0;

architecture STRUCTURE of mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0 is
begin
Nexys4DisplayDriverExtended_v1_0_S00_AXI_inst: entity work.mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      dispEn_n(7 downto 0) => dispEn_n(7 downto 0),
      dispPt_n => dispPt_n,
      dispSeg_n(6 downto 0) => dispSeg_n(6 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_Nexys4DisplayDriverE_0_0 is
  port (
    dispEn_n : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dispSeg_n : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dispPt_n : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mb_design_Nexys4DisplayDriverE_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_design_Nexys4DisplayDriverE_0_0 : entity is "mb_design_Nexys4DisplayDriverE_0_0,Nexys4DisplayDriverExtended_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mb_design_Nexys4DisplayDriverE_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mb_design_Nexys4DisplayDriverE_0_0 : entity is "Nexys4DisplayDriverExtended_v1_0,Vivado 2019.2";
end mb_design_Nexys4DisplayDriverE_0_0;

architecture STRUCTURE of mb_design_Nexys4DisplayDriverE_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.mb_design_Nexys4DisplayDriverE_0_0_Nexys4DisplayDriverExtended_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      dispEn_n(7 downto 0) => dispEn_n(7 downto 0),
      dispPt_n => dispPt_n,
      dispSeg_n(6 downto 0) => dispSeg_n(6 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
