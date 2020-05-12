library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity Nexys4DispDriver is
    port(   clk       : in std_logic;
            refRate   : in std_logic_vector(2 downto 0);
            brightL   : in std_logic_vector(2 downto 0);
            reset     : in std_logic;
            digitEn   : in std_logic_vector(7 downto 0);
            digVal0   : in std_logic_vector(3 downto 0);
            digVal1   : in std_logic_vector(3 downto 0);
            digVal2   : in std_logic_vector(3 downto 0);
            digVal3   : in std_logic_vector(3 downto 0);
            digVal4   : in std_logic_vector(3 downto 0);
            digVal5   : in std_logic_vector(3 downto 0);
            digVal6   : in std_logic_vector(3 downto 0);
            digVal7   : in std_logic_vector(3 downto 0);
            decPtEn   : in std_logic_vector(7 downto 0);
            dispEn_n  : out std_logic_vector(7 downto 0);
            dispSeg_n : out std_logic_vector(6 downto 0);
            dispPt_n  : out std_logic);

end Nexys4DispDriver;

architecture Behavioral of Nexys4DispDriver is
    signal s_counter    :   unsigned (2 downto 0) := "000"; -- auxiliar signal to count: 3 bits
    signal s_digitEn    :   std_logic;
    signal s_binSeg     :   std_logic_vector(3 downto 0);
    
    -- Add: software and hardware
    signal s_clkEnableCounter : integer;
    signal s_dispDriverEnable : std_logic;
    signal s_brightControl : std_logic_vector(7 downto 0);
    signal s_dispEn_n : std_logic_vector(7 downto 0);

    -- refresh rates
    type TRefreshRateLUT is array (0 to 7) of integer;
    constant REFRESH_RATE_LUT : TRefreshRateLUT := (1999999, 999999, 499999, 249999, 124999, 62499, 31249, 15624);
    
    -- brightness
	type TBrightnessLut is array (0 to 7, 0 to 6) of integer;
    constant BRIGTHNESS_LUT : TBrightnessLut := (
        (0, 285714,571428,857142,1142857,1428571,1714285,1999999),        
        (0, 142857,285714,428571,571428,714285,857142,999999),            
        (0, 71428,142857,214285,285714,357142,428571,499999),              
        (0, 35714,71428,107142,142857,178571,214285,249999),               
        (0, 17857,35714,53571,71428,89285,107142,124999),                  
        (0, 8928,17857,26785,35714,44642,53571,62499),                     
        (0, 4464,8928,13392,17857,22321,26785,31249),                    
        (0, 2232,4464,6696,8928,11160,13392,15624)
    );

begin

    -- Counter 3 bits
    process (clk, s_dispDriverEnable)
    begin  
        if(rising_edge(clk) and s_dispDriverEnable = '1') then
            s_counter <= s_counter + 1;
        end if;
    end process;

    -- Mux 8:1
    process(digitEn, s_counter)
    begin
        if(s_counter="111") then
            s_digitEn <= digitEn(7);
        elsif(s_counter="110") then
            s_digitEn <= digitEn(6);
        elsif(s_counter="101") then
            s_digitEn <= digitEn(5);
        elsif(s_counter="100") then
            s_digitEn <= digitEn(4);
        elsif(s_counter="011") then
            s_digitEn <= digitEn(3);
        elsif(s_counter="010") then
            s_digitEn <= digitEn(2);
        elsif(s_counter="001") then
            s_digitEn <= digitEn(1);
        else
            s_digitEn <= digitEn(0);
        end if;
    end process;

    -- Decoder 3:8
    process(s_counter)
    begin
        if(s_counter="111") then
            s_dispEn_n <= "01111111";
        elsif(s_counter="110") then
            s_dispEn_n <= "10111111";
        elsif(s_counter="101") then
            s_dispEn_n <= "11011111";
        elsif(s_counter="100") then
            s_dispEn_n <= "11101111";
        elsif(s_counter="011") then
            s_dispEn_n <= "11110111";
        elsif(s_counter="010") then
            s_dispEn_n <= "11111011";
        elsif(s_counter="001") then
            s_dispEn_n <= "11111101";
        else
            s_dispEn_n <= "11111110";
        end if;
    end process;

    -- Mux 8:1
    process(decPtEn, s_counter)
    begin  
         if(s_counter="111") then
            dispPt_n <= not decPtEn(7);
        elsif(s_counter="110") then
            dispPt_n <= not decPtEn(6);
        elsif(s_counter="101") then
            dispPt_n <= not decPtEn(5);
        elsif(s_counter="100") then
            dispPt_n <= not decPtEn(4);
        elsif(s_counter="011") then
            dispPt_n <= not decPtEn(3);
        elsif(s_counter="010") then
            dispPt_n <= not decPtEn(2);
        elsif(s_counter="001") then
            dispPt_n <= not decPtEn(1);
        else
            dispPt_n <= not decPtEn(0);
        end if;
    end process;

    -- Mux 8:1
    process(s_counter, digVal0, digVal1, digVal2, digVal3, digVal4, digVal5, digVal6, digVal7)
    begin
         if(s_counter="111") then
            s_binSeg <= digVal7;
        elsif(s_counter="110") then
            s_binSeg <= digVal6;
        elsif(s_counter="101") then
            s_binSeg <= digVal5;
        elsif(s_counter="100") then
            s_binSeg <= digVal4;
        elsif(s_counter="011") then
            s_binSeg <= digVal3;
        elsif(s_counter="010") then
            s_binSeg <= digVal2;
        elsif(s_counter="001") then
            s_binSeg <= digVal1;
        else
            s_binSeg <= digVal0;
        end if;
    end process;

    -- Bin7Seg
    process(s_binSeg, s_digitEn)
    begin
       if(s_digitEn='1') then
            if(s_binSeg="0000") then
                dispSeg_n <= "1000000";
            elsif(s_binSeg="0001") then
                dispSeg_n <= "1111001";
            elsif(s_binSeg="0010") then
                dispSeg_n <= "0100100";
            elsif(s_binSeg="0011") then
                dispSeg_n <= "0110000";
            elsif(s_binSeg="0100") then
                dispSeg_n <= "0011001";
            elsif(s_binSeg="0101") then
                dispSeg_n <= "0010010";
            elsif(s_binSeg="0110") then
                dispSeg_n <= "0000010";
            elsif(s_binSeg="0111") then
                dispSeg_n <= "1111000";
            elsif(s_binSeg="1000") then
                dispSeg_n <= "0000000";
            elsif(s_binSeg="1001") then
                dispSeg_n <= "0010000";
            elsif(s_binSeg="1010") then
                dispSeg_n <= "0001000";
            elsif(s_binSeg="1011") then
                dispSeg_n <= "0000011";
            elsif(s_binSeg="1100") then
                dispSeg_n <= "1000110";
            elsif(s_binSeg="1101") then
                dispSeg_n <= "0100001";
            elsif(s_binSeg="1110") then
                dispSeg_n <= "0000110";
            else
                dispSeg_n <= "0001110";
            end if;
        else
            dispSeg_n <= "1111111";
        end if;
    end process;

    -- refresh rate and brightness
    process(clk)
	begin
	   if (rising_edge(clk)) then
	       if(reset = '0') then
	           	s_clkEnableCounter <= 0;
			   	s_dispDriverEnable <= '0';
			   	s_brightControl <= (others => '1');
	       elsif (s_clkEnableCounter >= REFRESH_RATE_LUT(to_integer(unsigned(refRate)))) then
	           	s_clkEnableCounter <= 0;
				s_dispDriverEnable <= '1';
				s_brightControl <= (others => '0');

			else
				s_clkEnableCounter <= s_clkEnableCounter + 1;
				s_dispDriverEnable <= '0';
				if (s_clkEnableCounter >= BRIGTHNESS_LUT(to_integer(unsigned(refRate)), to_integer(unsigned(brightL)))) then
					s_brightControl <= (others => '1');
				end if;

	       end if;
	   end if;
     end process;
     
     dispEn_n <= s_dispEn_n or s_brightControl;
     
end Behavioral;