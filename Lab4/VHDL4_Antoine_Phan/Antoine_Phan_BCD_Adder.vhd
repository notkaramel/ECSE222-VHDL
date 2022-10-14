library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity bcd_adder is
	port(
		A, B: in std_logic_vector (3 downto 0);
		S: out std_logic_vector (3 downto 0);
		C: out std_logic
		);
end bcd_adder;
		
-- Behavioral description of the BCD Adder
-- Taken & edited a bit
architecture arch of bcd_adder is
	signal temp: std_logic_vector(4 downto 0);
	signal dont_care: std_logic_vector(3 downto 0) := "----";
begin
	process(A,B,temp)
	begin
		if (A > "1001" OR B > "1001") then
			S <= dont_care;
			C <= '-';
		else
			temp <= ('0' & A) + B;
			if temp < "01010" then
				C <= '0';
				S <= A + B;
			elsif temp > "01001" then
				C <= '1';
				S <= A + B + "0110";
			end if;
		end if;
	end process;
end;