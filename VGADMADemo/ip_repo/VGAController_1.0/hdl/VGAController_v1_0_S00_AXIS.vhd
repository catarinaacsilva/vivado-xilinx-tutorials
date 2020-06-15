library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity VGAController_v1_0_S00_AXIS is
	generic (
		-- Users to add parameters here
        MEM_ADDR_WIDTH      : integer := 10;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH  : integer	:= 32
	);
	port (
		-- Users to add ports here
        vgaRed   : out std_logic_vector(3 downto 0);
        vgaGreen : out std_logic_vector(3 downto 0);
        vgaBlue  : out std_logic_vector(3 downto 0);
        Hsync    : out std_logic;
        Vsync    : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- AXI4Stream sink: Clock
		S_AXIS_ACLK	   : in std_logic;
		-- AXI4Stream sink: Reset
		S_AXIS_ARESETN : in std_logic;
		-- Ready to accept data in
		S_AXIS_TREADY  : out std_logic;
		-- Data in
		S_AXIS_TDATA   : in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		-- Byte qualifier
		S_AXIS_TSTRB   : in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- Indicates boundary of last packet
		S_AXIS_TLAST   : in std_logic;
		-- Data is in valid
		S_AXIS_TVALID  : in std_logic
	);
end VGAController_v1_0_S00_AXIS;

architecture arch_imp of VGAController_v1_0_S00_AXIS is

    -- VGA controller
    --   gtf 640 480 60
    --    # 640x480 @ 60.00 Hz (GTF) hsync: 29.82 kHz; pclk: 23.86 MHz
    --    Modeline "640x480_60.00"  23.86  640 656 720 800  480 481 484 497  -HSync +Vsync
    
    constant X_RES : integer := 640;
    constant Y_RES : integer := 480;
    
    constant X_MAX : integer := 799;
    constant Y_MAX : integer := 496;
    
    constant HSYNC_0 : integer := 656;
    constant HSYNC_1 : integer := 720;
         
    constant VSYNC_1 : integer := 481;
    constant VSYNC_0 : integer := 484;
   
    signal s_x : integer range 0 to X_MAX;
    signal s_y : integer range 0 to Y_MAX;
    
    signal s_wrAddr : unsigned(MEM_ADDR_WIDTH-1 downto 0);
    
    signal s_rdAddr : unsigned(MEM_ADDR_WIDTH+1 downto 0);
    signal s_rdWord : std_logic_vector(31 downto 0);
    signal s_rdByte : std_logic_vector( 7 downto 0);
    signal s_byteY  : integer; 
    
    signal s_color  : std_logic_vector( 3 downto 0);
     
    type TMemory is array (0 to (2**MEM_ADDR_WIDTH)-1) of std_logic_vector(S_AXIS_TDATA'range);
    signal s_arrayBuffer : TMemory;
   
begin
    S_AXIS_TREADY <= '1';
        
    process(S_AXIS_ACLK)
    begin
        if (rising_edge(S_AXIS_ACLK)) then
            if (S_AXIS_ARESETN = '0') then
                s_wrAddr <= (others => '0');
                
            elsif (S_AXIS_TVALID = '1') then
                if (S_AXIS_TLAST = '1') then
                    s_wrAddr <= (others => '0');
                else
                    s_wrAddr <= s_wrAddr + 1;
                end if;
            end if;    
        end if;
    end process;

    process(S_AXIS_ACLK)
    begin
        if (rising_edge(S_AXIS_ACLK)) then
            if (S_AXIS_TVALID = '1') then
            
                if (S_AXIS_TSTRB(0) = '1') then
                    s_arrayBuffer(to_integer(unsigned(s_wrAddr)))(7 downto 0)   <=
                    S_AXIS_TDATA(7 downto 0);
                end if;
                
                if (S_AXIS_TSTRB(1) = '1') then
                    s_arrayBuffer(to_integer(unsigned(s_wrAddr)))(15 downto 8)  <=
                    S_AXIS_TDATA(15 downto 8);
                end if;
                
                if (S_AXIS_TSTRB(2) = '1') then
                    s_arrayBuffer(to_integer(unsigned(s_wrAddr)))(23 downto 16) <=
                    S_AXIS_TDATA(23 downto 16);
                end if;
                
                if (S_AXIS_TSTRB(3) = '1') then
                    s_arrayBuffer(to_integer(unsigned(s_wrAddr)))(31 downto 24) <=
                    S_AXIS_TDATA(31 downto 24);
                end if;
                          
            end if;    
        end if;
    end process;
    
    s_rdAddr <= TO_UNSIGNED(s_x, s_rdAddr'length);
    s_rdWord <= s_arrayBuffer(to_integer(unsigned(s_rdAddr(MEM_ADDR_WIDTH+1 downto 2))));
    s_rdByte <= s_rdWord( 7 downto  0) when (s_rdAddr(1 downto 0) = "00") else
                s_rdWord(15 downto  8) when (s_rdAddr(1 downto 0) = "01") else
                s_rdWord(23 downto 16) when (s_rdAddr(1 downto 0) = "10") else
                s_rdWord(31 downto 24) when (s_rdAddr(1 downto 0) = "11");
                
    process(S_AXIS_ACLK)
    begin
        if (rising_edge(S_AXIS_ACLK)) then
            if (S_AXIS_ARESETN = '0') then
                s_x <= 0;
                s_y <= 0;
                
            else
                if (s_x < X_MAX) then
                    s_x <= s_x + 1;
                else
                    s_x <= 0;
                
                    if (s_y < Y_MAX) then
                        s_y <= s_y + 1;
                    else
                        s_y <= 0;
                    end if;
                end if;
            end if;
        end if;         
    end process;

    s_byteY <= ((-(to_integer(signed(s_rdByte))) + 127) * (Y_RES - 1)) / 255;
    s_color <= "1111" when (s_byteY = s_y) else
               "0000";
                   
    process(S_AXIS_ACLK)
    begin
        if (rising_edge(S_AXIS_ACLK)) then
            -- Synchronization signals        
            if (s_x >= HSYNC_0) and (s_x < HSYNC_1) then
                Hsync <= '0';
            else
                Hsync <= '1';
            end if;
          
            if ((s_y >= VSYNC_1) and (s_y < VSYNC_0)) then
                Vsync <= '1';
            else
                Vsync <= '0';
            end if;
            
            -- Color
            vgaRed   <= s_color;
            vgaGreen <= s_color;
            vgaBlue  <= s_color; 
        end if;
    end process;
end arch_imp;
