library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_adder_behavioral_tb is
--empty
end bcd_adder_behavioral_tb;

architecture tb of bcd_adder_behavioral_tb is
	component bcd_adder_behavioral
		port(
			A, B: in std_logic_vector (3 downto 0);
			S: 	out std_logic_vector (3 downto 0);
			C: 	out std_logic);	
	end component;
	
	-- Testing variables
	signal A_in, B_in, S_out: 	std_logic_vector(3 downto 0);
	signal C_out:					std_logic;
	
begin
	dut: bcd_adder_behavioral
		port map(A_in, B_in, S_out, C_out);

--	This is how the test should proceed:
--	(+) The BCD adder only adds numbers from 0 to 9
--	(+) If the input is greater than 9, the output should be don't care '-'
--	(+) Exhaustive test produces all possible inputs as well as all possible output
	
	simulate: process	
	begin
		report "BEHAVIORAL One-digit BCD adder Exhaustive Test";
		for i in 0 to 15 loop
			A_in <= std_logic_vector(to_unsigned(i,4));
			for j in 0 to 15 loop
				B_in <= std_logic_vector(to_unsigned(j,4));
				wait for 10 ns;
			end loop;
		end loop;
		wait;
	end process;
end;