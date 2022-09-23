library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX_testbench is
-- empty
end MUX_testbench;

-- Testbench for Behavioral structure (not showing Y)
architecture tb_struct of MUX_testbench is
    component antoinephan_jakobrylo_MUX2to1_structural
        port (A, B, S : in std_logic;
              	Y : out std_logic);
    end component;
    signal A_in,B_in,S_in : std_logic;
    signal Y_out : std_logic;

begin
    dut : antoinephan_jakobrylo_MUX2to1_structural
    port map (A => A_in,
              B => B_in,
              S => S_in,
              Y => Y_out);

    stimuli_struct : process
    begin
		for i in 0 to 1 loop
			if i = 0 then S_in <= '0';
			else S_in <= '1';
			end if;
			for j in 0 to 1 loop
				if j = 0 then A_in <= '0';
				else A_in <= '1';
				end if;
				for k in 0 to 1 loop
					if k = 0 then B_in <= '0';
					else B_in <= '1';
					end if;
					wait for 10 ns;
				end loop;
			end loop;
		end loop;
		report "Structural Test Complete";

      wait;  
    end process;

end tb_struct;

-- Testbench for Behavioral structure (works well)
architecture tb_behave of MUX_testbench is

	component antoinephan_jakobrylo_MUX2to1_behavioral
        	port (A, B, S : in std_logic;
              	Y : out std_logic);
    	end component;

    signal A_in,B_in,S_in : std_logic;
    signal Y_out : std_logic;

begin
    dut : antoinephan_jakobrylo_MUX2to1_behavioral
    port map (A => A_in,
              B => B_in,
              S => S_in,
              Y => Y_out);

    stimuli_behavioral : process
    begin
		for i in 0 to 1 loop
			if i = 0 then S_in <= '0';
			else S_in <= '1';
			end if;
			for j in 0 to 1 loop
				if j = 0 then A_in <= '0';
				else A_in <= '1';
				end if;
				for k in 0 to 1 loop
					if k = 0 then B_in <= '0';
					else B_in <= '1';
					end if;
					wait for 10 ns;
				end loop;
			end loop;
		end loop;
		report "Behavioral Test Complete";
      wait;  
    end process;
end tb_behave;

-- Testbench for Behavioral structure (works well)
architecture tb_behave of MUX_testbench is

	component antoinephan_jakobrylo_MUX2to1_behavioral
        	port (A, B, S : in std_logic;
              	Y : out std_logic);
    	end component;

    signal A_in,B_in,S_in : std_logic;
    signal Y_out : std_logic;

begin
    dut : antoinephan_jakobrylo_MUX2to1_behavioral
    port map (A => A_in,
              B => B_in,
              S => S_in,
              Y => Y_out);

    stimuli_behavioral : process
    begin
		for i in 0 to 1 loop
			if i = 0 then S_in <= '0';
			else S_in <= '1';
			end if;
			for j in 0 to 1 loop
				if j = 0 then A_in <= '0';
				else A_in <= '1';
				end if;
				for k in 0 to 1 loop
					if k = 0 then B_in <= '0';
					else B_in <= '1';
					end if;
					wait for 10 ns;
				end loop;
			end loop;
		end loop;
		report "Behavioral Test Complete";
      wait;  
    end process;
end tb_behave;