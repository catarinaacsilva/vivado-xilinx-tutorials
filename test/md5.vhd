library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity MD5 is
    Port ( data_in  :   in  std_logic_vector (31 downto 0);
           enable   :   in std_logic;
           start    :   in  std_logic;
           clk      :   in  std_logic;
           reset    :   in  std_logic;
           data_out :   out std_logic_vector (31 downto 0) := (others => '0'); -- para ser 128
           done     :   out std_logic := '0';
           idleOut  :   out std_logic);
end MD5;

architecture Behavioral of MD5 is
subtype uint512_t is unsigned(0 to 511);
subtype uint32_t is unsigned(31 downto 0);
subtype uint8_t is unsigned(7 downto 0);

type const_s is array (0 to 63) of uint8_t;
type const_k is array (0 to 63) of uint32_t;
type message is array (0 to 15) of uint32_t;

constant S: const_s := (X"07", X"0C", X"11", X"16", 
                        X"07", X"0C", X"11", X"16",
                        X"07", X"0C", X"11", X"16", 
                        X"07", X"0C", X"11", X"16",

						X"05", X"09", X"0E", X"14", 
						X"05", X"09", X"0E", X"14", 
						X"05", X"09", X"0E", X"14",
						X"05", X"09", X"0E", X"14", 

						X"04", X"0B", X"10", X"17",
						X"04", X"0B", X"10", X"17",
						X"04", X"0B", X"10", X"17",
						X"04", X"0B", X"10", X"17",

						X"06", X"0A", X"0F", X"15", 
						X"06", X"0A", X"0F", X"15", 
						X"06", X"0A", X"0F", X"15",
						X"06", X"0A", X"0F", X"15");
										
constant K: const_k := (X"d76aa478", X"e8c7b756", X"242070db", X"c1bdceee",
						X"f57c0faf", X"4787c62a", X"a8304613", X"fd469501",
						X"698098d8", X"8b44f7af", X"ffff5bb1", X"895cd7be",
						X"6b901122", X"fd987193", X"a679438e", X"49b40821",
						X"f61e2562", X"c040b340", X"265e5a51", X"e9b6c7aa",
						X"d62f105d", X"02441453", X"d8a1e681", X"e7d3fbc8",
						X"21e1cde6", X"c33707d6", X"f4d50d87", X"455a14ed",
						X"a9e3e905", X"fcefa3f8", X"676f02d9", X"8d2a4c8a",
						X"fffa3942", X"8771f681", X"6d9d6122", X"fde5380c",
						X"a4beea44", X"4bdecfa9", X"f6bb4b60", X"bebfbc70",
						X"289b7ec6", X"eaa127fa", X"d4ef3085", X"04881d05",
						X"d9d4d039", X"e6db99e5", X"1fa27cf8", X"c4ac5665",
						X"f4292244", X"432aff97", X"ab9423a7", X"fc93a039",
						X"655b59c3", X"8f0ccc92", X"ffeff47d", X"85845dd1",
						X"6fa87e4f", X"fe2ce6e0", X"a3014314", X"4e0811a1",
						X"f7537e82", X"bd3af235", X"2ad7d2bb", X"eb86d391");

signal M : uint512_t := (others => '0'); -- message
signal message_length : uint32_t := (others => '0');
signal data_counter : natural := 0;
signal iCounter  : natural := 0;
signal jCounter, jCounter_n : natural := 0;

constant a0 : uint32_t := X"67452301";
constant b0 : uint32_t := X"efcdab89";
constant c0 : uint32_t := X"98badcfe";
constant d0 : uint32_t := X"10325476";

signal A, An      : uint32_t := a0;
signal B, Bn      : uint32_t := b0;
signal C, Cn      : uint32_t := c0;
signal D, Dn      : uint32_t := d0;
signal xExpr      : uint32_t := to_unsigned(0, A'length);
signal g          : integer := 0;

type state_t is (idle,
                 loadMessage, 
                 padding,
                 rotate1,
                 xCalc1, 
                 bCalc1, 
                 xCalc2, 
                 bCalc2,
                 xCalc3, 
                 bCalc3,
                 xCalc4, 
                 bCalc4,
                 lastCalc,
                 rotate2,
                 finish,
                 storeData);

signal state, state_n : state_t;

function leftrotate(x: in uint32_t; c: in uint8_t) return uint32_t is
    begin
        return SHIFT_LEFT(x, to_integer(c));
    end function leftrotate;
    
    function endianness(x: in uint32_t) return uint32_t is
    begin
        return x(7 downto 0) & 
               x(15 downto 8) &
               x(23 downto 16) &
               x(31 downto 24);
    end function endianness;

begin
    main: process(reset, clk)
    begin
        if (reset = '1') then
            state <= idle;
            jCounter <= 0;
        elsif (rising_edge(clk)) then
            state <= state_n;
            jCounter <= jCounter_n;
            A <= An;
            B <= Bn;
            C <= Cn;
            D <= Dn;
        end if;
    end process main;

    fsm: process(state, start, jCounter, data_counter, iCounter, message_length)
    begin
        state_n <= state;
        idleOut <= '0';
        case state is
            when idle =>
                idleOut <= '1';
                if (start = '1' and enable = '1') then
                    state_n <= loadMessage;
                
                end if;

            when loadMessage => 
                if (data_counter >= message_length) then
                    state_n <= padding;
                end if;

            when padding =>
                state_n <= rotate1; 

            when rotate1 => --endianness of input message needs to be swapped
                state_n <= xCalc1;

            when xCalc1 =>
                state_n <= bCalc1;

            when bCalc1 =>
                if (jCounter = 15) then
                    state_n <= xCalc2;
                else
                    state_n <= xCalc1;
                end if;

            when xCalc2 =>
                state_n <= bCalc2;

            when bCalc2 =>
                if (jCounter = 31) then
                    state_n <= xCalc3;
                else
                    state_n <= xCalc2;
                end if;

            when xCalc3 =>
                state_n <= bCalc3;

            when bCalc3 =>
                if (jCounter = 47) then
                    state_n <= xCalc4;
                else
                    state_n <= xCalc3;
                end if;

            when xCalc4 =>
                state_n <= bCalc4;

            when bCalc4 =>
                if (jCounter = 63) then
                    state_n <= lastCalc;
                else
                    state_n <= xCalc4;
                end if;

            when lastCalc =>
                state_n <= rotate2;

            when rotate2 =>
                state_n <= finish;

            when finish =>
                if (start = '1') then
                    state_n <= storeData;
                end if;

            when storeData =>
                if (iCounter = 4) then
                    state_n <= idle;
                end if;

            when others => null;
        end case;
    end process fsm;

    calc: process(reset, clk, state, data_counter, jCounter)
    begin
        if (reset = '0') then
            if(rising_edge(clk)) then

                case state is

                    when loadMessage =>
                        message_length <= unsigned(data_in);
                        M(data_counter to data_counter+31) <= unsigned(data_in);
                        if (data_counter < message_length) then
                            data_counter <= data_counter + 32;
                        end if;

                    when padding =>
                        M(to_integer(message_length)) <= '1';
                        M(to_integer(message_length+1) to 447) <= (others => '0');
                        M(448 to 511) <= endianness(message_length) & "00000000000000000000000000000000";

                    when rotate1 => 
                        for i in 0 to 15 loop
                            M(32*i to 32*i+31) <= endianness(M(32*i to 32*i+31));
                        end loop;

                    when bCalc1 | bCalc2 | bCalc3 | bCalc4 =>
                        An <= D;
                        Bn <= B + leftrotate(A + xExpr + K(jCounter) + M(g to g+31), s(jCounter)); 
                        Cn <= B;
                        Dn <= C;
                        jCounter_n <= jCounter + 1;

                    when xCalc1 =>
                        xExpr <= (Bn and Cn) or (not Bn and Dn);
                        g <= 32*jCounter_n;

                    when xCalc2 =>
                        xExpr <= (Dn and Bn) or (not Dn and Cn);
                        g <= 32*((5*jCounter_n + 1) mod 16);

                    when xCalc3 =>
                        xExpr <= Bn xor Cn xor Dn;
                        g <= 32*((3*jCounter_n + 5) mod 16);

                    when xCalc4 =>
                        xExpr <= Cn xor (Bn or not Dn);
                        g <= 32*((7*jCounter_n) mod 16);

                    when lastCalc =>
                        An  <= An + a0;
                        Bn <= Bn + b0;
                        Cn <= Cn + c0;
                        Dn <= Dn + d0;

                    when rotate2 =>
                        An <= endianness(An);
                        Bn <= endianness(Bn);
                        Cn <= endianness(Cn);
                        Dn <= endianness(Dn);

                    when finish =>
                        done <= '1';

                    when storeData =>
                        case iCounter is
                            when 0 => data_out <= std_logic_vector(A);
                            when 1 => data_out <= std_logic_vector(B);
                            when 2 => data_out <= std_logic_vector(C);
                            when 3 => data_out <= std_logic_vector(D);
                            when others => null;
                        end case;
                        iCounter <= iCounter + 1;
                        done <= '0';

                    when others => null;
                end case;
            end if;
        end if;
    end process calc;

end Behavioral;