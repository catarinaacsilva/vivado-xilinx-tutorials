library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ReverseEndianessCop_v1_0_M00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
        dataValid    : in  std_logic;
        reversedData : in  std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
        byteEnable   : in  std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
        lastWord     : in  std_logic;
        readEnabled  : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end ReverseEndianessCop_v1_0_M00_AXIS;

architecture implementation of ReverseEndianessCop_v1_0_M00_AXIS is


begin
    M_AXIS_TVALID <= dataValid;
    M_AXIS_TDATA  <= reversedData;
    M_AXIS_TSTRB  <= byteEnable;
    M_AXIS_TLAST  <= lastWord;
    
    readEnabled   <= dataValid and M_AXIS_TREADY;    
end implementation;
