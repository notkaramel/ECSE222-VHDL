library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_adder_tb is
--empty
end half_adder_tb;

-- Testbench for the half-adder
architecture tb of half_adder_tb is
	component half_adder
		port(
			a, b: in std_logic;
			s, c: out std_logic
		);
	end component;
	
signal a_in, b_in, s_out, c_out: std_logic;

begin
	-- device under test
	dut: half_adder port map(
		a => a_in,
		b => b_in,
		s => s_out,
		c => c_out
	);
	
	test: process
		begin
		report "Half Adder test";
		for i in std_logic range '0' to '1' loop
			a_in <= i;
			for j in std_logic range '0' to '1' loop
				b_in <= j;
				wait for 10 ns;
			end loop;
		end loop;
		report "FINISHED!";
		wait;
	end process;
end;
