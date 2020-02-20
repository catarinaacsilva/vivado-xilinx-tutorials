library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
    ports(  s    :   in std_logic;
            i0   :   in std_logic;
            i1   :   in std_logic;
            mOut :  out std_logic);
end Mux2_1

architecture Behavioral of Mux2_1 is
begin
    process(s, i0, i1)
    begin
        if (s = '0') then
            mOut <= i0;
        else
            mOut <= i1;
        end if;
    end process;
end Behavioral;