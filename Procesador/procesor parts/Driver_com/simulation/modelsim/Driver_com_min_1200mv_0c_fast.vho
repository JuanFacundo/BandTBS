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

-- DATE "05/28/2024 17:29:49"

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
	GPIO0_D : OUT std_logic_vector(2 DOWNTO 0)
	);
END Driver_com;

-- Design Ports Information
-- GPIO0_D[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_GPIO0_D : std_logic_vector(2 DOWNTO 0);
SIGNAL \DIV|Clk_aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO0_D[0]~output_o\ : std_logic;
SIGNAL \GPIO0_D[1]~output_o\ : std_logic;
SIGNAL \GPIO0_D[2]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIV|counter[1]~1_combout\ : std_logic;
SIGNAL \DIV|counter~2_combout\ : std_logic;
SIGNAL \DIV|counter~0_combout\ : std_logic;
SIGNAL \DIV|Clk_aux~0_combout\ : std_logic;
SIGNAL \DIV|Clk_aux~feeder_combout\ : std_logic;
SIGNAL \DIV|Clk_aux~q\ : std_logic;
SIGNAL \DIV|Clk_aux~clkctrl_outclk\ : std_logic;
SIGNAL \bit_counter[0]~5_combout\ : std_logic;
SIGNAL \bit_counter[0]~6\ : std_logic;
SIGNAL \bit_counter[1]~7_combout\ : std_logic;
SIGNAL \bit_counter[1]~8\ : std_logic;
SIGNAL \bit_counter[2]~9_combout\ : std_logic;
SIGNAL \bit_counter[2]~10\ : std_logic;
SIGNAL \bit_counter[3]~11_combout\ : std_logic;
SIGNAL \bit_counter[3]~12\ : std_logic;
SIGNAL \bit_counter[4]~13_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \GPIO0_D~0_combout\ : std_logic;
SIGNAL \GPIO0_D~1_combout\ : std_logic;
SIGNAL \GPIO0_D[0]~reg0_q\ : std_logic;
SIGNAL \send_aux~0_combout\ : std_logic;
SIGNAL \send_aux~q\ : std_logic;
SIGNAL \COM_X|sending~0_combout\ : std_logic;
SIGNAL \COM_X|sending~q\ : std_logic;
SIGNAL \COM_X|bit_counter[1]~1_combout\ : std_logic;
SIGNAL \COM_X|bit_counter[0]~0_combout\ : std_logic;
SIGNAL \COM_X|shift_reg[2]~0_combout\ : std_logic;
SIGNAL \COM_X|data_out~0_combout\ : std_logic;
SIGNAL \COM_X|data_out~1_combout\ : std_logic;
SIGNAL \COM_X|data_out~q\ : std_logic;
SIGNAL \COM_Y|data_out~0_combout\ : std_logic;
SIGNAL \COM_Y|data_out~q\ : std_logic;
SIGNAL bit_counter : std_logic_vector(4 DOWNTO 0);
SIGNAL \COM_X|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COM_X|bit_counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DIV|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DIV|ALT_INV_Clk_aux~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
GPIO0_D <= ww_GPIO0_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DIV|Clk_aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV|Clk_aux~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\DIV|ALT_INV_Clk_aux~clkctrl_outclk\ <= NOT \DIV|Clk_aux~clkctrl_outclk\;

-- Location: IOOBUF_X28_Y0_N16
\GPIO0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO0_D[0]~reg0_q\,
	devoe => ww_devoe,
	o => \GPIO0_D[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\GPIO0_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COM_X|data_out~q\,
	devoe => ww_devoe,
	o => \GPIO0_D[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\GPIO0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COM_Y|data_out~q\,
	devoe => ww_devoe,
	o => \GPIO0_D[2]~output_o\);

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

-- Location: LCCOMB_X40_Y15_N20
\DIV|counter[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter[1]~1_combout\ = \DIV|counter\(1) $ (\DIV|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV|counter\(1),
	datad => \DIV|counter\(0),
	combout => \DIV|counter[1]~1_combout\);

-- Location: FF_X40_Y15_N21
\DIV|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV|counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|counter\(1));

-- Location: LCCOMB_X40_Y15_N26
\DIV|counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~2_combout\ = (\DIV|counter\(0) & (\DIV|counter\(2) $ (\DIV|counter\(1)))) # (!\DIV|counter\(0) & (\DIV|counter\(2) & \DIV|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(0),
	datac => \DIV|counter\(2),
	datad => \DIV|counter\(1),
	combout => \DIV|counter~2_combout\);

-- Location: FF_X40_Y15_N27
\DIV|counter[2]\ : dffeas
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
	q => \DIV|counter\(2));

-- Location: LCCOMB_X40_Y15_N30
\DIV|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|counter~0_combout\ = (!\DIV|counter\(0) & ((\DIV|counter\(1)) # (!\DIV|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(2),
	datac => \DIV|counter\(0),
	datad => \DIV|counter\(1),
	combout => \DIV|counter~0_combout\);

-- Location: FF_X40_Y15_N31
\DIV|counter[0]\ : dffeas
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
	q => \DIV|counter\(0));

-- Location: LCCOMB_X40_Y15_N18
\DIV|Clk_aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Clk_aux~0_combout\ = \DIV|Clk_aux~q\ $ (((!\DIV|counter\(0) & (\DIV|counter\(2) & !\DIV|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|counter\(0),
	datab => \DIV|Clk_aux~q\,
	datac => \DIV|counter\(2),
	datad => \DIV|counter\(1),
	combout => \DIV|Clk_aux~0_combout\);

-- Location: LCCOMB_X40_Y15_N28
\DIV|Clk_aux~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV|Clk_aux~feeder_combout\ = \DIV|Clk_aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIV|Clk_aux~0_combout\,
	combout => \DIV|Clk_aux~feeder_combout\);

-- Location: FF_X40_Y15_N29
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

-- Location: LCCOMB_X28_Y1_N16
\bit_counter[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter[0]~5_combout\ = bit_counter(0) $ (VCC)
-- \bit_counter[0]~6\ = CARRY(bit_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(0),
	datad => VCC,
	combout => \bit_counter[0]~5_combout\,
	cout => \bit_counter[0]~6\);

-- Location: LCCOMB_X28_Y1_N18
\bit_counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter[1]~7_combout\ = (bit_counter(1) & (!\bit_counter[0]~6\)) # (!bit_counter(1) & ((\bit_counter[0]~6\) # (GND)))
-- \bit_counter[1]~8\ = CARRY((!\bit_counter[0]~6\) # (!bit_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(1),
	datad => VCC,
	cin => \bit_counter[0]~6\,
	combout => \bit_counter[1]~7_combout\,
	cout => \bit_counter[1]~8\);

-- Location: FF_X28_Y1_N19
\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter[1]~7_combout\,
	sclr => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

-- Location: LCCOMB_X28_Y1_N20
\bit_counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter[2]~9_combout\ = (bit_counter(2) & (\bit_counter[1]~8\ $ (GND))) # (!bit_counter(2) & (!\bit_counter[1]~8\ & VCC))
-- \bit_counter[2]~10\ = CARRY((bit_counter(2) & !\bit_counter[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(2),
	datad => VCC,
	cin => \bit_counter[1]~8\,
	combout => \bit_counter[2]~9_combout\,
	cout => \bit_counter[2]~10\);

-- Location: FF_X28_Y1_N21
\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter[2]~9_combout\,
	sclr => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

-- Location: LCCOMB_X28_Y1_N22
\bit_counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter[3]~11_combout\ = (bit_counter(3) & (!\bit_counter[2]~10\)) # (!bit_counter(3) & ((\bit_counter[2]~10\) # (GND)))
-- \bit_counter[3]~12\ = CARRY((!\bit_counter[2]~10\) # (!bit_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datad => VCC,
	cin => \bit_counter[2]~10\,
	combout => \bit_counter[3]~11_combout\,
	cout => \bit_counter[3]~12\);

-- Location: FF_X28_Y1_N23
\bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter[3]~11_combout\,
	sclr => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(3));

-- Location: LCCOMB_X28_Y1_N24
\bit_counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_counter[4]~13_combout\ = \bit_counter[3]~12\ $ (!bit_counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_counter(4),
	cin => \bit_counter[3]~12\,
	combout => \bit_counter[4]~13_combout\);

-- Location: FF_X28_Y1_N25
\bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter[4]~13_combout\,
	sclr => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(4));

-- Location: LCCOMB_X28_Y1_N14
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (bit_counter(4) & (bit_counter(3) & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(4),
	datac => bit_counter(3),
	datad => \Equal2~0_combout\,
	combout => \Equal3~0_combout\);

-- Location: FF_X28_Y1_N17
\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \bit_counter[0]~5_combout\,
	sclr => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

-- Location: LCCOMB_X28_Y1_N10
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!bit_counter(0) & (bit_counter(2) & bit_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(0),
	datac => bit_counter(2),
	datad => bit_counter(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X28_Y1_N30
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!bit_counter(4) & (!bit_counter(3) & !bit_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(4),
	datac => bit_counter(3),
	datad => bit_counter(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X28_Y1_N0
\GPIO0_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GPIO0_D~0_combout\ = (\GPIO0_D[0]~reg0_q\) # ((!bit_counter(1) & (\Equal1~0_combout\ & !bit_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO0_D[0]~reg0_q\,
	datab => bit_counter(1),
	datac => \Equal1~0_combout\,
	datad => bit_counter(0),
	combout => \GPIO0_D~0_combout\);

-- Location: LCCOMB_X28_Y1_N28
\GPIO0_D~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GPIO0_D~1_combout\ = (\GPIO0_D~0_combout\ & (((bit_counter(4)) # (bit_counter(3))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => bit_counter(4),
	datac => bit_counter(3),
	datad => \GPIO0_D~0_combout\,
	combout => \GPIO0_D~1_combout\);

-- Location: FF_X28_Y1_N29
\GPIO0_D[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|Clk_aux~clkctrl_outclk\,
	d => \GPIO0_D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GPIO0_D[0]~reg0_q\);

-- Location: LCCOMB_X28_Y1_N12
\send_aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \send_aux~0_combout\ = (\Equal1~0_combout\ & ((bit_counter(1) & (\send_aux~q\ & !bit_counter(0))) # (!bit_counter(1) & ((\send_aux~q\) # (!bit_counter(0)))))) # (!\Equal1~0_combout\ & (((\send_aux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => bit_counter(1),
	datac => \send_aux~q\,
	datad => bit_counter(0),
	combout => \send_aux~0_combout\);

-- Location: FF_X28_Y1_N13
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

-- Location: LCCOMB_X27_Y1_N24
\COM_X|sending~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|sending~0_combout\ = (\COM_X|sending~q\ & (((!\COM_X|bit_counter\(1))) # (!\COM_X|bit_counter\(0)))) # (!\COM_X|sending~q\ & (((\send_aux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(0),
	datab => \send_aux~q\,
	datac => \COM_X|sending~q\,
	datad => \COM_X|bit_counter\(1),
	combout => \COM_X|sending~0_combout\);

-- Location: FF_X27_Y1_N25
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

-- Location: LCCOMB_X27_Y1_N30
\COM_X|bit_counter[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[1]~1_combout\ = (\COM_X|bit_counter\(1) & (((\COM_X|sending~q\) # (!\send_aux~q\)))) # (!\COM_X|bit_counter\(1) & (\COM_X|bit_counter\(0) & ((\COM_X|sending~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(0),
	datab => \send_aux~q\,
	datac => \COM_X|bit_counter\(1),
	datad => \COM_X|sending~q\,
	combout => \COM_X|bit_counter[1]~1_combout\);

-- Location: FF_X27_Y1_N31
\COM_X|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|bit_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|bit_counter\(1));

-- Location: LCCOMB_X27_Y1_N28
\COM_X|bit_counter[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|bit_counter[0]~0_combout\ = (\COM_X|bit_counter\(0) & ((\COM_X|sending~q\ & (\COM_X|bit_counter\(1))) # (!\COM_X|sending~q\ & ((!\send_aux~q\))))) # (!\COM_X|bit_counter\(0) & (((\COM_X|sending~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \send_aux~q\,
	datac => \COM_X|bit_counter\(0),
	datad => \COM_X|sending~q\,
	combout => \COM_X|bit_counter[0]~0_combout\);

-- Location: FF_X27_Y1_N29
\COM_X|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|bit_counter\(0));

-- Location: LCCOMB_X27_Y1_N26
\COM_X|shift_reg[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|shift_reg[2]~0_combout\ = (\COM_X|shift_reg\(2)) # ((\send_aux~q\ & !\COM_X|sending~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \send_aux~q\,
	datac => \COM_X|shift_reg\(2),
	datad => \COM_X|sending~q\,
	combout => \COM_X|shift_reg[2]~0_combout\);

-- Location: FF_X27_Y1_N27
\COM_X|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|shift_reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|shift_reg\(2));

-- Location: LCCOMB_X28_Y1_N2
\COM_X|data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~0_combout\ = (!\COM_X|bit_counter\(0) & (\COM_X|shift_reg\(2) & \COM_X|sending~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COM_X|bit_counter\(0),
	datac => \COM_X|shift_reg\(2),
	datad => \COM_X|sending~q\,
	combout => \COM_X|data_out~0_combout\);

-- Location: LCCOMB_X28_Y1_N26
\COM_X|data_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_X|data_out~1_combout\ = (\COM_X|sending~q\) # (!\send_aux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COM_X|sending~q\,
	datad => \send_aux~q\,
	combout => \COM_X|data_out~1_combout\);

-- Location: FF_X28_Y1_N3
\COM_X|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_X|data_out~0_combout\,
	ena => \COM_X|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_X|data_out~q\);

-- Location: LCCOMB_X28_Y1_N4
\COM_Y|data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COM_Y|data_out~0_combout\ = (\COM_X|sending~q\ & (\COM_X|shift_reg\(2) & ((\COM_X|bit_counter\(1)) # (!\COM_X|bit_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COM_X|bit_counter\(1),
	datab => \COM_X|sending~q\,
	datac => \COM_X|shift_reg\(2),
	datad => \COM_X|bit_counter\(0),
	combout => \COM_Y|data_out~0_combout\);

-- Location: FF_X28_Y1_N5
\COM_Y|data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|ALT_INV_Clk_aux~clkctrl_outclk\,
	d => \COM_Y|data_out~0_combout\,
	ena => \COM_X|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COM_Y|data_out~q\);

ww_GPIO0_D(0) <= \GPIO0_D[0]~output_o\;

ww_GPIO0_D(1) <= \GPIO0_D[1]~output_o\;

ww_GPIO0_D(2) <= \GPIO0_D[2]~output_o\;
END structure;


