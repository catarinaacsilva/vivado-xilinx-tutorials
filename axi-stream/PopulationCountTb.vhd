----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2020 09:59:50 AM
-- Design Name: 
-- Module Name: PopulationCountTb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PopulationCountTb is
	generic (
		-- Users to add parameters here
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		-- User parameters ends
		-- Do not modify the parameters beyond this line
	);
end PopulationCountTb;

architecture Stimulus of PopulationCountTb is
signal  s_dataIn, s_dataOut      : std_logic_vector(C_S_AXIS_TDATA_WIDTH - 1 downto 0);

component PopulationCount is
    generic(N    : positive := 4);
    port(dataIn  : in  std_logic_vector(N-1 downto 0);
         cntOut  : out std_logic_vector(N-1 downto 0));
    end component PopulationCount;

begin
PopulationCounter : PopulationCount
    generic map (
        N	=> C_S_AXIS_TDATA_WIDTH
    )
    port map (
        dataIn  => s_dataIn,
        cntOut  => s_dataOut
    );

    process
    begin
        -- 00000000  2DF45158  CF8CB140  46F6B54B  29310347  045B7030  B45DFD20  787F8B1A
        -- Values 15  14  18  12  11  17  18
        s_dataIn <= x"00000000";
        wait for 10 ns;
        assert (s_dataOut = std_logic_vector(to_unsigned(0, 32))) report "Error on 00000000" severity error;
        
        s_dataIn <= x"2DF45158";
        wait for 10 ns;
        assert (s_dataOut = std_logic_vector(to_unsigned(15, 32))) report "Error on 2DF45158" severity error;
        
        s_dataIn <= x"CF8CB140";
        wait for 10 ns;
        assert (s_dataOut = std_logic_vector(to_unsigned(14, 32))) report "Error on CF8CB140" severity error;
        
        s_dataIn <= x"46F6B54B";
        wait for 10 ns;
        assert (s_dataOut = std_logic_vector(to_unsigned(18, 32))) report "Error on 46F6B54B" severity error;
        
        s_dataIn <= x"29310347";
        wait for 10 ns;
        assert (s_dataOut = std_logic_vector(to_unsigned(12, 32))) report "Error on 29310347" severity error;
        
        s_dataIn <= x"045B7030";
        wait for 10 ns;
        assert (s_dataOut = std_logic_vector(to_unsigned(11, 32))) report "Error on 045B7030" severity error;
        
        s_dataIn <= x"B45DFD20";
        wait for 10 ns;
        assert (s_dataOut = std_logic_vector(to_unsigned(17, 32))) report "Error on B45DFD20" severity error;
        
        s_dataIn <= x"787F8B1A";
        wait for 10 ns;
        assert (s_dataOut = std_logic_vector(to_unsigned(18, 32))) report "Error on 787F8B1A" severity error;
        
        s_dataIn <= x"FFFFFFFF";
        wait for 10 ns;
        assert (s_dataOut = std_logic_vector(to_unsigned(32, 32))) report "Error on FFFFFFFF" severity error;
        
        wait;
    end process;

end Stimulus;