-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Mar 27 00:35:48 2020
-- Host        : ASRO-NUC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/asroliveira/CloudStation/CR/Nexys4DefaultPlatform/Nexys4DefaultPlatform.srcs/sources_1/bd/mb_design/ip/mb_design_fit_timer_0_0/mb_design_fit_timer_0_0_sim_netlist.vhdl
-- Design      : mb_design_fit_timer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_fit_timer_0_0_Divide_part is
  port (
    loop_Bit : out STD_LOGIC;
    Rst_d1 : out STD_LOGIC;
    CE : out STD_LOGIC;
    Rst_d1_reg_0 : out STD_LOGIC;
    Rst_d1_reg_1 : out STD_LOGIC;
    Rst_d1_reg_2 : out STD_LOGIC;
    Rst_d1_reg_3 : out STD_LOGIC;
    Rst_d1_reg_4 : out STD_LOGIC;
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    loop_Bit_0 : in STD_LOGIC;
    loop_Bit_1 : in STD_LOGIC;
    loop_Bit_2 : in STD_LOGIC;
    loop_Bit_3 : in STD_LOGIC;
    loop_Bit_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_fit_timer_0_0_Divide_part : entity is "Divide_part";
end mb_design_fit_timer_0_0_Divide_part;

architecture STRUCTURE of mb_design_fit_timer_0_0_Divide_part is
  signal \One_SRL16.SRL16E_I_i_1__4_n_0\ : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
  signal \^loop_bit\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \One_SRL16.SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s ";
  attribute srl_name : string;
  attribute srl_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s[1].Divide_I/One_SRL16.SRL16E_I ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \One_SRL16.SRL16E_I_i_1__4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \One_SRL16.SRL16E_I_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \One_SRL16.SRL16E_I_i_2__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \One_SRL16.SRL16E_I_i_2__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \One_SRL16.SRL16E_I_i_2__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \One_SRL16.SRL16E_I_i_2__3\ : label is "soft_lutpair2";
begin
  Rst_d1 <= \^rst_d1\;
  loop_Bit <= \^loop_bit\;
\One_SRL16.SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => Clk,
      D => \One_SRL16.SRL16E_I_i_1__4_n_0\,
      Q => \^loop_bit\
    );
\One_SRL16.SRL16E_I_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^loop_bit\,
      I1 => Rst,
      I2 => \^rst_d1\,
      O => CE
    );
\One_SRL16.SRL16E_I_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => \^loop_bit\,
      I2 => Rst,
      O => \One_SRL16.SRL16E_I_i_1__4_n_0\
    );
\One_SRL16.SRL16E_I_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => loop_Bit_0,
      I2 => Rst,
      O => Rst_d1_reg_0
    );
\One_SRL16.SRL16E_I_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => loop_Bit_1,
      I2 => Rst,
      O => Rst_d1_reg_1
    );
\One_SRL16.SRL16E_I_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => loop_Bit_2,
      I2 => Rst,
      O => Rst_d1_reg_2
    );
\One_SRL16.SRL16E_I_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => loop_Bit_3,
      I2 => Rst,
      O => Rst_d1_reg_3
    );
\One_SRL16.SRL16E_I_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => loop_Bit_4,
      I2 => Rst,
      O => Rst_d1_reg_4
    );
Rst_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Rst,
      Q => \^rst_d1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mb_design_fit_timer_0_0_Divide_part__parameterized0\ is
  port (
    loop_Bit : out STD_LOGIC;
    Clk_En_I_4 : out STD_LOGIC;
    CE : out STD_LOGIC;
    CE_0 : in STD_LOGIC;
    \not_First.Out1_reg_0\ : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Rst_d1 : in STD_LOGIC;
    loop_Bit_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mb_design_fit_timer_0_0_Divide_part__parameterized0\ : entity is "Divide_part";
end \mb_design_fit_timer_0_0_Divide_part__parameterized0\;

architecture STRUCTURE of \mb_design_fit_timer_0_0_Divide_part__parameterized0\ is
  signal \^clk_en_i_4\ : STD_LOGIC;
  signal Out1 : STD_LOGIC;
  signal \^loop_bit\ : STD_LOGIC;
  signal \not_First.Clk_En_Out_i_i_1_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \One_SRL16.SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s ";
  attribute srl_name : string;
  attribute srl_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s[2].Divide_I/One_SRL16.SRL16E_I ";
begin
  Clk_En_I_4 <= \^clk_en_i_4\;
  loop_Bit <= \^loop_bit\;
\One_SRL16.SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => CE_0,
      CLK => Clk,
      D => \not_First.Out1_reg_0\,
      Q => \^loop_bit\
    );
\One_SRL16.SRL16E_I_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^clk_en_i_4\,
      I1 => Rst,
      I2 => Rst_d1,
      O => CE
    );
\not_First.Clk_En_Out_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => loop_Bit_1,
      I1 => Rst,
      I2 => Out1,
      I3 => \^clk_en_i_4\,
      O => \not_First.Clk_En_Out_i_i_1_n_0\
    );
\not_First.Clk_En_Out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \not_First.Clk_En_Out_i_i_1_n_0\,
      Q => \^clk_en_i_4\,
      R => '0'
    );
\not_First.Out1_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \^loop_bit\,
      Q => Out1,
      R => Rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mb_design_fit_timer_0_0_Divide_part__parameterized1\ is
  port (
    loop_Bit : out STD_LOGIC;
    Clk_En_I_3 : out STD_LOGIC;
    CE : out STD_LOGIC;
    CE_0 : in STD_LOGIC;
    \not_First.Out1_reg_0\ : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Rst_d1 : in STD_LOGIC;
    Clk_En_I_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mb_design_fit_timer_0_0_Divide_part__parameterized1\ : entity is "Divide_part";
end \mb_design_fit_timer_0_0_Divide_part__parameterized1\;

architecture STRUCTURE of \mb_design_fit_timer_0_0_Divide_part__parameterized1\ is
  signal \^clk_en_i_3\ : STD_LOGIC;
  signal \^loop_bit\ : STD_LOGIC;
  signal \not_First.Clk_En_Out_i_i_1__0_n_0\ : STD_LOGIC;
  signal \not_First.Out1_reg_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \One_SRL16.SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s ";
  attribute srl_name : string;
  attribute srl_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s[3].Divide_I/One_SRL16.SRL16E_I ";
begin
  Clk_En_I_3 <= \^clk_en_i_3\;
  loop_Bit <= \^loop_bit\;
\One_SRL16.SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CE_0,
      CLK => Clk,
      D => \not_First.Out1_reg_0\,
      Q => \^loop_bit\
    );
\One_SRL16.SRL16E_I_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^clk_en_i_3\,
      I1 => Rst,
      I2 => Rst_d1,
      O => CE
    );
\not_First.Clk_En_Out_i_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Clk_En_I_4,
      I1 => \not_First.Out1_reg_n_0\,
      I2 => \^clk_en_i_3\,
      O => \not_First.Clk_En_Out_i_i_1__0_n_0\
    );
\not_First.Clk_En_Out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \not_First.Clk_En_Out_i_i_1__0_n_0\,
      Q => \^clk_en_i_3\,
      R => '0'
    );
\not_First.Out1_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \^loop_bit\,
      Q => \not_First.Out1_reg_n_0\,
      R => Rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mb_design_fit_timer_0_0_Divide_part__parameterized1_0\ is
  port (
    loop_Bit : out STD_LOGIC;
    Clk_En_I_2 : out STD_LOGIC;
    CE : out STD_LOGIC;
    CE_0 : in STD_LOGIC;
    \not_First.Out1_reg_0\ : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Rst_d1 : in STD_LOGIC;
    Clk_En_I_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mb_design_fit_timer_0_0_Divide_part__parameterized1_0\ : entity is "Divide_part";
end \mb_design_fit_timer_0_0_Divide_part__parameterized1_0\;

architecture STRUCTURE of \mb_design_fit_timer_0_0_Divide_part__parameterized1_0\ is
  signal \^clk_en_i_2\ : STD_LOGIC;
  signal \^loop_bit\ : STD_LOGIC;
  signal \not_First.Clk_En_Out_i_i_1__1_n_0\ : STD_LOGIC;
  signal \not_First.Out1_reg_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \One_SRL16.SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s ";
  attribute srl_name : string;
  attribute srl_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s[4].Divide_I/One_SRL16.SRL16E_I ";
begin
  Clk_En_I_2 <= \^clk_en_i_2\;
  loop_Bit <= \^loop_bit\;
\One_SRL16.SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CE_0,
      CLK => Clk,
      D => \not_First.Out1_reg_0\,
      Q => \^loop_bit\
    );
\One_SRL16.SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^clk_en_i_2\,
      I1 => Rst,
      I2 => Rst_d1,
      O => CE
    );
\not_First.Clk_En_Out_i_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Clk_En_I_3,
      I1 => \not_First.Out1_reg_n_0\,
      I2 => \^clk_en_i_2\,
      O => \not_First.Clk_En_Out_i_i_1__1_n_0\
    );
\not_First.Clk_En_Out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \not_First.Clk_En_Out_i_i_1__1_n_0\,
      Q => \^clk_en_i_2\,
      R => '0'
    );
\not_First.Out1_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \^loop_bit\,
      Q => \not_First.Out1_reg_n_0\,
      R => Rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mb_design_fit_timer_0_0_Divide_part__parameterized1_1\ is
  port (
    loop_Bit : out STD_LOGIC;
    Clk_En_I_1 : out STD_LOGIC;
    CE : out STD_LOGIC;
    CE_0 : in STD_LOGIC;
    \not_First.Out1_reg_0\ : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Rst_d1 : in STD_LOGIC;
    Clk_En_I_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mb_design_fit_timer_0_0_Divide_part__parameterized1_1\ : entity is "Divide_part";
end \mb_design_fit_timer_0_0_Divide_part__parameterized1_1\;

architecture STRUCTURE of \mb_design_fit_timer_0_0_Divide_part__parameterized1_1\ is
  signal \^clk_en_i_1\ : STD_LOGIC;
  signal \^loop_bit\ : STD_LOGIC;
  signal \not_First.Clk_En_Out_i_i_1__2_n_0\ : STD_LOGIC;
  signal \not_First.Out1_reg_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \One_SRL16.SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s ";
  attribute srl_name : string;
  attribute srl_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s[5].Divide_I/One_SRL16.SRL16E_I ";
begin
  Clk_En_I_1 <= \^clk_en_i_1\;
  loop_Bit <= \^loop_bit\;
\One_SRL16.SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CE_0,
      CLK => Clk,
      D => \not_First.Out1_reg_0\,
      Q => \^loop_bit\
    );
\One_SRL16.SRL16E_I_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^clk_en_i_1\,
      I1 => Rst,
      I2 => Rst_d1,
      O => CE
    );
\not_First.Clk_En_Out_i_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Clk_En_I_2,
      I1 => \not_First.Out1_reg_n_0\,
      I2 => \^clk_en_i_1\,
      O => \not_First.Clk_En_Out_i_i_1__2_n_0\
    );
\not_First.Clk_En_Out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \not_First.Clk_En_Out_i_i_1__2_n_0\,
      Q => \^clk_en_i_1\,
      R => '0'
    );
\not_First.Out1_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \^loop_bit\,
      Q => \not_First.Out1_reg_n_0\,
      R => Rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mb_design_fit_timer_0_0_Divide_part__parameterized1_2\ is
  port (
    loop_Bit : out STD_LOGIC;
    Interrupt : out STD_LOGIC;
    CE : in STD_LOGIC;
    \not_First.Out1_reg_0\ : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Clk_En_I_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mb_design_fit_timer_0_0_Divide_part__parameterized1_2\ : entity is "Divide_part";
end \mb_design_fit_timer_0_0_Divide_part__parameterized1_2\;

architecture STRUCTURE of \mb_design_fit_timer_0_0_Divide_part__parameterized1_2\ is
  signal \^interrupt\ : STD_LOGIC;
  signal \^loop_bit\ : STD_LOGIC;
  signal \not_First.Clk_En_Out_i_i_1__3_n_0\ : STD_LOGIC;
  signal \not_First.Out1_reg_n_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \One_SRL16.SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s ";
  attribute srl_name : string;
  attribute srl_name of \One_SRL16.SRL16E_I\ : label is "U0/\Using_SRL16s.SRL16s[6].Divide_I/One_SRL16.SRL16E_I ";
begin
  Interrupt <= \^interrupt\;
  loop_Bit <= \^loop_bit\;
\One_SRL16.SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CE,
      CLK => Clk,
      D => \not_First.Out1_reg_0\,
      Q => \^loop_bit\
    );
\not_First.Clk_En_Out_i_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Clk_En_I_1,
      I1 => \not_First.Out1_reg_n_0\,
      I2 => \^interrupt\,
      O => \not_First.Clk_En_Out_i_i_1__3_n_0\
    );
\not_First.Clk_En_Out_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \not_First.Clk_En_Out_i_i_1__3_n_0\,
      Q => \^interrupt\,
      R => '0'
    );
\not_First.Out1_reg\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \^loop_bit\,
      Q => \not_First.Out1_reg_n_0\,
      R => Rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_fit_timer_0_0_FIT_timer is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Interrupt : out STD_LOGIC
  );
  attribute C_EXT_RESET_HIGH : integer;
  attribute C_EXT_RESET_HIGH of mb_design_fit_timer_0_0_FIT_timer : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of mb_design_fit_timer_0_0_FIT_timer : entity is "artix7";
  attribute C_INACCURACY : integer;
  attribute C_INACCURACY of mb_design_fit_timer_0_0_FIT_timer : entity is 0;
  attribute C_NO_CLOCKS : integer;
  attribute C_NO_CLOCKS of mb_design_fit_timer_0_0_FIT_timer : entity is 100000;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_fit_timer_0_0_FIT_timer : entity is "FIT_timer";
end mb_design_fit_timer_0_0_FIT_timer;

architecture STRUCTURE of mb_design_fit_timer_0_0_FIT_timer is
  signal CE : STD_LOGIC;
  signal CE_0 : STD_LOGIC;
  signal CE_2 : STD_LOGIC;
  signal CE_4 : STD_LOGIC;
  signal CE_6 : STD_LOGIC;
  signal Clk_En_I_1 : STD_LOGIC;
  signal Clk_En_I_2 : STD_LOGIC;
  signal Clk_En_I_3 : STD_LOGIC;
  signal Clk_En_I_4 : STD_LOGIC;
  signal Rst_d1 : STD_LOGIC;
  signal \Using_SRL16s.SRL16s[1].Divide_I_n_3\ : STD_LOGIC;
  signal \Using_SRL16s.SRL16s[1].Divide_I_n_4\ : STD_LOGIC;
  signal \Using_SRL16s.SRL16s[1].Divide_I_n_5\ : STD_LOGIC;
  signal \Using_SRL16s.SRL16s[1].Divide_I_n_6\ : STD_LOGIC;
  signal \Using_SRL16s.SRL16s[1].Divide_I_n_7\ : STD_LOGIC;
  signal loop_Bit : STD_LOGIC;
  signal loop_Bit_1 : STD_LOGIC;
  signal loop_Bit_3 : STD_LOGIC;
  signal loop_Bit_5 : STD_LOGIC;
  signal loop_Bit_7 : STD_LOGIC;
  signal loop_Bit_8 : STD_LOGIC;
begin
\Using_SRL16s.SRL16s[1].Divide_I\: entity work.mb_design_fit_timer_0_0_Divide_part
     port map (
      CE => CE,
      Clk => Clk,
      Rst => Rst,
      Rst_d1 => Rst_d1,
      Rst_d1_reg_0 => \Using_SRL16s.SRL16s[1].Divide_I_n_3\,
      Rst_d1_reg_1 => \Using_SRL16s.SRL16s[1].Divide_I_n_4\,
      Rst_d1_reg_2 => \Using_SRL16s.SRL16s[1].Divide_I_n_5\,
      Rst_d1_reg_3 => \Using_SRL16s.SRL16s[1].Divide_I_n_6\,
      Rst_d1_reg_4 => \Using_SRL16s.SRL16s[1].Divide_I_n_7\,
      loop_Bit => loop_Bit,
      loop_Bit_0 => loop_Bit_1,
      loop_Bit_1 => loop_Bit_3,
      loop_Bit_2 => loop_Bit_5,
      loop_Bit_3 => loop_Bit_7,
      loop_Bit_4 => loop_Bit_8
    );
\Using_SRL16s.SRL16s[2].Divide_I\: entity work.\mb_design_fit_timer_0_0_Divide_part__parameterized0\
     port map (
      CE => CE_0,
      CE_0 => CE,
      Clk => Clk,
      Clk_En_I_4 => Clk_En_I_4,
      Rst => Rst,
      Rst_d1 => Rst_d1,
      loop_Bit => loop_Bit_1,
      loop_Bit_1 => loop_Bit,
      \not_First.Out1_reg_0\ => \Using_SRL16s.SRL16s[1].Divide_I_n_3\
    );
\Using_SRL16s.SRL16s[3].Divide_I\: entity work.\mb_design_fit_timer_0_0_Divide_part__parameterized1\
     port map (
      CE => CE_2,
      CE_0 => CE_0,
      Clk => Clk,
      Clk_En_I_3 => Clk_En_I_3,
      Clk_En_I_4 => Clk_En_I_4,
      Rst => Rst,
      Rst_d1 => Rst_d1,
      loop_Bit => loop_Bit_3,
      \not_First.Out1_reg_0\ => \Using_SRL16s.SRL16s[1].Divide_I_n_4\
    );
\Using_SRL16s.SRL16s[4].Divide_I\: entity work.\mb_design_fit_timer_0_0_Divide_part__parameterized1_0\
     port map (
      CE => CE_4,
      CE_0 => CE_2,
      Clk => Clk,
      Clk_En_I_2 => Clk_En_I_2,
      Clk_En_I_3 => Clk_En_I_3,
      Rst => Rst,
      Rst_d1 => Rst_d1,
      loop_Bit => loop_Bit_5,
      \not_First.Out1_reg_0\ => \Using_SRL16s.SRL16s[1].Divide_I_n_5\
    );
\Using_SRL16s.SRL16s[5].Divide_I\: entity work.\mb_design_fit_timer_0_0_Divide_part__parameterized1_1\
     port map (
      CE => CE_6,
      CE_0 => CE_4,
      Clk => Clk,
      Clk_En_I_1 => Clk_En_I_1,
      Clk_En_I_2 => Clk_En_I_2,
      Rst => Rst,
      Rst_d1 => Rst_d1,
      loop_Bit => loop_Bit_7,
      \not_First.Out1_reg_0\ => \Using_SRL16s.SRL16s[1].Divide_I_n_6\
    );
\Using_SRL16s.SRL16s[6].Divide_I\: entity work.\mb_design_fit_timer_0_0_Divide_part__parameterized1_2\
     port map (
      CE => CE_6,
      Clk => Clk,
      Clk_En_I_1 => Clk_En_I_1,
      Interrupt => Interrupt,
      Rst => Rst,
      loop_Bit => loop_Bit_8,
      \not_First.Out1_reg_0\ => \Using_SRL16s.SRL16s[1].Divide_I_n_7\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_fit_timer_0_0 is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mb_design_fit_timer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_design_fit_timer_0_0 : entity is "mb_design_fit_timer_0_0,fit_timer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mb_design_fit_timer_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mb_design_fit_timer_0_0 : entity is "fit_timer,Vivado 2019.2";
end mb_design_fit_timer_0_0;

architecture STRUCTURE of mb_design_fit_timer_0_0 is
  attribute C_EXT_RESET_HIGH : integer;
  attribute C_EXT_RESET_HIGH of U0 : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_INACCURACY : integer;
  attribute C_INACCURACY of U0 : label is 0;
  attribute C_NO_CLOCKS : integer;
  attribute C_NO_CLOCKS of U0 : label is 100000;
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 CLK.Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME CLK.Clk, ASSOCIATED_RESET Rst, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of Interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTERRUPT.Interrupt INTERRUPT";
  attribute x_interface_parameter of Interrupt : signal is "XIL_INTERFACENAME INTERRUPT.Interrupt, SENSITIVITY LEVEL_HIGH, SUGGESTED_PRIORITY HIGH, PortWidth 1";
  attribute x_interface_info of Rst : signal is "xilinx.com:signal:reset:1.0 RST.Rst RST";
  attribute x_interface_parameter of Rst : signal is "XIL_INTERFACENAME RST.Rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.mb_design_fit_timer_0_0_FIT_timer
     port map (
      Clk => Clk,
      Interrupt => Interrupt,
      Rst => Rst
    );
end STRUCTURE;
