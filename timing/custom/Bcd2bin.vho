-- Copyright (C) 1991-2008 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 8.1 Build 163 10/28/2008 SJ Web Edition"

-- DATE "11/17/2021 02:13:52"

-- 
-- Device: Altera EP3C10E144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY IEEE, cycloneiii;
USE IEEE.std_logic_1164.all;
USE cycloneiii.cycloneiii_components.all;

ENTITY 	Bcd2bin IS
    PORT (
	BCD3 : IN std_logic_vector(3 DOWNTO 0);
	BCD2 : IN std_logic_vector(3 DOWNTO 0);
	BCD1 : IN std_logic_vector(3 DOWNTO 0);
	BCD0 : IN std_logic_vector(3 DOWNTO 0);
	BinaryOut : OUT std_logic_vector(15 DOWNTO 0)
	);
END Bcd2bin;

ARCHITECTURE structure OF Bcd2bin IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BCD3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BCD2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BCD1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BCD0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BinaryOut : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~987_combout\ : std_logic;
SIGNAL \Add1~241_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~988_combout\ : std_logic;
SIGNAL \Add1~242_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][7]~851_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][8]~852_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~991_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][10]~854_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][12]~993_combout\ : std_logic;
SIGNAL \BCD3[0]~input_o\ : std_logic;
SIGNAL \BCD1[3]~input_o\ : std_logic;
SIGNAL \BCD0[0]~input_o\ : std_logic;
SIGNAL \BCD0[1]~input_o\ : std_logic;
SIGNAL \BCD1[0]~input_o\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \BCD2[0]~input_o\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \BCD0[2]~input_o\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \BCD0[3]~input_o\ : std_logic;
SIGNAL \BCD1[2]~input_o\ : std_logic;
SIGNAL \Add1~238_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \BCD1[1]~input_o\ : std_logic;
SIGNAL \Add1~239_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add1~240_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \BCD2[3]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][6]~850_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][5]~849_combout\ : std_logic;
SIGNAL \BCD2[2]~input_o\ : std_logic;
SIGNAL \BCD2[1]~input_o\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \BCD3[2]~input_o\ : std_logic;
SIGNAL \BCD3[3]~input_o\ : std_logic;
SIGNAL \BCD3[1]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~989_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~990_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][9]~853_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~992_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][11]~combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][13]~994_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;

BEGIN

ww_BCD3 <= BCD3;
ww_BCD2 <= BCD2;
ww_BCD1 <= BCD1;
ww_BCD0 <= BCD0;
BinaryOut <= ww_BinaryOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = \BCD3[0]~input_o\ & (\BCD2[1]~input_o\ $ VCC) # !\BCD3[0]~input_o\ & \BCD2[1]~input_o\ & VCC
-- \Add0~37\ = CARRY(\BCD3[0]~input_o\ & \BCD2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datab => \BCD2[1]~input_o\,
	datad => VCC,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \BCD3[1]~input_o\ & (\BCD2[2]~input_o\ & \Add0~37\ & VCC # !\BCD2[2]~input_o\ & !\Add0~37\) # !\BCD3[1]~input_o\ & (\BCD2[2]~input_o\ & !\Add0~37\ # !\BCD2[2]~input_o\ & (\Add0~37\ # GND))
-- \Add0~39\ = CARRY(\BCD3[1]~input_o\ & !\BCD2[2]~input_o\ & !\Add0~37\ # !\BCD3[1]~input_o\ & (!\Add0~37\ # !\BCD2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[1]~input_o\,
	datab => \BCD2[2]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\Mult0|mult_core|romout[0][5]~987_combout\ $ \Mult1|mult_core|romout[0][5]~849_combout\ $ !\Add0~39\) # GND
-- \Add0~41\ = CARRY(\Mult0|mult_core|romout[0][5]~987_combout\ & (\Mult1|mult_core|romout[0][5]~849_combout\ # !\Add0~39\) # !\Mult0|mult_core|romout[0][5]~987_combout\ & \Mult1|mult_core|romout[0][5]~849_combout\ & !\Add0~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][5]~987_combout\,
	datab => \Mult1|mult_core|romout[0][5]~849_combout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = \Mult0|mult_core|romout[0][12]~993_combout\ & !\Add0~53\ # !\Mult0|mult_core|romout[0][12]~993_combout\ & (\Add0~53\ # GND)
-- \Add0~55\ = CARRY(!\Add0~53\ # !\Mult0|mult_core|romout[0][12]~993_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][12]~993_combout\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

\Mult0|mult_core|romout[0][5]~987\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~987_combout\ = \BCD3[0]~input_o\ $ \BCD3[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datad => \BCD3[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][5]~987_combout\);

\Add1~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~241_combout\ = \BCD1[3]~input_o\ & (!\BCD1[1]~input_o\ & !\BCD1[0]~input_o\ # !\BCD1[2]~input_o\) # !\BCD1[3]~input_o\ & \BCD1[1]~input_o\ & \BCD1[0]~input_o\ & \BCD1[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1[3]~input_o\,
	datab => \BCD1[1]~input_o\,
	datac => \BCD1[0]~input_o\,
	datad => \BCD1[2]~input_o\,
	combout => \Add1~241_combout\);

\Mult0|mult_core|romout[0][6]~988\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~988_combout\ = \BCD3[1]~input_o\ $ \BCD3[3]~input_o\ $ (\BCD3[0]~input_o\ & !\BCD3[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datab => \BCD3[2]~input_o\,
	datac => \BCD3[1]~input_o\,
	datad => \BCD3[3]~input_o\,
	combout => \Mult0|mult_core|romout[0][6]~988_combout\);

\Add1~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~242_combout\ = \BCD1[3]~input_o\ & \BCD1[2]~input_o\ & (\BCD1[1]~input_o\ # \BCD1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1[3]~input_o\,
	datab => \BCD1[1]~input_o\,
	datac => \BCD1[0]~input_o\,
	datad => \BCD1[2]~input_o\,
	combout => \Add1~242_combout\);

\Mult1|mult_core|romout[0][7]~851\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][7]~851_combout\ = \BCD2[2]~input_o\ $ (\BCD2[0]~input_o\ & \BCD2[3]~input_o\ & !\BCD2[1]~input_o\ # !\BCD2[0]~input_o\ & (\BCD2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2[2]~input_o\,
	datab => \BCD2[3]~input_o\,
	datac => \BCD2[0]~input_o\,
	datad => \BCD2[1]~input_o\,
	combout => \Mult1|mult_core|romout[0][7]~851_combout\);

\Mult1|mult_core|romout[0][8]~852\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][8]~852_combout\ = \BCD2[2]~input_o\ & (\BCD2[3]~input_o\ & (\BCD2[0]~input_o\ # \BCD2[1]~input_o\) # !\BCD2[3]~input_o\ & (!\BCD2[1]~input_o\)) # !\BCD2[2]~input_o\ & (\BCD2[3]~input_o\ $ (\BCD2[0]~input_o\ & \BCD2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2[2]~input_o\,
	datab => \BCD2[3]~input_o\,
	datac => \BCD2[0]~input_o\,
	datad => \BCD2[1]~input_o\,
	combout => \Mult1|mult_core|romout[0][8]~852_combout\);

\Mult0|mult_core|romout[0][9]~991\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~991_combout\ = \BCD3[0]~input_o\ # \BCD3[2]~input_o\ # \BCD3[1]~input_o\ # \BCD3[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datab => \BCD3[2]~input_o\,
	datac => \BCD3[1]~input_o\,
	datad => \BCD3[3]~input_o\,
	combout => \Mult0|mult_core|romout[0][9]~991_combout\);

\Mult1|mult_core|romout[0][10]~854\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][10]~854_combout\ = \BCD2[3]~input_o\ & (\BCD2[2]~input_o\ # \BCD2[0]~input_o\ & \BCD2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2[2]~input_o\,
	datab => \BCD2[3]~input_o\,
	datac => \BCD2[0]~input_o\,
	datad => \BCD2[1]~input_o\,
	combout => \Mult1|mult_core|romout[0][10]~854_combout\);

\Mult0|mult_core|romout[0][12]~993\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][12]~993_combout\ = \BCD3[0]~input_o\ & \BCD3[2]~input_o\ # !\BCD3[0]~input_o\ & (\BCD3[2]~input_o\ & \BCD3[1]~input_o\ # !\BCD3[2]~input_o\ & !\BCD3[1]~input_o\ & \BCD3[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datab => \BCD3[2]~input_o\,
	datac => \BCD3[1]~input_o\,
	datad => \BCD3[3]~input_o\,
	combout => \Mult0|mult_core|romout[0][12]~993_combout\);

\BCD3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD3(0),
	o => \BCD3[0]~input_o\);

\BCD1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD1(3),
	o => \BCD1[3]~input_o\);

\BinaryOut[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD0[0]~input_o\,
	devoe => ww_devoe,
	o => ww_BinaryOut(0));

\BinaryOut[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~28_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(1));

\BinaryOut[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~30_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(2));

\BinaryOut[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~32_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(3));

\BinaryOut[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~34_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(4));

\BinaryOut[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~36_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(5));

\BinaryOut[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~38_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(6));

\BinaryOut[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~40_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(7));

\BinaryOut[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~42_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(8));

\BinaryOut[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~44_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(9));

\BinaryOut[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~46_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(10));

\BinaryOut[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~48_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(11));

\BinaryOut[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~50_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(12));

\BinaryOut[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~52_combout\,
	devoe => ww_devoe,
	o => ww_BinaryOut(13));

\BinaryOut[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BinaryOut(14));

\BinaryOut[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BinaryOut(15));

\BCD0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD0(0),
	o => \BCD0[0]~input_o\);

\BCD0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD0(1),
	o => \BCD0[1]~input_o\);

\BCD1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD1(0),
	o => \BCD1[0]~input_o\);

\Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = \BCD0[1]~input_o\ & (\BCD1[0]~input_o\ $ VCC) # !\BCD0[1]~input_o\ & \BCD1[0]~input_o\ & VCC
-- \Add3~29\ = CARRY(\BCD0[1]~input_o\ & \BCD1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD0[1]~input_o\,
	datab => \BCD1[0]~input_o\,
	datad => VCC,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

\BCD2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD2(0),
	o => \BCD2[0]~input_o\);

\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = \BCD1[1]~input_o\ & (\BCD2[0]~input_o\ $ VCC) # !\BCD1[1]~input_o\ & \BCD2[0]~input_o\ & VCC
-- \Add2~27\ = CARRY(\BCD1[1]~input_o\ & \BCD2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1[1]~input_o\,
	datab => \BCD2[0]~input_o\,
	datad => VCC,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

\BCD0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD0(2),
	o => \BCD0[2]~input_o\);

\Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = \Add2~26_combout\ & (\BCD0[2]~input_o\ & \Add3~29\ & VCC # !\BCD0[2]~input_o\ & !\Add3~29\) # !\Add2~26_combout\ & (\BCD0[2]~input_o\ & !\Add3~29\ # !\BCD0[2]~input_o\ & (\Add3~29\ # GND))
-- \Add3~31\ = CARRY(\Add2~26_combout\ & !\BCD0[2]~input_o\ & !\Add3~29\ # !\Add2~26_combout\ & (!\Add3~29\ # !\BCD0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \BCD0[2]~input_o\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

\BCD0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD0(3),
	o => \BCD0[3]~input_o\);

\BCD1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD1(2),
	o => \BCD1[2]~input_o\);

\Add1~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~238_combout\ = \BCD1[0]~input_o\ $ \BCD1[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD1[0]~input_o\,
	datad => \BCD1[2]~input_o\,
	combout => \Add1~238_combout\);

\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = \Add0~36_combout\ & (\Add1~238_combout\ & \Add2~27\ & VCC # !\Add1~238_combout\ & !\Add2~27\) # !\Add0~36_combout\ & (\Add1~238_combout\ & !\Add2~27\ # !\Add1~238_combout\ & (\Add2~27\ # GND))
-- \Add2~29\ = CARRY(\Add0~36_combout\ & !\Add1~238_combout\ & !\Add2~27\ # !\Add0~36_combout\ & (!\Add2~27\ # !\Add1~238_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add1~238_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

\Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (\BCD0[3]~input_o\ $ \Add2~28_combout\ $ !\Add3~31\) # GND
-- \Add3~33\ = CARRY(\BCD0[3]~input_o\ & (\Add2~28_combout\ # !\Add3~31\) # !\BCD0[3]~input_o\ & \Add2~28_combout\ & !\Add3~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD0[3]~input_o\,
	datab => \Add2~28_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

\BCD1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD1(1),
	o => \BCD1[1]~input_o\);

\Add1~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~239_combout\ = \BCD1[3]~input_o\ $ \BCD1[1]~input_o\ $ (\BCD1[0]~input_o\ & \BCD1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1[3]~input_o\,
	datab => \BCD1[0]~input_o\,
	datac => \BCD1[1]~input_o\,
	datad => \BCD1[2]~input_o\,
	combout => \Add1~239_combout\);

\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add0~38_combout\ $ \Add1~239_combout\ $ !\Add2~29\) # GND
-- \Add2~31\ = CARRY(\Add0~38_combout\ & (\Add1~239_combout\ # !\Add2~29\) # !\Add0~38_combout\ & \Add1~239_combout\ & !\Add2~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Add1~239_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

\Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = \Add2~30_combout\ & !\Add3~33\ # !\Add2~30_combout\ & (\Add3~33\ # GND)
-- \Add3~35\ = CARRY(!\Add3~33\ # !\Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~30_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

\Add1~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~240_combout\ = \BCD1[3]~input_o\ & (\BCD1[1]~input_o\ & (!\BCD1[2]~input_o\) # !\BCD1[1]~input_o\ & !\BCD1[0]~input_o\ & \BCD1[2]~input_o\) # !\BCD1[3]~input_o\ & \BCD1[2]~input_o\ & (!\BCD1[1]~input_o\ # !\BCD1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1[3]~input_o\,
	datab => \BCD1[0]~input_o\,
	datac => \BCD1[1]~input_o\,
	datad => \BCD1[2]~input_o\,
	combout => \Add1~240_combout\);

\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = \Add0~40_combout\ & (\Add1~240_combout\ & \Add2~31\ & VCC # !\Add1~240_combout\ & !\Add2~31\) # !\Add0~40_combout\ & (\Add1~240_combout\ & !\Add2~31\ # !\Add1~240_combout\ & (\Add2~31\ # GND))
-- \Add2~33\ = CARRY(\Add0~40_combout\ & !\Add1~240_combout\ & !\Add2~31\ # !\Add0~40_combout\ & (!\Add2~31\ # !\Add1~240_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add1~240_combout\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

\Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = \Add2~32_combout\ & (\Add3~35\ $ GND) # !\Add2~32_combout\ & !\Add3~35\ & VCC
-- \Add3~37\ = CARRY(\Add2~32_combout\ & !\Add3~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

\BCD2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD2(3),
	o => \BCD2[3]~input_o\);

\Mult1|mult_core|romout[0][6]~850\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][6]~850_combout\ = \BCD2[1]~input_o\ $ (\BCD2[0]~input_o\ & !\BCD2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2[1]~input_o\,
	datab => \BCD2[0]~input_o\,
	datac => \BCD2[3]~input_o\,
	combout => \Mult1|mult_core|romout[0][6]~850_combout\);

\Mult1|mult_core|romout[0][5]~849\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][5]~849_combout\ = \BCD2[0]~input_o\ $ \BCD2[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD2[0]~input_o\,
	datac => \BCD2[3]~input_o\,
	combout => \Mult1|mult_core|romout[0][5]~849_combout\);

\BCD2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD2(2),
	o => \BCD2[2]~input_o\);

\BCD2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD2(1),
	o => \BCD2[1]~input_o\);

\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = \Mult0|mult_core|romout[0][6]~988_combout\ & (\Mult1|mult_core|romout[0][6]~850_combout\ & \Add0~41\ & VCC # !\Mult1|mult_core|romout[0][6]~850_combout\ & !\Add0~41\) # !\Mult0|mult_core|romout[0][6]~988_combout\ & 
-- (\Mult1|mult_core|romout[0][6]~850_combout\ & !\Add0~41\ # !\Mult1|mult_core|romout[0][6]~850_combout\ & (\Add0~41\ # GND))
-- \Add0~43\ = CARRY(\Mult0|mult_core|romout[0][6]~988_combout\ & !\Mult1|mult_core|romout[0][6]~850_combout\ & !\Add0~41\ # !\Mult0|mult_core|romout[0][6]~988_combout\ & (!\Add0~41\ # !\Mult1|mult_core|romout[0][6]~850_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~988_combout\,
	datab => \Mult1|mult_core|romout[0][6]~850_combout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Add1~241_combout\ $ \Add0~42_combout\ $ !\Add2~33\) # GND
-- \Add2~35\ = CARRY(\Add1~241_combout\ & (\Add0~42_combout\ # !\Add2~33\) # !\Add1~241_combout\ & \Add0~42_combout\ & !\Add2~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~241_combout\,
	datab => \Add0~42_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

\Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = \Add2~34_combout\ & !\Add3~37\ # !\Add2~34_combout\ & (\Add3~37\ # GND)
-- \Add3~39\ = CARRY(!\Add3~37\ # !\Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~34_combout\,
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

\BCD3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD3(2),
	o => \BCD3[2]~input_o\);

\BCD3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD3(3),
	o => \BCD3[3]~input_o\);

\BCD3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD3(1),
	o => \BCD3[1]~input_o\);

\Mult0|mult_core|romout[0][7]~989\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~989_combout\ = \BCD3[2]~input_o\ & (\BCD3[3]~input_o\ # !\BCD3[1]~input_o\) # !\BCD3[2]~input_o\ & (\BCD3[0]~input_o\ & (\BCD3[1]~input_o\ # !\BCD3[3]~input_o\) # !\BCD3[0]~input_o\ & !\BCD3[3]~input_o\ & \BCD3[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datab => \BCD3[2]~input_o\,
	datac => \BCD3[3]~input_o\,
	datad => \BCD3[1]~input_o\,
	combout => \Mult0|mult_core|romout[0][7]~989_combout\);

\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\Mult1|mult_core|romout[0][7]~851_combout\ $ \Mult0|mult_core|romout[0][7]~989_combout\ $ !\Add0~43\) # GND
-- \Add0~45\ = CARRY(\Mult1|mult_core|romout[0][7]~851_combout\ & (\Mult0|mult_core|romout[0][7]~989_combout\ # !\Add0~43\) # !\Mult1|mult_core|romout[0][7]~851_combout\ & \Mult0|mult_core|romout[0][7]~989_combout\ & !\Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][7]~851_combout\,
	datab => \Mult0|mult_core|romout[0][7]~989_combout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = \Add1~242_combout\ & (\Add0~44_combout\ & \Add2~35\ & VCC # !\Add0~44_combout\ & !\Add2~35\) # !\Add1~242_combout\ & (\Add0~44_combout\ & !\Add2~35\ # !\Add0~44_combout\ & (\Add2~35\ # GND))
-- \Add2~37\ = CARRY(\Add1~242_combout\ & !\Add0~44_combout\ & !\Add2~35\ # !\Add1~242_combout\ & (!\Add2~35\ # !\Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~242_combout\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

\Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = \Add2~36_combout\ & (\Add3~39\ $ GND) # !\Add2~36_combout\ & !\Add3~39\ & VCC
-- \Add3~41\ = CARRY(\Add2~36_combout\ & !\Add3~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~36_combout\,
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

\Mult0|mult_core|romout[0][8]~990\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~990_combout\ = \BCD3[2]~input_o\ & (!\BCD3[3]~input_o\) # !\BCD3[2]~input_o\ & (\BCD3[0]~input_o\ & (!\BCD3[3]~input_o\ # !\BCD3[1]~input_o\) # !\BCD3[0]~input_o\ & (\BCD3[1]~input_o\ # \BCD3[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datab => \BCD3[2]~input_o\,
	datac => \BCD3[1]~input_o\,
	datad => \BCD3[3]~input_o\,
	combout => \Mult0|mult_core|romout[0][8]~990_combout\);

\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = \Mult1|mult_core|romout[0][8]~852_combout\ & (\Mult0|mult_core|romout[0][8]~990_combout\ & \Add0~45\ & VCC # !\Mult0|mult_core|romout[0][8]~990_combout\ & !\Add0~45\) # !\Mult1|mult_core|romout[0][8]~852_combout\ & 
-- (\Mult0|mult_core|romout[0][8]~990_combout\ & !\Add0~45\ # !\Mult0|mult_core|romout[0][8]~990_combout\ & (\Add0~45\ # GND))
-- \Add0~47\ = CARRY(\Mult1|mult_core|romout[0][8]~852_combout\ & !\Mult0|mult_core|romout[0][8]~990_combout\ & !\Add0~45\ # !\Mult1|mult_core|romout[0][8]~852_combout\ & (!\Add0~45\ # !\Mult0|mult_core|romout[0][8]~990_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][8]~852_combout\,
	datab => \Mult0|mult_core|romout[0][8]~990_combout\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = \Add0~46_combout\ & (\Add2~37\ $ GND) # !\Add0~46_combout\ & !\Add2~37\ & VCC
-- \Add2~39\ = CARRY(\Add0~46_combout\ & !\Add2~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~46_combout\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

\Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = \Add2~38_combout\ & !\Add3~41\ # !\Add2~38_combout\ & (\Add3~41\ # GND)
-- \Add3~43\ = CARRY(!\Add3~41\ # !\Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

\Mult1|mult_core|romout[0][9]~853\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][9]~853_combout\ = \BCD2[2]~input_o\ & !\BCD2[3]~input_o\ & (\BCD2[1]~input_o\) # !\BCD2[2]~input_o\ & \BCD2[3]~input_o\ & (!\BCD2[1]~input_o\ # !\BCD2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2[2]~input_o\,
	datab => \BCD2[3]~input_o\,
	datac => \BCD2[0]~input_o\,
	datad => \BCD2[1]~input_o\,
	combout => \Mult1|mult_core|romout[0][9]~853_combout\);

\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\Mult0|mult_core|romout[0][9]~991_combout\ $ \Mult1|mult_core|romout[0][9]~853_combout\ $ !\Add0~47\) # GND
-- \Add0~49\ = CARRY(\Mult0|mult_core|romout[0][9]~991_combout\ & (\Mult1|mult_core|romout[0][9]~853_combout\ # !\Add0~47\) # !\Mult0|mult_core|romout[0][9]~991_combout\ & \Mult1|mult_core|romout[0][9]~853_combout\ & !\Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][9]~991_combout\,
	datab => \Mult1|mult_core|romout[0][9]~853_combout\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = \Add0~48_combout\ & !\Add2~39\ # !\Add0~48_combout\ & (\Add2~39\ # GND)
-- \Add2~41\ = CARRY(!\Add2~39\ # !\Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~48_combout\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

\Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = \Add2~40_combout\ & (\Add3~43\ $ GND) # !\Add2~40_combout\ & !\Add3~43\ & VCC
-- \Add3~45\ = CARRY(\Add2~40_combout\ & !\Add3~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~40_combout\,
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

\Mult0|mult_core|romout[0][10]~992\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~992_combout\ = !\BCD3[0]~input_o\ & (\BCD3[2]~input_o\ # \BCD3[1]~input_o\ # \BCD3[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datab => \BCD3[2]~input_o\,
	datac => \BCD3[1]~input_o\,
	datad => \BCD3[3]~input_o\,
	combout => \Mult0|mult_core|romout[0][10]~992_combout\);

\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Mult1|mult_core|romout[0][10]~854_combout\ & (\Mult0|mult_core|romout[0][10]~992_combout\ & \Add0~49\ & VCC # !\Mult0|mult_core|romout[0][10]~992_combout\ & !\Add0~49\) # !\Mult1|mult_core|romout[0][10]~854_combout\ & 
-- (\Mult0|mult_core|romout[0][10]~992_combout\ & !\Add0~49\ # !\Mult0|mult_core|romout[0][10]~992_combout\ & (\Add0~49\ # GND))
-- \Add0~51\ = CARRY(\Mult1|mult_core|romout[0][10]~854_combout\ & !\Mult0|mult_core|romout[0][10]~992_combout\ & !\Add0~49\ # !\Mult1|mult_core|romout[0][10]~854_combout\ & (!\Add0~49\ # !\Mult0|mult_core|romout[0][10]~992_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][10]~854_combout\,
	datab => \Mult0|mult_core|romout[0][10]~992_combout\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = \Add0~50_combout\ & (\Add2~41\ $ GND) # !\Add0~50_combout\ & !\Add2~41\ & VCC
-- \Add2~43\ = CARRY(\Add0~50_combout\ & !\Add2~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

\Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = \Add2~42_combout\ & !\Add3~45\ # !\Add2~42_combout\ & (\Add3~45\ # GND)
-- \Add3~47\ = CARRY(!\Add3~45\ # !\Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~42_combout\,
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

\Mult0|mult_core|romout[0][11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][11]~combout\ = \BCD3[0]~input_o\ & (\BCD3[1]~input_o\) # !\BCD3[0]~input_o\ & !\BCD3[1]~input_o\ & (\BCD3[2]~input_o\ # \BCD3[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datab => \BCD3[2]~input_o\,
	datac => \BCD3[1]~input_o\,
	datad => \BCD3[3]~input_o\,
	combout => \Mult0|mult_core|romout[0][11]~combout\);

\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = \Mult0|mult_core|romout[0][11]~combout\ & (\Add0~51\ $ GND) # !\Mult0|mult_core|romout[0][11]~combout\ & !\Add0~51\ & VCC
-- \Add0~53\ = CARRY(\Mult0|mult_core|romout[0][11]~combout\ & !\Add0~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][11]~combout\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = \Add0~52_combout\ & !\Add2~43\ # !\Add0~52_combout\ & (\Add2~43\ # GND)
-- \Add2~45\ = CARRY(!\Add2~43\ # !\Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~52_combout\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

\Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = \Add2~44_combout\ & (\Add3~47\ $ GND) # !\Add2~44_combout\ & !\Add3~47\ & VCC
-- \Add3~49\ = CARRY(\Add2~44_combout\ & !\Add3~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~44_combout\,
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = \Add0~54_combout\ & (\Add2~45\ $ GND) # !\Add0~54_combout\ & !\Add2~45\ & VCC
-- \Add2~47\ = CARRY(\Add0~54_combout\ & !\Add2~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

\Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = \Add2~46_combout\ & !\Add3~49\ # !\Add2~46_combout\ & (\Add3~49\ # GND)
-- \Add3~51\ = CARRY(!\Add3~49\ # !\Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~46_combout\,
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

\Mult0|mult_core|romout[0][13]~994\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][13]~994_combout\ = \BCD3[3]~input_o\ & (\BCD3[0]~input_o\ # \BCD3[2]~input_o\ # \BCD3[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3[0]~input_o\,
	datab => \BCD3[2]~input_o\,
	datac => \BCD3[1]~input_o\,
	datad => \BCD3[3]~input_o\,
	combout => \Mult0|mult_core|romout[0][13]~994_combout\);

\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = \Add0~55\ $ !\Mult0|mult_core|romout[0][13]~994_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[0][13]~994_combout\,
	cin => \Add0~55\,
	combout => \Add0~56_combout\);

\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = \Add2~47\ $ \Add0~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add0~56_combout\,
	cin => \Add2~47\,
	combout => \Add2~48_combout\);

\Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = \Add3~51\ $ !\Add2~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add2~48_combout\,
	cin => \Add3~51\,
	combout => \Add3~52_combout\);
END structure;


