library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Shift_register is
    port(clk    :   in std_logic;
            loadEn  :   in std_logic;
            dataIn  :   in std_logic_vector(7 downto 0);
            dirLeft :   in std_logic;
            dataOut :   out std_logic_vector(7 downto 0));
end Shift_register;

architecture Behavioral of Shift_register is
    signal s_register : std_logic_vector(7 downto 0);
begin
    process(clk)
        begin
        if (rising_edge(clk)) then
            if (loadEn = '1') then
                s_register <= dataIn;
            elsif (dirLeft = '1') then
                s_register <= s_register(6 downto 0) & '0';
            else
                s_register <= '0' & s_register(7 downto 1);
            end if;
        end if;
    end process;

    dataOut <= s_register;
end Behavioral;