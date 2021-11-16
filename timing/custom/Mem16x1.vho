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

-- DATE "11/17/2021 05:52:29"

-- 
-- Device: Altera EP3C10E144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY IEEE, cycloneiii;
LIBRARY altera;
USE IEEE.std_logic_1164.all;
USE altera.altera_primitives_components.all;
USE cycloneiii.cycloneiii_components.all;

ENTITY 	Mem16x1 IS
    PORT (
	clk : IN std_logic;
	load : IN std_logic;
	clear : IN std_logic;
	D : IN std_logic_vector(15 DOWNTO 0);
	Q : OUT std_logic_vector(15 DOWNTO 0)
	);
END Mem16x1;

ARCHITECTURE structure OF Mem16x1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[9]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \Q~344_combout\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \Q[0]~345_combout\ : std_logic;
SIGNAL \Q[0]~reg0_q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \Q~346_combout\ : std_logic;
SIGNAL \Q[1]~reg0_q\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \Q~347_combout\ : std_logic;
SIGNAL \Q[2]~reg0_q\ : std_logic;
SIGNAL \Q~348_combout\ : std_logic;
SIGNAL \Q[3]~reg0_q\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \Q~349_combout\ : std_logic;
SIGNAL \Q[4]~reg0_q\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \Q~350_combout\ : std_logic;
SIGNAL \Q[5]~reg0_q\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \Q~351_combout\ : std_logic;
SIGNAL \Q[6]~reg0_q\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \Q~352_combout\ : std_logic;
SIGNAL \Q[7]~reg0_q\ : std_logic;
SIGNAL \D[8]~input_o\ : std_logic;
SIGNAL \Q~353_combout\ : std_logic;
SIGNAL \Q[8]~reg0_q\ : std_logic;
SIGNAL \Q~354_combout\ : std_logic;
SIGNAL \Q[9]~reg0_q\ : std_logic;
SIGNAL \D[10]~input_o\ : std_logic;
SIGNAL \Q~355_combout\ : std_logic;
SIGNAL \Q[10]~reg0_q\ : std_logic;
SIGNAL \D[11]~input_o\ : std_logic;
SIGNAL \Q~356_combout\ : std_logic;
SIGNAL \Q[11]~reg0_q\ : std_logic;
SIGNAL \D[12]~input_o\ : std_logic;
SIGNAL \Q~357_combout\ : std_logic;
SIGNAL \Q[12]~reg0_q\ : std_logic;
SIGNAL \D[13]~input_o\ : std_logic;
SIGNAL \Q~358_combout\ : std_logic;
SIGNAL \Q[13]~reg0_q\ : std_logic;
SIGNAL \D[14]~input_o\ : std_logic;
SIGNAL \Q~359_combout\ : std_logic;
SIGNAL \Q[14]~reg0_q\ : std_logic;
SIGNAL \D[15]~input_o\ : std_logic;
SIGNAL \Q~360_combout\ : std_logic;
SIGNAL \Q[15]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_load <= load;
ww_clear <= clear;
ww_D <= D;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

\D[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(9),
	o => \D[9]~input_o\);

\Q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(0));

\Q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(1));

\Q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(2));

\Q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(3));

\Q[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(4));

\Q[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(5));

\Q[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(6));

\Q[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(7));

\Q[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(8));

\Q[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(9));

\Q[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(10));

\Q[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(11));

\Q[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(12));

\Q[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(13));

\Q[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(14));

\Q[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(15));

\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

\D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

\Q~344\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~344_combout\ = \D[0]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D[0]~input_o\,
	datad => \clear~input_o\,
	combout => \Q~344_combout\);

\load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

\Q[0]~345\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q[0]~345_combout\ = \clear~input_o\ # \load~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \load~input_o\,
	combout => \Q[0]~345_combout\);

\Q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~344_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0]~reg0_q\);

\D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

\Q~346\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~346_combout\ = \D[1]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datad => \clear~input_o\,
	combout => \Q~346_combout\);

\Q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~346_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1]~reg0_q\);

\D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

\Q~347\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~347_combout\ = \D[2]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D[2]~input_o\,
	datad => \clear~input_o\,
	combout => \Q~347_combout\);

\Q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~347_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2]~reg0_q\);

\Q~348\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~348_combout\ = \D[3]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datad => \clear~input_o\,
	combout => \Q~348_combout\);

\Q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~348_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3]~reg0_q\);

\D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

\Q~349\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~349_combout\ = !\clear~input_o\ & \D[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \D[4]~input_o\,
	combout => \Q~349_combout\);

\Q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~349_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[4]~reg0_q\);

\D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

\Q~350\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~350_combout\ = !\clear~input_o\ & \D[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \D[5]~input_o\,
	combout => \Q~350_combout\);

\Q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~350_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[5]~reg0_q\);

\D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

\Q~351\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~351_combout\ = \D[6]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D[6]~input_o\,
	datad => \clear~input_o\,
	combout => \Q~351_combout\);

\Q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~351_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[6]~reg0_q\);

\D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

\Q~352\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~352_combout\ = !\clear~input_o\ & \D[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \D[7]~input_o\,
	combout => \Q~352_combout\);

\Q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~352_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[7]~reg0_q\);

\D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(8),
	o => \D[8]~input_o\);

\Q~353\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~353_combout\ = !\clear~input_o\ & \D[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \D[8]~input_o\,
	combout => \Q~353_combout\);

\Q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~353_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[8]~reg0_q\);

\Q~354\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~354_combout\ = \D[9]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[9]~input_o\,
	datad => \clear~input_o\,
	combout => \Q~354_combout\);

\Q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~354_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[9]~reg0_q\);

\D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(10),
	o => \D[10]~input_o\);

\Q~355\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~355_combout\ = !\clear~input_o\ & \D[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \D[10]~input_o\,
	combout => \Q~355_combout\);

\Q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~355_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[10]~reg0_q\);

\D[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(11),
	o => \D[11]~input_o\);

\Q~356\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~356_combout\ = !\clear~input_o\ & \D[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \D[11]~input_o\,
	combout => \Q~356_combout\);

\Q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~356_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[11]~reg0_q\);

\D[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(12),
	o => \D[12]~input_o\);

\Q~357\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~357_combout\ = !\clear~input_o\ & \D[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \D[12]~input_o\,
	combout => \Q~357_combout\);

\Q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~357_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[12]~reg0_q\);

\D[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(13),
	o => \D[13]~input_o\);

\Q~358\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~358_combout\ = \D[13]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D[13]~input_o\,
	datad => \clear~input_o\,
	combout => \Q~358_combout\);

\Q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~358_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[13]~reg0_q\);

\D[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(14),
	o => \D[14]~input_o\);

\Q~359\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~359_combout\ = \D[14]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D[14]~input_o\,
	datad => \clear~input_o\,
	combout => \Q~359_combout\);

\Q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~359_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[14]~reg0_q\);

\D[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(15),
	o => \D[15]~input_o\);

\Q~360\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~360_combout\ = !\clear~input_o\ & \D[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~input_o\,
	datad => \D[15]~input_o\,
	combout => \Q~360_combout\);

\Q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q~360_combout\,
	ena => \Q[0]~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[15]~reg0_q\);
END structure;


