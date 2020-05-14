library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PopulationCount is
  generic(N    : positive := 4);
  port(dataIn  : in  std_logic_vector(N-1 downto 0);
       cntOut  : out std_logic_vector(N-1 downto 0));
end PopulationCount;

architecture Behavioral of PopulationCount is

begin
    
end Behavioral;
