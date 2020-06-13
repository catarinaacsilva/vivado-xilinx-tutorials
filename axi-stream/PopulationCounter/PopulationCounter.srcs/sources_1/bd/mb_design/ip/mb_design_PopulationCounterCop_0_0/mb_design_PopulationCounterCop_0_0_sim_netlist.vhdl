-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Jun 14 00:41:46 2020
-- Host        : GreatAtuin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/catar/Desktop/git/vivado-xilinx-tutorials/axi-stream/PopulationCounter/PopulationCounter.srcs/sources_1/bd/mb_design/ip/mb_design_PopulationCounterCop_0_0/mb_design_PopulationCounterCop_0_0_sim_netlist.vhdl
-- Design      : mb_design_PopulationCounterCop_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_PopulationCounterCop_0_0_PopulationCount is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_PopulationCounterCop_0_0_PopulationCount : entity is "PopulationCount";
end mb_design_PopulationCounterCop_0_0_PopulationCount;

architecture STRUCTURE of mb_design_PopulationCounterCop_0_0_PopulationCount is
  signal \s_dataOut[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_dataOut[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_dataOut[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_10_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_11_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_12_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_13_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_14_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_15_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_16_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_17_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_18_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_19_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_20_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_21_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_8_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_9_n_0\ : STD_LOGIC;
  signal \s_dataOut[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_10_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_11_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_12_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_13_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_14_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_15_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_16_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_17_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_18_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_19_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_20_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_21_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_22_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_23_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_24_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_25_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_26_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_7_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_8_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_dataOut[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_dataOut[0]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_dataOut[0]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_12\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_13\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_14\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_15\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_16\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_17\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_18\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_19\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_20\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_21\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_dataOut[1]_i_9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_dataOut[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_dataOut[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_dataOut[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_11\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_12\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_13\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_14\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_15\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_16\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_17\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_18\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_19\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_21\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_23\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_24\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_dataOut[5]_i_6\ : label is "soft_lutpair0";
begin
\s_dataOut[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \s_dataOut[0]_i_2_n_0\,
      I1 => \s_dataOut[0]_i_3_n_0\,
      I2 => s00_axis_tdata(20),
      I3 => s00_axis_tdata(19),
      I4 => s00_axis_tdata(21),
      I5 => \s_dataOut[0]_i_4_n_0\,
      O => D(0)
    );
\s_dataOut[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \s_dataOut[1]_i_14_n_0\,
      I1 => s00_axis_tdata(31),
      I2 => s00_axis_tdata(0),
      I3 => \s_dataOut[1]_i_13_n_0\,
      I4 => \s_dataOut[1]_i_12_n_0\,
      O => \s_dataOut[0]_i_2_n_0\
    );
\s_dataOut[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(24),
      I1 => s00_axis_tdata(22),
      I2 => s00_axis_tdata(23),
      O => \s_dataOut[0]_i_3_n_0\
    );
\s_dataOut[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(27),
      I1 => s00_axis_tdata(25),
      I2 => s00_axis_tdata(26),
      O => \s_dataOut[0]_i_4_n_0\
    );
\s_dataOut[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \s_dataOut[1]_i_2_n_0\,
      I1 => \s_dataOut[1]_i_3_n_0\,
      I2 => \s_dataOut[1]_i_4_n_0\,
      I3 => \s_dataOut[1]_i_5_n_0\,
      I4 => \s_dataOut[1]_i_6_n_0\,
      O => D(1)
    );
\s_dataOut[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \s_dataOut[5]_i_23_n_0\,
      I1 => \s_dataOut[5]_i_24_n_0\,
      I2 => s00_axis_tdata(27),
      I3 => s00_axis_tdata(26),
      I4 => s00_axis_tdata(25),
      O => \s_dataOut[1]_i_10_n_0\
    );
\s_dataOut[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \s_dataOut[0]_i_4_n_0\,
      I1 => s00_axis_tdata(21),
      I2 => s00_axis_tdata(19),
      I3 => s00_axis_tdata(20),
      I4 => \s_dataOut[0]_i_3_n_0\,
      O => \s_dataOut[1]_i_11_n_0\
    );
\s_dataOut[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \s_dataOut[1]_i_20_n_0\,
      I1 => s00_axis_tdata(3),
      I2 => s00_axis_tdata(1),
      I3 => s00_axis_tdata(2),
      I4 => \s_dataOut[1]_i_16_n_0\,
      O => \s_dataOut[1]_i_12_n_0\
    );
\s_dataOut[1]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(30),
      I1 => s00_axis_tdata(28),
      I2 => s00_axis_tdata(29),
      O => \s_dataOut[1]_i_13_n_0\
    );
\s_dataOut[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \s_dataOut[1]_i_21_n_0\,
      I1 => s00_axis_tdata(12),
      I2 => s00_axis_tdata(10),
      I3 => s00_axis_tdata(11),
      I4 => \s_dataOut[1]_i_18_n_0\,
      O => \s_dataOut[1]_i_14_n_0\
    );
\s_dataOut[1]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(21),
      I1 => s00_axis_tdata(19),
      I2 => s00_axis_tdata(20),
      O => \s_dataOut[1]_i_15_n_0\
    );
\s_dataOut[1]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(6),
      I1 => s00_axis_tdata(4),
      I2 => s00_axis_tdata(5),
      O => \s_dataOut[1]_i_16_n_0\
    );
\s_dataOut[1]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(3),
      I1 => s00_axis_tdata(1),
      I2 => s00_axis_tdata(2),
      O => \s_dataOut[1]_i_17_n_0\
    );
\s_dataOut[1]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(15),
      I1 => s00_axis_tdata(13),
      I2 => s00_axis_tdata(14),
      O => \s_dataOut[1]_i_18_n_0\
    );
\s_dataOut[1]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(12),
      I1 => s00_axis_tdata(10),
      I2 => s00_axis_tdata(11),
      O => \s_dataOut[1]_i_19_n_0\
    );
\s_dataOut[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => s00_axis_tdata(3),
      I1 => s00_axis_tdata(2),
      I2 => s00_axis_tdata(1),
      I3 => \s_dataOut[5]_i_14_n_0\,
      I4 => \s_dataOut[5]_i_15_n_0\,
      O => \s_dataOut[1]_i_2_n_0\
    );
\s_dataOut[1]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(9),
      I1 => s00_axis_tdata(7),
      I2 => s00_axis_tdata(8),
      O => \s_dataOut[1]_i_20_n_0\
    );
\s_dataOut[1]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s00_axis_tdata(18),
      I1 => s00_axis_tdata(16),
      I2 => s00_axis_tdata(17),
      O => \s_dataOut[1]_i_21_n_0\
    );
\s_dataOut[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14417DD7EBBE8228"
    )
        port map (
      I0 => s00_axis_tdata(31),
      I1 => s00_axis_tdata(29),
      I2 => s00_axis_tdata(28),
      I3 => s00_axis_tdata(30),
      I4 => s00_axis_tdata(0),
      I5 => \s_dataOut[1]_i_7_n_0\,
      O => \s_dataOut[1]_i_3_n_0\
    );
\s_dataOut[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_dataOut[1]_i_8_n_0\,
      I1 => \s_dataOut[1]_i_9_n_0\,
      I2 => \s_dataOut[1]_i_10_n_0\,
      O => \s_dataOut[1]_i_4_n_0\
    );
\s_dataOut[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DD7D77DD77D7DD7"
    )
        port map (
      I0 => \s_dataOut[1]_i_11_n_0\,
      I1 => \s_dataOut[1]_i_12_n_0\,
      I2 => \s_dataOut[1]_i_13_n_0\,
      I3 => s00_axis_tdata(0),
      I4 => s00_axis_tdata(31),
      I5 => \s_dataOut[1]_i_14_n_0\,
      O => \s_dataOut[1]_i_5_n_0\
    );
\s_dataOut[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => \s_dataOut[1]_i_14_n_0\,
      I1 => \s_dataOut[1]_i_12_n_0\,
      I2 => \s_dataOut[1]_i_13_n_0\,
      I3 => s00_axis_tdata(0),
      I4 => s00_axis_tdata(31),
      O => \s_dataOut[1]_i_6_n_0\
    );
\s_dataOut[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => \s_dataOut[0]_i_3_n_0\,
      I1 => \s_dataOut[1]_i_15_n_0\,
      I2 => s00_axis_tdata(27),
      I3 => s00_axis_tdata(25),
      I4 => s00_axis_tdata(26),
      O => \s_dataOut[1]_i_7_n_0\
    );
\s_dataOut[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => \s_dataOut[1]_i_16_n_0\,
      I1 => \s_dataOut[1]_i_17_n_0\,
      I2 => s00_axis_tdata(9),
      I3 => s00_axis_tdata(7),
      I4 => s00_axis_tdata(8),
      O => \s_dataOut[1]_i_8_n_0\
    );
\s_dataOut[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => \s_dataOut[1]_i_18_n_0\,
      I1 => \s_dataOut[1]_i_19_n_0\,
      I2 => s00_axis_tdata(18),
      I3 => s00_axis_tdata(16),
      I4 => s00_axis_tdata(17),
      O => \s_dataOut[1]_i_9_n_0\
    );
\s_dataOut[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_dataOut[5]_i_5_n_0\,
      I1 => \s_dataOut[5]_i_7_n_0\,
      I2 => \s_dataOut[5]_i_6_n_0\,
      O => D(2)
    );
\s_dataOut[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17E8E817"
    )
        port map (
      I0 => \s_dataOut[5]_i_7_n_0\,
      I1 => \s_dataOut[5]_i_6_n_0\,
      I2 => \s_dataOut[5]_i_5_n_0\,
      I3 => \s_dataOut[3]_i_2_n_0\,
      I4 => \s_dataOut[5]_i_4_n_0\,
      O => D(3)
    );
\s_dataOut[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BBDBDD4"
    )
        port map (
      I0 => \s_dataOut[5]_i_10_n_0\,
      I1 => \s_dataOut[5]_i_12_n_0\,
      I2 => \s_dataOut[5]_i_18_n_0\,
      I3 => \s_dataOut[5]_i_17_n_0\,
      I4 => \s_dataOut[5]_i_16_n_0\,
      O => \s_dataOut[3]_i_2_n_0\
    );
\s_dataOut[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7E7E78EE78E8E8E"
    )
        port map (
      I0 => \s_dataOut[5]_i_8_n_0\,
      I1 => \s_dataOut[5]_i_9_n_0\,
      I2 => \s_dataOut[5]_i_4_n_0\,
      I3 => \s_dataOut[5]_i_5_n_0\,
      I4 => \s_dataOut[5]_i_6_n_0\,
      I5 => \s_dataOut[5]_i_7_n_0\,
      O => D(4)
    );
\s_dataOut[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"577575577FF7F77F"
    )
        port map (
      I0 => \s_dataOut[1]_i_7_n_0\,
      I1 => s00_axis_tdata(31),
      I2 => s00_axis_tdata(29),
      I3 => s00_axis_tdata(28),
      I4 => s00_axis_tdata(30),
      I5 => s00_axis_tdata(0),
      O => \s_dataOut[5]_i_10_n_0\
    );
\s_dataOut[5]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_dataOut[5]_i_16_n_0\,
      I1 => \s_dataOut[5]_i_18_n_0\,
      I2 => \s_dataOut[5]_i_17_n_0\,
      O => \s_dataOut[5]_i_11_n_0\
    );
\s_dataOut[5]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \s_dataOut[1]_i_8_n_0\,
      I1 => \s_dataOut[1]_i_9_n_0\,
      I2 => \s_dataOut[1]_i_10_n_0\,
      O => \s_dataOut[5]_i_12_n_0\
    );
\s_dataOut[5]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s00_axis_tdata(3),
      I1 => s00_axis_tdata(2),
      I2 => s00_axis_tdata(1),
      O => \s_dataOut[5]_i_13_n_0\
    );
\s_dataOut[5]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A995566A"
    )
        port map (
      I0 => \s_dataOut[5]_i_19_n_0\,
      I1 => s00_axis_tdata(15),
      I2 => s00_axis_tdata(14),
      I3 => s00_axis_tdata(13),
      I4 => \s_dataOut[5]_i_20_n_0\,
      O => \s_dataOut[5]_i_14_n_0\
    );
\s_dataOut[5]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A995566A"
    )
        port map (
      I0 => \s_dataOut[5]_i_21_n_0\,
      I1 => s00_axis_tdata(6),
      I2 => s00_axis_tdata(5),
      I3 => s00_axis_tdata(4),
      I4 => \s_dataOut[5]_i_22_n_0\,
      O => \s_dataOut[5]_i_15_n_0\
    );
\s_dataOut[5]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \s_dataOut[5]_i_23_n_0\,
      I1 => s00_axis_tdata(25),
      I2 => s00_axis_tdata(26),
      I3 => s00_axis_tdata(27),
      I4 => \s_dataOut[5]_i_24_n_0\,
      O => \s_dataOut[5]_i_16_n_0\
    );
\s_dataOut[5]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \s_dataOut[5]_i_20_n_0\,
      I1 => \s_dataOut[5]_i_25_n_0\,
      I2 => s00_axis_tdata(21),
      I3 => s00_axis_tdata(20),
      I4 => s00_axis_tdata(19),
      O => \s_dataOut[5]_i_17_n_0\
    );
\s_dataOut[5]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \s_dataOut[5]_i_22_n_0\,
      I1 => \s_dataOut[5]_i_26_n_0\,
      I2 => s00_axis_tdata(12),
      I3 => s00_axis_tdata(11),
      I4 => s00_axis_tdata(10),
      O => \s_dataOut[5]_i_18_n_0\
    );
\s_dataOut[5]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s00_axis_tdata(21),
      I1 => s00_axis_tdata(20),
      I2 => s00_axis_tdata(19),
      O => \s_dataOut[5]_i_19_n_0\
    );
\s_dataOut[5]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s00_axis_tdata(18),
      I1 => s00_axis_tdata(17),
      I2 => s00_axis_tdata(16),
      O => \s_dataOut[5]_i_20_n_0\
    );
\s_dataOut[5]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s00_axis_tdata(12),
      I1 => s00_axis_tdata(11),
      I2 => s00_axis_tdata(10),
      O => \s_dataOut[5]_i_21_n_0\
    );
\s_dataOut[5]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s00_axis_tdata(9),
      I1 => s00_axis_tdata(8),
      I2 => s00_axis_tdata(7),
      O => \s_dataOut[5]_i_22_n_0\
    );
\s_dataOut[5]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s00_axis_tdata(24),
      I1 => s00_axis_tdata(23),
      I2 => s00_axis_tdata(22),
      O => \s_dataOut[5]_i_23_n_0\
    );
\s_dataOut[5]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s00_axis_tdata(30),
      I1 => s00_axis_tdata(29),
      I2 => s00_axis_tdata(28),
      O => \s_dataOut[5]_i_24_n_0\
    );
\s_dataOut[5]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s00_axis_tdata(15),
      I1 => s00_axis_tdata(14),
      I2 => s00_axis_tdata(13),
      O => \s_dataOut[5]_i_25_n_0\
    );
\s_dataOut[5]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s00_axis_tdata(6),
      I1 => s00_axis_tdata(5),
      I2 => s00_axis_tdata(4),
      O => \s_dataOut[5]_i_26_n_0\
    );
\s_dataOut[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5440000000000000"
    )
        port map (
      I0 => \s_dataOut[5]_i_4_n_0\,
      I1 => \s_dataOut[5]_i_5_n_0\,
      I2 => \s_dataOut[5]_i_6_n_0\,
      I3 => \s_dataOut[5]_i_7_n_0\,
      I4 => \s_dataOut[5]_i_8_n_0\,
      I5 => \s_dataOut[5]_i_9_n_0\,
      O => D(5)
    );
\s_dataOut[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"969696FF96FFFFFF"
    )
        port map (
      I0 => \s_dataOut[5]_i_10_n_0\,
      I1 => \s_dataOut[5]_i_11_n_0\,
      I2 => \s_dataOut[5]_i_12_n_0\,
      I3 => \s_dataOut[5]_i_13_n_0\,
      I4 => \s_dataOut[5]_i_14_n_0\,
      I5 => \s_dataOut[5]_i_15_n_0\,
      O => \s_dataOut[5]_i_4_n_0\
    );
\s_dataOut[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \s_dataOut[5]_i_10_n_0\,
      I1 => \s_dataOut[5]_i_11_n_0\,
      I2 => \s_dataOut[5]_i_12_n_0\,
      I3 => \s_dataOut[5]_i_13_n_0\,
      I4 => \s_dataOut[5]_i_14_n_0\,
      I5 => \s_dataOut[5]_i_15_n_0\,
      O => \s_dataOut[5]_i_5_n_0\
    );
\s_dataOut[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B22B2BB2"
    )
        port map (
      I0 => \s_dataOut[1]_i_6_n_0\,
      I1 => \s_dataOut[1]_i_5_n_0\,
      I2 => \s_dataOut[1]_i_2_n_0\,
      I3 => \s_dataOut[1]_i_3_n_0\,
      I4 => \s_dataOut[1]_i_4_n_0\,
      O => \s_dataOut[5]_i_6_n_0\
    );
\s_dataOut[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \s_dataOut[1]_i_2_n_0\,
      I1 => \s_dataOut[1]_i_4_n_0\,
      I2 => \s_dataOut[1]_i_3_n_0\,
      O => \s_dataOut[5]_i_7_n_0\
    );
\s_dataOut[5]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \s_dataOut[5]_i_16_n_0\,
      I1 => \s_dataOut[5]_i_17_n_0\,
      I2 => \s_dataOut[5]_i_18_n_0\,
      O => \s_dataOut[5]_i_8_n_0\
    );
\s_dataOut[5]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \s_dataOut[5]_i_12_n_0\,
      I1 => \s_dataOut[5]_i_10_n_0\,
      I2 => \s_dataOut[5]_i_11_n_0\,
      O => \s_dataOut[5]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0_S00_AXIS is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_validOut_reg_0 : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0_S00_AXIS : entity is "PopulationCounterCop_v1_0_S00_AXIS";
end mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0_S00_AXIS;

architecture STRUCTURE of mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0_S00_AXIS is
  signal p_0_in : STD_LOGIC;
  signal population_count_n_0 : STD_LOGIC;
  signal population_count_n_1 : STD_LOGIC;
  signal population_count_n_2 : STD_LOGIC;
  signal population_count_n_3 : STD_LOGIC;
  signal population_count_n_4 : STD_LOGIC;
  signal population_count_n_5 : STD_LOGIC;
  signal s_validOut : STD_LOGIC;
  signal s_validOut_i_1_n_0 : STD_LOGIC;
  signal \^s_validout_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s00_axis_tready_INST_0 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of s_validOut_i_1 : label is "soft_lutpair19";
begin
  s_validOut_reg_0 <= \^s_validout_reg_0\;
population_count: entity work.mb_design_PopulationCounterCop_0_0_PopulationCount
     port map (
      D(5) => population_count_n_0,
      D(4) => population_count_n_1,
      D(3) => population_count_n_2,
      D(2) => population_count_n_3,
      D(1) => population_count_n_4,
      D(0) => population_count_n_5,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0)
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \^s_validout_reg_0\,
      O => s00_axis_tready
    );
\s_dataOut[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => p_0_in
    );
\s_dataOut[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^s_validout_reg_0\,
      I2 => m00_axis_tready,
      O => s_validOut
    );
\s_dataOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => population_count_n_5,
      Q => m00_axis_tdata(0),
      R => p_0_in
    );
\s_dataOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => population_count_n_4,
      Q => m00_axis_tdata(1),
      R => p_0_in
    );
\s_dataOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => population_count_n_3,
      Q => m00_axis_tdata(2),
      R => p_0_in
    );
\s_dataOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => population_count_n_2,
      Q => m00_axis_tdata(3),
      R => p_0_in
    );
\s_dataOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => population_count_n_1,
      Q => m00_axis_tdata(4),
      R => p_0_in
    );
\s_dataOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => population_count_n_0,
      Q => m00_axis_tdata(5),
      R => p_0_in
    );
s_validOut_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F400"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \^s_validout_reg_0\,
      I2 => s00_axis_tvalid,
      I3 => s00_axis_aresetn,
      O => s_validOut_i_1_n_0
    );
s_validOut_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => s_validOut_i_1_n_0,
      Q => \^s_validout_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0 is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_validOut_reg : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0 : entity is "PopulationCounterCop_v1_0";
end mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0;

architecture STRUCTURE of mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0 is
begin
PopulationCounterCop_v1_0_S00_AXIS_inst: entity work.mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0_S00_AXIS
     port map (
      m00_axis_tdata(5 downto 0) => m00_axis_tdata(5 downto 0),
      m00_axis_tready => m00_axis_tready,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      s_validOut_reg_0 => s_validOut_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_PopulationCounterCop_0_0 is
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
  attribute NotValidForBitStream of mb_design_PopulationCounterCop_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_design_PopulationCounterCop_0_0 : entity is "mb_design_PopulationCounterCop_0_0,PopulationCounterCop_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mb_design_PopulationCounterCop_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mb_design_PopulationCounterCop_0_0 : entity is "PopulationCounterCop_v1_0,Vivado 2019.2";
end mb_design_PopulationCounterCop_0_0;

architecture STRUCTURE of mb_design_PopulationCounterCop_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 5 downto 0 );
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
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5 downto 0) <= \^m00_axis_tdata\(5 downto 0);
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.mb_design_PopulationCounterCop_0_0_PopulationCounterCop_v1_0
     port map (
      m00_axis_tdata(5 downto 0) => \^m00_axis_tdata\(5 downto 0),
      m00_axis_tready => m00_axis_tready,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      s_validOut_reg => m00_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
