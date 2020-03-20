library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity Nexys4DispDriver is
    port(   clk       : in std_logic;   
            enable    : in std_logic;
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
begin

    -- Counter 3 bits
    process (clk)
    begin  
        if(rising_edge(clk) and enable = '1') then
            s_counter <= s_counter + 1;
        end if;
    end process;

    -- Mux 8:1 (select CN)
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
            dispEn_n <= "01111111";
        elsif(s_counter="110") then
            dispEn_n <= "10111111";
        elsif(s_counter="101") then
            dispEn_n <= "11011111";
        elsif(s_counter="100") then
            dispEn_n <= "11101111";
        elsif(s_counter="011") then
            dispEn_n <= "11110111";
        elsif(s_counter="010") then
            dispEn_n <= "11111011";
        elsif(s_counter="001") then
            dispEn_n <= "11111101";
        else
            dispEn_n <= "11111110";
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
     
end Behavioral;