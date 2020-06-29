library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Md5HashFunction_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_START_COUNT	: integer	:= 32;

		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic
	);
end Md5HashFunction_v1_0;

architecture arch_imp of Md5HashFunction_v1_0 is

	-- component declaration
	component Md5HashFunction_v1_0_M00_AXIS is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
        M_AXIS_TREADY	: in std_logic;
        
		dataInMaster	: in  std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		done 			: in  std_logic;
		dataOutMaster   : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0)
		);
	end component Md5HashFunction_v1_0_M00_AXIS;

	component Md5HashFunction_v1_0_S00_AXIS is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
        S_AXIS_TVALID	: in std_logic;

		-- reset : in std_logic;
		idle  : in std_logic;
		start : out std_logic;
		enable: out std_logic;
		dataOutSlave : out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0)

		);
    end component Md5HashFunction_v1_0_S00_AXIS;
	
	component md5 is 
	   port(data_in:     in  std_logic_vector (C_S00_AXIS_TDATA_WIDTH-1 downto 0);
            start:       in  std_logic;
            enable:      in  std_logic;
            clk:         in  std_logic;
            reset:       in  std_logic;
            data_out:    out std_logic_vector (C_M00_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
            done:        out std_logic := '0';
            idleOut: out std_logic);
	end component md5;
	
	-- Master
	signal s_dataInMaster : std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
	signal s_done :  std_logic;       
	signal s_dataOutMaster : std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
	
	-- Slave
	signal s_idle  : std_logic;
	signal s_start : std_logic;
	signal s_enable : std_logic;
	signal s_dataOutSlave : std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
	
	signal s_reset : std_logic;
	signal s_clock : std_logic;

begin

-- Instantiation of Axi Bus Interface M00_AXIS
Md5HashFunction_v1_0_M00_AXIS_inst : Md5HashFunction_v1_0_M00_AXIS
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_TDATA_WIDTH,
		C_M_START_COUNT	=> C_M00_AXIS_START_COUNT
	)
	port map (
		M_AXIS_ACLK	=> m00_axis_aclk,
		M_AXIS_ARESETN	=> m00_axis_aresetn,
		M_AXIS_TVALID	=> m00_axis_tvalid,
		M_AXIS_TDATA	=> m00_axis_tdata,
		M_AXIS_TSTRB	=> m00_axis_tstrb,
		M_AXIS_TLAST	=> m00_axis_tlast,
        M_AXIS_TREADY	=> m00_axis_tready,

		dataInMaster => s_dataOutSlave,
		done => s_done,
		dataOutMaster => s_dataOutMaster
	);

-- Instantiation of Axi Bus Interface S00_AXIS
Md5HashFunction_v1_0_S00_AXIS_inst : Md5HashFunction_v1_0_S00_AXIS
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_S00_AXIS_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s00_axis_aclk,
		S_AXIS_ARESETN	=> s00_axis_aresetn,
		S_AXIS_TREADY	=> s00_axis_tready,
		S_AXIS_TDATA	=> s00_axis_tdata,
		S_AXIS_TSTRB	=> s00_axis_tstrb,
		S_AXIS_TLAST	=> s00_axis_tlast,
        S_AXIS_TVALID	=> s00_axis_tvalid,
        
		-- reset => s_reset,
		idle => s_idle,
		start => s_start,
		enable => s_enable,
		dataOutSlave => s_dataOutSlave
	);

	-- Add user logic here
	
	s_reset <= m00_axis_aresetn and s00_axis_aresetn;
	s_clock <= m00_axis_aclk and s00_axis_aclk;
	
	md5_comp: MD5
		port map (  data_in		=>	s_dataOutSlave,
					enable		=> 	s_enable,
                    start 		=> 	s_start,
                    clk 		=> 	s_clock,
                    reset 		=> 	s_reset,      
                    data_out 	=>  s_dataOutMaster,
					done 		=> 	s_done,
					idleOut 	=> 	s_idle);

	-- User logic ends

end arch_imp;
