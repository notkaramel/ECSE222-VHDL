library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX_testbench_behavioral is
-- empty
end MUX_testbench_behavioral;

-- Testbench for Behavioral structure (not showing Y)
architecture tb of MUX_testbench_behavioral is
	 -- Behavioral component
	 component antoinephan_jakobrylo_MUX2to1_behavioral
        	port (A, B, S : in std_logic;
              	Y : out std_logic);
    end component;
	 
	 --setting up signals
    signal A_in,B_in,S_in : std_logic;
    signal Y_out : std_logic;

begin				  
	-- Device Under Test: Behavioral design
	dut : antoinephan_jakobrylo_MUX2to1_behavioral
   port map (A => A_in,
              B => B_in,
              S => S_in,
              Y => Y_out);

    stimulate : process
    begin
		for i in std_logic range '0' to '1' loop
			S_in <= i;
			for j in std_logic range '0' to '1' loop
				A_in <= j;
				for k in std_logic range '0' to '1' loop
					B_in <= k;
					wait for 10 ns;
				end loop;
			end loop;
		end loop;
		report "Behavioral Test Complete";

      wait;  
    end process;

end tb;

