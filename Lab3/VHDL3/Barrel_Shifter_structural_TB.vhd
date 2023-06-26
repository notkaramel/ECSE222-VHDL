library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BS_structural_TB is
-- empty
end BS_structural_TB;

architecture tb of BS_structural_TB is
	component antoine_phan_barrel_shifter_structural
		port(
			x: in std_logic_vector (3 downto 0);
			sel: in std_logic_vector (1 downto 0);
			y: out std_logic_vector (3 downto 0)
			);
		end component;
-- declare signals
signal sel_in: std_logic_vector (1 downto 0);
signal x_in, y_out: std_logic_vector (3 downto 0);

-- begin testbench
begin
	-- device under test
	dut: antoine_phan_barrel_shifter_structural
	port map(
				x => x_in,
				sel => sel_in,
				y => y_out);
				
	stimulate: process
		begin
		report "Barrel Shifter STRUCTURAL exhaustive test STARTS";
		for i_sel in 0 to 3 loop
			sel_in <= std_logic_vector(to_unsigned(i_sel,2));
			for i_x in 0 to 15 loop
				x_in <= std_logic_vector(to_unsigned(i_x,4));
				wait for 20 ns;
			end loop;
		end loop;
		report "Barrel Shifter STRUCTURAL exhaustive test FINISHED";
		wait;
	end process;
end;