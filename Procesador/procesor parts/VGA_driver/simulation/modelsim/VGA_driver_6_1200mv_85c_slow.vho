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

-- DATE "05/26/2024 18:22:21"

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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA_driver IS
    PORT (
	clock_25MHz : IN std_logic;
	rst : IN std_logic;
	ena : IN std_logic;
	data_in : IN std_logic_vector(3 DOWNTO 0);
	red : OUT std_logic_vector(3 DOWNTO 0);
	green : OUT std_logic_vector(3 DOWNTO 0);
	blue : OUT std_logic_vector(3 DOWNTO 0);
	Hsync : OUT std_logic;
	Vsync : OUT std_logic;
	Ena_datain : OUT std_logic
	);
END VGA_driver;

-- Design Ports Information
-- red[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hsync	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vsync	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ena_datain	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_25MHz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA_driver IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_data_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Hsync : std_logic;
SIGNAL ww_Vsync : std_logic;
SIGNAL ww_Ena_datain : std_logic;
SIGNAL \clock_25MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ena~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Ena_datain~output_o\ : std_logic;
SIGNAL \clock_25MHz~input_o\ : std_logic;
SIGNAL \clock_25MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \ena~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \h_count~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \h_count~2_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \h_count~0_combout\ : std_logic;
SIGNAL \videoON~3_combout\ : std_logic;
SIGNAL \videoON~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \v_count~2_combout\ : std_logic;
SIGNAL \vertical_counter~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \v_count~3_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \v_count~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \v_count~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \v_count~0_combout\ : std_logic;
SIGNAL \videoON~1_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \videoON~2_combout\ : std_logic;
SIGNAL \videoON~4_combout\ : std_logic;
SIGNAL \video_on~combout\ : std_logic;
SIGNAL \RGB~0_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \rojo[1]~feeder_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \verde[0]~feeder_combout\ : std_logic;
SIGNAL \verde[1]~feeder_combout\ : std_logic;
SIGNAL \verde[2]~feeder_combout\ : std_logic;
SIGNAL \azul[0]~feeder_combout\ : std_logic;
SIGNAL \azul[1]~feeder_combout\ : std_logic;
SIGNAL \azul[2]~feeder_combout\ : std_logic;
SIGNAL \Horizontal_syncro~0_combout\ : std_logic;
SIGNAL \Horizontal_syncro~1_combout\ : std_logic;
SIGNAL \Hsync_aux~combout\ : std_logic;
SIGNAL \vertical_syncro~0_combout\ : std_logic;
SIGNAL \vertical_syncro~1_combout\ : std_logic;
SIGNAL \Vsync_aux~combout\ : std_logic;
SIGNAL verde : std_logic_vector(3 DOWNTO 0);
SIGNAL v_count : std_logic_vector(9 DOWNTO 0);
SIGNAL rojo : std_logic_vector(3 DOWNTO 0);
SIGNAL h_count : std_logic_vector(9 DOWNTO 0);
SIGNAL azul : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock_25MHz <= clock_25MHz;
ww_rst <= rst;
ww_ena <= ena;
ww_data_in <= data_in;
red <= ww_red;
green <= ww_green;
blue <= ww_blue;
Hsync <= ww_Hsync;
Vsync <= ww_Vsync;
Ena_datain <= ww_Ena_datain;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_25MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_25MHz~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\ena~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ena~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X41_Y12_N23
\red[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rojo(0),
	devoe => ww_devoe,
	o => \red[0]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\red[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rojo(1),
	devoe => ww_devoe,
	o => \red[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\red[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rojo(2),
	devoe => ww_devoe,
	o => \red[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\red[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rojo(3),
	devoe => ww_devoe,
	o => \red[3]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\green[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => verde(0),
	devoe => ww_devoe,
	o => \green[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\green[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => verde(1),
	devoe => ww_devoe,
	o => \green[1]~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\green[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => verde(2),
	devoe => ww_devoe,
	o => \green[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\green[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => verde(3),
	devoe => ww_devoe,
	o => \green[3]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\blue[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => azul(0),
	devoe => ww_devoe,
	o => \blue[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\blue[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => azul(1),
	devoe => ww_devoe,
	o => \blue[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\blue[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => azul(2),
	devoe => ww_devoe,
	o => \blue[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\blue[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => azul(3),
	devoe => ww_devoe,
	o => \blue[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\Hsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hsync_aux~combout\,
	devoe => ww_devoe,
	o => \Hsync~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\Vsync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vsync_aux~combout\,
	devoe => ww_devoe,
	o => \Vsync~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\Ena_datain~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \video_on~combout\,
	devoe => ww_devoe,
	o => \Ena_datain~output_o\);

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

-- Location: IOIBUF_X26_Y0_N15
\data_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G3
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

-- Location: IOIBUF_X0_Y14_N8
\ena~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: CLKCTRL_G2
\ena~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ena~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ena~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y9_N8
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

-- Location: FF_X26_Y9_N9
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

-- Location: LCCOMB_X26_Y9_N10
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

-- Location: FF_X26_Y9_N11
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

-- Location: LCCOMB_X26_Y9_N12
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

-- Location: FF_X26_Y9_N13
\h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(2));

-- Location: LCCOMB_X26_Y9_N14
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

-- Location: FF_X26_Y9_N15
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

-- Location: LCCOMB_X26_Y9_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!h_count(2) & (!h_count(0) & (!h_count(3) & !h_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(2),
	datab => h_count(0),
	datac => h_count(3),
	datad => h_count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X26_Y9_N16
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

-- Location: FF_X26_Y9_N17
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

-- Location: LCCOMB_X26_Y9_N28
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!h_count(4) & !h_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_count(4),
	datad => h_count(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y9_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (h_count(5) & (!\Add0~9\)) # (!h_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!h_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X26_Y9_N6
\h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~1_combout\ = (\Add0~10_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~10_combout\,
	combout => \h_count~1_combout\);

-- Location: FF_X26_Y9_N7
\h_count[5]\ : dffeas
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
	q => h_count(5));

-- Location: LCCOMB_X26_Y9_N20
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

-- Location: FF_X26_Y9_N21
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

-- Location: LCCOMB_X26_Y9_N22
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

-- Location: FF_X26_Y9_N23
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

-- Location: LCCOMB_X26_Y9_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (h_count(8) & (\Add0~15\ $ (GND))) # (!h_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((h_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X26_Y9_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = h_count(9) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X26_Y9_N30
\h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~2_combout\ = (\Add0~18_combout\ & (((!\Equal0~1_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~18_combout\,
	datad => \Equal0~1_combout\,
	combout => \h_count~2_combout\);

-- Location: FF_X26_Y9_N31
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

-- Location: LCCOMB_X26_Y9_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (h_count(9) & (h_count(8) & (!h_count(7) & h_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(9),
	datab => h_count(8),
	datac => h_count(7),
	datad => h_count(5),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X26_Y9_N4
\h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~0_combout\ = (\Add0~16_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~16_combout\,
	combout => \h_count~0_combout\);

-- Location: FF_X26_Y9_N5
\h_count[8]\ : dffeas
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
	q => h_count(8));

-- Location: LCCOMB_X26_Y11_N8
\videoON~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \videoON~3_combout\ = (h_count(9) & ((h_count(7)) # (h_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(7),
	datab => h_count(9),
	datad => h_count(8),
	combout => \videoON~3_combout\);

-- Location: LCCOMB_X26_Y11_N4
\videoON~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \videoON~0_combout\ = (h_count(4)) # ((h_count(5)) # ((h_count(6)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(4),
	datab => h_count(5),
	datac => h_count(6),
	datad => \Equal0~0_combout\,
	combout => \videoON~0_combout\);

-- Location: LCCOMB_X28_Y11_N10
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

-- Location: LCCOMB_X27_Y11_N0
\v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~2_combout\ = (\Add1~0_combout\) # (\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \v_count~2_combout\);

-- Location: LCCOMB_X27_Y11_N6
\vertical_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vertical_counter~0_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \ena~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \ena~input_o\,
	combout => \vertical_counter~0_combout\);

-- Location: FF_X27_Y11_N1
\v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(0));

-- Location: LCCOMB_X28_Y11_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (v_count(1) & (!\Add1~1\)) # (!v_count(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!v_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X27_Y11_N22
\v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~3_combout\ = (\Add1~2_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	datad => \Equal1~2_combout\,
	combout => \v_count~3_combout\);

-- Location: FF_X27_Y11_N23
\v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(1));

-- Location: LCCOMB_X28_Y11_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (v_count(2) & (\Add1~3\ $ (GND))) # (!v_count(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((v_count(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X27_Y11_N2
\v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~1_combout\ = (!\Equal1~2_combout\ & \Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~2_combout\,
	datad => \Add1~4_combout\,
	combout => \v_count~1_combout\);

-- Location: FF_X27_Y11_N3
\v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(2));

-- Location: LCCOMB_X28_Y11_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (v_count(3) & (!\Add1~5\)) # (!v_count(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!v_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X27_Y11_N10
\v_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~4_combout\ = (\Add1~6_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datad => \Equal1~2_combout\,
	combout => \v_count~4_combout\);

-- Location: FF_X27_Y11_N11
\v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(3));

-- Location: LCCOMB_X28_Y11_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (v_count(4) & (\Add1~7\ $ (GND))) # (!v_count(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((v_count(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X28_Y11_N19
\v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(4));

-- Location: LCCOMB_X28_Y11_N20
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (v_count(5) & (!\Add1~9\)) # (!v_count(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!v_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X28_Y11_N21
\v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(5));

-- Location: LCCOMB_X28_Y11_N22
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (v_count(6) & (\Add1~11\ $ (GND))) # (!v_count(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((v_count(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X28_Y11_N23
\v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(6));

-- Location: LCCOMB_X28_Y11_N24
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (v_count(7) & (!\Add1~13\)) # (!v_count(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!v_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X28_Y11_N25
\v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(7));

-- Location: LCCOMB_X28_Y11_N26
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (v_count(8) & (\Add1~15\ $ (GND))) # (!v_count(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((v_count(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X28_Y11_N27
\v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(8));

-- Location: LCCOMB_X28_Y11_N30
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!v_count(5) & (!v_count(7) & (!v_count(6) & v_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(5),
	datab => v_count(7),
	datac => v_count(6),
	datad => v_count(2),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X27_Y11_N16
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!v_count(1) & (v_count(0) & (v_count(3) & !v_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(1),
	datab => v_count(0),
	datac => v_count(3),
	datad => v_count(4),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X27_Y11_N18
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (v_count(9) & (!v_count(8) & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(9),
	datab => v_count(8),
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X28_Y11_N28
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\ $ (v_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => v_count(9),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X27_Y11_N24
\v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~0_combout\ = (!\Equal1~2_combout\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~2_combout\,
	datad => \Add1~18_combout\,
	combout => \v_count~0_combout\);

-- Location: FF_X27_Y11_N25
\v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \v_count~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \vertical_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(9));

-- Location: LCCOMB_X27_Y11_N30
\videoON~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \videoON~1_combout\ = (v_count(1)) # ((v_count(2)) # ((v_count(3)) # (v_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(1),
	datab => v_count(2),
	datac => v_count(3),
	datad => v_count(0),
	combout => \videoON~1_combout\);

-- Location: LCCOMB_X28_Y11_N4
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (v_count(6) & (v_count(5) & (v_count(8) & v_count(7))))

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
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X27_Y11_N28
\videoON~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \videoON~2_combout\ = (v_count(9)) # ((\LessThan5~0_combout\ & ((v_count(4)) # (\videoON~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(9),
	datab => v_count(4),
	datac => \videoON~1_combout\,
	datad => \LessThan5~0_combout\,
	combout => \videoON~2_combout\);

-- Location: LCCOMB_X26_Y11_N18
\videoON~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \videoON~4_combout\ = (\videoON~2_combout\) # ((\videoON~3_combout\ & ((h_count(8)) # (\videoON~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => \videoON~3_combout\,
	datac => \videoON~0_combout\,
	datad => \videoON~2_combout\,
	combout => \videoON~4_combout\);

-- Location: LCCOMB_X26_Y11_N0
video_on : cycloneiii_lcell_comb
-- Equation(s):
-- \video_on~combout\ = (!\rst~input_o\ & ((GLOBAL(\ena~inputclkctrl_outclk\) & ((!\videoON~4_combout\))) # (!GLOBAL(\ena~inputclkctrl_outclk\) & (\video_on~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \video_on~combout\,
	datac => \ena~inputclkctrl_outclk\,
	datad => \videoON~4_combout\,
	combout => \video_on~combout\);

-- Location: LCCOMB_X26_Y11_N24
\RGB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RGB~0_combout\ = (\ena~input_o\ & \video_on~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ena~input_o\,
	datad => \video_on~combout\,
	combout => \RGB~0_combout\);

-- Location: FF_X26_Y11_N25
\rojo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rojo(0));

-- Location: IOIBUF_X41_Y12_N15
\data_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X26_Y11_N2
\rojo[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rojo[1]~feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \rojo[1]~feeder_combout\);

-- Location: FF_X26_Y11_N3
\rojo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \rojo[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rojo(1));

-- Location: IOIBUF_X41_Y12_N8
\data_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X26_Y11_N9
\rojo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rojo(2));

-- Location: IOIBUF_X26_Y0_N1
\data_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X26_Y11_N27
\rojo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rojo(3));

-- Location: LCCOMB_X26_Y11_N28
\verde[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verde[0]~feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \verde[0]~feeder_combout\);

-- Location: FF_X26_Y11_N29
\verde[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \verde[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verde(0));

-- Location: LCCOMB_X26_Y11_N14
\verde[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verde[1]~feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \verde[1]~feeder_combout\);

-- Location: FF_X26_Y11_N15
\verde[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \verde[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verde(1));

-- Location: LCCOMB_X26_Y11_N12
\verde[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verde[2]~feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \verde[2]~feeder_combout\);

-- Location: FF_X26_Y11_N13
\verde[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \verde[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verde(2));

-- Location: FF_X26_Y11_N31
\verde[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verde(3));

-- Location: LCCOMB_X26_Y11_N16
\azul[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \azul[0]~feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \azul[0]~feeder_combout\);

-- Location: FF_X26_Y11_N17
\azul[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \azul[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => azul(0));

-- Location: LCCOMB_X26_Y11_N22
\azul[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \azul[1]~feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \azul[1]~feeder_combout\);

-- Location: FF_X26_Y11_N23
\azul[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \azul[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => azul(1));

-- Location: LCCOMB_X26_Y11_N20
\azul[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \azul[2]~feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \azul[2]~feeder_combout\);

-- Location: FF_X26_Y11_N21
\azul[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	d => \azul[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => azul(2));

-- Location: FF_X26_Y11_N11
\azul[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \RGB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => azul(3));

-- Location: LCCOMB_X27_Y9_N12
\Horizontal_syncro~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Horizontal_syncro~0_combout\ = (h_count(6) & (h_count(4) & (!\Equal0~0_combout\ & h_count(5)))) # (!h_count(6) & (!h_count(5) & ((\Equal0~0_combout\) # (!h_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(4),
	datab => h_count(6),
	datac => \Equal0~0_combout\,
	datad => h_count(5),
	combout => \Horizontal_syncro~0_combout\);

-- Location: LCCOMB_X27_Y9_N22
\Horizontal_syncro~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Horizontal_syncro~1_combout\ = ((h_count(8)) # ((\Horizontal_syncro~0_combout\) # (!h_count(7)))) # (!h_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(9),
	datab => h_count(8),
	datac => h_count(7),
	datad => \Horizontal_syncro~0_combout\,
	combout => \Horizontal_syncro~1_combout\);

-- Location: LCCOMB_X27_Y9_N28
Hsync_aux : cycloneiii_lcell_comb
-- Equation(s):
-- \Hsync_aux~combout\ = (!\rst~input_o\ & ((GLOBAL(\ena~inputclkctrl_outclk\) & ((\Horizontal_syncro~1_combout\))) # (!GLOBAL(\ena~inputclkctrl_outclk\) & (\Hsync_aux~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \Hsync_aux~combout\,
	datac => \Horizontal_syncro~1_combout\,
	datad => \ena~inputclkctrl_outclk\,
	combout => \Hsync_aux~combout\);

-- Location: LCCOMB_X27_Y11_N20
\vertical_syncro~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vertical_syncro~0_combout\ = (v_count(9)) # ((v_count(2) & ((v_count(0)) # (v_count(1)))) # (!v_count(2) & ((!v_count(1)) # (!v_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datab => v_count(0),
	datac => v_count(1),
	datad => v_count(9),
	combout => \vertical_syncro~0_combout\);

-- Location: LCCOMB_X27_Y11_N8
\vertical_syncro~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vertical_syncro~1_combout\ = ((v_count(4)) # ((\vertical_syncro~0_combout\) # (!\LessThan5~0_combout\))) # (!v_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(3),
	datab => v_count(4),
	datac => \vertical_syncro~0_combout\,
	datad => \LessThan5~0_combout\,
	combout => \vertical_syncro~1_combout\);

-- Location: LCCOMB_X27_Y11_N12
Vsync_aux : cycloneiii_lcell_comb
-- Equation(s):
-- \Vsync_aux~combout\ = (!\rst~input_o\ & ((GLOBAL(\ena~inputclkctrl_outclk\) & (\vertical_syncro~1_combout\)) # (!GLOBAL(\ena~inputclkctrl_outclk\) & ((\Vsync_aux~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \vertical_syncro~1_combout\,
	datac => \ena~inputclkctrl_outclk\,
	datad => \Vsync_aux~combout\,
	combout => \Vsync_aux~combout\);

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

ww_Ena_datain <= \Ena_datain~output_o\;
END structure;


