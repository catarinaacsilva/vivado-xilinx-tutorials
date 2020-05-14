-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue May  5 14:40:32 2020
-- Host        : GreatAtuin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/catar/Nextcloud/windowsToLinux/aula9/PlatformWithExtMemory/PlatformWithExtMemory.srcs/sources_1/bd/mb_design/ip/mb_design_xbar_0/mb_design_xbar_0_stub.vhdl
-- Design      : mb_design_xbar_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mb_design_xbar_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end mb_design_xbar_0;

architecture stub of mb_design_xbar_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awid[5:0],s_axi_awaddr[95:0],s_axi_awlen[23:0],s_axi_awsize[8:0],s_axi_awburst[5:0],s_axi_awlock[2:0],s_axi_awcache[11:0],s_axi_awprot[8:0],s_axi_awqos[11:0],s_axi_awvalid[2:0],s_axi_awready[2:0],s_axi_wdata[95:0],s_axi_wstrb[11:0],s_axi_wlast[2:0],s_axi_wvalid[2:0],s_axi_wready[2:0],s_axi_bid[5:0],s_axi_bresp[5:0],s_axi_bvalid[2:0],s_axi_bready[2:0],s_axi_arid[5:0],s_axi_araddr[95:0],s_axi_arlen[23:0],s_axi_arsize[8:0],s_axi_arburst[5:0],s_axi_arlock[2:0],s_axi_arcache[11:0],s_axi_arprot[8:0],s_axi_arqos[11:0],s_axi_arvalid[2:0],s_axi_arready[2:0],s_axi_rid[5:0],s_axi_rdata[95:0],s_axi_rresp[5:0],s_axi_rlast[2:0],s_axi_rvalid[2:0],s_axi_rready[2:0],m_axi_awaddr[255:0],m_axi_awlen[63:0],m_axi_awsize[23:0],m_axi_awburst[15:0],m_axi_awlock[7:0],m_axi_awcache[31:0],m_axi_awprot[23:0],m_axi_awregion[31:0],m_axi_awqos[31:0],m_axi_awvalid[7:0],m_axi_awready[7:0],m_axi_wdata[255:0],m_axi_wstrb[31:0],m_axi_wlast[7:0],m_axi_wvalid[7:0],m_axi_wready[7:0],m_axi_bresp[15:0],m_axi_bvalid[7:0],m_axi_bready[7:0],m_axi_araddr[255:0],m_axi_arlen[63:0],m_axi_arsize[23:0],m_axi_arburst[15:0],m_axi_arlock[7:0],m_axi_arcache[31:0],m_axi_arprot[23:0],m_axi_arregion[31:0],m_axi_arqos[31:0],m_axi_arvalid[7:0],m_axi_arready[7:0],m_axi_rdata[255:0],m_axi_rresp[15:0],m_axi_rlast[7:0],m_axi_rvalid[7:0],m_axi_rready[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_crossbar_v2_1_21_axi_crossbar,Vivado 2019.2";
begin
end;
