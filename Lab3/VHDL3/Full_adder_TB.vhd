library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder_tb is
--empty
end full_adder_tb;

-- Testbench for the half-adder
architecture tb of full_adder_tb is
	component full_adder
		port(
			a,b, c_in: in std_logic;
			s,c_out: out std_logic
		);
	end component;
	
signal a_in, b_in, s_out, c_in_in, c_out_out: std_logic;

begin
	-- device under test
	dut: full_adder port map(
		a => a_in,
		b => b_in,
		c_in => c_in_in,
		s => s_out,
		c_out => c_out_out
	);
	
	test: process
		begin
		report "Full Adder test";
		for i in std_logic range '0' to '1' loop
			a_in <= i;
			for j in std_logic range '0' to '1' loop
				b_in <= j;
				for k in std_logic range '0' to '1' loop
					c_in_in <= k;
					wait for 10 ns;
				end loop;
			end loop;
		end loop;
		report "FINISHED!";
		wait;
	end process;
end;
