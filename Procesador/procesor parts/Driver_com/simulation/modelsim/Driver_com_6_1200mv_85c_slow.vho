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

-- DATE "06/27/2024 18:48:08"

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

ENTITY 	Driver_com IS
    PORT (
	CLOCK_50 : IN std_logic;
	GPIO1_D : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Driver_com;

-- Design Ports Information
-- GPIO1_D[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Driver_com IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_GPIO1_D : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV|Clk_aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO1_D[0]~output_o\ : std_logic;
SIGNAL \GPIO1_D[1]~output_o\ : std_logic;
SIGNAL \GPIO1_D[2]~output_o\ : std_logic;
SIGNAL \GPIO1_D[3]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \DIV|Add0~0_combout\ : std_logic;
SIGNAL \DIV|Add0~1\ : std_logic;
SIGNAL \DIV|Add0~2_combout\ : std_logic;
SIGNAL \DIV|counter~0_combout\ : std_logic;
SIGNAL \DIV|Add0~3\ : std_logic;
SIGNAL \DIV|Add0~4_combout\ : std_logic;
SIGNAL \DIV|Add0~5\ : std_logic;
SIGNAL \DIV|Add0~6_combout\ : std_logic;
SIGNAL \DIV|Equal0~0_combout\ : std_logic;
SIGNAL \DIV|Clk_aux~0_combout\ : std_logic;
SIGNAL \DIV|Clk_aux~feeder_combout\ : std_logic;
SIGNAL \DIV|Clk_aux~q\ : std_logic;
SIGNAL \DIV|Clk_aux~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \bit_counter~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \bit_counter~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \bit_counter~5_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \bit_counter~6_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \bit_counter~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \bit_counter~1_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \bit_counter~4_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \GPIO1_D~0_combout\ : std_logic;
SIGNAL \GPIO1_D~1_combout\ : std_logic;
SIGNAL \GPIO1_D~2_combout\ : std_logic;
SIGNAL \GPIO1_D[0]~reg0_q\ : std_logic;
SIGNAL \send_aux~0_combout\ : std_logic;
SIGNAL \send_aux~q\ : std_logic;
SIGNAL \COM_X|bit_counter[2]~3_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[0]~4_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[1]~5_combout\ : std_logic;
SIGNAL \COM_X|Mux0~0_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[2]~2_combout\ : std_logic;
SIGNAL \COM_X|sending~0_combout\ : std_logic;
SIGNAL \COM_X|sending~q\ : std_logic;
SIGNAL \COM_X|shift_reg[7]~0_combout\ : std_logic;
SIGNAL \COM_X|data_out~6_combout\ : std_logic;
SIGNAL \COM_X|data_out~feeder_combout\ : std_logic;
SIGNAL \COM_X|data_out~5_combout\ : std_logic;
SIGNAL \COM_X|data_out~q\ : std_logic;
SIGNAL \COM_X|data_out~4_combout\ : std_logic;
SIGNAL \COM_Y|data_out~0_combout\ : std_logic;
SIGNAL \COM_Y|data_out~q\ : std_logic;
SIGNAL bit_counter : std_logic_vector(18 DOWNTO 0);
SIGNAL \DIV|counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \COM_X|bit_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \COM_X|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DIV|ALT_INV_Clk_aux~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
GPIO1_D <= ww_GPIO1_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DIV|Clk_aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV|Clk_aux~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\DIV|ALT_INV_Clk_aux~clkctrl_outclk\ <= NOT \DIV|Clk_aux~clkctrl_outclk\;

-- Location: IOOBUF_X37_Y0_N23
\GPIO1_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO1_D[0]~reg0_q\,
	devoe => ww_devoe,
	o => \GPIO1_D[0]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\GPIO1_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COM_X|data_out~q\,
	devoe => ww_devoe,
	o => \GPIO1_D[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\GPIO1_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO1_D[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\GPIO1_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COM_Y|data_out~q\,
	devoe => ww_devoe,
	o => \GPIO1_D[3]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y13_N14
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

-- Location: LCCOMB_X32_Y13_N16
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

-- Location: FF_X32_Y13_N17
\DIV|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(4));

-- Location: LCCOMB_X32_Y13_N18
\DIV|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~10_combout\ = (\DIV|counter\(5) & (!\DIV|Add0~9\)) # (!\DIV|counter\(5) & ((\DIV|Add0~9\) # (GND)))
-- \DIV|Add0~11\ = CARRY((!\DIV|Add0~9\) # (!\DIV|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(5),
	datad => VCC,
	cin => \DIV|Add0~9\,
	combout => \DIV|Add0~10_combout\,
	cout => \DIV|Add0~11\);

-- Location: LCCOMB_X32_Y13_N30
\DIV|counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~1_combout\ = (\DIV|Add0~10_combout\ & ((!\DIV|Equal0~2_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datab => \DIV|Equal0~2_combout\,
	datad => \DIV|Add0~10_combout\,
	combout => \DIV|counter~1_combout\);

-- Location: FF_X32_Y13_N31
\DIV|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(5));

-- Location: LCCOMB_X32_Y13_N20
\DIV|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~12_combout\ = (\DIV|counter\(6) & (\DIV|Add0~11\ $ (GND))) # (!\DIV|counter\(6) & (!\DIV|Add0~11\ & VCC))
-- \DIV|Add0~13\ = CARRY((\DIV|counter\(6) & !\DIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|counter\(6),
	datad => VCC,
	cin => \DIV|Add0~11\,
	combout => \DIV|Add0~12_combout\,
	cout => \DIV|Add0~13\);

-- Location: LCCOMB_X32_Y13_N4
\DIV|counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~2_combout\ = (\DIV|Add0~12_combout\ & ((!\DIV|Equal0~2_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datab => \DIV|Equal0~2_combout\,
	datad => \DIV|Add0~12_combout\,
	combout => \DIV|counter~2_combout\);

-- Location: FF_X32_Y13_N5
\DIV|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(6));

-- Location: LCCOMB_X32_Y13_N22
\DIV|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Add0~14_combout\ = (\DIV|counter\(7) & (!\DIV|Add0~13\)) # (!\DIV|counter\(7) & ((\DIV|Add0~13\) # (GND)))
-- \DIV|Add0~15\ = CARRY((!\DIV|Add0~13\) # (!\DIV|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|counter\(7),
	datad => VCC,
	cin => \DIV|Add0~13\,
	combout => \DIV|Add0~14_combout\,
	cout => \DIV|Add0~15\);

-- Location: LCCOMB_X32_Y13_N2
\DIV|counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~3_combout\ = (\DIV|Add0~14_combout\ & ((!\DIV|Equal0~2_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datac => \DIV|Add0~14_combout\,
	datad => \DIV|Equal0~2_combout\,
	combout => \DIV|counter~3_combout\);

-- Location: FF_X32_Y13_N3
\DIV|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(7));

-- Location: LCCOMB_X32_Y13_N24
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

-- Location: FF_X32_Y13_N25
\DIV|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(8));

-- Location: LCCOMB_X32_Y13_N26
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

-- Location: FF_X32_Y13_N27
\DIV|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(9));

-- Location: LCCOMB_X32_Y13_N28
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

-- Location: LCCOMB_X32_Y13_N6
\DIV|counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~4_combout\ = (\DIV|Add0~20_combout\ & ((!\DIV|Equal0~2_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datab => \DIV|Equal0~2_combout\,
	datad => \DIV|Add0~20_combout\,
	combout => \DIV|counter~4_combout\);

-- Location: FF_X32_Y13_N7
\DIV|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(10));

-- Location: LCCOMB_X33_Y13_N24
\DIV|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Equal0~1_combout\ = (!\DIV|counter\(4) & (\DIV|counter\(5) & (\DIV|counter\(6) & \DIV|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(4),
	datab => \DIV|counter\(5),
	datac => \DIV|counter\(6),
	datad => \DIV|counter\(7),
	combout => \DIV|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y13_N28
\DIV|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Equal0~2_combout\ = (!\DIV|counter\(9) & (!\DIV|counter\(8) & (\DIV|counter\(10) & \DIV|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(9),
	datab => \DIV|counter\(8),
	datac => \DIV|counter\(10),
	datad => \DIV|Equal0~1_combout\,
	combout => \DIV|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y13_N8
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

-- Location: FF_X32_Y13_N9
\DIV|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(0));

-- Location: LCCOMB_X32_Y13_N10
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

-- Location: LCCOMB_X32_Y13_N0
\DIV|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~0_combout\ = (\DIV|Add0~2_combout\ & ((!\DIV|Equal0~2_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datab => \DIV|Equal0~2_combout\,
	datad => \DIV|Add0~2_combout\,
	combout => \DIV|counter~0_combout\);

-- Location: FF_X32_Y13_N1
\DIV|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(1));

-- Location: LCCOMB_X32_Y13_N12
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

-- Location: FF_X32_Y13_N13
\DIV|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(2));

-- Location: FF_X32_Y13_N15
\DIV|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(3));

-- Location: LCCOMB_X33_Y13_N6
\DIV|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Equal0~0_combout\ = (!\DIV|counter\(3) & (!\DIV|counter\(2) & (!\DIV|counter\(1) & \DIV|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(3),
	datab => \DIV|counter\(2),
	datac => \DIV|counter\(1),
	datad => \DIV|counter\(0),
	combout => \DIV|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y13_N26
\DIV|Clk_aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Clk_aux~0_combout\ = \DIV|Clk_aux~q\ $ (((\DIV|Equal0~0_combout\ & \DIV|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datac => \DIV|Clk_aux~q\,
	datad => \DIV|Equal0~2_combout\,
	combout => \DIV|Clk_aux~0_combout\);

-- Location: LCCOMB_X33_Y13_N30
\DIV|Clk_aux~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Clk_aux~feeder_combout\ = \DIV|Clk_aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Clk_aux~0_combout\,
	combout => \DIV|Clk_aux~feeder_combout\);

-- Location: FF_X33_Y13_N31
\DIV|Clk_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|Clk_aux~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|Clk_aux~q\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X16_Y7_N14
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

-- Location: LCCOMB_X16_Y7_N28
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

-- Location: LCCOMB_X16_Y7_N30
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

-- Location: LCCOMB_X16_Y7_N4
\bit_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~0_combout\ = (\Add0~16_combout\ & (((!\Equal3~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal3~0_combout\,
	combout => \bit_counter~0_combout\);

-- Location: FF_X16_Y7_N5
\bit_counter[8]\ : dffeas
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
	q => bit_counter(8));

-- Location: LCCOMB_X16_Y6_N0
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (bit_counter(9) & (!\Add0~17\)) # (!bit_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!bit_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X16_Y6_N1
\bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(9));

-- Location: LCCOMB_X16_Y6_N2
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (bit_counter(10) & (\Add0~19\ $ (GND))) # (!bit_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((bit_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X16_Y6_N3
\bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(10));

-- Location: LCCOMB_X16_Y6_N4
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (bit_counter(11) & (!\Add0~21\)) # (!bit_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!bit_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X16_Y6_N5
\bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(11));

-- Location: LCCOMB_X16_Y6_N6
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (bit_counter(12) & (\Add0~23\ $ (GND))) # (!bit_counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((bit_counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X16_Y6_N7
\bit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(12));

-- Location: LCCOMB_X16_Y6_N8
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (bit_counter(13) & (!\Add0~25\)) # (!bit_counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!bit_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X16_Y6_N24
\bit_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~3_combout\ = (\Add0~26_combout\ & (((!\Equal0~3_combout\) # (!\Equal3~0_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~0_combout\,
	datac => \Add0~26_combout\,
	datad => \Equal0~3_combout\,
	combout => \bit_counter~3_combout\);

-- Location: FF_X16_Y6_N25
\bit_counter[13]\ : dffeas
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
	q => bit_counter(13));

-- Location: LCCOMB_X17_Y6_N14
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (bit_counter(5) & (bit_counter(13) & (!bit_counter(1) & bit_counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(5),
	datab => bit_counter(13),
	datac => bit_counter(1),
	datad => bit_counter(14),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X16_Y6_N10
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (bit_counter(14) & (\Add0~27\ $ (GND))) # (!bit_counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((bit_counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X16_Y6_N22
\bit_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~5_combout\ = (\Add0~28_combout\ & (((!\Equal3~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal3~0_combout\,
	datad => \Add0~28_combout\,
	combout => \bit_counter~5_combout\);

-- Location: FF_X16_Y6_N23
\bit_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(14));

-- Location: LCCOMB_X16_Y6_N12
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (bit_counter(15) & (!\Add0~29\)) # (!bit_counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!bit_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X16_Y6_N13
\bit_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(15));

-- Location: LCCOMB_X16_Y6_N28
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!bit_counter(15) & (!bit_counter(10) & (!bit_counter(11) & !bit_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(15),
	datab => bit_counter(10),
	datac => bit_counter(11),
	datad => bit_counter(12),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X16_Y6_N14
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (bit_counter(16) & (\Add0~31\ $ (GND))) # (!bit_counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((bit_counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X16_Y6_N15
\bit_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(16));

-- Location: LCCOMB_X16_Y6_N16
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (bit_counter(17) & (!\Add0~33\)) # (!bit_counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!bit_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X16_Y6_N17
\bit_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(17));

-- Location: LCCOMB_X16_Y6_N18
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = \Add0~35\ $ (!bit_counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_counter(18),
	cin => \Add0~35\,
	combout => \Add0~36_combout\);

-- Location: FF_X16_Y6_N19
\bit_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(18));

-- Location: LCCOMB_X16_Y6_N26
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!bit_counter(18) & (!bit_counter(16) & !bit_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(18),
	datac => bit_counter(16),
	datad => bit_counter(17),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X17_Y6_N18
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!bit_counter(2) & (!bit_counter(9) & (!bit_counter(4) & !bit_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(9),
	datac => bit_counter(4),
	datad => bit_counter(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y6_N16
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X16_Y7_N8
\bit_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~6_combout\ = (\Add0~0_combout\ & (((!\Equal3~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Add0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal3~0_combout\,
	combout => \bit_counter~6_combout\);

-- Location: FF_X16_Y7_N9
\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

-- Location: LCCOMB_X16_Y7_N16
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (bit_counter(1) & (!\Add0~1\)) # (!bit_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!bit_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X16_Y7_N17
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

-- Location: LCCOMB_X16_Y7_N18
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (bit_counter(2) & (\Add0~3\ $ (GND))) # (!bit_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((bit_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X16_Y7_N19
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

-- Location: LCCOMB_X16_Y7_N20
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

-- Location: LCCOMB_X16_Y7_N22
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (bit_counter(4) & (\Add0~7\ $ (GND))) # (!bit_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((bit_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X16_Y7_N23
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

-- Location: LCCOMB_X16_Y7_N24
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

-- Location: LCCOMB_X16_Y7_N12
\bit_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~2_combout\ = (\Add0~10_combout\ & (((!\Equal3~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Add0~10_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal3~0_combout\,
	combout => \bit_counter~2_combout\);

-- Location: FF_X16_Y7_N13
\bit_counter[5]\ : dffeas
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
	q => bit_counter(5));

-- Location: LCCOMB_X16_Y7_N26
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (bit_counter(6) & (\Add0~11\ $ (GND))) # (!bit_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((bit_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X16_Y7_N27
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

-- Location: LCCOMB_X16_Y7_N6
\bit_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~1_combout\ = (\Add0~14_combout\ & (((!\Equal3~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Add0~14_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal3~0_combout\,
	combout => \bit_counter~1_combout\);

-- Location: FF_X16_Y7_N7
\bit_counter[7]\ : dffeas
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
	q => bit_counter(7));

-- Location: LCCOMB_X16_Y7_N10
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (bit_counter(7) & (bit_counter(3) & (bit_counter(8) & !bit_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(7),
	datab => bit_counter(3),
	datac => bit_counter(8),
	datad => bit_counter(0),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X16_Y7_N2
\bit_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter~4_combout\ = (\Add0~6_combout\ & (((!\Equal3~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Add0~6_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal3~0_combout\,
	combout => \bit_counter~4_combout\);

-- Location: FF_X16_Y7_N3
\bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(3));

-- Location: LCCOMB_X17_Y6_N22
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!bit_counter(5) & (!bit_counter(13) & (!bit_counter(8) & !bit_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(5),
	datab => bit_counter(13),
	datac => bit_counter(8),
	datad => bit_counter(7),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X17_Y6_N12
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!bit_counter(3) & (!bit_counter(14) & (\Equal0~4_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(14),
	datac => \Equal0~4_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X17_Y6_N10
\GPIO1_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GPIO1_D~0_combout\ = (bit_counter(3) & (\Equal0~4_combout\ & !bit_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datac => \Equal0~4_combout\,
	datad => bit_counter(14),
	combout => \GPIO1_D~0_combout\);

-- Location: LCCOMB_X17_Y6_N24
\GPIO1_D~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GPIO1_D~1_combout\ = (bit_counter(0) & (!\GPIO1_D[0]~reg0_q\)) # (!bit_counter(0) & (bit_counter(1) & ((\GPIO1_D~0_combout\) # (!\GPIO1_D[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => \GPIO1_D[0]~reg0_q\,
	datac => bit_counter(1),
	datad => \GPIO1_D~0_combout\,
	combout => \GPIO1_D~1_combout\);

-- Location: LCCOMB_X17_Y6_N28
\GPIO1_D~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GPIO1_D~2_combout\ = (\GPIO1_D[0]~reg0_q\ & (((!\GPIO1_D~1_combout\) # (!\Equal0~3_combout\)))) # (!\GPIO1_D[0]~reg0_q\ & (\Equal0~5_combout\ & ((!\GPIO1_D~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~3_combout\,
	datac => \GPIO1_D[0]~reg0_q\,
	datad => \GPIO1_D~1_combout\,
	combout => \GPIO1_D~2_combout\);

-- Location: FF_X17_Y6_N29
\GPIO1_D[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \GPIO1_D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GPIO1_D[0]~reg0_q\);

-- Location: LCCOMB_X19_Y6_N24
\send_aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \send_aux~0_combout\ = (bit_counter(0) & (\send_aux~q\ & ((!\Equal0~5_combout\) # (!bit_counter(1))))) # (!bit_counter(0) & ((\send_aux~q\) # ((!bit_counter(1) & \Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => bit_counter(1),
	datac => \send_aux~q\,
	datad => \Equal0~5_combout\,
	combout => \send_aux~0_combout\);

-- Location: FF_X19_Y6_N25
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

-- Location: LCCOMB_X20_Y6_N20
\COM_X|bit_counter[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[2]~3_combout\ = (\COM_X|sending~q\ & (\COM_X|Mux0~0_combout\ & (\COM_X|bit_counter\(2)))) # (!\COM_X|sending~q\ & (((!\send_aux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|sending~q\,
	datab => \COM_X|Mux0~0_combout\,
	datac => \COM_X|bit_counter\(2),
	datad => \send_aux~q\,
	combout => \COM_X|bit_counter[2]~3_combout\);

-- Location: LCCOMB_X20_Y6_N10
\COM_X|bit_counter[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[0]~4_combout\ = (\COM_X|bit_counter\(0) & ((\COM_X|bit_counter[2]~3_combout\))) # (!\COM_X|bit_counter\(0) & (\COM_X|sending~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COM_X|sending~q\,
	datac => \COM_X|bit_counter\(0),
	datad => \COM_X|bit_counter[2]~3_combout\,
	combout => \COM_X|bit_counter[0]~4_combout\);

-- Location: FF_X20_Y6_N11
\COM_X|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|bit_counter[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|bit_counter\(0));

-- Location: LCCOMB_X20_Y6_N8
\COM_X|bit_counter[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[1]~5_combout\ = (\COM_X|bit_counter\(1) & ((\COM_X|bit_counter[2]~3_combout\) # ((!\COM_X|bit_counter\(0) & \COM_X|sending~q\)))) # (!\COM_X|bit_counter\(1) & (\COM_X|bit_counter\(0) & (\COM_X|sending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(0),
	datab => \COM_X|sending~q\,
	datac => \COM_X|bit_counter\(1),
	datad => \COM_X|bit_counter[2]~3_combout\,
	combout => \COM_X|bit_counter[1]~5_combout\);

-- Location: FF_X20_Y6_N9
\COM_X|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|bit_counter[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|bit_counter\(1));

-- Location: LCCOMB_X20_Y6_N16
\COM_X|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|Mux0~0_combout\ = (\COM_X|bit_counter\(1) & \COM_X|bit_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COM_X|bit_counter\(1),
	datad => \COM_X|bit_counter\(0),
	combout => \COM_X|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y6_N14
\COM_X|bit_counter[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[2]~2_combout\ = (\COM_X|sending~q\ & ((\COM_X|Mux0~0_combout\) # ((\COM_X|bit_counter\(2))))) # (!\COM_X|sending~q\ & (((\COM_X|bit_counter\(2) & !\send_aux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|sending~q\,
	datab => \COM_X|Mux0~0_combout\,
	datac => \COM_X|bit_counter\(2),
	datad => \send_aux~q\,
	combout => \COM_X|bit_counter[2]~2_combout\);

-- Location: FF_X20_Y6_N15
\COM_X|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|bit_counter\(2));

-- Location: LCCOMB_X20_Y6_N24
\COM_X|sending~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|sending~0_combout\ = (\COM_X|sending~q\ & (((!\COM_X|Mux0~0_combout\)) # (!\COM_X|bit_counter\(2)))) # (!\COM_X|sending~q\ & (((\send_aux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(2),
	datab => \COM_X|Mux0~0_combout\,
	datac => \COM_X|sending~q\,
	datad => \send_aux~q\,
	combout => \COM_X|sending~0_combout\);

-- Location: FF_X20_Y6_N25
\COM_X|sending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|sending~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|sending~q\);

-- Location: LCCOMB_X20_Y6_N26
\COM_X|shift_reg[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|shift_reg[7]~0_combout\ = (\COM_X|shift_reg\(7)) # ((!\COM_X|sending~q\ & \send_aux~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COM_X|sending~q\,
	datac => \COM_X|shift_reg\(7),
	datad => \send_aux~q\,
	combout => \COM_X|shift_reg[7]~0_combout\);

-- Location: FF_X20_Y6_N27
\COM_X|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|shift_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(7));

-- Location: LCCOMB_X20_Y6_N22
\COM_X|data_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~6_combout\ = (\COM_X|sending~q\ & (\COM_X|shift_reg\(7) & (\COM_X|bit_counter\(2) $ (!\COM_X|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|sending~q\,
	datab => \COM_X|bit_counter\(2),
	datac => \COM_X|shift_reg\(7),
	datad => \COM_X|Mux0~0_combout\,
	combout => \COM_X|data_out~6_combout\);

-- Location: LCCOMB_X19_Y6_N12
\COM_X|data_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~feeder_combout\ = \COM_X|data_out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COM_X|data_out~6_combout\,
	combout => \COM_X|data_out~feeder_combout\);

-- Location: LCCOMB_X19_Y6_N10
\COM_X|data_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~5_combout\ = (\COM_X|sending~q\) # (!\send_aux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COM_X|sending~q\,
	datad => \send_aux~q\,
	combout => \COM_X|data_out~5_combout\);

-- Location: FF_X19_Y6_N13
\COM_X|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|data_out~feeder_combout\,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|data_out~q\);

-- Location: LCCOMB_X20_Y6_N12
\COM_X|data_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~4_combout\ = (\COM_X|shift_reg\(7) & \COM_X|sending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COM_X|shift_reg\(7),
	datad => \COM_X|sending~q\,
	combout => \COM_X|data_out~4_combout\);

-- Location: LCCOMB_X20_Y6_N30
\COM_Y|data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_Y|data_out~0_combout\ = (\COM_X|data_out~4_combout\ & ((\COM_X|bit_counter\(1) & ((\COM_X|bit_counter\(2)))) # (!\COM_X|bit_counter\(1) & ((!\COM_X|bit_counter\(2)) # (!\COM_X|bit_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(0),
	datab => \COM_X|bit_counter\(1),
	datac => \COM_X|bit_counter\(2),
	datad => \COM_X|data_out~4_combout\,
	combout => \COM_Y|data_out~0_combout\);

-- Location: FF_X19_Y6_N11
\COM_Y|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	asdata => \COM_Y|data_out~0_combout\,
	sload => VCC,
	ena => \COM_X|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|data_out~q\);

ww_GPIO1_D(0) <= \GPIO1_D[0]~output_o\;

ww_GPIO1_D(1) <= \GPIO1_D[1]~output_o\;

ww_GPIO1_D(2) <= \GPIO1_D[2]~output_o\;

ww_GPIO1_D(3) <= \GPIO1_D[3]~output_o\;
END structure;


