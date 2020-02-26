--------------------------------------------
-- Module Name: Nexys4DispDriver
-- Author: Catarina Silva
-- Email: c.alexandracorreia@ua.pt
-- Email: c.alexandracorreia@av.it.pt
--------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Nexys4DispDriver is
    port(   reset : in std_logic;
            clkIn : in std_logic;
            clkOut : out std_logic;
            an: std_logic_vector(3 downto 0); -- confirmar
            input: std_logic_vector(3 downto 0);
            output: std_logic_vector(6 downto 0));

end Nexys4DispDriver;

architecture Behavioral of Nexys4DispDriver is
    signal s_counter : natural;
begin
    process(clkIn)
    begin
        if rising_edge(clkIn) then
            if ((reset = '1') or (s_counter = K - 1)) then
                clkOut<= '0';
                s_counter <= 0;
            else
                if (s_counter = K/2 - 1) then
                    clkOut<= '1';
                end if;
                s_counter <= s_counter + 1;
            end if;
        end if;
    end process;
    
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
    end proces;

    process(an)
    begin   
        if(an(0) = '0' and an(1) = '0' and an(2)='0' and an(3)='0' )
            
    end proces


    
end Behavioral;