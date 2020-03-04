library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use STD.textio.all;
use IEEE.std_logic_textio.all;

library UNISIM;
use UNISIM.VComponents.all;

Entity NexysDispDriver_tb is
end NexysDispDriver_tb;

Architecture Behavioral of NexysDispDriver_tb is
    Component NexysDispDriver
    port(   clk       : in std_logic;   
            digitEn   : in std_logic_vector(7 downto 0);
            digVal0   : in std_logic_vector(3 downto 0);
            digVal1   : in std_logic_vector(3 downto 0);
            digVal2   : in std_logic_vector(3 downto 0);
            digVal3   : in std_logic_vector(3 downto 0);
            digVal4   : in std_logic_vector(3 downto 0);
            digVal5   : in std_logic_vector(3 downto 0);
            digVal6   : in std_logic_vector(3 downto 0);
            digVal7   : in std_logic_vector(3 downto 0);
            decPtEn   : in std_logic_vector(7 downto 0);
            dispEn_n  : out std_logic_vector(7 downto 0);
            dispSeg_n : out std_logic_vector(6 downto 0);
            dispPt_n  : out std_logic);
    end Component;

    begin
        uut: NexysDispDriver port map (
            
        );

        process
            variable s: line;
            variable i: integer := 0;
            variable count: integer := 0;

        begin
            for i in 0 to 127 loop
                count := count + 1;
                
                wait for 50 ns;
                switch <= 



end Behavioral;