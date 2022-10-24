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
	 
	  -- Function that takes in i as integer, return std_logic value
		function to_std_logic(i : integer) return std_logic is
		begin
			if i = 0 then return '0';
			elsif (i = 1) then return '1';
			end if;
			return 'X';
		end function;
		
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
	-- S as logical 0 and 1, and then 'X'
		for i in 0 to 2 loop
			S_in <= to_std_logic(i);
			for j in 0 to 2 loop
				A_in <= to_std_logic(j);
				for k in 0 to 2 loop
					B_in <= to_std_logic(k);
					wait for 10 ns;
				end loop;
			end loop;
		end loop;		
		report "Behavioral Test Complete"; -- print complete to terminal

      wait;  
    end process;

end tb;

