--------------------------------------------
-- Module Name: Nexys4DispDriver
-- Author: Catarina Silva
-- Email: c.alexandracorreia@ua.pt
-- Email: c.alexandracorreia@av.it.pt
--------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Nexys4DispDriver is
    port(   clk       : in std_logic;   
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
    signal s_counter : natural;
begin
    
    process(input)
    begin   
        case input is
            when "0000" => output <= "0000001"; -- "0"     
            when "0001" => output <= "1001111"; -- "1" 
            when "0010" => output <= "0010010"; -- "2" 
            when "0011" => output <= "0000110"; -- "3" 
            when "0100" => output <= "1001100"; -- "4" 
            when "0101" => output <= "0100100"; -- "5" 
            when "0110" => output <= "0100000"; -- "6" 
            when "0111" => output <= "0001111"; -- "7" 
            when "1000" => output <= "0000000"; -- "8"     
            when "1001" => output <= "0000100"; -- "9" 
            when "1010" => output <= "0000010"; -- a
            when "1011" => output <= "1100000"; -- b
            when "1100" => output <= "0110001"; -- C
            when "1101" => output <= "1000010"; -- d
            when "1110" => output <= "0110000"; -- E
            when "1111" => output <= "0111000"; -- F
        end case;
    end process;

    
end Behavioral;