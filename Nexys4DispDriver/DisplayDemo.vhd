library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DisplayDemo is
    port(clk : in  std_logic;
         sw  : in  std_logic_vector(15 downto 0);
         an  : out std_logic_vector(7 downto 0);
         seg : out std_logic_vector(6 downto 0);
         dp  : out std_logic);
end DisplayDemo;

architecture Wrapper of DisplayDemo is

    signal s_clk800 : std_logic;
    
begin
    clk_divider : entity work.ClkDividerN(Behavioral)
	   generic map(k 	=> 125000)
	   port map(clkIn	=> clk,
		        clkOut	=> s_clk800);

    display_driver : entity work.Nexys4DisplayDriver(Behavioral)
        port map(clk       => s_clk800,
                 digitEn   => sw(7 downto 0), 
                 digVal0   => "0000",
                 digVal1   => "1000", 
                 digVal2   => "0001",
                 digVal3   => "0110",
                 digVal4   => "1010",
                 digVal5   => "1100",
                 digVal6   => "1101",
                 digVal7   => "1111",
                 decPtEn   => sw(15 downto 8),
                 dispEn_n  => an,
                 dispSeg_n => seg,
                 dispPt_n  => dp);
end Wrapper;
