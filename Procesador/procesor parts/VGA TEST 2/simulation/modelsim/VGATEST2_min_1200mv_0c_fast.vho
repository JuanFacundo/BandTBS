-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/31/2024 14:33:12"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA_generator IS
    PORT (
	clock_25MHz : IN std_logic;
	data_in : IN std_logic_vector(3 DOWNTO 0);
	rst : IN std_logic;
	ena : IN std_logic;
	red : OUT std_logic_vector(3 DOWNTO 0);
	green : OUT std_logic_vector(3 DOWNTO 0);
	blue : OUT std_logic_vector(3 DOWNTO 0);
	Hsync : OUT std_logic;
	Vsync : OUT std_logic;
	Hcount : OUT IEEE.NUMERIC_STD.unsigned(9 DOWNTO 0);
	Vcount : OUT IEEE.NUMERIC_STD.unsigned(9 DOWNTO 0);
	VideoOn : OUT std_logic
	);
END VGA_generator;

-- Design Ports Information
-- red[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hsync	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vsync	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[3]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[7]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[8]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hcount[9]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[3]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[8]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vcount[9]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VideoOn	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_25MHz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA_generator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_25MHz : std_logic;
SIGNAL ww_data_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Hsync : std_logic;
SIGNAL ww_Vsync : std_logic;
SIGNAL ww_Hcount : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Vcount : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VideoOn : std_logic;
SIGNAL \clock_25MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \red[0]~output_o\ : std_logic;
SIGNAL \red[1]~output_o\ : std_logic;
SIGNAL \red[2]~output_o\ : std_logic;
SIGNAL \red[3]~output_o\ : std_logic;
SIGNAL \green[0]~output_o\ : std_logic;
SIGNAL \green[1]~output_o\ : std_logic;
SIGNAL \green[2]~output_o\ : std_logic;
SIGNAL \green[3]~output_o\ : std_logic;
SIGNAL \blue[0]~output_o\ : std_logic;
SIGNAL \blue[1]~output_o\ : std_logic;
SIGNAL \blue[2]~output_o\ : std_logic;
SIGNAL \blue[3]~output_o\ : std_logic;
SIGNAL \Hsync~output_o\ : std_logic;
SIGNAL \Vsync~output_o\ : std_logic;
SIGNAL \Hcount[0]~output_o\ : std_logic;
SIGNAL \Hcount[1]~output_o\ : std_logic;
SIGNAL \Hcount[2]~output_o\ : std_logic;
SIGNAL \Hcount[3]~output_o\ : std_logic;
SIGNAL \Hcount[4]~output_o\ : std_logic;
SIGNAL \Hcount[5]~output_o\ : std_logic;
SIGNAL \Hcount[6]~output_o\ : std_logic;
SIGNAL \Hcount[7]~output_o\ : std_logic;
SIGNAL \Hcount[8]~output_o\ : std_logic;
SIGNAL \Hcount[9]~output_o\ : std_logic;
SIGNAL \Vcount[0]~output_o\ : std_logic;
SIGNAL \Vcount[1]~output_o\ : std_logic;
SIGNAL \Vcount[2]~output_o\ : std_logic;
SIGNAL \Vcount[3]~output_o\ : std_logic;
SIGNAL \Vcount[4]~output_o\ : std_logic;
SIGNAL \Vcount[5]~output_o\ : std_logic;
SIGNAL \Vcount[6]~output_o\ : std_logic;
SIGNAL \Vcount[7]~output_o\ : std_logic;
SIGNAL \Vcount[8]~output_o\ : std_logic;
SIGNAL \Vcount[9]~output_o\ : std_logic;
SIGNAL \VideoOn~output_o\ : std_logic;
SIGNAL \clock_25MHz~input_o\ : std_logic;
SIGNAL \clock_25MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \h_count~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \h_count~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \h_count~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \video_on_h~q\ : std_logic;
SIGNAL \v_count[0]~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \v_count[0]~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \v_count[4]~3_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \v_count[5]~4_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \v_count[7]~6_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \v_count[8]~7_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \v_count[9]~8_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \v_count[9]~2_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \v_count[6]~5_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \video_on_v~q\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \red[0]~reg0feeder_combout\ : std_logic;
SIGNAL \red[0]~reg0_q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \red~1_combout\ : std_logic;
SIGNAL \red[1]~reg0feeder_combout\ : std_logic;
SIGNAL \red[1]~reg0_q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \red~2_combout\ : std_logic;
SIGNAL \red[2]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \red~3_combout\ : std_logic;
SIGNAL \red[3]~reg0_q\ : std_logic;
SIGNAL \green[0]~reg0_q\ : std_logic;
SIGNAL \green[1]~reg0feeder_combout\ : std_logic;
SIGNAL \green[1]~reg0_q\ : std_logic;
SIGNAL \green[2]~reg0feeder_combout\ : std_logic;
SIGNAL \green[2]~reg0_q\ : std_logic;
SIGNAL \green[3]~reg0feeder_combout\ : std_logic;
SIGNAL \green[3]~reg0_q\ : std_logic;
SIGNAL \blue[0]~reg0_q\ : std_logic;
SIGNAL \blue[1]~reg0feeder_combout\ : std_logic;
SIGNAL \blue[1]~reg0_q\ : std_logic;
SIGNAL \blue[2]~reg0_q\ : std_logic;
SIGNAL \blue[3]~reg0feeder_combout\ : std_logic;
SIGNAL \blue[3]~reg0_q\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \Hsync_aux~q\ : std_logic;
SIGNAL \Hsync~reg0feeder_combout\ : std_logic;
SIGNAL \Hsync~reg0_q\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \Vsync_aux~q\ : std_logic;
SIGNAL \Vsync~reg0feeder_combout\ : std_logic;
SIGNAL \Vsync~reg0_q\ : std_logic;
SIGNAL \Hcount[0]~reg0_q\ : std_logic;
SIGNAL \Hcount[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Hcount[1]~reg0_q\ : std_logic;
SIGNAL \Hcount[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Hcount[2]~reg0_q\ : std_logic;
SIGNAL \Hcount[3]~reg0_q\ : std_logic;
SIGNAL \Hcount[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Hcount[4]~reg0_q\ : std_logic;
SIGNAL \Hcount[5]~reg0feeder_combout\ : std_logic;
SIGNAL \Hcount[5]~reg0_q\ : std_logic;
SIGNAL \Hcount[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Hcount[6]~reg0_q\ : std_logic;
SIGNAL \Hcount[7]~reg0feeder_combout\ : std_logic;
SIGNAL \Hcount[7]~reg0_q\ : std_logic;
SIGNAL \Hcount[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Hcount[8]~reg0_q\ : std_logic;
SIGNAL \Hcount[9]~reg0_q\ : std_logic;
SIGNAL \Vcount[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Vcount[0]~reg0_q\ : std_logic;
SIGNAL \Vcount[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Vcount[1]~reg0_q\ : std_logic;
SIGNAL \Vcount[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Vcount[2]~reg0_q\ : std_logic;
SIGNAL \Vcount[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Vcount[3]~reg0_q\ : std_logic;
SIGNAL \Vcount[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Vcount[4]~reg0_q\ : std_logic;
SIGNAL \Vcount[5]~reg0_q\ : std_logic;
SIGNAL \Vcount[6]~reg0_q\ : std_logic;
SIGNAL \Vcount[7]~reg0_q\ : std_logic;
SIGNAL \Vcount[8]~reg0_q\ : std_logic;
SIGNAL \Vcount[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Vcount[9]~reg0_q\ : std_logic;
SIGNAL \video_on~combout\ : std_logic;
SIGNAL \VideoOn~reg0feeder_combout\ : std_logic;
SIGNAL \VideoOn~reg0_q\ : std_logic;
SIGNAL v_count : std_logic_vector(9 DOWNTO 0);
SIGNAL h_count : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock_25MHz <= clock_25MHz;
ww_data_in <= data_in;
ww_rst <= rst;
ww_ena <= ena;
red <= ww_red;
green <= ww_green;
blue <= ww_blue;
Hsync <= ww_Hsync;
Vsync <= ww_Vsync;
Hcount <= IEEE.NUMERIC_STD.UNSIGNED(ww_Hcount);
Vcount <= IEEE.NUMERIC_STD.UNSIGNED(ww_Vcount);
VideoOn <= ww_VideoOn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_25MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_25MHz~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X41_Y21_N16
\red[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red[0]~reg0_q\,
	devoe => ww_devoe,
	o => \red[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\red[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red[1]~reg0_q\,
	devoe => ww_devoe,
	o => \red[1]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\red[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red[2]~reg0_q\,
	devoe => ww_devoe,
	o => \red[2]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\red[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red[3]~reg0_q\,
	devoe => ww_devoe,
	o => \red[3]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\green[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green[0]~reg0_q\,
	devoe => ww_devoe,
	o => \green[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\green[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green[1]~reg0_q\,
	devoe => ww_devoe,
	o => \green[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\green[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green[2]~reg0_q\,
	devoe => ww_devoe,
	o => \green[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\green[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green[3]~reg0_q\,
	devoe => ww_devoe,
	o => \green[3]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\blue[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue[0]~reg0_q\,
	devoe => ww_devoe,
	o => \blue[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\blue[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue[1]~reg0_q\,
	devoe => ww_devoe,
	o => \blue[1]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\blue[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue[2]~reg0_q\,
	devoe => ww_devoe,
	o => \blue[2]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\blue[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue[3]~reg0_q\,
	devoe => ww_devoe,
	o => \blue[3]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\Hsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hsync~reg0_q\,
	devoe => ww_devoe,
	o => \Hsync~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\Vsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vsync~reg0_q\,
	devoe => ww_devoe,
	o => \Vsync~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\Hcount[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[0]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\Hcount[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\Hcount[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\Hcount[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[3]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\Hcount[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[4]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\Hcount[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[5]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\Hcount[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[6]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\Hcount[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[7]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\Hcount[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[8]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\Hcount[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hcount[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Hcount[9]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\Vcount[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[0]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\Vcount[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\Vcount[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[2]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\Vcount[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\Vcount[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[4]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\Vcount[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[5]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\Vcount[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[6]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\Vcount[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[7]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\Vcount[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[8]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\Vcount[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vcount[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Vcount[9]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\VideoOn~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VideoOn~reg0_q\,
	devoe => ww_devoe,
	o => \VideoOn~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clock_25MHz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_25MHz,
	o => \clock_25MHz~input_o\);

-- Location: CLKCTRL_G4
\clock_25MHz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_25MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_25MHz~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y25_N22
\data_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X39_Y18_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (h_count(7) & (!\Add0~13\)) # (!h_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!h_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X39_Y18_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (h_count(8) & (\Add0~15\ $ (GND))) # (!h_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((h_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X39_Y18_N30
\h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~1_combout\ = (!\Equal0~2_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~2_combout\,
	datad => \Add0~16_combout\,
	combout => \h_count~1_combout\);

-- Location: IOIBUF_X0_Y14_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y20_N1
\ena~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: FF_X39_Y18_N31
\h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \h_count~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(8));

-- Location: LCCOMB_X39_Y18_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (h_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => h_count(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X39_Y18_N28
\h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~2_combout\ = (\Add0~18_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal0~2_combout\,
	combout => \h_count~2_combout\);

-- Location: FF_X39_Y18_N29
\h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \h_count~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(9));

-- Location: LCCOMB_X39_Y18_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = h_count(0) $ (VCC)
-- \Add0~1\ = CARRY(h_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X39_Y18_N9
\h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(0));

-- Location: LCCOMB_X39_Y18_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (h_count(1) & (!\Add0~1\)) # (!h_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!h_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X39_Y18_N11
\h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(1));

-- Location: LCCOMB_X39_Y18_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (h_count(2) & (\Add0~3\ $ (GND))) # (!h_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((h_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X38_Y18_N23
\h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => \Add0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(2));

-- Location: LCCOMB_X40_Y18_N30
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!h_count(5) & (!h_count(7) & (h_count(2) & h_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(5),
	datab => h_count(7),
	datac => h_count(2),
	datad => h_count(8),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X39_Y18_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (h_count(3) & (!\Add0~5\)) # (!h_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!h_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X39_Y18_N15
\h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(3));

-- Location: LCCOMB_X39_Y18_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (h_count(4) & (\Add0~7\ $ (GND))) # (!h_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((h_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X39_Y18_N17
\h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(4));

-- Location: LCCOMB_X39_Y18_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (h_count(1) & (h_count(0) & (h_count(3) & h_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(1),
	datab => h_count(0),
	datac => h_count(3),
	datad => h_count(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X39_Y18_N4
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!h_count(6) & (h_count(9) & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(6),
	datab => h_count(9),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X39_Y18_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (h_count(5) & (!\Add0~9\)) # (!h_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!h_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X38_Y18_N30
\h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~0_combout\ = (!\Equal0~2_combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~2_combout\,
	datad => \Add0~10_combout\,
	combout => \h_count~0_combout\);

-- Location: FF_X38_Y18_N31
\h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \h_count~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(5));

-- Location: LCCOMB_X39_Y18_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (h_count(6) & (\Add0~11\ $ (GND))) # (!h_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((h_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X39_Y18_N21
\h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(6));

-- Location: FF_X39_Y18_N23
\h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(7));

-- Location: LCCOMB_X39_Y18_N6
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ((!h_count(7) & !h_count(8))) # (!h_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(7),
	datac => h_count(8),
	datad => h_count(9),
	combout => \process_0~0_combout\);

-- Location: FF_X39_Y18_N7
video_on_h : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \process_0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_on_h~q\);

-- Location: LCCOMB_X38_Y18_N22
\v_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[0]~0_combout\ = (!h_count(8) & (h_count(7) & (!h_count(2) & h_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => h_count(7),
	datac => h_count(2),
	datad => h_count(5),
	combout => \v_count[0]~0_combout\);

-- Location: LCCOMB_X39_Y18_N0
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!h_count(6) & (h_count(9) & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_count(6),
	datac => h_count(9),
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X38_Y18_N2
\v_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[0]~1_combout\ = (\ena~input_o\ & (((\Equal0~3_combout\ & \v_count[0]~0_combout\)) # (!\process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena~input_o\,
	datab => \Equal0~3_combout\,
	datac => \v_count[0]~0_combout\,
	datad => \process_0~12_combout\,
	combout => \v_count[0]~1_combout\);

-- Location: LCCOMB_X37_Y18_N8
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = v_count(0) $ (VCC)
-- \Add1~1\ = CARRY(v_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X36_Y18_N16
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~0_combout\ & \process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \process_0~12_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X36_Y18_N17
\v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(0));

-- Location: LCCOMB_X37_Y18_N10
\Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (v_count(1) & (!\Add1~1\)) # (!v_count(1) & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!v_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X37_Y18_N28
\Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\process_0~12_combout\ & \Add1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~12_combout\,
	datad => \Add1~3_combout\,
	combout => \Add1~5_combout\);

-- Location: FF_X37_Y18_N29
\v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add1~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(1));

-- Location: LCCOMB_X37_Y18_N12
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (v_count(2) & (\Add1~4\ $ (GND))) # (!v_count(2) & (!\Add1~4\ & VCC))
-- \Add1~7\ = CARRY((v_count(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X37_Y18_N6
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\process_0~12_combout\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~12_combout\,
	datad => \Add1~6_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X37_Y18_N7
\v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(2));

-- Location: LCCOMB_X37_Y18_N14
\Add1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (v_count(3) & (!\Add1~7\)) # (!v_count(3) & ((\Add1~7\) # (GND)))
-- \Add1~10\ = CARRY((!\Add1~7\) # (!v_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X37_Y18_N0
\Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\Add1~9_combout\ & \process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~9_combout\,
	datad => \process_0~12_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X37_Y18_N1
\v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(3));

-- Location: LCCOMB_X37_Y18_N16
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (v_count(4) & (\Add1~10\ $ (GND))) # (!v_count(4) & (!\Add1~10\ & VCC))
-- \Add1~13\ = CARRY((v_count(4) & !\Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X37_Y18_N30
\v_count[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[4]~3_combout\ = (\v_count[0]~1_combout\ & (\Add1~12_combout\ & ((\v_count[9]~2_combout\)))) # (!\v_count[0]~1_combout\ & ((v_count(4)) # ((\Add1~12_combout\ & \v_count[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_count[0]~1_combout\,
	datab => \Add1~12_combout\,
	datac => v_count(4),
	datad => \v_count[9]~2_combout\,
	combout => \v_count[4]~3_combout\);

-- Location: FF_X37_Y18_N31
\v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count[4]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(4));

-- Location: LCCOMB_X37_Y18_N18
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (v_count(5) & (!\Add1~13\)) # (!v_count(5) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!v_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(5),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X37_Y18_N4
\v_count[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[5]~4_combout\ = (\v_count[0]~1_combout\ & (\Add1~14_combout\ & ((\v_count[9]~2_combout\)))) # (!\v_count[0]~1_combout\ & ((v_count(5)) # ((\Add1~14_combout\ & \v_count[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_count[0]~1_combout\,
	datab => \Add1~14_combout\,
	datac => v_count(5),
	datad => \v_count[9]~2_combout\,
	combout => \v_count[5]~4_combout\);

-- Location: FF_X37_Y18_N5
\v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count[5]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(5));

-- Location: LCCOMB_X37_Y18_N20
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (v_count(6) & (\Add1~15\ $ (GND))) # (!v_count(6) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((v_count(6) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(6),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X37_Y18_N22
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (v_count(7) & (!\Add1~17\)) # (!v_count(7) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!v_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(7),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X38_Y18_N0
\v_count[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[7]~6_combout\ = (\v_count[9]~2_combout\ & ((\Add1~18_combout\) # ((!\v_count[0]~1_combout\ & v_count(7))))) # (!\v_count[9]~2_combout\ & (!\v_count[0]~1_combout\ & (v_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_count[9]~2_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(7),
	datad => \Add1~18_combout\,
	combout => \v_count[7]~6_combout\);

-- Location: FF_X38_Y18_N1
\v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count[7]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(7));

-- Location: LCCOMB_X37_Y18_N24
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (v_count(8) & (\Add1~19\ $ (GND))) # (!v_count(8) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((v_count(8) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X38_Y18_N4
\v_count[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[8]~7_combout\ = (\v_count[9]~2_combout\ & ((\Add1~20_combout\) # ((!\v_count[0]~1_combout\ & v_count(8))))) # (!\v_count[9]~2_combout\ & (!\v_count[0]~1_combout\ & (v_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_count[9]~2_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(8),
	datad => \Add1~20_combout\,
	combout => \v_count[8]~7_combout\);

-- Location: FF_X38_Y18_N5
\v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count[8]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(8));

-- Location: LCCOMB_X37_Y18_N26
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = \Add1~21\ $ (v_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => v_count(9),
	cin => \Add1~21\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X38_Y18_N24
\v_count[9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[9]~8_combout\ = (\Add1~22_combout\ & ((\v_count[9]~2_combout\) # ((!\v_count[0]~1_combout\ & v_count(9))))) # (!\Add1~22_combout\ & (!\v_count[0]~1_combout\ & (v_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(9),
	datad => \v_count[9]~2_combout\,
	combout => \v_count[9]~8_combout\);

-- Location: FF_X38_Y18_N25
\v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count[9]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(9));

-- Location: LCCOMB_X38_Y18_N26
\process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (h_count(5) & h_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(5),
	datad => h_count(4),
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X38_Y18_N28
\process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = ((!h_count(2) & ((!h_count(1)) # (!h_count(0))))) # (!h_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(2),
	datab => h_count(0),
	datac => h_count(3),
	datad => h_count(1),
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X38_Y18_N8
\process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (!h_count(8) & (!h_count(6) & ((\process_0~9_combout\) # (!\process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => h_count(6),
	datac => \process_0~10_combout\,
	datad => \process_0~9_combout\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X37_Y18_N2
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (!v_count(4) & (!v_count(5) & ((!v_count(2)) # (!v_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(4),
	datab => v_count(3),
	datac => v_count(5),
	datad => v_count(2),
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X38_Y18_N16
\process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (!v_count(7) & (!v_count(8) & (!v_count(6) & \process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(7),
	datab => v_count(8),
	datac => v_count(6),
	datad => \process_0~7_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X38_Y18_N18
\process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (\process_0~0_combout\) # (((\process_0~11_combout\) # (\process_0~8_combout\)) # (!v_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => v_count(9),
	datac => \process_0~11_combout\,
	datad => \process_0~8_combout\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X38_Y18_N6
\v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[9]~2_combout\ = (\v_count[0]~0_combout\ & (\Equal0~3_combout\ & (\ena~input_o\ & \process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_count[0]~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \ena~input_o\,
	datad => \process_0~12_combout\,
	combout => \v_count[9]~2_combout\);

-- Location: LCCOMB_X38_Y18_N14
\v_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[6]~5_combout\ = (\v_count[9]~2_combout\ & ((\Add1~16_combout\) # ((!\v_count[0]~1_combout\ & v_count(6))))) # (!\v_count[9]~2_combout\ & (!\v_count[0]~1_combout\ & (v_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_count[9]~2_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(6),
	datad => \Add1~16_combout\,
	combout => \v_count[6]~5_combout\);

-- Location: FF_X38_Y18_N15
\v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count[6]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(6));

-- Location: LCCOMB_X38_Y18_N20
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (v_count(6) & (v_count(5) & (v_count(8) & v_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(6),
	datab => v_count(5),
	datac => v_count(8),
	datad => v_count(7),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X40_Y22_N20
\LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!\LessThan7~0_combout\ & !v_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan7~0_combout\,
	datad => v_count(9),
	combout => \LessThan7~1_combout\);

-- Location: FF_X40_Y22_N21
video_on_v : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \LessThan7~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_on_v~q\);

-- Location: LCCOMB_X40_Y22_N8
\red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~0_combout\ = (\data_in[0]~input_o\ & (\video_on_h~q\ & \video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \video_on_h~q\,
	datad => \video_on_v~q\,
	combout => \red~0_combout\);

-- Location: LCCOMB_X40_Y22_N0
\red[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red[0]~reg0feeder_combout\ = \red~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \red~0_combout\,
	combout => \red[0]~reg0feeder_combout\);

-- Location: FF_X40_Y22_N1
\red[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \red[0]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red[0]~reg0_q\);

-- Location: IOIBUF_X41_Y25_N15
\data_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X40_Y22_N28
\red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~1_combout\ = (\data_in[1]~input_o\ & (\video_on_h~q\ & \video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datab => \video_on_h~q\,
	datad => \video_on_v~q\,
	combout => \red~1_combout\);

-- Location: LCCOMB_X40_Y22_N30
\red[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red[1]~reg0feeder_combout\ = \red~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~1_combout\,
	combout => \red[1]~reg0feeder_combout\);

-- Location: FF_X40_Y22_N31
\red[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \red[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red[1]~reg0_q\);

-- Location: IOIBUF_X41_Y23_N8
\data_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X40_Y22_N26
\red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~2_combout\ = (\data_in[2]~input_o\ & (\video_on_h~q\ & \video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[2]~input_o\,
	datac => \video_on_h~q\,
	datad => \video_on_v~q\,
	combout => \red~2_combout\);

-- Location: FF_X40_Y22_N25
\red[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => \red~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red[2]~reg0_q\);

-- Location: IOIBUF_X41_Y21_N1
\data_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X40_Y22_N24
\red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~3_combout\ = (\data_in[3]~input_o\ & (\video_on_h~q\ & \video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \video_on_h~q\,
	datad => \video_on_v~q\,
	combout => \red~3_combout\);

-- Location: FF_X40_Y22_N7
\red[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => \red~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red[3]~reg0_q\);

-- Location: FF_X40_Y22_N9
\green[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \red~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green[0]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N22
\green[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green[1]~reg0feeder_combout\ = \red~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~1_combout\,
	combout => \green[1]~reg0feeder_combout\);

-- Location: FF_X40_Y22_N23
\green[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \green[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green[1]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N16
\green[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green[2]~reg0feeder_combout\ = \red~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \red~2_combout\,
	combout => \green[2]~reg0feeder_combout\);

-- Location: FF_X40_Y22_N17
\green[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \green[2]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green[2]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N18
\green[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green[3]~reg0feeder_combout\ = \red~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \red~3_combout\,
	combout => \green[3]~reg0feeder_combout\);

-- Location: FF_X40_Y22_N19
\green[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \green[3]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green[3]~reg0_q\);

-- Location: FF_X40_Y22_N29
\blue[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => \red~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue[0]~reg0_q\);

-- Location: LCCOMB_X39_Y22_N16
\blue[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue[1]~reg0feeder_combout\ = \red~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~1_combout\,
	combout => \blue[1]~reg0feeder_combout\);

-- Location: FF_X39_Y22_N17
\blue[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \blue[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue[1]~reg0_q\);

-- Location: FF_X40_Y22_N27
\blue[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \red~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue[2]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N4
\blue[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue[3]~reg0feeder_combout\ = \red~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \red~3_combout\,
	combout => \blue[3]~reg0feeder_combout\);

-- Location: FF_X40_Y22_N5
\blue[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \blue[3]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue[3]~reg0_q\);

-- Location: LCCOMB_X38_Y18_N12
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!h_count(8) & (h_count(7) & h_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => h_count(7),
	datad => h_count(9),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X40_Y18_N2
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (h_count(2)) # ((h_count(0) & (!h_count(6) & h_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(0),
	datab => h_count(6),
	datac => h_count(2),
	datad => h_count(1),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X36_Y18_N2
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (h_count(4) & ((h_count(3)) # (\process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(4),
	datac => h_count(3),
	datad => \process_0~2_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X36_Y18_N26
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ((h_count(6) & (h_count(5) & \process_0~3_combout\)) # (!h_count(6) & (!h_count(5) & !\process_0~3_combout\))) # (!\process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(6),
	datab => h_count(5),
	datac => \process_0~1_combout\,
	datad => \process_0~3_combout\,
	combout => \process_0~4_combout\);

-- Location: FF_X36_Y18_N27
Hsync_aux : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \process_0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hsync_aux~q\);

-- Location: LCCOMB_X40_Y18_N28
\Hsync~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Hsync~reg0feeder_combout\ = \Hsync_aux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hsync_aux~q\,
	combout => \Hsync~reg0feeder_combout\);

-- Location: FF_X40_Y18_N29
\Hsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Hsync~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hsync~reg0_q\);

-- Location: LCCOMB_X40_Y18_N12
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ((v_count(1) $ (!v_count(0))) # (!v_count(2))) # (!v_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(3),
	datab => v_count(2),
	datac => v_count(1),
	datad => v_count(0),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X40_Y22_N10
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (v_count(4)) # ((v_count(9)) # ((\process_0~5_combout\) # (!\LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(4),
	datab => v_count(9),
	datac => \LessThan7~0_combout\,
	datad => \process_0~5_combout\,
	combout => \process_0~6_combout\);

-- Location: FF_X40_Y22_N11
Vsync_aux : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \process_0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vsync_aux~q\);

-- Location: LCCOMB_X40_Y22_N2
\Vsync~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vsync~reg0feeder_combout\ = \Vsync_aux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Vsync_aux~q\,
	combout => \Vsync~reg0feeder_combout\);

-- Location: FF_X40_Y22_N3
\Vsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Vsync~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vsync~reg0_q\);

-- Location: FF_X39_Y18_N25
\Hcount[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => h_count(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[0]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N6
\Hcount[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Hcount[1]~reg0feeder_combout\ = h_count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => h_count(1),
	combout => \Hcount[1]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N7
\Hcount[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Hcount[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[1]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N16
\Hcount[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Hcount[2]~reg0feeder_combout\ = h_count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => h_count(2),
	combout => \Hcount[2]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N17
\Hcount[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Hcount[2]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[2]~reg0_q\);

-- Location: FF_X39_Y18_N27
\Hcount[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => h_count(3),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[3]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N10
\Hcount[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Hcount[4]~reg0feeder_combout\ = h_count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_count(4),
	combout => \Hcount[4]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N11
\Hcount[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Hcount[4]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[4]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N0
\Hcount[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Hcount[5]~reg0feeder_combout\ = h_count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_count(5),
	combout => \Hcount[5]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N1
\Hcount[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Hcount[5]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[5]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N18
\Hcount[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Hcount[6]~reg0feeder_combout\ = h_count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => h_count(6),
	combout => \Hcount[6]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N19
\Hcount[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Hcount[6]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[6]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N24
\Hcount[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Hcount[7]~reg0feeder_combout\ = h_count(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => h_count(7),
	combout => \Hcount[7]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N25
\Hcount[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Hcount[7]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[7]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N22
\Hcount[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Hcount[8]~reg0feeder_combout\ = h_count(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => h_count(8),
	combout => \Hcount[8]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N23
\Hcount[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Hcount[8]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[8]~reg0_q\);

-- Location: FF_X38_Y18_N27
\Hcount[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => h_count(9),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcount[9]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N20
\Vcount[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vcount[0]~reg0feeder_combout\ = v_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(0),
	combout => \Vcount[0]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N21
\Vcount[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Vcount[0]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[0]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N26
\Vcount[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vcount[1]~reg0feeder_combout\ = v_count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_count(1),
	combout => \Vcount[1]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N27
\Vcount[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Vcount[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[1]~reg0_q\);

-- Location: LCCOMB_X36_Y18_N12
\Vcount[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vcount[2]~reg0feeder_combout\ = v_count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(2),
	combout => \Vcount[2]~reg0feeder_combout\);

-- Location: FF_X36_Y18_N13
\Vcount[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Vcount[2]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[2]~reg0_q\);

-- Location: LCCOMB_X40_Y18_N4
\Vcount[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vcount[3]~reg0feeder_combout\ = v_count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(3),
	combout => \Vcount[3]~reg0feeder_combout\);

-- Location: FF_X40_Y18_N5
\Vcount[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Vcount[3]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[3]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N12
\Vcount[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vcount[4]~reg0feeder_combout\ = v_count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_count(4),
	combout => \Vcount[4]~reg0feeder_combout\);

-- Location: FF_X40_Y22_N13
\Vcount[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Vcount[4]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[4]~reg0_q\);

-- Location: FF_X38_Y18_N13
\Vcount[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => v_count(5),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[5]~reg0_q\);

-- Location: FF_X38_Y18_N17
\Vcount[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => v_count(6),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[6]~reg0_q\);

-- Location: FF_X38_Y18_N11
\Vcount[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => v_count(7),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[7]~reg0_q\);

-- Location: FF_X38_Y18_N21
\Vcount[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => v_count(8),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[8]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N14
\Vcount[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vcount[9]~reg0feeder_combout\ = v_count(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(9),
	combout => \Vcount[9]~reg0feeder_combout\);

-- Location: FF_X40_Y22_N15
\Vcount[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Vcount[9]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcount[9]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N6
video_on : cycloneiii_lcell_comb
-- Equation(s):
-- \video_on~combout\ = (\video_on_h~q\ & \video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \video_on_h~q\,
	datad => \video_on_v~q\,
	combout => \video_on~combout\);

-- Location: LCCOMB_X39_Y22_N30
\VideoOn~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VideoOn~reg0feeder_combout\ = \video_on~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \video_on~combout\,
	combout => \VideoOn~reg0feeder_combout\);

-- Location: FF_X39_Y22_N31
\VideoOn~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \VideoOn~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VideoOn~reg0_q\);

ww_red(0) <= \red[0]~output_o\;

ww_red(1) <= \red[1]~output_o\;

ww_red(2) <= \red[2]~output_o\;

ww_red(3) <= \red[3]~output_o\;

ww_green(0) <= \green[0]~output_o\;

ww_green(1) <= \green[1]~output_o\;

ww_green(2) <= \green[2]~output_o\;

ww_green(3) <= \green[3]~output_o\;

ww_blue(0) <= \blue[0]~output_o\;

ww_blue(1) <= \blue[1]~output_o\;

ww_blue(2) <= \blue[2]~output_o\;

ww_blue(3) <= \blue[3]~output_o\;

ww_Hsync <= \Hsync~output_o\;

ww_Vsync <= \Vsync~output_o\;

ww_Hcount(0) <= \Hcount[0]~output_o\;

ww_Hcount(1) <= \Hcount[1]~output_o\;

ww_Hcount(2) <= \Hcount[2]~output_o\;

ww_Hcount(3) <= \Hcount[3]~output_o\;

ww_Hcount(4) <= \Hcount[4]~output_o\;

ww_Hcount(5) <= \Hcount[5]~output_o\;

ww_Hcount(6) <= \Hcount[6]~output_o\;

ww_Hcount(7) <= \Hcount[7]~output_o\;

ww_Hcount(8) <= \Hcount[8]~output_o\;

ww_Hcount(9) <= \Hcount[9]~output_o\;

ww_Vcount(0) <= \Vcount[0]~output_o\;

ww_Vcount(1) <= \Vcount[1]~output_o\;

ww_Vcount(2) <= \Vcount[2]~output_o\;

ww_Vcount(3) <= \Vcount[3]~output_o\;

ww_Vcount(4) <= \Vcount[4]~output_o\;

ww_Vcount(5) <= \Vcount[5]~output_o\;

ww_Vcount(6) <= \Vcount[6]~output_o\;

ww_Vcount(7) <= \Vcount[7]~output_o\;

ww_Vcount(8) <= \Vcount[8]~output_o\;

ww_Vcount(9) <= \Vcount[9]~output_o\;

ww_VideoOn <= \VideoOn~output_o\;
END structure;


