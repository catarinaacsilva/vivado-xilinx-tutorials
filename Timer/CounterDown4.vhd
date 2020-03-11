library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterDown4 is
	generic(MAX_VAL : positive);
	port(reset      : in  std_logic;
		 clk        : in  std_logic;
		 clkEnable  : in  std_logic; -- clock temporal
		 cntEnable  : in  std_logic; -- clock funcional
		 setIncrem  : in  std_logic; -- acerto
		 setDecrem  : in  std_logic; -- acerto
		 valOut     : out std_logic_vector(3 downto 0); -- valor que vai para a saida
		 termCnt    : out std_logic); -- Indicador de terminar a contagem
end CounterDown4;

architecture Behavioral of CounterDown4 is

    subtype TCount is positive range 0 to MAX_VAL;
	
	signal s_value : TCount;

begin
	process(clk)
	begin	
		if (rising_edge(clk)) then --falta clkEnable e o cntEnable??? if a seguir a este???
			if (reset = '1') then
				s_value <= MAX_VAL;
			elsif (setIncrem = '1') then
				if(s_value = MAX_VAL) then
					s_counter <= 0;
				else
					s_counter <= s_counter + 1;
				end if;
			elsif (setDecrem = '1') then
				if(s_value = 0) then
					s_counter <= MAX_VAL;
				else
					s_counter <= s_counter - 1;
				end if;
			end if;
		end if;
	end process;

	valOut  <= std_logic_vector(to_unsigned(s_value, 4));

	termCnt <= '1' when (s_value = 0) else '0';
end Behavioral;
