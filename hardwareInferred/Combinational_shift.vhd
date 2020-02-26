library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Combinational_shift is
    port( dataIn: in std_logic_vector(7 downto 0);
            dirLeft :   in std_logic;
            shAmount    :   in std_logic_vector(2 downto 0);
            dataOunt    :   out std_logic_vector(7 downto 0));
end Combinational_shift;

architecture Behavioral of Combinational_shift is
    signal s_shAmount : integer;
begin
    s_shAmount <= to_integer(unsigned(shAmount));
    process(dataIn, dirLeft, s_shAmount)
    begin
        if (dirLeft = '1') then
            dataOut <= std_logic_vector(shift_left(unsigned(dataIn), s_shAmount));
        else
            dataOut <= std_logic_vector(shift_right(unsigned(dataIn), s_shAmount));
        end if;
    end process;
end Behavioral;