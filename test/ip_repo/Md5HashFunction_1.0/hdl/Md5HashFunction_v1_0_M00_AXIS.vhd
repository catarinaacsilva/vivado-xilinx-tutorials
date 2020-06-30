library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Md5HashFunction_v1_0_M00_AXIS is
	generic (
		-- Users to add parameters here
		
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		-- Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
		C_M_START_COUNT	: integer	:= 32
	);
	port (
        -- Users to add ports here
    
		dataInMaster	: in  std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		done			: in std_logic;
		-- reset			: in std_logic;
		dataOutMaster   : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);


		-- lastInfo		: in std_logic;

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
end Md5HashFunction_v1_0_M00_AXIS;

architecture implementation of Md5HashFunction_v1_0_M00_AXIS is
    component RegisterP is
        generic(k 	: integer := 1);
        port(   reset  :   in std_logic;
                clk :   in std_logic;
                enable: in std_logic;
                dataIn: in std_logic_vector((k-1) downto 0);
                dataOut: out std_logic_vector((k-1) downto 0));
    end component RegisterP;
    
	signal s_done : std_logic;
	-- signal s_reset : std_logic;
	
	
	type state_t is ( 	OUT_IDLE, 
						OUT_VALID);

    signal state, state_n : state_t;
    

    begin

	M_AXIS_TSTRB  <= (others => '1');
	M_AXIS_TLAST  <= '0'; -- como chega uma palavra resultante do processamento o last no master é irrelevante?

    -- s_reset <= reset;

	register_dataIn: RegisterP
		generic map(k 	=> C_M_AXIS_TDATA_WIDTH)
		port map (  reset	=> M_AXIS_ARESETN,
					clk 	=> M_AXIS_ACLK,
					enable	=> s_done,
					dataIn	=> dataInMaster,
					dataOut => dataOutMaster);

	-- M_AXIS_TDATA <= dataOutMaster; VERIFICAR
	
	process(M_AXIS_ARESETN, M_AXIS_ACLK)
    begin
        if (M_AXIS_ARESETN = '1') then
            state <= OUT_IDLE;
        elsif (rising_edge(M_AXIS_ACLK)) then
            state <= state_n;
        end if;
	end process;
	
	process (state)
	begin
		state_n <= state;

		case state is
			when OUT_IDLE =>
				M_AXIS_TVALID <= '0';
				 
				if (s_done <= '1') then
					state_n <= OUT_VALID;
				elsif(M_AXIS_ARESETN <= '1') then
					state_n <= OUT_IDLE;
				else
					state_n <= OUT_IDLE;
				end if;
			 
			when OUT_VALID =>
				M_AXIS_TVALID <= '1';
				if (M_AXIS_TREADY <= '1') then
					state_n <= OUT_IDLE;
				elsif(M_AXIS_ARESETN <= '1') then
					state_n <= OUT_IDLE;
				else
					state_n <= OUT_VALID;
				end if;
		end case;
	end process;
	
end implementation;
