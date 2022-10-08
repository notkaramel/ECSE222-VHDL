-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "10/08/2022 03:25:04"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcd_adder_structural IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : BUFFER std_logic_vector(3 DOWNTO 0);
	C : BUFFER std_logic
	);
END bcd_adder_structural;

-- Design Ports Information
-- S[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd_adder_structural IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \RCA1|FA1|HA1|s~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \RCA1|FA2|HA2|s~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \C_temp~0_combout\ : std_logic;
SIGNAL \RCA1|FA3|c_out~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \HA|s~combout\ : std_logic;
SIGNAL \RCA1|FA2|c_out~combout\ : std_logic;
SIGNAL \FA|HA2|s~combout\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \C_temp~1_combout\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \RCA1|FA2|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ALT_INV_C_temp~0_combout\ : std_logic;
SIGNAL \RCA1|FA3|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \RCA1|FA2|HA2|ALT_INV_s~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\RCA1|FA2|ALT_INV_c_out~combout\ <= NOT \RCA1|FA2|c_out~combout\;
\ALT_INV_C_temp~0_combout\ <= NOT \C_temp~0_combout\;
\RCA1|FA3|ALT_INV_c_out~combout\ <= NOT \RCA1|FA3|c_out~combout\;
\RCA1|FA2|HA2|ALT_INV_s~combout\ <= NOT \RCA1|FA2|HA2|s~combout\;

-- Location: IOOBUF_X89_Y20_N45
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA1|FA1|HA1|s~combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X89_Y23_N56
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HA|s~combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X89_Y20_N79
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA|HA2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X89_Y23_N39
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X89_Y20_N62
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C_temp~1_combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOIBUF_X89_Y21_N21
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: MLABCELL_X87_Y21_N0
\RCA1|FA1|HA1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|FA1|HA1|s~combout\ = ( !\A[0]~input_o\ & ( \B[0]~input_o\ ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \RCA1|FA1|HA1|s~combout\);

-- Location: IOIBUF_X89_Y21_N55
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X87_Y21_N39
\RCA1|FA2|HA2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|FA2|HA2|s~combout\ = !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000100011110111000010001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \RCA1|FA2|HA2|s~combout\);

-- Location: IOIBUF_X89_Y23_N21
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X87_Y21_N18
\C_temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C_temp~0_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[2]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) # (\B[2]~input_o\ & (!\A[2]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) ) ) # ( !\A[0]~input_o\ & ( 
-- \B[0]~input_o\ & ( (!\A[1]~input_o\ & (!\B[1]~input_o\ & (!\B[2]~input_o\ $ (\A[2]~input_o\)))) # (\A[1]~input_o\ & (\B[1]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\A[1]~input_o\ & 
-- (!\B[1]~input_o\ & (!\B[2]~input_o\ $ (\A[2]~input_o\)))) # (\A[1]~input_o\ & (\B[1]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\A[1]~input_o\ & (!\B[1]~input_o\ & (!\B[2]~input_o\ $ 
-- (\A[2]~input_o\)))) # (\A[1]~input_o\ & (\B[1]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000010010100001000001001010000100000100100001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \C_temp~0_combout\);

-- Location: MLABCELL_X87_Y21_N42
\RCA1|FA3|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|FA3|c_out~combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[2]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\) # (\A[2]~input_o\)) # (\A[1]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( 
-- \B[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[1]~input_o\ & (\A[2]~input_o\ & \B[1]~input_o\))) # (\B[2]~input_o\ & (((\A[1]~input_o\ & \B[1]~input_o\)) # (\A[2]~input_o\))) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[1]~input_o\ & 
-- (\A[2]~input_o\ & \B[1]~input_o\))) # (\B[2]~input_o\ & (((\A[1]~input_o\ & \B[1]~input_o\)) # (\A[2]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[1]~input_o\ & (\A[2]~input_o\ & \B[1]~input_o\))) # (\B[2]~input_o\ 
-- & (((\A[1]~input_o\ & \B[1]~input_o\)) # (\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100000101000101110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \RCA1|FA3|c_out~combout\);

-- Location: IOIBUF_X89_Y20_N95
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X87_Y21_N54
\HA|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \HA|s~combout\ = ( \B[3]~input_o\ & ( \A[3]~input_o\ & ( !\RCA1|FA2|HA2|s~combout\ ) ) ) # ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( !\RCA1|FA2|HA2|s~combout\ $ (((\C_temp~0_combout\ & !\RCA1|FA3|c_out~combout\))) ) ) ) # ( \B[3]~input_o\ & ( 
-- !\A[3]~input_o\ & ( !\RCA1|FA2|HA2|s~combout\ $ (((\C_temp~0_combout\ & !\RCA1|FA3|c_out~combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\A[3]~input_o\ & ( !\RCA1|FA2|HA2|s~combout\ $ (((!\RCA1|FA3|c_out~combout\) # (\C_temp~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000011110000111100110011000011110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RCA1|FA2|HA2|ALT_INV_s~combout\,
	datac => \ALT_INV_C_temp~0_combout\,
	datad => \RCA1|FA3|ALT_INV_c_out~combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \HA|s~combout\);

-- Location: MLABCELL_X87_Y21_N36
\RCA1|FA2|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|FA2|c_out~combout\ = ( \A[1]~input_o\ & ( ((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \RCA1|FA2|c_out~combout\);

-- Location: MLABCELL_X87_Y21_N30
\FA|HA2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA|HA2|s~combout\ = ( \RCA1|FA2|c_out~combout\ & ( \A[3]~input_o\ & ( !\B[2]~input_o\ $ (!\RCA1|FA2|HA2|s~combout\ $ (\A[2]~input_o\)) ) ) ) # ( !\RCA1|FA2|c_out~combout\ & ( \A[3]~input_o\ & ( (!\B[2]~input_o\ & ((!\RCA1|FA2|HA2|s~combout\ & 
-- (!\A[2]~input_o\ & \B[3]~input_o\)) # (\RCA1|FA2|HA2|s~combout\ & (\A[2]~input_o\)))) # (\B[2]~input_o\ & (!\RCA1|FA2|HA2|s~combout\ $ ((!\A[2]~input_o\)))) ) ) ) # ( \RCA1|FA2|c_out~combout\ & ( !\A[3]~input_o\ & ( (!\B[2]~input_o\ & (!\A[2]~input_o\ $ 
-- (((!\RCA1|FA2|HA2|s~combout\ & \B[3]~input_o\))))) # (\B[2]~input_o\ & ((!\RCA1|FA2|HA2|s~combout\ & (!\A[2]~input_o\ & \B[3]~input_o\)) # (\RCA1|FA2|HA2|s~combout\ & (\A[2]~input_o\)))) ) ) ) # ( !\RCA1|FA2|c_out~combout\ & ( !\A[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\A[2]~input_o\ & ((!\B[3]~input_o\) # (\RCA1|FA2|HA2|s~combout\)))) # (\B[2]~input_o\ & (!\A[2]~input_o\ $ (((!\RCA1|FA2|HA2|s~combout\ & \B[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000010110101000010110100100010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \RCA1|FA2|HA2|ALT_INV_s~combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \RCA1|FA2|ALT_INV_c_out~combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \FA|HA2|s~combout\);

-- Location: MLABCELL_X87_Y21_N9
\S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \B[3]~input_o\ & ( \A[3]~input_o\ & ( !\C_temp~0_combout\ $ (\RCA1|FA3|c_out~combout\) ) ) ) # ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( !\C_temp~0_combout\ $ (!\RCA1|FA3|c_out~combout\) ) ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ & ( 
-- !\C_temp~0_combout\ $ (!\RCA1|FA3|c_out~combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\A[3]~input_o\ & ( (\C_temp~0_combout\ & \RCA1|FA3|c_out~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010110100101101001011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C_temp~0_combout\,
	datac => \RCA1|FA3|ALT_INV_c_out~combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \S~0_combout\);

-- Location: MLABCELL_X87_Y21_N15
\C_temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C_temp~1_combout\ = ( \B[3]~input_o\ & ( \A[3]~input_o\ ) ) # ( !\B[3]~input_o\ & ( \A[3]~input_o\ & ( (!\C_temp~0_combout\) # (\RCA1|FA3|c_out~combout\) ) ) ) # ( \B[3]~input_o\ & ( !\A[3]~input_o\ & ( (!\C_temp~0_combout\) # (\RCA1|FA3|c_out~combout\) 
-- ) ) ) # ( !\B[3]~input_o\ & ( !\A[3]~input_o\ & ( (!\C_temp~0_combout\ & \RCA1|FA3|c_out~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101011111010111110101111101011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C_temp~0_combout\,
	datac => \RCA1|FA3|ALT_INV_c_out~combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \C_temp~1_combout\);

-- Location: LABCELL_X23_Y4_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


