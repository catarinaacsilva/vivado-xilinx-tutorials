--------------------------------------------
-- Module Name: tutorial
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use STD.textio.all;
use IEEE.std_logic_textio.all;

library UNISIM;
use UNISIM.VComponents.all;

Entity tutorial_tb Is
end tutorial_tb;

Architecture behavior of tutorial_tb Is
	Component tutorial
	port (
		sw  : in STD_LOGIC_VECTOR(7 downto 0);
		led : out STD_LOGIC_VECTOR(7 downto 0)
		);	
	End Component;
	
	Signal switch : STD_LOGIC_VECTOR(7 downto 0) := X"00";
	Signal led_out : STD_LOGIC_VECTOR(7 downto 0) := X"00";
	Signal led_exp_out : STD_LOGIC_VECTOR(7 downto 0) := X"00";
		
	Signal count_int_2 : STD_LOGIC_VECTOR(7 downto 0) := X"00";

	procedure expected_led (
		sw_in : in std_logic_vector(7 downto 0);
		led_expected : out std_logic_vector(7 downto 0)
	) is
	
	Variable led_expected_int : std_logic_vector(7 downto 0) := "00000000";
		   
	begin		    
		led_expected_int(0) := not(sw_in(0));
		led_expected_int(1) := sw_in(1) and not(sw_in(2));
		led_expected_int(2) := sw_in(2) and sw_in(3);
		led_expected_int(3) := led_expected_int(1) or led_expected_int(3);
		led_expected_int(7 downto 4) := sw_in(7 downto 4);

	    led_expected := led_expected_int;
	end expected_led;
	
begin
	uut:  tutorial PORT MAP (
			sw  => switch,
			led => led_out
		 );
		 
	process
		variable s : line;
		variable i : integer := 0;
		variable count : integer := 0;
	    variable proc_out : STD_LOGIC_VECTOR(7 downto 0);

	begin
        for i in 0 to 127 loop   
	      count := count + 1;
	               	  
		  wait for 50 ns;
		  switch <= count_int_2;
		  
		  wait for 10 ns;
		  expected_led (switch, proc_out);
		  led_exp_out <= proc_out;

		  -- If the outputs match, then announce it to the simulator console.
          if (led_out = proc_out) then
                write (s, string'("LED output MATCHED at ")); write (s, count ); write (s, string'(". Expected: ")); write (s, proc_out); write (s, string'(" Actual: ")); write (s, led_out); 
                writeline (output, s);
          else
              write (s, string'("LED output mis-matched at ")); write (s, count); write (s, string'(". Expected: ")); write (s, proc_out); write (s, string'(" Actual: ")); write (s, led_out); 
              writeline (output, s);
          end if;
		  		  
		  -- Increment the switch value counters.
		  count_int_2 <= count_int_2 + 2;
        end loop;		 
       
	end process;
end behavior;
