library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MD5HF_v1_0_S00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
        idle  : in std_logic;
		start : out std_logic;
		enable: out std_logic;
		dataOutSlave : out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		
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
end MD5HF_v1_0_S00_AXIS;

architecture arch_imp of MD5HF_v1_0_S00_AXIS is

component RegisterP is
        generic(k 	: integer := 1);
        port(   reset  :   in std_logic;
                clk :   in std_logic;
                enable: in std_logic;
                dataIn: in std_logic_vector((k-1) downto 0);
                dataOut: out std_logic_vector((k-1) downto 0));
    end component RegisterP;
	-- last process
	signal s_tlastdelayed : std_logic;

	-- dataIn process
	signal s_dataOutSlave : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);

	-- md5 core signals (control)
	signal s_start : std_logic;
	signal s_enable : std_logic;
	-- signal s_reset : std_logic;
	signal s_idle : std_logic;
	signal auxEnSt : std_logic;

	signal s_readyS : std_logic;


	type state_t is ( 	IN_IDLE, 
						IN_START, 
						IN_ENABLE, 
						NO_START);

	-- FSM
	signal state, state_n : state_t;

	begin
		
	-- s_reset <= reset;

	register_last: RegisterP
		generic map(k 	=> 1)
		port map (  reset	=> S_AXIS_ARESETN,
					clk 	=> S_AXIS_ACLK,
					enable	=> '1',
					dataIn(0)	=> S_AXIS_TLAST,
					dataOut(0) => s_tlastdelayed);
					
	--auxEnSt <= 	s_enable and s_start;
	
	process(s_enable, s_start)
	begin
	   if (s_start = '1' and s_enable = '1') then
	       auxEnSt <= '1';
	   else
	       auxEnSt <= '0';
	   end if;
	end process;
		
	register_dataIn: RegisterP
		generic map(k 	=> C_S_AXIS_TDATA_WIDTH)
		port map (  reset	=> S_AXIS_ARESETN,
					clk 	=> S_AXIS_ACLK,
					enable	=> auxEnSt,
					dataIn	=> S_AXIS_TDATA,
					dataOut => s_dataOutSlave); -- input data on MD5 core
					

	process(S_AXIS_ARESETN, S_AXIS_ACLK)
    begin
        if (S_AXIS_ARESETN = '1') then
            state <= IN_IDLE;
        elsif (rising_edge(S_AXIS_ACLK)) then
            state <= state_n;
        end if;
    end process;

    s_idle <= idle;
    
	process(state)
	begin

		state_n <= state;
        
		s_readyS <= '0';

		case state is
			when IN_IDLE =>
				s_start <= '0';
				s_enable <= '0';

				s_readyS <= '1';

				if(S_AXIS_TVALID = '1') then
					state_n <= IN_START;
				elsif (S_AXIS_ARESETN = '1') then
					state_n <= IN_IDLE;
				else
					state_n <= IN_IDLE;
				end if;
			
				

			when IN_START =>
				s_start <= '1';
				s_enable <= '1';
			
			
				if (S_AXIS_TVALID = '1' and s_idle = '1') then
					state_n <= IN_ENABLE;
				elsif (s_idle = '0' or S_AXIS_TVALID = '0') then
					state_n <= NO_START;
				elsif (S_AXIS_ARESETN = '1') then
					state_n <= IN_IDLE;
				else
					state_n <= IN_START;
				end if;


			when IN_ENABLE =>
				s_start <= '0';
				s_enable <= '1';
			
				if(s_idle <= '0') then
					state_n <= NO_START;
				elsif (s_tlastdelayed = '1') then
					state_n <= IN_IDLE;
				elsif (S_AXIS_ARESETN = '1') then
					state_n <= IN_IDLE;
				else
					state_n <= IN_ENABLE;
				end if;


			when NO_START =>
				s_start <= '0';
				s_enable <= '0';
				
				if(S_AXIS_TVALID = '0') then
					state_n <= NO_START;
				elsif (s_idle = '1' or S_AXIS_TVALID = '1') then
					state_n <= IN_ENABLE;
				elsif (S_AXIS_ARESETN = '1') then
					state_n <= IN_IDLE;
				else
					state_n <= NO_START;
				end if;

		end case;

	end process;

	start <= s_start;
	enable <= s_enable;

	
	dataOutSlave <= s_dataOutSlave;

	-- lastInfo <= s_tlastdelayed;
	S_AXIS_TREADY <= s_readyS;

end arch_imp;
