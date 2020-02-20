library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Clock_divider is
    generic(K: positive := 4);
    port(reset : in std_logic;
        clkIn : in std_logic;
        clkOut : out std_logic);
end Clock_divider;

architecture Behavioral of Clock_divider is
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
end Behavioral;
