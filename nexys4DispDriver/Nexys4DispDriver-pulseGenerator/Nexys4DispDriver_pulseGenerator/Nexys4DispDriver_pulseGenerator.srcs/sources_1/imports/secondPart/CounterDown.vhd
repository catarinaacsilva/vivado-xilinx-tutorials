library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterDown is
	port(reset      : in  std_logic;
		 clk        : in  std_logic;
		 enable     : in  std_logic;
		 valOut     : out std_logic_vector(3 downto 0));
end CounterDown;

architecture Behavioral of CounterDown is

	signal s_value : unsigned(3 downto 0);

begin    
	process(clk)
	begin	
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_value <= (others => '1');
            elsif (enable = '1') then
                s_value <= s_value - 1;
			end if;
		end if;
	end process;

	valOut  <= std_logic_vector(s_value);
end Behavioral;
