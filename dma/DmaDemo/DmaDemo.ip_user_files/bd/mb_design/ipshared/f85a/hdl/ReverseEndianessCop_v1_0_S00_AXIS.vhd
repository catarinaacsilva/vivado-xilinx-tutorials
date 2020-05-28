library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ReverseEndianessCop_v1_0_S00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
        dataValid    : out std_logic;
        reversedData : out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
        byteEnable   : out std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
        lastWord     : out std_logic;
        readEnabled  : in  std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- AXI4Stream sink: Clock
		S_AXIS_ACLK	: in std_logic;
		-- AXI4Stream sink: Reset
		S_AXIS_ARESETN	: in std_logic;
		-- Ready to accept data in
		S_AXIS_TREADY	: out std_logic;
		-- Data in
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		-- Byte qualifier
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- Indicates boundary of last packet
		S_AXIS_TLAST	: in std_logic;
		-- Data is in valid
		S_AXIS_TVALID	: in std_logic
	);
end ReverseEndianessCop_v1_0_S00_AXIS;

architecture arch_imp of ReverseEndianessCop_v1_0_S00_AXIS is

	signal s_ready     : std_logic;
    signal s_dataValid : std_logic;

begin
    s_ready <= (not s_dataValid) or readEnabled;
    
    process(S_AXIS_ACLK)
	begin
        if (rising_edge (S_AXIS_ACLK)) then
	        if (S_AXIS_ARESETN = '0') then
	           s_dataValid  <= '0';
	           reversedData <= (others => '0');
       
            elsif (S_AXIS_TVALID = '1') then
	           if (s_ready = '1') then
                    s_dataValid <= '1';
                    
                    if (S_AXIS_TSTRB(0) = '1') then
                        reversedData(31 downto 24) <= S_AXIS_TDATA(7 downto 0);
                    end if;
                    
                    if (S_AXIS_TSTRB(1) = '1') then
                        reversedData(23 downto 16) <= S_AXIS_TDATA(15 downto 8);
                    end if;
                    
                    if (S_AXIS_TSTRB(2) = '1') then
                        reversedData(15 downto 8) <= S_AXIS_TDATA(23 downto 16);
                    end if;
                    
                    if (S_AXIS_TSTRB(3) = '1') then
                        reversedData(7 downto 0) <= S_AXIS_TDATA(31 downto 24);
                    end if;
                    
                    byteEnable(0) <= S_AXIS_TSTRB(3);
                    byteEnable(1) <= S_AXIS_TSTRB(2);
                    byteEnable(2) <= S_AXIS_TSTRB(1);
                    byteEnable(3) <= S_AXIS_TSTRB(0);
                    
                    lastWord <= S_AXIS_TLAST;
	           end if;
	      
	        elsif (readEnabled = '1') then
	           s_dataValid <= '0';               
            end if;
        end if;
    end process;

	dataValid     <= s_dataValid;
	S_AXIS_TREADY <= s_ready;	
end arch_imp;
