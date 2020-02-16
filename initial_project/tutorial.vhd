--------------------------------------------
-- Module Name: tutorial
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity tutorial Is
port (
		sw  : in STD_LOGIC_VECTOR(7 downto 0);
		led : out STD_LOGIC_VECTOR(7 downto 0)
	);
end tutorial;

Architecture behavior of tutorial Is

Signal led_int : STD_LOGIC_VECTOR(7 downto 0) := "00000000";

begin
        led <= led_int;
        
		led_int(0) <= not(sw(0));
		led_int(1) <= sw(1) and not(sw(2));
		led_int(3) <= sw(2) and sw(3);
		led_int(2) <= led_int(1) or led_int(3);

		led_int(7 downto 4) <= sw(7 downto 4);

end behavior;
		

