library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rca_behavioral_tb is
--empty
end rca_behavioral_tb;

-- Testbench for the half-adder
architecture tb of rca_behavioral_tb is
	component rca_behavioral
		port(
			A, B: in std_logic_vector (3 downto 0);
			S: 	out std_logic_vector (4 downto 0)
		);
	end component;
	
	SIGNAL A_in, B_in: 	std_logic_vector (3 downto 0);
	SIGNAL S_out: 			std_logic_vector (4 downto 0);

begin
	-- device under test
	DUT: rca_behavioral
		port map(A_in, B_in, S_out);
	
	Simuli: process
	begin
		report "BEHAVIORAL RCA test";
		for i in 0 to 15 loop --2^4(bit width)-1 = 15
			A_in <= std_logic_vector(to_unsigned(i,4));
			for j in 0 to 15 loop
				B_in <= std_logic_vector(to_unsigned(j,4));
				wait for 10 ns;
			end loop;
		end loop;
		report "FINISHED!";
		wait;
	end process;
end;
