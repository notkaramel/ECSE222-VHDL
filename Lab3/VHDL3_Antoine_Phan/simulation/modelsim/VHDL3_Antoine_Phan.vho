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

-- DATE "10/02/2022 22:10:55"

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

ENTITY 	antoine_phan_barrel_shifter_behavioral IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	sel : IN std_logic_vector(1 DOWNTO 0);
	y : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END antoine_phan_barrel_shifter_behavioral;

-- Design Ports Information
-- y[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF antoine_phan_barrel_shifter_behavioral IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \MUX~0_combout\ : std_logic;
SIGNAL \MUX~1_combout\ : std_logic;
SIGNAL \MUX~2_combout\ : std_logic;
SIGNAL \MUX~3_combout\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;

BEGIN

ww_x <= x;
ww_sel <= sel;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;

-- Location: IOOBUF_X89_Y23_N22
\y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_y(0));

-- Location: IOOBUF_X89_Y23_N56
\y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX~1_combout\,
	devoe => ww_devoe,
	o => ww_y(1));

-- Location: IOOBUF_X89_Y23_N5
\y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX~2_combout\,
	devoe => ww_devoe,
	o => ww_y(2));

-- Location: IOOBUF_X89_Y23_N39
\y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX~3_combout\,
	devoe => ww_devoe,
	o => ww_y(3));

-- Location: IOIBUF_X89_Y21_N4
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX~0_combout\ = ( \x[3]~input_o\ & ( \x[0]~input_o\ & ( (!\sel[1]~input_o\) # ((!\sel[0]~input_o\ & ((\x[2]~input_o\))) # (\sel[0]~input_o\ & (\x[1]~input_o\))) ) ) ) # ( !\x[3]~input_o\ & ( \x[0]~input_o\ & ( (!\sel[1]~input_o\ & 
-- (((!\sel[0]~input_o\)))) # (\sel[1]~input_o\ & ((!\sel[0]~input_o\ & ((\x[2]~input_o\))) # (\sel[0]~input_o\ & (\x[1]~input_o\)))) ) ) ) # ( \x[3]~input_o\ & ( !\x[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (\sel[1]~input_o\ & 
-- ((!\sel[0]~input_o\ & ((\x[2]~input_o\))) # (\sel[0]~input_o\ & (\x[1]~input_o\)))) ) ) ) # ( !\x[3]~input_o\ & ( !\x[0]~input_o\ & ( (\sel[1]~input_o\ & ((!\sel[0]~input_o\ & ((\x[2]~input_o\))) # (\sel[0]~input_o\ & (\x[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	datae => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \MUX~0_combout\);

-- Location: LABCELL_X88_Y21_N36
\MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX~1_combout\ = ( \x[3]~input_o\ & ( \x[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\sel[0]~input_o\)) # (\x[1]~input_o\))) # (\sel[1]~input_o\ & (((!\sel[0]~input_o\) # (\x[2]~input_o\)))) ) ) ) # ( !\x[3]~input_o\ & ( \x[0]~input_o\ & ( (!\sel[1]~input_o\ 
-- & (((\sel[0]~input_o\)) # (\x[1]~input_o\))) # (\sel[1]~input_o\ & (((\sel[0]~input_o\ & \x[2]~input_o\)))) ) ) ) # ( \x[3]~input_o\ & ( !\x[0]~input_o\ & ( (!\sel[1]~input_o\ & (\x[1]~input_o\ & (!\sel[0]~input_o\))) # (\sel[1]~input_o\ & 
-- (((!\sel[0]~input_o\) # (\x[2]~input_o\)))) ) ) ) # ( !\x[3]~input_o\ & ( !\x[0]~input_o\ & ( (!\sel[1]~input_o\ & (\x[1]~input_o\ & (!\sel[0]~input_o\))) # (\sel[1]~input_o\ & (((\sel[0]~input_o\ & \x[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	datae => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \MUX~1_combout\);

-- Location: LABCELL_X88_Y21_N42
\MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX~2_combout\ = ( \x[3]~input_o\ & ( \x[0]~input_o\ & ( ((!\sel[0]~input_o\ & ((\x[2]~input_o\))) # (\sel[0]~input_o\ & (\x[1]~input_o\))) # (\sel[1]~input_o\) ) ) ) # ( !\x[3]~input_o\ & ( \x[0]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & 
-- ((\x[2]~input_o\))) # (\sel[0]~input_o\ & (\x[1]~input_o\)))) # (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) ) ) ) # ( \x[3]~input_o\ & ( !\x[0]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & ((\x[2]~input_o\))) # (\sel[0]~input_o\ & 
-- (\x[1]~input_o\)))) # (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) ) ) ) # ( !\x[3]~input_o\ & ( !\x[0]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & ((\x[2]~input_o\))) # (\sel[0]~input_o\ & (\x[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	datae => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \MUX~2_combout\);

-- Location: LABCELL_X88_Y21_N18
\MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX~3_combout\ = ( \x[3]~input_o\ & ( \x[0]~input_o\ & ( (!\sel[1]~input_o\ & (((!\sel[0]~input_o\) # (\x[2]~input_o\)))) # (\sel[1]~input_o\ & (((\sel[0]~input_o\)) # (\x[1]~input_o\))) ) ) ) # ( !\x[3]~input_o\ & ( \x[0]~input_o\ & ( (!\sel[1]~input_o\ 
-- & (((\sel[0]~input_o\ & \x[2]~input_o\)))) # (\sel[1]~input_o\ & (((\sel[0]~input_o\)) # (\x[1]~input_o\))) ) ) ) # ( \x[3]~input_o\ & ( !\x[0]~input_o\ & ( (!\sel[1]~input_o\ & (((!\sel[0]~input_o\) # (\x[2]~input_o\)))) # (\sel[1]~input_o\ & 
-- (\x[1]~input_o\ & (!\sel[0]~input_o\))) ) ) ) # ( !\x[3]~input_o\ & ( !\x[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\sel[0]~input_o\ & \x[2]~input_o\)))) # (\sel[1]~input_o\ & (\x[1]~input_o\ & (!\sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	datae => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \MUX~3_combout\);

-- Location: MLABCELL_X15_Y64_N3
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


