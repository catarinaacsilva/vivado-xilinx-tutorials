--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri Mar 27 00:31:16 2020
--Host        : ASRO-NUC running 64-bit major release  (build 9200)
--Command     : generate_target mb_design_wrapper.bd
--Design      : mb_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_wrapper is
  port (
    dip_switches_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dual_seven_seg_led_disp_tri_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    led_16bits_tri_io : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset : in STD_LOGIC;
    seven_seg_led_an_tri_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end mb_design_wrapper;

architecture STRUCTURE of mb_design_wrapper is
  component mb_design is
  port (
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    seven_seg_led_an_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    seven_seg_led_an_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seven_seg_led_an_tri_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led_16bits_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led_16bits_tri_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dip_switches_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    dual_seven_seg_led_disp_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dual_seven_seg_led_disp_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dual_seven_seg_led_disp_tri_t : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component mb_design;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal dual_seven_seg_led_disp_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dual_seven_seg_led_disp_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal dual_seven_seg_led_disp_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal dual_seven_seg_led_disp_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal dual_seven_seg_led_disp_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal dual_seven_seg_led_disp_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal dual_seven_seg_led_disp_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal dual_seven_seg_led_disp_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal dual_seven_seg_led_disp_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dual_seven_seg_led_disp_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal dual_seven_seg_led_disp_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal dual_seven_seg_led_disp_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal dual_seven_seg_led_disp_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal dual_seven_seg_led_disp_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal dual_seven_seg_led_disp_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal dual_seven_seg_led_disp_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal dual_seven_seg_led_disp_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dual_seven_seg_led_disp_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal dual_seven_seg_led_disp_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal dual_seven_seg_led_disp_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal dual_seven_seg_led_disp_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal dual_seven_seg_led_disp_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal dual_seven_seg_led_disp_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal dual_seven_seg_led_disp_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal dual_seven_seg_led_disp_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dual_seven_seg_led_disp_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal dual_seven_seg_led_disp_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal dual_seven_seg_led_disp_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal dual_seven_seg_led_disp_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal dual_seven_seg_led_disp_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal dual_seven_seg_led_disp_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal dual_seven_seg_led_disp_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal led_16bits_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_16bits_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_16bits_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal led_16bits_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal led_16bits_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal led_16bits_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal led_16bits_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal led_16bits_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal led_16bits_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_16bits_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_16bits_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal led_16bits_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal led_16bits_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal led_16bits_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal led_16bits_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal led_16bits_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal led_16bits_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_16bits_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_16bits_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal led_16bits_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal led_16bits_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal led_16bits_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal led_16bits_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal led_16bits_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal led_16bits_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_16bits_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_16bits_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal led_16bits_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal led_16bits_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal led_16bits_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal led_16bits_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal led_16bits_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal led_16bits_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_16bits_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_16bits_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal led_16bits_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal led_16bits_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal led_16bits_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal led_16bits_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal led_16bits_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal led_16bits_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_16bits_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_16bits_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal led_16bits_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal led_16bits_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal led_16bits_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal led_16bits_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal led_16bits_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal led_16bits_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_16bits_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_16bits_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal led_16bits_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal led_16bits_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal led_16bits_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal led_16bits_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal led_16bits_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal led_16bits_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_16bits_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_16bits_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal led_16bits_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal led_16bits_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal led_16bits_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal led_16bits_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal led_16bits_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal seven_seg_led_an_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal seven_seg_led_an_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal seven_seg_led_an_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal seven_seg_led_an_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal seven_seg_led_an_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal seven_seg_led_an_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal seven_seg_led_an_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal seven_seg_led_an_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal seven_seg_led_an_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal seven_seg_led_an_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal seven_seg_led_an_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal seven_seg_led_an_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal seven_seg_led_an_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal seven_seg_led_an_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal seven_seg_led_an_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal seven_seg_led_an_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal seven_seg_led_an_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal seven_seg_led_an_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal seven_seg_led_an_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal seven_seg_led_an_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal seven_seg_led_an_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal seven_seg_led_an_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal seven_seg_led_an_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal seven_seg_led_an_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal seven_seg_led_an_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal seven_seg_led_an_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal seven_seg_led_an_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal seven_seg_led_an_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal seven_seg_led_an_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal seven_seg_led_an_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal seven_seg_led_an_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal seven_seg_led_an_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
begin
dual_seven_seg_led_disp_tri_iobuf_0: component IOBUF
     port map (
      I => dual_seven_seg_led_disp_tri_o_0(0),
      IO => dual_seven_seg_led_disp_tri_io(0),
      O => dual_seven_seg_led_disp_tri_i_0(0),
      T => dual_seven_seg_led_disp_tri_t_0(0)
    );
dual_seven_seg_led_disp_tri_iobuf_1: component IOBUF
     port map (
      I => dual_seven_seg_led_disp_tri_o_1(1),
      IO => dual_seven_seg_led_disp_tri_io(1),
      O => dual_seven_seg_led_disp_tri_i_1(1),
      T => dual_seven_seg_led_disp_tri_t_1(1)
    );
dual_seven_seg_led_disp_tri_iobuf_2: component IOBUF
     port map (
      I => dual_seven_seg_led_disp_tri_o_2(2),
      IO => dual_seven_seg_led_disp_tri_io(2),
      O => dual_seven_seg_led_disp_tri_i_2(2),
      T => dual_seven_seg_led_disp_tri_t_2(2)
    );
dual_seven_seg_led_disp_tri_iobuf_3: component IOBUF
     port map (
      I => dual_seven_seg_led_disp_tri_o_3(3),
      IO => dual_seven_seg_led_disp_tri_io(3),
      O => dual_seven_seg_led_disp_tri_i_3(3),
      T => dual_seven_seg_led_disp_tri_t_3(3)
    );
dual_seven_seg_led_disp_tri_iobuf_4: component IOBUF
     port map (
      I => dual_seven_seg_led_disp_tri_o_4(4),
      IO => dual_seven_seg_led_disp_tri_io(4),
      O => dual_seven_seg_led_disp_tri_i_4(4),
      T => dual_seven_seg_led_disp_tri_t_4(4)
    );
dual_seven_seg_led_disp_tri_iobuf_5: component IOBUF
     port map (
      I => dual_seven_seg_led_disp_tri_o_5(5),
      IO => dual_seven_seg_led_disp_tri_io(5),
      O => dual_seven_seg_led_disp_tri_i_5(5),
      T => dual_seven_seg_led_disp_tri_t_5(5)
    );
dual_seven_seg_led_disp_tri_iobuf_6: component IOBUF
     port map (
      I => dual_seven_seg_led_disp_tri_o_6(6),
      IO => dual_seven_seg_led_disp_tri_io(6),
      O => dual_seven_seg_led_disp_tri_i_6(6),
      T => dual_seven_seg_led_disp_tri_t_6(6)
    );
dual_seven_seg_led_disp_tri_iobuf_7: component IOBUF
     port map (
      I => dual_seven_seg_led_disp_tri_o_7(7),
      IO => dual_seven_seg_led_disp_tri_io(7),
      O => dual_seven_seg_led_disp_tri_i_7(7),
      T => dual_seven_seg_led_disp_tri_t_7(7)
    );
led_16bits_tri_iobuf_0: component IOBUF
     port map (
      I => led_16bits_tri_o_0(0),
      IO => led_16bits_tri_io(0),
      O => led_16bits_tri_i_0(0),
      T => led_16bits_tri_t_0(0)
    );
led_16bits_tri_iobuf_1: component IOBUF
     port map (
      I => led_16bits_tri_o_1(1),
      IO => led_16bits_tri_io(1),
      O => led_16bits_tri_i_1(1),
      T => led_16bits_tri_t_1(1)
    );
led_16bits_tri_iobuf_10: component IOBUF
     port map (
      I => led_16bits_tri_o_10(10),
      IO => led_16bits_tri_io(10),
      O => led_16bits_tri_i_10(10),
      T => led_16bits_tri_t_10(10)
    );
led_16bits_tri_iobuf_11: component IOBUF
     port map (
      I => led_16bits_tri_o_11(11),
      IO => led_16bits_tri_io(11),
      O => led_16bits_tri_i_11(11),
      T => led_16bits_tri_t_11(11)
    );
led_16bits_tri_iobuf_12: component IOBUF
     port map (
      I => led_16bits_tri_o_12(12),
      IO => led_16bits_tri_io(12),
      O => led_16bits_tri_i_12(12),
      T => led_16bits_tri_t_12(12)
    );
led_16bits_tri_iobuf_13: component IOBUF
     port map (
      I => led_16bits_tri_o_13(13),
      IO => led_16bits_tri_io(13),
      O => led_16bits_tri_i_13(13),
      T => led_16bits_tri_t_13(13)
    );
led_16bits_tri_iobuf_14: component IOBUF
     port map (
      I => led_16bits_tri_o_14(14),
      IO => led_16bits_tri_io(14),
      O => led_16bits_tri_i_14(14),
      T => led_16bits_tri_t_14(14)
    );
led_16bits_tri_iobuf_15: component IOBUF
     port map (
      I => led_16bits_tri_o_15(15),
      IO => led_16bits_tri_io(15),
      O => led_16bits_tri_i_15(15),
      T => led_16bits_tri_t_15(15)
    );
led_16bits_tri_iobuf_2: component IOBUF
     port map (
      I => led_16bits_tri_o_2(2),
      IO => led_16bits_tri_io(2),
      O => led_16bits_tri_i_2(2),
      T => led_16bits_tri_t_2(2)
    );
led_16bits_tri_iobuf_3: component IOBUF
     port map (
      I => led_16bits_tri_o_3(3),
      IO => led_16bits_tri_io(3),
      O => led_16bits_tri_i_3(3),
      T => led_16bits_tri_t_3(3)
    );
led_16bits_tri_iobuf_4: component IOBUF
     port map (
      I => led_16bits_tri_o_4(4),
      IO => led_16bits_tri_io(4),
      O => led_16bits_tri_i_4(4),
      T => led_16bits_tri_t_4(4)
    );
led_16bits_tri_iobuf_5: component IOBUF
     port map (
      I => led_16bits_tri_o_5(5),
      IO => led_16bits_tri_io(5),
      O => led_16bits_tri_i_5(5),
      T => led_16bits_tri_t_5(5)
    );
led_16bits_tri_iobuf_6: component IOBUF
     port map (
      I => led_16bits_tri_o_6(6),
      IO => led_16bits_tri_io(6),
      O => led_16bits_tri_i_6(6),
      T => led_16bits_tri_t_6(6)
    );
led_16bits_tri_iobuf_7: component IOBUF
     port map (
      I => led_16bits_tri_o_7(7),
      IO => led_16bits_tri_io(7),
      O => led_16bits_tri_i_7(7),
      T => led_16bits_tri_t_7(7)
    );
led_16bits_tri_iobuf_8: component IOBUF
     port map (
      I => led_16bits_tri_o_8(8),
      IO => led_16bits_tri_io(8),
      O => led_16bits_tri_i_8(8),
      T => led_16bits_tri_t_8(8)
    );
led_16bits_tri_iobuf_9: component IOBUF
     port map (
      I => led_16bits_tri_o_9(9),
      IO => led_16bits_tri_io(9),
      O => led_16bits_tri_i_9(9),
      T => led_16bits_tri_t_9(9)
    );
mb_design_i: component mb_design
     port map (
      dip_switches_16bits_tri_i(15 downto 0) => dip_switches_16bits_tri_i(15 downto 0),
      dual_seven_seg_led_disp_tri_i(7) => dual_seven_seg_led_disp_tri_i_7(7),
      dual_seven_seg_led_disp_tri_i(6) => dual_seven_seg_led_disp_tri_i_6(6),
      dual_seven_seg_led_disp_tri_i(5) => dual_seven_seg_led_disp_tri_i_5(5),
      dual_seven_seg_led_disp_tri_i(4) => dual_seven_seg_led_disp_tri_i_4(4),
      dual_seven_seg_led_disp_tri_i(3) => dual_seven_seg_led_disp_tri_i_3(3),
      dual_seven_seg_led_disp_tri_i(2) => dual_seven_seg_led_disp_tri_i_2(2),
      dual_seven_seg_led_disp_tri_i(1) => dual_seven_seg_led_disp_tri_i_1(1),
      dual_seven_seg_led_disp_tri_i(0) => dual_seven_seg_led_disp_tri_i_0(0),
      dual_seven_seg_led_disp_tri_o(7) => dual_seven_seg_led_disp_tri_o_7(7),
      dual_seven_seg_led_disp_tri_o(6) => dual_seven_seg_led_disp_tri_o_6(6),
      dual_seven_seg_led_disp_tri_o(5) => dual_seven_seg_led_disp_tri_o_5(5),
      dual_seven_seg_led_disp_tri_o(4) => dual_seven_seg_led_disp_tri_o_4(4),
      dual_seven_seg_led_disp_tri_o(3) => dual_seven_seg_led_disp_tri_o_3(3),
      dual_seven_seg_led_disp_tri_o(2) => dual_seven_seg_led_disp_tri_o_2(2),
      dual_seven_seg_led_disp_tri_o(1) => dual_seven_seg_led_disp_tri_o_1(1),
      dual_seven_seg_led_disp_tri_o(0) => dual_seven_seg_led_disp_tri_o_0(0),
      dual_seven_seg_led_disp_tri_t(7) => dual_seven_seg_led_disp_tri_t_7(7),
      dual_seven_seg_led_disp_tri_t(6) => dual_seven_seg_led_disp_tri_t_6(6),
      dual_seven_seg_led_disp_tri_t(5) => dual_seven_seg_led_disp_tri_t_5(5),
      dual_seven_seg_led_disp_tri_t(4) => dual_seven_seg_led_disp_tri_t_4(4),
      dual_seven_seg_led_disp_tri_t(3) => dual_seven_seg_led_disp_tri_t_3(3),
      dual_seven_seg_led_disp_tri_t(2) => dual_seven_seg_led_disp_tri_t_2(2),
      dual_seven_seg_led_disp_tri_t(1) => dual_seven_seg_led_disp_tri_t_1(1),
      dual_seven_seg_led_disp_tri_t(0) => dual_seven_seg_led_disp_tri_t_0(0),
      led_16bits_tri_i(15) => led_16bits_tri_i_15(15),
      led_16bits_tri_i(14) => led_16bits_tri_i_14(14),
      led_16bits_tri_i(13) => led_16bits_tri_i_13(13),
      led_16bits_tri_i(12) => led_16bits_tri_i_12(12),
      led_16bits_tri_i(11) => led_16bits_tri_i_11(11),
      led_16bits_tri_i(10) => led_16bits_tri_i_10(10),
      led_16bits_tri_i(9) => led_16bits_tri_i_9(9),
      led_16bits_tri_i(8) => led_16bits_tri_i_8(8),
      led_16bits_tri_i(7) => led_16bits_tri_i_7(7),
      led_16bits_tri_i(6) => led_16bits_tri_i_6(6),
      led_16bits_tri_i(5) => led_16bits_tri_i_5(5),
      led_16bits_tri_i(4) => led_16bits_tri_i_4(4),
      led_16bits_tri_i(3) => led_16bits_tri_i_3(3),
      led_16bits_tri_i(2) => led_16bits_tri_i_2(2),
      led_16bits_tri_i(1) => led_16bits_tri_i_1(1),
      led_16bits_tri_i(0) => led_16bits_tri_i_0(0),
      led_16bits_tri_o(15) => led_16bits_tri_o_15(15),
      led_16bits_tri_o(14) => led_16bits_tri_o_14(14),
      led_16bits_tri_o(13) => led_16bits_tri_o_13(13),
      led_16bits_tri_o(12) => led_16bits_tri_o_12(12),
      led_16bits_tri_o(11) => led_16bits_tri_o_11(11),
      led_16bits_tri_o(10) => led_16bits_tri_o_10(10),
      led_16bits_tri_o(9) => led_16bits_tri_o_9(9),
      led_16bits_tri_o(8) => led_16bits_tri_o_8(8),
      led_16bits_tri_o(7) => led_16bits_tri_o_7(7),
      led_16bits_tri_o(6) => led_16bits_tri_o_6(6),
      led_16bits_tri_o(5) => led_16bits_tri_o_5(5),
      led_16bits_tri_o(4) => led_16bits_tri_o_4(4),
      led_16bits_tri_o(3) => led_16bits_tri_o_3(3),
      led_16bits_tri_o(2) => led_16bits_tri_o_2(2),
      led_16bits_tri_o(1) => led_16bits_tri_o_1(1),
      led_16bits_tri_o(0) => led_16bits_tri_o_0(0),
      led_16bits_tri_t(15) => led_16bits_tri_t_15(15),
      led_16bits_tri_t(14) => led_16bits_tri_t_14(14),
      led_16bits_tri_t(13) => led_16bits_tri_t_13(13),
      led_16bits_tri_t(12) => led_16bits_tri_t_12(12),
      led_16bits_tri_t(11) => led_16bits_tri_t_11(11),
      led_16bits_tri_t(10) => led_16bits_tri_t_10(10),
      led_16bits_tri_t(9) => led_16bits_tri_t_9(9),
      led_16bits_tri_t(8) => led_16bits_tri_t_8(8),
      led_16bits_tri_t(7) => led_16bits_tri_t_7(7),
      led_16bits_tri_t(6) => led_16bits_tri_t_6(6),
      led_16bits_tri_t(5) => led_16bits_tri_t_5(5),
      led_16bits_tri_t(4) => led_16bits_tri_t_4(4),
      led_16bits_tri_t(3) => led_16bits_tri_t_3(3),
      led_16bits_tri_t(2) => led_16bits_tri_t_2(2),
      led_16bits_tri_t(1) => led_16bits_tri_t_1(1),
      led_16bits_tri_t(0) => led_16bits_tri_t_0(0),
      push_buttons_5bits_tri_i(4 downto 0) => push_buttons_5bits_tri_i(4 downto 0),
      reset => reset,
      seven_seg_led_an_tri_i(7) => seven_seg_led_an_tri_i_7(7),
      seven_seg_led_an_tri_i(6) => seven_seg_led_an_tri_i_6(6),
      seven_seg_led_an_tri_i(5) => seven_seg_led_an_tri_i_5(5),
      seven_seg_led_an_tri_i(4) => seven_seg_led_an_tri_i_4(4),
      seven_seg_led_an_tri_i(3) => seven_seg_led_an_tri_i_3(3),
      seven_seg_led_an_tri_i(2) => seven_seg_led_an_tri_i_2(2),
      seven_seg_led_an_tri_i(1) => seven_seg_led_an_tri_i_1(1),
      seven_seg_led_an_tri_i(0) => seven_seg_led_an_tri_i_0(0),
      seven_seg_led_an_tri_o(7) => seven_seg_led_an_tri_o_7(7),
      seven_seg_led_an_tri_o(6) => seven_seg_led_an_tri_o_6(6),
      seven_seg_led_an_tri_o(5) => seven_seg_led_an_tri_o_5(5),
      seven_seg_led_an_tri_o(4) => seven_seg_led_an_tri_o_4(4),
      seven_seg_led_an_tri_o(3) => seven_seg_led_an_tri_o_3(3),
      seven_seg_led_an_tri_o(2) => seven_seg_led_an_tri_o_2(2),
      seven_seg_led_an_tri_o(1) => seven_seg_led_an_tri_o_1(1),
      seven_seg_led_an_tri_o(0) => seven_seg_led_an_tri_o_0(0),
      seven_seg_led_an_tri_t(7) => seven_seg_led_an_tri_t_7(7),
      seven_seg_led_an_tri_t(6) => seven_seg_led_an_tri_t_6(6),
      seven_seg_led_an_tri_t(5) => seven_seg_led_an_tri_t_5(5),
      seven_seg_led_an_tri_t(4) => seven_seg_led_an_tri_t_4(4),
      seven_seg_led_an_tri_t(3) => seven_seg_led_an_tri_t_3(3),
      seven_seg_led_an_tri_t(2) => seven_seg_led_an_tri_t_2(2),
      seven_seg_led_an_tri_t(1) => seven_seg_led_an_tri_t_1(1),
      seven_seg_led_an_tri_t(0) => seven_seg_led_an_tri_t_0(0),
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
seven_seg_led_an_tri_iobuf_0: component IOBUF
     port map (
      I => seven_seg_led_an_tri_o_0(0),
      IO => seven_seg_led_an_tri_io(0),
      O => seven_seg_led_an_tri_i_0(0),
      T => seven_seg_led_an_tri_t_0(0)
    );
seven_seg_led_an_tri_iobuf_1: component IOBUF
     port map (
      I => seven_seg_led_an_tri_o_1(1),
      IO => seven_seg_led_an_tri_io(1),
      O => seven_seg_led_an_tri_i_1(1),
      T => seven_seg_led_an_tri_t_1(1)
    );
seven_seg_led_an_tri_iobuf_2: component IOBUF
     port map (
      I => seven_seg_led_an_tri_o_2(2),
      IO => seven_seg_led_an_tri_io(2),
      O => seven_seg_led_an_tri_i_2(2),
      T => seven_seg_led_an_tri_t_2(2)
    );
seven_seg_led_an_tri_iobuf_3: component IOBUF
     port map (
      I => seven_seg_led_an_tri_o_3(3),
      IO => seven_seg_led_an_tri_io(3),
      O => seven_seg_led_an_tri_i_3(3),
      T => seven_seg_led_an_tri_t_3(3)
    );
seven_seg_led_an_tri_iobuf_4: component IOBUF
     port map (
      I => seven_seg_led_an_tri_o_4(4),
      IO => seven_seg_led_an_tri_io(4),
      O => seven_seg_led_an_tri_i_4(4),
      T => seven_seg_led_an_tri_t_4(4)
    );
seven_seg_led_an_tri_iobuf_5: component IOBUF
     port map (
      I => seven_seg_led_an_tri_o_5(5),
      IO => seven_seg_led_an_tri_io(5),
      O => seven_seg_led_an_tri_i_5(5),
      T => seven_seg_led_an_tri_t_5(5)
    );
seven_seg_led_an_tri_iobuf_6: component IOBUF
     port map (
      I => seven_seg_led_an_tri_o_6(6),
      IO => seven_seg_led_an_tri_io(6),
      O => seven_seg_led_an_tri_i_6(6),
      T => seven_seg_led_an_tri_t_6(6)
    );
seven_seg_led_an_tri_iobuf_7: component IOBUF
     port map (
      I => seven_seg_led_an_tri_o_7(7),
      IO => seven_seg_led_an_tri_io(7),
      O => seven_seg_led_an_tri_i_7(7),
      T => seven_seg_led_an_tri_t_7(7)
    );
end STRUCTURE;
