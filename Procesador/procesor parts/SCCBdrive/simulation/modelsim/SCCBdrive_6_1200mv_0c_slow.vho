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

-- DATE "04/21/2024 18:20:19"

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

ENTITY 	SCCBdrive IS
    PORT (
	clk800 : IN std_logic;
	E : IN std_logic;
	rst : IN std_logic;
	SIO_C : OUT std_logic;
	SIO_D : OUT std_logic;
	PWDN : OUT std_logic;
	LIVE : OUT std_logic
	);
END SCCBdrive;

-- Design Ports Information
-- SIO_C	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIO_D	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDN	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIVE	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk800	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SCCBdrive IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk800 : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_SIO_C : std_logic;
SIGNAL ww_SIO_D : std_logic;
SIGNAL ww_PWDN : std_logic;
SIGNAL ww_LIVE : std_logic;
SIGNAL \clk800~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk400data~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SIO_C~output_o\ : std_logic;
SIGNAL \SIO_D~output_o\ : std_logic;
SIGNAL \PWDN~output_o\ : std_logic;
SIGNAL \LIVE~output_o\ : std_logic;
SIGNAL \clk800~input_o\ : std_logic;
SIGNAL \clk800~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \C_Esync~q\ : std_logic;
SIGNAL \clk400D~combout\ : std_logic;
SIGNAL \clk400data~q\ : std_logic;
SIGNAL \REGS|Esync~feeder_combout\ : std_logic;
SIGNAL \REGS|Esync~q\ : std_logic;
SIGNAL \clk400data~clkctrl_outclk\ : std_logic;
SIGNAL \REGS|Q[1]~0_combout\ : std_logic;
SIGNAL \REGS|D[2]~24_combout\ : std_logic;
SIGNAL \REGS|cD[2]~24_combout\ : std_logic;
SIGNAL \REGS|cD[3]~23_combout\ : std_logic;
SIGNAL \REGS|cD[4]~22_combout\ : std_logic;
SIGNAL \REGS|cD[5]~21_combout\ : std_logic;
SIGNAL \REGS|cD[6]~20_combout\ : std_logic;
SIGNAL \REGS|cD[7]~19_combout\ : std_logic;
SIGNAL \REGS|cD[8]~18_combout\ : std_logic;
SIGNAL \REGS|cD[9]~17_combout\ : std_logic;
SIGNAL \REGS|cD[10]~16_combout\ : std_logic;
SIGNAL \REGS|cD[11]~15_combout\ : std_logic;
SIGNAL \REGS|cD[12]~14_combout\ : std_logic;
SIGNAL \REGS|cD[13]~13_combout\ : std_logic;
SIGNAL \REGS|cD[14]~12_combout\ : std_logic;
SIGNAL \REGS|cD[15]~11_combout\ : std_logic;
SIGNAL \REGS|cD[16]~10_combout\ : std_logic;
SIGNAL \REGS|cD[17]~9_combout\ : std_logic;
SIGNAL \REGS|cD[18]~8_combout\ : std_logic;
SIGNAL \REGS|cD[19]~7_combout\ : std_logic;
SIGNAL \REGS|cD[20]~6_combout\ : std_logic;
SIGNAL \REGS|cD[21]~5_combout\ : std_logic;
SIGNAL \REGS|cD[22]~4_combout\ : std_logic;
SIGNAL \REGS|cD[23]~3_combout\ : std_logic;
SIGNAL \REGS|cD[24]~2_combout\ : std_logic;
SIGNAL \REGS|cD[25]~1_combout\ : std_logic;
SIGNAL \REGS|cQ[25]~feeder_combout\ : std_logic;
SIGNAL \REGS|cD[26]~0_combout\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \clkE~combout\ : std_logic;
SIGNAL \clk400~q\ : std_logic;
SIGNAL \dataEedge~0_combout\ : std_logic;
SIGNAL \dataEedge~combout\ : std_logic;
SIGNAL \mssgGO~0_combout\ : std_logic;
SIGNAL \mssgGO~q\ : std_logic;
SIGNAL \C_Eedge~combout\ : std_logic;
SIGNAL \C_E~0_combout\ : std_logic;
SIGNAL \C_E~q\ : std_logic;
SIGNAL \SIO_C~0_combout\ : std_logic;
SIGNAL \REGS|D[3]~23_combout\ : std_logic;
SIGNAL \REGS|D[4]~22_combout\ : std_logic;
SIGNAL \REGS|D[5]~21_combout\ : std_logic;
SIGNAL \REGS|D[6]~20_combout\ : std_logic;
SIGNAL \REGS|D[7]~19_combout\ : std_logic;
SIGNAL \REGS|D[8]~18_combout\ : std_logic;
SIGNAL \REGS|D[9]~17_combout\ : std_logic;
SIGNAL \REGS|D[10]~16_combout\ : std_logic;
SIGNAL \REGS|D[11]~15_combout\ : std_logic;
SIGNAL \REGS|D[12]~14_combout\ : std_logic;
SIGNAL \REGS|D[13]~13_combout\ : std_logic;
SIGNAL \REGS|D[14]~12_combout\ : std_logic;
SIGNAL \REGS|D[15]~11_combout\ : std_logic;
SIGNAL \REGS|D[16]~10_combout\ : std_logic;
SIGNAL \REGS|D[17]~9_combout\ : std_logic;
SIGNAL \REGS|D[18]~8_combout\ : std_logic;
SIGNAL \REGS|D[19]~7_combout\ : std_logic;
SIGNAL \REGS|D[20]~6_combout\ : std_logic;
SIGNAL \REGS|D[21]~5_combout\ : std_logic;
SIGNAL \REGS|D[22]~4_combout\ : std_logic;
SIGNAL \REGS|D[23]~3_combout\ : std_logic;
SIGNAL \REGS|D[24]~2_combout\ : std_logic;
SIGNAL \REGS|D[25]~1_combout\ : std_logic;
SIGNAL \REGS|D[26]~0_combout\ : std_logic;
SIGNAL \SIO_D~0_combout\ : std_logic;
SIGNAL \REGS|cQ\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \REGS|Q\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_clk800~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk800 <= clk800;
ww_E <= E;
ww_rst <= rst;
SIO_C <= ww_SIO_C;
SIO_D <= ww_SIO_D;
PWDN <= ww_PWDN;
LIVE <= ww_LIVE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk800~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk800~input_o\);

\clk400data~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk400data~q\);
\ALT_INV_clk800~inputclkctrl_outclk\ <= NOT \clk800~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X9_Y29_N16
\SIO_C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIO_C~0_combout\,
	devoe => ww_devoe,
	o => \SIO_C~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\SIO_D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIO_D~0_combout\,
	devoe => ww_devoe,
	o => \SIO_D~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\PWDN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PWDN~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\LIVE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LIVE~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk800~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk800,
	o => \clk800~input_o\);

-- Location: CLKCTRL_G4
\clk800~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk800~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk800~inputclkctrl_outclk\);

-- Location: IOIBUF_X11_Y29_N29
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X10_Y27_N7
C_Esync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~inputclkctrl_outclk\,
	asdata => \C_E~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_Esync~q\);

-- Location: LCCOMB_X10_Y27_N6
clk400D : cycloneiii_lcell_comb
-- Equation(s):
-- \clk400D~combout\ = (\C_Esync~q\ & !\clk400data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C_Esync~q\,
	datad => \clk400data~q\,
	combout => \clk400D~combout\);

-- Location: FF_X11_Y27_N7
clk400data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk800~inputclkctrl_outclk\,
	asdata => \clk400D~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk400data~q\);

-- Location: LCCOMB_X12_Y27_N24
\REGS|Esync~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|Esync~feeder_combout\ = \mssgGO~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mssgGO~q\,
	combout => \REGS|Esync~feeder_combout\);

-- Location: FF_X12_Y27_N25
\REGS|Esync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~q\,
	d => \REGS|Esync~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Esync~q\);

-- Location: CLKCTRL_G14
\clk400data~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk400data~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk400data~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y28_N20
\REGS|Q[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|Q[1]~0_combout\ = !\REGS|Esync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	combout => \REGS|Q[1]~0_combout\);

-- Location: FF_X9_Y28_N1
\REGS|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|Q[1]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(1));

-- Location: LCCOMB_X9_Y28_N0
\REGS|D[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[2]~24_combout\ = (\REGS|Q\(1)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(1),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[2]~24_combout\);

-- Location: FF_X9_Y28_N21
\REGS|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[2]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(2));

-- Location: LCCOMB_X8_Y28_N20
\REGS|cD[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[2]~24_combout\ = (\REGS|Q\(2)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datad => \REGS|Q\(2),
	combout => \REGS|cD[2]~24_combout\);

-- Location: FF_X8_Y28_N3
\REGS|cQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[2]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(2));

-- Location: LCCOMB_X8_Y28_N2
\REGS|cD[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[3]~23_combout\ = (\REGS|cQ\(2)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(2),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[3]~23_combout\);

-- Location: FF_X8_Y28_N1
\REGS|cQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[3]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(3));

-- Location: LCCOMB_X8_Y28_N0
\REGS|cD[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[4]~22_combout\ = (\REGS|cQ\(3)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(3),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[4]~22_combout\);

-- Location: FF_X8_Y28_N27
\REGS|cQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[4]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(4));

-- Location: LCCOMB_X8_Y28_N26
\REGS|cD[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[5]~21_combout\ = (\REGS|cQ\(4)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(4),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[5]~21_combout\);

-- Location: FF_X8_Y28_N29
\REGS|cQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[5]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(5));

-- Location: LCCOMB_X8_Y28_N28
\REGS|cD[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[6]~20_combout\ = (\REGS|cQ\(5)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(5),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[6]~20_combout\);

-- Location: FF_X8_Y28_N23
\REGS|cQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[6]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(6));

-- Location: LCCOMB_X8_Y28_N22
\REGS|cD[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[7]~19_combout\ = (\REGS|cQ\(6)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(6),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[7]~19_combout\);

-- Location: FF_X8_Y28_N5
\REGS|cQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[7]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(7));

-- Location: LCCOMB_X8_Y28_N4
\REGS|cD[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[8]~18_combout\ = (\REGS|cQ\(7)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(7),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[8]~18_combout\);

-- Location: FF_X8_Y28_N15
\REGS|cQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[8]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(8));

-- Location: LCCOMB_X8_Y28_N14
\REGS|cD[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[9]~17_combout\ = (\REGS|cQ\(8)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(8),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[9]~17_combout\);

-- Location: FF_X8_Y28_N9
\REGS|cQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[9]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(9));

-- Location: LCCOMB_X8_Y28_N8
\REGS|cD[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[10]~16_combout\ = (\REGS|cQ\(9)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(9),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[10]~16_combout\);

-- Location: FF_X8_Y28_N11
\REGS|cQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[10]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(10));

-- Location: LCCOMB_X8_Y28_N10
\REGS|cD[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[11]~15_combout\ = (\REGS|cQ\(10)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(10),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[11]~15_combout\);

-- Location: FF_X8_Y28_N13
\REGS|cQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[11]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(11));

-- Location: LCCOMB_X8_Y28_N12
\REGS|cD[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[12]~14_combout\ = (\REGS|cQ\(11)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(11),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[12]~14_combout\);

-- Location: FF_X8_Y28_N7
\REGS|cQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[12]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(12));

-- Location: LCCOMB_X8_Y28_N6
\REGS|cD[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[13]~13_combout\ = (\REGS|cQ\(12)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(12),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[13]~13_combout\);

-- Location: FF_X8_Y28_N17
\REGS|cQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(13));

-- Location: LCCOMB_X8_Y28_N16
\REGS|cD[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[14]~12_combout\ = (\REGS|cQ\(13)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(13),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[14]~12_combout\);

-- Location: FF_X8_Y28_N19
\REGS|cQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[14]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(14));

-- Location: LCCOMB_X8_Y28_N18
\REGS|cD[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[15]~11_combout\ = (\REGS|cQ\(14)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(14),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[15]~11_combout\);

-- Location: FF_X8_Y28_N25
\REGS|cQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[15]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(15));

-- Location: LCCOMB_X8_Y28_N24
\REGS|cD[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[16]~10_combout\ = (\REGS|cQ\(15)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(15),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[16]~10_combout\);

-- Location: FF_X8_Y28_N31
\REGS|cQ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[16]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(16));

-- Location: LCCOMB_X8_Y28_N30
\REGS|cD[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[17]~9_combout\ = (\REGS|cQ\(16)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(16),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[17]~9_combout\);

-- Location: FF_X8_Y28_N21
\REGS|cQ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[17]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(17));

-- Location: LCCOMB_X9_Y28_N22
\REGS|cD[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[18]~8_combout\ = (\REGS|cQ\(17)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(17),
	combout => \REGS|cD[18]~8_combout\);

-- Location: FF_X9_Y28_N9
\REGS|cQ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[18]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(18));

-- Location: LCCOMB_X9_Y28_N8
\REGS|cD[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[19]~7_combout\ = (\REGS|cQ\(18)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(18),
	combout => \REGS|cD[19]~7_combout\);

-- Location: FF_X10_Y28_N29
\REGS|cQ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[19]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(19));

-- Location: LCCOMB_X10_Y28_N28
\REGS|cD[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[20]~6_combout\ = (\REGS|cQ\(19)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(19),
	combout => \REGS|cD[20]~6_combout\);

-- Location: FF_X10_Y28_N7
\REGS|cQ[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[20]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(20));

-- Location: LCCOMB_X10_Y28_N6
\REGS|cD[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[21]~5_combout\ = (\REGS|cQ\(20)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(20),
	combout => \REGS|cD[21]~5_combout\);

-- Location: FF_X10_Y28_N25
\REGS|cQ[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[21]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(21));

-- Location: LCCOMB_X10_Y28_N24
\REGS|cD[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[22]~4_combout\ = (\REGS|cQ\(21)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(21),
	combout => \REGS|cD[22]~4_combout\);

-- Location: FF_X10_Y28_N19
\REGS|cQ[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[22]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(22));

-- Location: LCCOMB_X10_Y28_N18
\REGS|cD[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[23]~3_combout\ = (\REGS|cQ\(22)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(22),
	combout => \REGS|cD[23]~3_combout\);

-- Location: FF_X10_Y28_N17
\REGS|cQ[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[23]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(23));

-- Location: LCCOMB_X10_Y28_N16
\REGS|cD[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[24]~2_combout\ = (\REGS|cQ\(23)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(23),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[24]~2_combout\);

-- Location: FF_X11_Y28_N23
\REGS|cQ[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[24]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(24));

-- Location: LCCOMB_X11_Y28_N22
\REGS|cD[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[25]~1_combout\ = (\REGS|cQ\(24)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(24),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[25]~1_combout\);

-- Location: LCCOMB_X12_Y28_N6
\REGS|cQ[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cQ[25]~feeder_combout\ = \REGS|cD[25]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|cD[25]~1_combout\,
	combout => \REGS|cQ[25]~feeder_combout\);

-- Location: FF_X12_Y28_N7
\REGS|cQ[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cQ[25]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(25));

-- Location: LCCOMB_X12_Y28_N30
\REGS|cD[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[26]~0_combout\ = (\REGS|cQ\(25)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(25),
	combout => \REGS|cD[26]~0_combout\);

-- Location: FF_X12_Y28_N31
\REGS|cQ[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~q\,
	d => \REGS|cD[26]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(26));

-- Location: IOIBUF_X11_Y29_N8
\E~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: LCCOMB_X12_Y27_N26
clkE : cycloneiii_lcell_comb
-- Equation(s):
-- \clkE~combout\ = (!\clk400~q\) # (!\E~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E~input_o\,
	datac => \clk400~q\,
	combout => \clkE~combout\);

-- Location: FF_X12_Y27_N27
clk400 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~input_o\,
	d => \clkE~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk400~q\);

-- Location: LCCOMB_X12_Y27_N30
\dataEedge~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataEedge~0_combout\ = (\clk400~q\ & (((\rst~input_o\) # (!\REGS|Esync~q\)) # (!\REGS|cQ\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|cQ\(26),
	datab => \rst~input_o\,
	datac => \clk400~q\,
	datad => \REGS|Esync~q\,
	combout => \dataEedge~0_combout\);

-- Location: LCCOMB_X11_Y27_N30
dataEedge : cycloneiii_lcell_comb
-- Equation(s):
-- \dataEedge~combout\ = LCELL((!\clk400data~q\) # (!\dataEedge~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataEedge~0_combout\,
	datad => \clk400data~q\,
	combout => \dataEedge~combout\);

-- Location: LCCOMB_X11_Y27_N14
\mssgGO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mssgGO~0_combout\ = !\mssgGO~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mssgGO~q\,
	combout => \mssgGO~0_combout\);

-- Location: FF_X11_Y27_N15
mssgGO : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dataEedge~combout\,
	d => \mssgGO~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mssgGO~q\);

-- Location: LCCOMB_X11_Y27_N26
C_Eedge : cycloneiii_lcell_comb
-- Equation(s):
-- \C_Eedge~combout\ = LCELL((\C_E~q\ & (!\mssgGO~q\)) # (!\C_E~q\ & ((\E~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_E~q\,
	datac => \mssgGO~q\,
	datad => \E~input_o\,
	combout => \C_Eedge~combout\);

-- Location: LCCOMB_X10_Y27_N4
\C_E~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_E~0_combout\ = !\C_E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C_E~q\,
	combout => \C_E~0_combout\);

-- Location: FF_X10_Y27_N5
C_E : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C_Eedge~combout\,
	d => \C_E~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_E~q\);

-- Location: LCCOMB_X11_Y27_N6
\SIO_C~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SIO_C~0_combout\ = (\clk400~q\) # (!\C_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_E~q\,
	datad => \clk400~q\,
	combout => \SIO_C~0_combout\);

-- Location: LCCOMB_X9_Y28_N30
\REGS|D[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[3]~23_combout\ = (\REGS|Esync~q\ & \REGS|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(2),
	combout => \REGS|D[3]~23_combout\);

-- Location: FF_X9_Y28_N7
\REGS|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[3]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(3));

-- Location: LCCOMB_X9_Y28_N6
\REGS|D[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[4]~22_combout\ = (\REGS|Esync~q\ & \REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(3),
	combout => \REGS|D[4]~22_combout\);

-- Location: FF_X9_Y28_N17
\REGS|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[4]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(4));

-- Location: LCCOMB_X9_Y28_N16
\REGS|D[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[5]~21_combout\ = (\REGS|Esync~q\ & \REGS|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(4),
	combout => \REGS|D[5]~21_combout\);

-- Location: FF_X9_Y28_N15
\REGS|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[5]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(5));

-- Location: LCCOMB_X9_Y28_N14
\REGS|D[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[6]~20_combout\ = (\REGS|Esync~q\ & \REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(5),
	combout => \REGS|D[6]~20_combout\);

-- Location: FF_X9_Y28_N25
\REGS|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[6]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(6));

-- Location: LCCOMB_X9_Y28_N24
\REGS|D[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[7]~19_combout\ = (\REGS|Esync~q\ & \REGS|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(6),
	combout => \REGS|D[7]~19_combout\);

-- Location: FF_X10_Y28_N31
\REGS|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[7]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(7));

-- Location: LCCOMB_X10_Y28_N30
\REGS|D[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[8]~18_combout\ = (\REGS|Esync~q\ & \REGS|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(7),
	combout => \REGS|D[8]~18_combout\);

-- Location: FF_X10_Y28_N13
\REGS|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[8]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(8));

-- Location: LCCOMB_X10_Y28_N12
\REGS|D[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[9]~17_combout\ = (\REGS|Esync~q\ & \REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(8),
	combout => \REGS|D[9]~17_combout\);

-- Location: FF_X10_Y28_N15
\REGS|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[9]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(9));

-- Location: LCCOMB_X10_Y28_N14
\REGS|D[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[10]~16_combout\ = (\REGS|Esync~q\ & \REGS|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(9),
	combout => \REGS|D[10]~16_combout\);

-- Location: FF_X10_Y28_N9
\REGS|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[10]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(10));

-- Location: LCCOMB_X10_Y28_N8
\REGS|D[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[11]~15_combout\ = (\REGS|Esync~q\ & \REGS|Q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(10),
	combout => \REGS|D[11]~15_combout\);

-- Location: FF_X10_Y28_N11
\REGS|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[11]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(11));

-- Location: LCCOMB_X10_Y28_N10
\REGS|D[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[12]~14_combout\ = (\REGS|Q\(11)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(11),
	combout => \REGS|D[12]~14_combout\);

-- Location: FF_X11_Y28_N3
\REGS|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[12]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(12));

-- Location: LCCOMB_X11_Y28_N2
\REGS|D[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[13]~13_combout\ = (\REGS|Q\(12)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(12),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[13]~13_combout\);

-- Location: FF_X11_Y28_N1
\REGS|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(13));

-- Location: LCCOMB_X11_Y28_N0
\REGS|D[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[14]~12_combout\ = (\REGS|Esync~q\ & \REGS|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(13),
	combout => \REGS|D[14]~12_combout\);

-- Location: FF_X11_Y28_N7
\REGS|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[14]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(14));

-- Location: LCCOMB_X11_Y28_N6
\REGS|D[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[15]~11_combout\ = (\REGS|Esync~q\ & \REGS|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(14),
	combout => \REGS|D[15]~11_combout\);

-- Location: FF_X11_Y28_N13
\REGS|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[15]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(15));

-- Location: LCCOMB_X11_Y28_N12
\REGS|D[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[16]~10_combout\ = (\REGS|Esync~q\ & \REGS|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(15),
	combout => \REGS|D[16]~10_combout\);

-- Location: FF_X11_Y28_N31
\REGS|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[16]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(16));

-- Location: LCCOMB_X11_Y28_N30
\REGS|D[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[17]~9_combout\ = (\REGS|Q\(16)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(16),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[17]~9_combout\);

-- Location: FF_X11_Y28_N21
\REGS|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[17]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(17));

-- Location: LCCOMB_X11_Y28_N20
\REGS|D[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[18]~8_combout\ = (\REGS|Esync~q\ & \REGS|Q\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(17),
	combout => \REGS|D[18]~8_combout\);

-- Location: FF_X11_Y28_N19
\REGS|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[18]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(18));

-- Location: LCCOMB_X11_Y28_N18
\REGS|D[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[19]~7_combout\ = (\REGS|Esync~q\ & \REGS|Q\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(18),
	combout => \REGS|D[19]~7_combout\);

-- Location: FF_X11_Y28_N9
\REGS|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[19]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(19));

-- Location: LCCOMB_X11_Y28_N8
\REGS|D[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[20]~6_combout\ = (\REGS|Q\(19)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(19),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[20]~6_combout\);

-- Location: FF_X11_Y28_N27
\REGS|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[20]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(20));

-- Location: LCCOMB_X11_Y28_N26
\REGS|D[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[21]~5_combout\ = (\REGS|Esync~q\ & \REGS|Q\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(20),
	combout => \REGS|D[21]~5_combout\);

-- Location: FF_X11_Y28_N29
\REGS|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[21]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(21));

-- Location: LCCOMB_X11_Y28_N28
\REGS|D[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[22]~4_combout\ = (\REGS|Esync~q\ & \REGS|Q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(21),
	combout => \REGS|D[22]~4_combout\);

-- Location: FF_X11_Y28_N5
\REGS|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[22]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(22));

-- Location: LCCOMB_X11_Y28_N4
\REGS|D[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[23]~3_combout\ = (\REGS|Esync~q\ & \REGS|Q\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(22),
	combout => \REGS|D[23]~3_combout\);

-- Location: FF_X11_Y28_N15
\REGS|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[23]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(23));

-- Location: LCCOMB_X11_Y28_N14
\REGS|D[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[24]~2_combout\ = (\REGS|Esync~q\ & \REGS|Q\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(23),
	combout => \REGS|D[24]~2_combout\);

-- Location: FF_X11_Y28_N17
\REGS|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[24]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(24));

-- Location: LCCOMB_X11_Y28_N16
\REGS|D[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[25]~1_combout\ = (\REGS|Q\(24)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(24),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[25]~1_combout\);

-- Location: FF_X11_Y28_N11
\REGS|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[25]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(25));

-- Location: LCCOMB_X11_Y28_N10
\REGS|D[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[26]~0_combout\ = (\REGS|Esync~q\ & \REGS|Q\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|Q\(25),
	combout => \REGS|D[26]~0_combout\);

-- Location: FF_X11_Y28_N25
\REGS|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[26]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(26));

-- Location: LCCOMB_X11_Y28_N24
\SIO_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SIO_D~0_combout\ = ((!\rst~input_o\ & (\REGS|Q\(26) & \REGS|Esync~q\))) # (!\mssgGO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mssgGO~q\,
	datab => \rst~input_o\,
	datac => \REGS|Q\(26),
	datad => \REGS|Esync~q\,
	combout => \SIO_D~0_combout\);

ww_SIO_C <= \SIO_C~output_o\;

ww_SIO_D <= \SIO_D~output_o\;

ww_PWDN <= \PWDN~output_o\;

ww_LIVE <= \LIVE~output_o\;
END structure;


