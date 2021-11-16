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

-- DATE "11/17/2021 01:13:05"

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

ENTITY 	SpecialShift4X4Bit IS
    PORT (
	clock : IN std_logic;
	enable : IN std_logic;
	clear : IN std_logic;
	data_in : IN std_logic_vector(3 DOWNTO 0);
	data_out0 : OUT std_logic_vector(3 DOWNTO 0);
	data_out1 : OUT std_logic_vector(3 DOWNTO 0);
	data_out2 : OUT std_logic_vector(3 DOWNTO 0);
	data_out3 : OUT std_logic_vector(3 DOWNTO 0)
	);
END SpecialShift4X4Bit;

ARCHITECTURE structure OF SpecialShift4X4Bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_data_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_out0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_out1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_out2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_out3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out0[0]~output_o\ : std_logic;
SIGNAL \data_out0[1]~output_o\ : std_logic;
SIGNAL \data_out0[2]~output_o\ : std_logic;
SIGNAL \data_out0[3]~output_o\ : std_logic;
SIGNAL \data_out1[0]~output_o\ : std_logic;
SIGNAL \data_out1[1]~output_o\ : std_logic;
SIGNAL \data_out1[2]~output_o\ : std_logic;
SIGNAL \data_out1[3]~output_o\ : std_logic;
SIGNAL \data_out2[0]~output_o\ : std_logic;
SIGNAL \data_out2[1]~output_o\ : std_logic;
SIGNAL \data_out2[2]~output_o\ : std_logic;
SIGNAL \data_out2[3]~output_o\ : std_logic;
SIGNAL \data_out3[0]~output_o\ : std_logic;
SIGNAL \data_out3[1]~output_o\ : std_logic;
SIGNAL \data_out3[2]~output_o\ : std_logic;
SIGNAL \data_out3[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data0~104_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \data0[0]~105_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \data0~106_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data0~107_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data0~108_combout\ : std_logic;
SIGNAL \data1~80_combout\ : std_logic;
SIGNAL \data1~81_combout\ : std_logic;
SIGNAL \data1~82_combout\ : std_logic;
SIGNAL \data1~83_combout\ : std_logic;
SIGNAL \data2~80_combout\ : std_logic;
SIGNAL \data2~81_combout\ : std_logic;
SIGNAL \data2~82_combout\ : std_logic;
SIGNAL \data2~83_combout\ : std_logic;
SIGNAL \data3~80_combout\ : std_logic;
SIGNAL \data3~81_combout\ : std_logic;
SIGNAL \data3~82_combout\ : std_logic;
SIGNAL \data3~83_combout\ : std_logic;
SIGNAL data0 : std_logic_vector(3 DOWNTO 0);
SIGNAL data1 : std_logic_vector(3 DOWNTO 0);
SIGNAL data2 : std_logic_vector(3 DOWNTO 0);
SIGNAL data3 : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_enable <= enable;
ww_clear <= clear;
ww_data_in <= data_in;
data_out0 <= ww_data_out0;
data_out1 <= ww_data_out1;
data_out2 <= ww_data_out2;
data_out3 <= ww_data_out3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\data_out0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data0(0),
	devoe => ww_devoe,
	o => \data_out0[0]~output_o\);

\data_out0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data0(1),
	devoe => ww_devoe,
	o => \data_out0[1]~output_o\);

\data_out0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data0(2),
	devoe => ww_devoe,
	o => \data_out0[2]~output_o\);

\data_out0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data0(3),
	devoe => ww_devoe,
	o => \data_out0[3]~output_o\);

\data_out1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(0),
	devoe => ww_devoe,
	o => \data_out1[0]~output_o\);

\data_out1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(1),
	devoe => ww_devoe,
	o => \data_out1[1]~output_o\);

\data_out1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(2),
	devoe => ww_devoe,
	o => \data_out1[2]~output_o\);

\data_out1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data1(3),
	devoe => ww_devoe,
	o => \data_out1[3]~output_o\);

\data_out2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data2(0),
	devoe => ww_devoe,
	o => \data_out2[0]~output_o\);

\data_out2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data2(1),
	devoe => ww_devoe,
	o => \data_out2[1]~output_o\);

\data_out2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data2(2),
	devoe => ww_devoe,
	o => \data_out2[2]~output_o\);

\data_out2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data2(3),
	devoe => ww_devoe,
	o => \data_out2[3]~output_o\);

\data_out3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data3(0),
	devoe => ww_devoe,
	o => \data_out3[0]~output_o\);

\data_out3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data3(1),
	devoe => ww_devoe,
	o => \data_out3[1]~output_o\);

\data_out3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data3(2),
	devoe => ww_devoe,
	o => \data_out3[2]~output_o\);

\data_out3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data3(3),
	devoe => ww_devoe,
	o => \data_out3[3]~output_o\);

\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

\data_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

\data0~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data0~104_combout\ = !\clear~input_o\ & \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \data_in[0]~input_o\,
	combout => \data0~104_combout\);

\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\data0[0]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data0[0]~105_combout\ = \clear~input_o\ # \enable~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \enable~input_o\,
	combout => \data0[0]~105_combout\);

\data0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data0~104_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data0(0));

\data_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

\data0~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data0~106_combout\ = \data_in[1]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	datad => \clear~input_o\,
	combout => \data0~106_combout\);

\data0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data0~106_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data0(1));

\data_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

\data0~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data0~107_combout\ = !\clear~input_o\ & \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => \data_in[2]~input_o\,
	combout => \data0~107_combout\);

\data0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data0~107_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data0(2));

\data_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

\data0~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data0~108_combout\ = \data_in[3]~input_o\ & !\clear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	datad => \clear~input_o\,
	combout => \data0~108_combout\);

\data0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data0~108_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data0(3));

\data1~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data1~80_combout\ = !\clear~input_o\ & data0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data0(0),
	combout => \data1~80_combout\);

\data1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data1~80_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(0));

\data1~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data1~81_combout\ = !\clear~input_o\ & data0(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data0(1),
	combout => \data1~81_combout\);

\data1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data1~81_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(1));

\data1~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data1~82_combout\ = !\clear~input_o\ & data0(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data0(2),
	combout => \data1~82_combout\);

\data1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data1~82_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(2));

\data1~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data1~83_combout\ = !\clear~input_o\ & data0(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => data0(3),
	combout => \data1~83_combout\);

\data1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data1~83_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data1(3));

\data2~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data2~80_combout\ = !\clear~input_o\ & data1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data1(0),
	combout => \data2~80_combout\);

\data2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data2~80_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data2(0));

\data2~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data2~81_combout\ = !\clear~input_o\ & data1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data1(1),
	combout => \data2~81_combout\);

\data2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data2~81_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data2(1));

\data2~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data2~82_combout\ = !\clear~input_o\ & data1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data1(2),
	combout => \data2~82_combout\);

\data2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data2~82_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data2(2));

\data2~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data2~83_combout\ = !\clear~input_o\ & data1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data1(3),
	combout => \data2~83_combout\);

\data2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data2~83_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data2(3));

\data3~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data3~80_combout\ = !\clear~input_o\ & data2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data2(0),
	combout => \data3~80_combout\);

\data3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data3~80_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data3(0));

\data3~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data3~81_combout\ = !\clear~input_o\ & data2(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data2(1),
	combout => \data3~81_combout\);

\data3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data3~81_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data3(1));

\data3~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data3~82_combout\ = !\clear~input_o\ & data2(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datad => data2(2),
	combout => \data3~82_combout\);

\data3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data3~82_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data3(2));

\data3~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data3~83_combout\ = !\clear~input_o\ & data2(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => data2(3),
	combout => \data3~83_combout\);

\data3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data3~83_combout\,
	ena => \data0[0]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data3(3));

ww_data_out0(0) <= \data_out0[0]~output_o\;

ww_data_out0(1) <= \data_out0[1]~output_o\;

ww_data_out0(2) <= \data_out0[2]~output_o\;

ww_data_out0(3) <= \data_out0[3]~output_o\;

ww_data_out1(0) <= \data_out1[0]~output_o\;

ww_data_out1(1) <= \data_out1[1]~output_o\;

ww_data_out1(2) <= \data_out1[2]~output_o\;

ww_data_out1(3) <= \data_out1[3]~output_o\;

ww_data_out2(0) <= \data_out2[0]~output_o\;

ww_data_out2(1) <= \data_out2[1]~output_o\;

ww_data_out2(2) <= \data_out2[2]~output_o\;

ww_data_out2(3) <= \data_out2[3]~output_o\;

ww_data_out3(0) <= \data_out3[0]~output_o\;

ww_data_out3(1) <= \data_out3[1]~output_o\;

ww_data_out3(2) <= \data_out3[2]~output_o\;

ww_data_out3(3) <= \data_out3[3]~output_o\;
END structure;


