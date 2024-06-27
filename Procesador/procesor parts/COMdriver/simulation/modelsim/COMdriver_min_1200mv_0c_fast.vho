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

-- DATE "06/27/2024 18:58:54"

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

ENTITY 	COMdriver IS
    PORT (
	rst : IN std_logic;
	clk50M : IN std_logic;
	coord_x : IN std_logic_vector(7 DOWNTO 0);
	coord_y : IN std_logic_vector(7 DOWNTO 0);
	outSerial : OUT std_logic_vector(2 DOWNTO 0)
	);
END COMdriver;

-- Design Ports Information
-- outSerial[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSerial[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSerial[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50M	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_x[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_x[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_x[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_x[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_x[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_x[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_x[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_x[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_y[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_y[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_y[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_y[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_y[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_y[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_y[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coord_y[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF COMdriver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk50M : std_logic;
SIGNAL ww_coord_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_coord_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outSerial : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV|Clk_aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outSerial[0]~output_o\ : std_logic;
SIGNAL \outSerial[1]~output_o\ : std_logic;
SIGNAL \outSerial[2]~output_o\ : std_logic;
SIGNAL \clk50M~input_o\ : std_logic;
SIGNAL \clk50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIV|Add0~0_combout\ : std_logic;
SIGNAL \DIV|Add0~1\ : std_logic;
SIGNAL \DIV|Add0~3\ : std_logic;
SIGNAL \DIV|Add0~4_combout\ : std_logic;
SIGNAL \DIV|Add0~5\ : std_logic;
SIGNAL \DIV|Add0~6_combout\ : std_logic;
SIGNAL \DIV|Add0~7\ : std_logic;
SIGNAL \DIV|Add0~8_combout\ : std_logic;
SIGNAL \DIV|Add0~9\ : std_logic;
SIGNAL \DIV|Add0~10_combout\ : std_logic;
SIGNAL \DIV|counter~1_combout\ : std_logic;
SIGNAL \DIV|Add0~11\ : std_logic;
SIGNAL \DIV|Add0~12_combout\ : std_logic;
SIGNAL \DIV|counter~2_combout\ : std_logic;
SIGNAL \DIV|Add0~13\ : std_logic;
SIGNAL \DIV|Add0~14_combout\ : std_logic;
SIGNAL \DIV|counter~3_combout\ : std_logic;
SIGNAL \DIV|Add0~15\ : std_logic;
SIGNAL \DIV|Add0~16_combout\ : std_logic;
SIGNAL \DIV|Add0~17\ : std_logic;
SIGNAL \DIV|Add0~18_combout\ : std_logic;
SIGNAL \DIV|Add0~19\ : std_logic;
SIGNAL \DIV|Add0~20_combout\ : std_logic;
SIGNAL \DIV|counter~4_combout\ : std_logic;
SIGNAL \DIV|Equal0~1_combout\ : std_logic;
SIGNAL \DIV|Equal0~2_combout\ : std_logic;
SIGNAL \DIV|Add0~2_combout\ : std_logic;
SIGNAL \DIV|counter~0_combout\ : std_logic;
SIGNAL \DIV|Equal0~0_combout\ : std_logic;
SIGNAL \DIV|Clk_aux~0_combout\ : std_logic;
SIGNAL \DIV|Clk_aux~q\ : std_logic;
SIGNAL \DIV|Clk_aux~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \bit_counter~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \bit_counter~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \bit_counter~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \bit_counter~3_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \outSerial~0_combout\ : std_logic;
SIGNAL \outSerial[0]~reg0_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \send_aux~0_combout\ : std_logic;
SIGNAL \send_aux~q\ : std_logic;
SIGNAL \COM_X|bit_counter[2]~9_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[2]~11_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \COM_X|bit_counter[2]~6_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[0]~10_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[1]~7_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[2]~5_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[1]~8_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[0]~4_combout\ : std_logic;
SIGNAL \COM_X|sending~2_combout\ : std_logic;
SIGNAL \COM_X|sending~q\ : std_logic;
SIGNAL \coord_x[7]~input_o\ : std_logic;
SIGNAL \COM_X|shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \COM_X|data_out~5_combout\ : std_logic;
SIGNAL \coord_x[5]~input_o\ : std_logic;
SIGNAL \coord_x[6]~input_o\ : std_logic;
SIGNAL \COM_X|shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \coord_x[4]~input_o\ : std_logic;
SIGNAL \COM_X|data_out~0_combout\ : std_logic;
SIGNAL \COM_X|data_out~1_combout\ : std_logic;
SIGNAL \coord_x[3]~input_o\ : std_logic;
SIGNAL \coord_x[2]~input_o\ : std_logic;
SIGNAL \coord_x[1]~input_o\ : std_logic;
SIGNAL \coord_x[0]~input_o\ : std_logic;
SIGNAL \COM_X|data_out~2_combout\ : std_logic;
SIGNAL \COM_X|data_out~3_combout\ : std_logic;
SIGNAL \COM_X|data_out~4_combout\ : std_logic;
SIGNAL \COM_X|data_out~q\ : std_logic;
SIGNAL \coord_y[7]~input_o\ : std_logic;
SIGNAL \coord_y[5]~input_o\ : std_logic;
SIGNAL \coord_y[6]~input_o\ : std_logic;
SIGNAL \coord_y[4]~input_o\ : std_logic;
SIGNAL \COM_Y|data_out~0_combout\ : std_logic;
SIGNAL \COM_Y|data_out~1_combout\ : std_logic;
SIGNAL \coord_y[3]~input_o\ : std_logic;
SIGNAL \COM_Y|shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \coord_y[2]~input_o\ : std_logic;
SIGNAL \coord_y[1]~input_o\ : std_logic;
SIGNAL \COM_Y|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \coord_y[0]~input_o\ : std_logic;
SIGNAL \COM_Y|data_out~2_combout\ : std_logic;
SIGNAL \COM_Y|data_out~3_combout\ : std_logic;
SIGNAL \COM_Y|data_out~4_combout\ : std_logic;
SIGNAL \COM_Y|data_out~q\ : std_logic;
SIGNAL \COM_Y|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL bit_counter : std_logic_vector(9 DOWNTO 0);
SIGNAL \DIV|counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \COM_X|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \COM_X|bit_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIV|ALT_INV_Clk_aux~clkctrl_outclk\ : std_logic;
SIGNAL \COM_X|ALT_INV_data_out~5_combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk50M <= clk50M;
ww_coord_x <= coord_x;
ww_coord_y <= coord_y;
outSerial <= ww_outSerial;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50M~input_o\);

\DIV|Clk_aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV|Clk_aux~q\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\DIV|ALT_INV_Clk_aux~clkctrl_outclk\ <= NOT \DIV|Clk_aux~clkctrl_outclk\;
\COM_X|ALT_INV_data_out~5_combout\ <= NOT \COM_X|data_out~5_combout\;

-- Location: IOOBUF_X26_Y29_N23
\outSerial[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outSerial[0]~reg0_q\,
	devoe => ww_devoe,
	o => \outSerial[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\outSerial[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COM_X|data_out~q\,
	devoe => ww_devoe,
	o => \outSerial[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\outSerial[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COM_Y|data_out~q\,
	devoe => ww_devoe,
	o => \outSerial[2]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk50M~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50M,
	o => \clk50M~input_o\);

-- Location: CLKCTRL_G4
\clk50M~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y27_N8
\DIV|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~0_combout\ = \DIV|counter\(0) $ (VCC)
-- \DIV|Add0~1\ = CARRY(\DIV|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV|counter\(0),
	datad => VCC,
	combout => \DIV|Add0~0_combout\,
	cout => \DIV|Add0~1\);

-- Location: FF_X27_Y27_N9
\DIV|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(0));

-- Location: LCCOMB_X27_Y27_N10
\DIV|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~2_combout\ = (\DIV|counter\(1) & (!\DIV|Add0~1\)) # (!\DIV|counter\(1) & ((\DIV|Add0~1\) # (GND)))
-- \DIV|Add0~3\ = CARRY((!\DIV|Add0~1\) # (!\DIV|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|counter\(1),
	datad => VCC,
	cin => \DIV|Add0~1\,
	combout => \DIV|Add0~2_combout\,
	cout => \DIV|Add0~3\);

-- Location: LCCOMB_X27_Y27_N12
\DIV|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~4_combout\ = (\DIV|counter\(2) & (\DIV|Add0~3\ $ (GND))) # (!\DIV|counter\(2) & (!\DIV|Add0~3\ & VCC))
-- \DIV|Add0~5\ = CARRY((\DIV|counter\(2) & !\DIV|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(2),
	datad => VCC,
	cin => \DIV|Add0~3\,
	combout => \DIV|Add0~4_combout\,
	cout => \DIV|Add0~5\);

-- Location: FF_X27_Y27_N13
\DIV|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(2));

-- Location: LCCOMB_X27_Y27_N14
\DIV|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~6_combout\ = (\DIV|counter\(3) & (!\DIV|Add0~5\)) # (!\DIV|counter\(3) & ((\DIV|Add0~5\) # (GND)))
-- \DIV|Add0~7\ = CARRY((!\DIV|Add0~5\) # (!\DIV|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|counter\(3),
	datad => VCC,
	cin => \DIV|Add0~5\,
	combout => \DIV|Add0~6_combout\,
	cout => \DIV|Add0~7\);

-- Location: FF_X27_Y27_N15
\DIV|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(3));

-- Location: LCCOMB_X27_Y27_N16
\DIV|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~8_combout\ = (\DIV|counter\(4) & (\DIV|Add0~7\ $ (GND))) # (!\DIV|counter\(4) & (!\DIV|Add0~7\ & VCC))
-- \DIV|Add0~9\ = CARRY((\DIV|counter\(4) & !\DIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|counter\(4),
	datad => VCC,
	cin => \DIV|Add0~7\,
	combout => \DIV|Add0~8_combout\,
	cout => \DIV|Add0~9\);

-- Location: FF_X27_Y27_N17
\DIV|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(4));

-- Location: LCCOMB_X27_Y27_N18
\DIV|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~10_combout\ = (\DIV|counter\(5) & (!\DIV|Add0~9\)) # (!\DIV|counter\(5) & ((\DIV|Add0~9\) # (GND)))
-- \DIV|Add0~11\ = CARRY((!\DIV|Add0~9\) # (!\DIV|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|counter\(5),
	datad => VCC,
	cin => \DIV|Add0~9\,
	combout => \DIV|Add0~10_combout\,
	cout => \DIV|Add0~11\);

-- Location: LCCOMB_X27_Y27_N4
\DIV|counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~1_combout\ = (\DIV|Add0~10_combout\ & ((!\DIV|Equal0~0_combout\) # (!\DIV|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~2_combout\,
	datac => \DIV|Equal0~0_combout\,
	datad => \DIV|Add0~10_combout\,
	combout => \DIV|counter~1_combout\);

-- Location: FF_X27_Y27_N5
\DIV|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(5));

-- Location: LCCOMB_X27_Y27_N20
\DIV|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~12_combout\ = (\DIV|counter\(6) & (\DIV|Add0~11\ $ (GND))) # (!\DIV|counter\(6) & (!\DIV|Add0~11\ & VCC))
-- \DIV|Add0~13\ = CARRY((\DIV|counter\(6) & !\DIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(6),
	datad => VCC,
	cin => \DIV|Add0~11\,
	combout => \DIV|Add0~12_combout\,
	cout => \DIV|Add0~13\);

-- Location: LCCOMB_X27_Y27_N6
\DIV|counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~2_combout\ = (\DIV|Add0~12_combout\ & ((!\DIV|Equal0~0_combout\) # (!\DIV|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~2_combout\,
	datac => \DIV|Equal0~0_combout\,
	datad => \DIV|Add0~12_combout\,
	combout => \DIV|counter~2_combout\);

-- Location: FF_X27_Y27_N7
\DIV|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(6));

-- Location: LCCOMB_X27_Y27_N22
\DIV|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~14_combout\ = (\DIV|counter\(7) & (!\DIV|Add0~13\)) # (!\DIV|counter\(7) & ((\DIV|Add0~13\) # (GND)))
-- \DIV|Add0~15\ = CARRY((!\DIV|Add0~13\) # (!\DIV|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(7),
	datad => VCC,
	cin => \DIV|Add0~13\,
	combout => \DIV|Add0~14_combout\,
	cout => \DIV|Add0~15\);

-- Location: LCCOMB_X26_Y27_N12
\DIV|counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~3_combout\ = (\DIV|Add0~14_combout\ & ((!\DIV|Equal0~0_combout\) # (!\DIV|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~2_combout\,
	datac => \DIV|Equal0~0_combout\,
	datad => \DIV|Add0~14_combout\,
	combout => \DIV|counter~3_combout\);

-- Location: FF_X26_Y27_N13
\DIV|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(7));

-- Location: LCCOMB_X27_Y27_N24
\DIV|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~16_combout\ = (\DIV|counter\(8) & (\DIV|Add0~15\ $ (GND))) # (!\DIV|counter\(8) & (!\DIV|Add0~15\ & VCC))
-- \DIV|Add0~17\ = CARRY((\DIV|counter\(8) & !\DIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|counter\(8),
	datad => VCC,
	cin => \DIV|Add0~15\,
	combout => \DIV|Add0~16_combout\,
	cout => \DIV|Add0~17\);

-- Location: FF_X27_Y27_N25
\DIV|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(8));

-- Location: LCCOMB_X27_Y27_N26
\DIV|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~18_combout\ = (\DIV|counter\(9) & (!\DIV|Add0~17\)) # (!\DIV|counter\(9) & ((\DIV|Add0~17\) # (GND)))
-- \DIV|Add0~19\ = CARRY((!\DIV|Add0~17\) # (!\DIV|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(9),
	datad => VCC,
	cin => \DIV|Add0~17\,
	combout => \DIV|Add0~18_combout\,
	cout => \DIV|Add0~19\);

-- Location: FF_X27_Y27_N27
\DIV|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(9));

-- Location: LCCOMB_X27_Y27_N28
\DIV|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~20_combout\ = \DIV|Add0~19\ $ (!\DIV|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DIV|counter\(10),
	cin => \DIV|Add0~19\,
	combout => \DIV|Add0~20_combout\);

-- Location: LCCOMB_X27_Y27_N2
\DIV|counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~4_combout\ = (\DIV|Add0~20_combout\ & ((!\DIV|Equal0~0_combout\) # (!\DIV|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~2_combout\,
	datac => \DIV|Equal0~0_combout\,
	datad => \DIV|Add0~20_combout\,
	combout => \DIV|counter~4_combout\);

-- Location: FF_X27_Y27_N3
\DIV|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(10));

-- Location: LCCOMB_X27_Y27_N0
\DIV|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Equal0~1_combout\ = (\DIV|counter\(6) & (!\DIV|counter\(4) & (\DIV|counter\(5) & \DIV|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(6),
	datab => \DIV|counter\(4),
	datac => \DIV|counter\(5),
	datad => \DIV|counter\(7),
	combout => \DIV|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y27_N30
\DIV|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Equal0~2_combout\ = (!\DIV|counter\(9) & (\DIV|counter\(10) & (!\DIV|counter\(8) & \DIV|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(9),
	datab => \DIV|counter\(10),
	datac => \DIV|counter\(8),
	datad => \DIV|Equal0~1_combout\,
	combout => \DIV|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y27_N6
\DIV|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~0_combout\ = (\DIV|Add0~2_combout\ & ((!\DIV|Equal0~0_combout\) # (!\DIV|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~2_combout\,
	datab => \DIV|Equal0~0_combout\,
	datac => \DIV|Add0~2_combout\,
	combout => \DIV|counter~0_combout\);

-- Location: FF_X26_Y27_N7
\DIV|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \DIV|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(1));

-- Location: LCCOMB_X26_Y27_N14
\DIV|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Equal0~0_combout\ = (!\DIV|counter\(1) & (!\DIV|counter\(2) & (!\DIV|counter\(3) & \DIV|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(1),
	datab => \DIV|counter\(2),
	datac => \DIV|counter\(3),
	datad => \DIV|counter\(0),
	combout => \DIV|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y27_N4
\DIV|Clk_aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Clk_aux~0_combout\ = \DIV|Clk_aux~q\ $ (((\DIV|Equal0~0_combout\ & \DIV|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV|Equal0~0_combout\,
	datac => \DIV|Equal0~2_combout\,
	datad => \DIV|Clk_aux~q\,
	combout => \DIV|Clk_aux~0_combout\);

-- Location: FF_X26_Y27_N9
\DIV|Clk_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	asdata => \DIV|Clk_aux~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|Clk_aux~q\);

-- Location: CLKCTRL_G10
\DIV|Clk_aux~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DIV|Clk_aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DIV|Clk_aux~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y26_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = bit_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(bit_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X26_Y26_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (bit_counter(3) & (!\Add0~5\)) # (!bit_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!bit_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X26_Y26_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (bit_counter(4) & (\Add0~7\ $ (GND))) # (!bit_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((bit_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X26_Y26_N17
\bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(4));

-- Location: LCCOMB_X26_Y26_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (bit_counter(5) & (!\Add0~9\)) # (!bit_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!bit_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X26_Y26_N30
\bit_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~0_combout\ = (\Add0~10_combout\ & !\Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => \Equal3~1_combout\,
	combout => \bit_counter~0_combout\);

-- Location: FF_X26_Y26_N31
\bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(5));

-- Location: LCCOMB_X26_Y26_N2
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!bit_counter(1) & (!bit_counter(3) & (bit_counter(5) & !bit_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(3),
	datac => bit_counter(5),
	datad => bit_counter(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X26_Y26_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (bit_counter(6) & (\Add0~11\ $ (GND))) # (!bit_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((bit_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X26_Y26_N21
\bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(6));

-- Location: LCCOMB_X26_Y26_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (bit_counter(7) & (!\Add0~13\)) # (!bit_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!bit_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X26_Y26_N23
\bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(7));

-- Location: LCCOMB_X26_Y26_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (bit_counter(8) & (\Add0~15\ $ (GND))) # (!bit_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((bit_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X26_Y26_N4
\bit_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~1_combout\ = (!\Equal3~1_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datad => \Add0~16_combout\,
	combout => \bit_counter~1_combout\);

-- Location: FF_X26_Y26_N5
\bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(8));

-- Location: LCCOMB_X26_Y26_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (bit_counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_counter(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X26_Y26_N6
\bit_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~2_combout\ = (\Add0~18_combout\ & !\Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal3~1_combout\,
	combout => \bit_counter~2_combout\);

-- Location: FF_X26_Y26_N7
\bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(9));

-- Location: LCCOMB_X26_Y26_N28
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!bit_counter(2) & (!bit_counter(4) & (!bit_counter(7) & !bit_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(4),
	datac => bit_counter(7),
	datad => bit_counter(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y26_N6
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\Equal3~0_combout\ & (bit_counter(8) & (bit_counter(9) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => bit_counter(8),
	datac => bit_counter(9),
	datad => \Equal0~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X26_Y26_N0
\bit_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~3_combout\ = (\Add0~0_combout\ & !\Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \bit_counter~3_combout\);

-- Location: FF_X26_Y26_N1
\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

-- Location: LCCOMB_X26_Y26_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (bit_counter(1) & (!\Add0~1\)) # (!bit_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!bit_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X26_Y26_N11
\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

-- Location: LCCOMB_X26_Y26_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (bit_counter(2) & (\Add0~3\ $ (GND))) # (!bit_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((bit_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X26_Y26_N13
\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

-- Location: FF_X26_Y26_N15
\bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(3));

-- Location: LCCOMB_X27_Y26_N8
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!bit_counter(5) & (!bit_counter(9) & (!bit_counter(8) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(5),
	datab => bit_counter(9),
	datac => bit_counter(8),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y26_N0
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (bit_counter(3) & (bit_counter(1) & (!bit_counter(0) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(1),
	datac => bit_counter(0),
	datad => \Equal0~1_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X24_Y26_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!bit_counter(3) & (!bit_counter(1) & (!bit_counter(0) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(1),
	datac => bit_counter(0),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X24_Y26_N16
\outSerial~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outSerial~0_combout\ = (!\Equal2~0_combout\ & ((\outSerial[0]~reg0_q\) # (\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \outSerial[0]~reg0_q\,
	datad => \Equal0~2_combout\,
	combout => \outSerial~0_combout\);

-- Location: FF_X24_Y26_N17
\outSerial[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \outSerial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outSerial[0]~reg0_q\);

-- Location: LCCOMB_X24_Y26_N18
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!bit_counter(3) & (bit_counter(1) & (bit_counter(0) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(1),
	datac => bit_counter(0),
	datad => \Equal0~1_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X24_Y26_N4
\send_aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \send_aux~0_combout\ = (!\Equal1~0_combout\ & ((\send_aux~q\) # (\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \send_aux~q\,
	datad => \Equal0~2_combout\,
	combout => \send_aux~0_combout\);

-- Location: FF_X24_Y26_N5
send_aux : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \send_aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_aux~q\);

-- Location: LCCOMB_X23_Y26_N30
\COM_X|bit_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[2]~9_combout\ = (\COM_X|bit_counter\(1) & (\COM_X|bit_counter\(0) & \COM_X|sending~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_X|bit_counter\(0),
	datad => \COM_X|sending~q\,
	combout => \COM_X|bit_counter[2]~9_combout\);

-- Location: LCCOMB_X23_Y26_N22
\COM_X|bit_counter[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[2]~11_combout\ = (\COM_X|bit_counter[2]~9_combout\) # ((\COM_X|bit_counter\(2) & ((\COM_X|sending~q\) # (!\send_aux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_aux~q\,
	datab => \COM_X|bit_counter[2]~9_combout\,
	datac => \COM_X|bit_counter\(2),
	datad => \COM_X|sending~q\,
	combout => \COM_X|bit_counter[2]~11_combout\);

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

-- Location: FF_X23_Y26_N23
\COM_X|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|bit_counter[2]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|bit_counter\(2));

-- Location: LCCOMB_X22_Y26_N24
\COM_X|bit_counter[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[2]~6_combout\ = (\COM_X|bit_counter\(1) & (\COM_X|bit_counter\(0) & (\COM_X|sending~q\ & \COM_X|bit_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_X|bit_counter\(0),
	datac => \COM_X|sending~q\,
	datad => \COM_X|bit_counter\(2),
	combout => \COM_X|bit_counter[2]~6_combout\);

-- Location: LCCOMB_X23_Y26_N24
\COM_X|bit_counter[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[0]~10_combout\ = (\COM_X|bit_counter\(0) & ((\COM_X|bit_counter[2]~6_combout\) # ((!\send_aux~q\ & !\COM_X|sending~q\)))) # (!\COM_X|bit_counter\(0) & (((\COM_X|sending~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_aux~q\,
	datab => \COM_X|sending~q\,
	datac => \COM_X|bit_counter\(0),
	datad => \COM_X|bit_counter[2]~6_combout\,
	combout => \COM_X|bit_counter[0]~10_combout\);

-- Location: FF_X23_Y26_N25
\COM_X|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|bit_counter[0]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|bit_counter\(0));

-- Location: LCCOMB_X23_Y26_N16
\COM_X|bit_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[1]~7_combout\ = (\COM_X|sending~q\ & (\COM_X|bit_counter\(1) $ (\COM_X|bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_X|bit_counter\(0),
	datad => \COM_X|sending~q\,
	combout => \COM_X|bit_counter[1]~7_combout\);

-- Location: LCCOMB_X23_Y26_N18
\COM_X|bit_counter[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[2]~5_combout\ = (!\COM_X|sending~q\ & !\send_aux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COM_X|sending~q\,
	datad => \send_aux~q\,
	combout => \COM_X|bit_counter[2]~5_combout\);

-- Location: LCCOMB_X23_Y26_N6
\COM_X|bit_counter[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[1]~8_combout\ = (\COM_X|bit_counter[1]~7_combout\) # ((\COM_X|bit_counter\(1) & ((\COM_X|bit_counter[2]~6_combout\) # (\COM_X|bit_counter[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter[1]~7_combout\,
	datab => \COM_X|bit_counter[2]~6_combout\,
	datac => \COM_X|bit_counter\(1),
	datad => \COM_X|bit_counter[2]~5_combout\,
	combout => \COM_X|bit_counter[1]~8_combout\);

-- Location: FF_X23_Y26_N7
\COM_X|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|bit_counter[1]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|bit_counter\(1));

-- Location: LCCOMB_X22_Y26_N14
\COM_X|bit_counter[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[0]~4_combout\ = (\COM_X|sending~q\ & (((!\COM_X|bit_counter\(2)) # (!\COM_X|bit_counter\(0))) # (!\COM_X|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_X|bit_counter\(0),
	datac => \COM_X|sending~q\,
	datad => \COM_X|bit_counter\(2),
	combout => \COM_X|bit_counter[0]~4_combout\);

-- Location: LCCOMB_X24_Y26_N22
\COM_X|sending~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|sending~2_combout\ = (\COM_X|bit_counter[0]~4_combout\) # ((\send_aux~q\ & !\COM_X|sending~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \send_aux~q\,
	datac => \COM_X|sending~q\,
	datad => \COM_X|bit_counter[0]~4_combout\,
	combout => \COM_X|sending~2_combout\);

-- Location: FF_X24_Y26_N23
\COM_X|sending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|sending~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|sending~q\);

-- Location: IOIBUF_X21_Y29_N8
\coord_x[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_x(7),
	o => \coord_x[7]~input_o\);

-- Location: LCCOMB_X22_Y26_N12
\COM_X|shift_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|shift_reg[7]~feeder_combout\ = \coord_x[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \coord_x[7]~input_o\,
	combout => \COM_X|shift_reg[7]~feeder_combout\);

-- Location: LCCOMB_X23_Y26_N12
\COM_X|data_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~5_combout\ = (!\COM_X|sending~q\ & \send_aux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COM_X|sending~q\,
	datad => \send_aux~q\,
	combout => \COM_X|data_out~5_combout\);

-- Location: FF_X22_Y26_N13
\COM_X|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|shift_reg[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(7));

-- Location: IOIBUF_X21_Y29_N22
\coord_x[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_x(5),
	o => \coord_x[5]~input_o\);

-- Location: FF_X22_Y26_N9
\COM_X|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_x[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(5));

-- Location: IOIBUF_X21_Y29_N1
\coord_x[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_x(6),
	o => \coord_x[6]~input_o\);

-- Location: LCCOMB_X22_Y26_N6
\COM_X|shift_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|shift_reg[6]~feeder_combout\ = \coord_x[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \coord_x[6]~input_o\,
	combout => \COM_X|shift_reg[6]~feeder_combout\);

-- Location: FF_X22_Y26_N7
\COM_X|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|shift_reg[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(6));

-- Location: IOIBUF_X26_Y29_N29
\coord_x[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_x(4),
	o => \coord_x[4]~input_o\);

-- Location: FF_X23_Y26_N5
\COM_X|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_x[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(4));

-- Location: LCCOMB_X23_Y26_N4
\COM_X|data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~0_combout\ = (\COM_X|bit_counter\(1) & ((\COM_X|shift_reg\(6)) # ((\COM_X|bit_counter\(0))))) # (!\COM_X|bit_counter\(1) & (((\COM_X|shift_reg\(4) & !\COM_X|bit_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_X|shift_reg\(6),
	datac => \COM_X|shift_reg\(4),
	datad => \COM_X|bit_counter\(0),
	combout => \COM_X|data_out~0_combout\);

-- Location: LCCOMB_X22_Y26_N8
\COM_X|data_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~1_combout\ = (\COM_X|bit_counter\(0) & ((\COM_X|data_out~0_combout\ & (\COM_X|shift_reg\(7))) # (!\COM_X|data_out~0_combout\ & ((\COM_X|shift_reg\(5)))))) # (!\COM_X|bit_counter\(0) & (((\COM_X|data_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|shift_reg\(7),
	datab => \COM_X|bit_counter\(0),
	datac => \COM_X|shift_reg\(5),
	datad => \COM_X|data_out~0_combout\,
	combout => \COM_X|data_out~1_combout\);

-- Location: IOIBUF_X23_Y29_N22
\coord_x[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_x(3),
	o => \coord_x[3]~input_o\);

-- Location: FF_X23_Y26_N13
\COM_X|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_x[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(3));

-- Location: IOIBUF_X26_Y29_N15
\coord_x[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_x(2),
	o => \coord_x[2]~input_o\);

-- Location: FF_X23_Y26_N11
\COM_X|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_x[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(2));

-- Location: IOIBUF_X26_Y29_N1
\coord_x[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_x(1),
	o => \coord_x[1]~input_o\);

-- Location: FF_X23_Y26_N17
\COM_X|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_x[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(1));

-- Location: IOIBUF_X28_Y29_N15
\coord_x[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_x(0),
	o => \coord_x[0]~input_o\);

-- Location: FF_X23_Y26_N27
\COM_X|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_x[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(0));

-- Location: LCCOMB_X23_Y26_N26
\COM_X|data_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~2_combout\ = (\COM_X|bit_counter\(1) & (((\COM_X|bit_counter\(0))))) # (!\COM_X|bit_counter\(1) & ((\COM_X|bit_counter\(0) & (\COM_X|shift_reg\(1))) # (!\COM_X|bit_counter\(0) & ((\COM_X|shift_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_X|shift_reg\(1),
	datac => \COM_X|shift_reg\(0),
	datad => \COM_X|bit_counter\(0),
	combout => \COM_X|data_out~2_combout\);

-- Location: LCCOMB_X23_Y26_N10
\COM_X|data_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~3_combout\ = (\COM_X|bit_counter\(1) & ((\COM_X|data_out~2_combout\ & (\COM_X|shift_reg\(3))) # (!\COM_X|data_out~2_combout\ & ((\COM_X|shift_reg\(2)))))) # (!\COM_X|bit_counter\(1) & (((\COM_X|data_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_X|shift_reg\(3),
	datac => \COM_X|shift_reg\(2),
	datad => \COM_X|data_out~2_combout\,
	combout => \COM_X|data_out~3_combout\);

-- Location: LCCOMB_X22_Y26_N0
\COM_X|data_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~4_combout\ = (\COM_X|sending~q\ & ((\COM_X|bit_counter\(2) & (\COM_X|data_out~1_combout\)) # (!\COM_X|bit_counter\(2) & ((\COM_X|data_out~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|sending~q\,
	datab => \COM_X|data_out~1_combout\,
	datac => \COM_X|data_out~3_combout\,
	datad => \COM_X|bit_counter\(2),
	combout => \COM_X|data_out~4_combout\);

-- Location: FF_X22_Y26_N1
\COM_X|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|data_out~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \COM_X|ALT_INV_data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|data_out~q\);

-- Location: IOIBUF_X23_Y29_N15
\coord_y[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_y(7),
	o => \coord_y[7]~input_o\);

-- Location: FF_X23_Y26_N31
\COM_Y|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_y[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|shift_reg\(7));

-- Location: IOIBUF_X28_Y29_N22
\coord_y[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_y(5),
	o => \coord_y[5]~input_o\);

-- Location: FF_X23_Y26_N9
\COM_Y|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_y[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|shift_reg\(5));

-- Location: IOIBUF_X23_Y29_N8
\coord_y[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_y(6),
	o => \coord_y[6]~input_o\);

-- Location: FF_X23_Y26_N19
\COM_Y|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_y[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|shift_reg\(6));

-- Location: IOIBUF_X23_Y29_N29
\coord_y[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_y(4),
	o => \coord_y[4]~input_o\);

-- Location: FF_X23_Y26_N29
\COM_Y|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_y[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|shift_reg\(4));

-- Location: LCCOMB_X23_Y26_N28
\COM_Y|data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_Y|data_out~0_combout\ = (\COM_X|bit_counter\(1) & ((\COM_Y|shift_reg\(6)) # ((\COM_X|bit_counter\(0))))) # (!\COM_X|bit_counter\(1) & (((\COM_Y|shift_reg\(4) & !\COM_X|bit_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_Y|shift_reg\(6),
	datac => \COM_Y|shift_reg\(4),
	datad => \COM_X|bit_counter\(0),
	combout => \COM_Y|data_out~0_combout\);

-- Location: LCCOMB_X23_Y26_N8
\COM_Y|data_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_Y|data_out~1_combout\ = (\COM_X|bit_counter\(0) & ((\COM_Y|data_out~0_combout\ & (\COM_Y|shift_reg\(7))) # (!\COM_Y|data_out~0_combout\ & ((\COM_Y|shift_reg\(5)))))) # (!\COM_X|bit_counter\(0) & (((\COM_Y|data_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_Y|shift_reg\(7),
	datab => \COM_X|bit_counter\(0),
	datac => \COM_Y|shift_reg\(5),
	datad => \COM_Y|data_out~0_combout\,
	combout => \COM_Y|data_out~1_combout\);

-- Location: IOIBUF_X26_Y29_N8
\coord_y[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_y(3),
	o => \coord_y[3]~input_o\);

-- Location: LCCOMB_X23_Y26_N14
\COM_Y|shift_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_Y|shift_reg[3]~feeder_combout\ = \coord_y[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \coord_y[3]~input_o\,
	combout => \COM_Y|shift_reg[3]~feeder_combout\);

-- Location: FF_X23_Y26_N15
\COM_Y|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_Y|shift_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|shift_reg\(3));

-- Location: IOIBUF_X23_Y29_N1
\coord_y[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_y(2),
	o => \coord_y[2]~input_o\);

-- Location: FF_X23_Y26_N1
\COM_Y|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_y[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|shift_reg\(2));

-- Location: IOIBUF_X19_Y29_N29
\coord_y[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_y(1),
	o => \coord_y[1]~input_o\);

-- Location: LCCOMB_X23_Y26_N2
\COM_Y|shift_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_Y|shift_reg[1]~feeder_combout\ = \coord_y[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \coord_y[1]~input_o\,
	combout => \COM_Y|shift_reg[1]~feeder_combout\);

-- Location: FF_X23_Y26_N3
\COM_Y|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_Y|shift_reg[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|shift_reg\(1));

-- Location: IOIBUF_X16_Y29_N22
\coord_y[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coord_y(0),
	o => \coord_y[0]~input_o\);

-- Location: FF_X23_Y26_N21
\COM_Y|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \coord_y[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|shift_reg\(0));

-- Location: LCCOMB_X23_Y26_N20
\COM_Y|data_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_Y|data_out~2_combout\ = (\COM_X|bit_counter\(1) & (((\COM_X|bit_counter\(0))))) # (!\COM_X|bit_counter\(1) & ((\COM_X|bit_counter\(0) & (\COM_Y|shift_reg\(1))) # (!\COM_X|bit_counter\(0) & ((\COM_Y|shift_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_Y|shift_reg\(1),
	datac => \COM_Y|shift_reg\(0),
	datad => \COM_X|bit_counter\(0),
	combout => \COM_Y|data_out~2_combout\);

-- Location: LCCOMB_X23_Y26_N0
\COM_Y|data_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_Y|data_out~3_combout\ = (\COM_X|bit_counter\(1) & ((\COM_Y|data_out~2_combout\ & (\COM_Y|shift_reg\(3))) # (!\COM_Y|data_out~2_combout\ & ((\COM_Y|shift_reg\(2)))))) # (!\COM_X|bit_counter\(1) & (((\COM_Y|data_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_Y|shift_reg\(3),
	datac => \COM_Y|shift_reg\(2),
	datad => \COM_Y|data_out~2_combout\,
	combout => \COM_Y|data_out~3_combout\);

-- Location: LCCOMB_X22_Y26_N2
\COM_Y|data_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_Y|data_out~4_combout\ = (\COM_X|sending~q\ & ((\COM_X|bit_counter\(2) & (\COM_Y|data_out~1_combout\)) # (!\COM_X|bit_counter\(2) & ((\COM_Y|data_out~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|sending~q\,
	datab => \COM_Y|data_out~1_combout\,
	datac => \COM_Y|data_out~3_combout\,
	datad => \COM_X|bit_counter\(2),
	combout => \COM_Y|data_out~4_combout\);

-- Location: FF_X22_Y26_N3
\COM_Y|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_Y|data_out~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \COM_X|ALT_INV_data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|data_out~q\);

ww_outSerial(0) <= \outSerial[0]~output_o\;

ww_outSerial(1) <= \outSerial[1]~output_o\;

ww_outSerial(2) <= \outSerial[2]~output_o\;
END structure;


