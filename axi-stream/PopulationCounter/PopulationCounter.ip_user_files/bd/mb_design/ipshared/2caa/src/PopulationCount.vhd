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
    process(dataIn)
    variable s_popCount : unsigned(N - 1 downto 0);
    
    begin
        s_popCount := (others => '0');
        
        for i in 0 to N - 1 loop
            s_popCount := s_popCount + unsigned(dataIn(i downto i));                         
        end loop;
        
        cntOut <= std_logic_vector(s_popCount);
        
    end process;
 
  
end Behavioral;