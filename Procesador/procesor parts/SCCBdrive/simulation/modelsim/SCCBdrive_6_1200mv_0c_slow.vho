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

-- DATE "04/28/2024 00:52:21"

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
	LIVE : OUT std_logic
	);
END SCCBdrive;

-- Design Ports Information
-- SIO_C	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIO_D	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIVE	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk800	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LIVE : std_logic;
SIGNAL \clk800~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk400data~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SIO_C~output_o\ : std_logic;
SIGNAL \SIO_D~output_o\ : std_logic;
SIGNAL \LIVE~output_o\ : std_logic;
SIGNAL \clk800~input_o\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \clk800~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk400D~combout\ : std_logic;
SIGNAL \clk400data~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk400data~q\ : std_logic;
SIGNAL \REGS|Esync~q\ : std_logic;
SIGNAL \clk400data~clkctrl_outclk\ : std_logic;
SIGNAL \REGS|cQ[0]~0_combout\ : std_logic;
SIGNAL \REGS|cD[1]~25_combout\ : std_logic;
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
SIGNAL \dataEedge~0_combout\ : std_logic;
SIGNAL \dataEedge~combout\ : std_logic;
SIGNAL \mssgGO~0_combout\ : std_logic;
SIGNAL \mssgGO~q\ : std_logic;
SIGNAL \C_Eedge~combout\ : std_logic;
SIGNAL \C_E~0_combout\ : std_logic;
SIGNAL \C_E~q\ : std_logic;
SIGNAL \C_Esync~feeder_combout\ : std_logic;
SIGNAL \C_Esync~q\ : std_logic;
SIGNAL \DeInd~combout\ : std_logic;
SIGNAL \eInd~q\ : std_logic;
SIGNAL \clkE~combout\ : std_logic;
SIGNAL \clk400~q\ : std_logic;
SIGNAL \SIO_C~0_combout\ : std_logic;
SIGNAL \D1~0_combout\ : std_logic;
SIGNAL \Q1~q\ : std_logic;
SIGNAL \D0~0_combout\ : std_logic;
SIGNAL \Q0~q\ : std_logic;
SIGNAL \REGS|D[2]~24_combout\ : std_logic;
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
SIGNAL \LIVE~0_combout\ : std_logic;
SIGNAL \LIVE~reg0_q\ : std_logic;
SIGNAL \REGS|cQ\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \REGS|Q\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk800~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk800~input_o\ : std_logic;

BEGIN

ww_clk800 <= clk800;
ww_E <= E;
ww_rst <= rst;
SIO_C <= ww_SIO_C;
SIO_D <= ww_SIO_D;
LIVE <= ww_LIVE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk800~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk800~input_o\);

\clk400data~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk400data~q\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_clk800~inputclkctrl_outclk\ <= NOT \clk800~inputclkctrl_outclk\;
\ALT_INV_clk800~input_o\ <= NOT \clk800~input_o\;

-- Location: IOOBUF_X26_Y29_N23
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

-- Location: IOOBUF_X26_Y29_N16
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

-- Location: IOOBUF_X26_Y29_N30
\LIVE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LIVE~reg0_q\,
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

-- Location: IOIBUF_X26_Y29_N8
\E~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

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

-- Location: LCCOMB_X23_Y21_N18
clk400D : cycloneiii_lcell_comb
-- Equation(s):
-- \clk400D~combout\ = (!\clk400data~q\ & \C_Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk400data~q\,
	datad => \C_Esync~q\,
	combout => \clk400D~combout\);

-- Location: LCCOMB_X23_Y21_N24
\clk400data~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk400data~feeder_combout\ = \clk400D~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk400D~combout\,
	combout => \clk400data~feeder_combout\);

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

-- Location: FF_X23_Y21_N25
clk400data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk800~inputclkctrl_outclk\,
	d => \clk400data~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk400data~q\);

-- Location: FF_X26_Y21_N9
\REGS|Esync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~q\,
	asdata => \mssgGO~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Esync~q\);

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X28_Y21_N14
\REGS|cQ[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cQ[0]~0_combout\ = !\REGS|Esync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGS|Esync~q\,
	combout => \REGS|cQ[0]~0_combout\);

-- Location: FF_X28_Y21_N13
\REGS|cQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cQ[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(0));

-- Location: LCCOMB_X28_Y21_N12
\REGS|cD[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[1]~25_combout\ = (\REGS|cQ\(0)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(0),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[1]~25_combout\);

-- Location: FF_X28_Y21_N23
\REGS|cQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[1]~25_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(1));

-- Location: LCCOMB_X28_Y21_N22
\REGS|cD[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[2]~24_combout\ = (\REGS|cQ\(1)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(1),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[2]~24_combout\);

-- Location: FF_X28_Y21_N21
\REGS|cQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[2]~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(2));

-- Location: LCCOMB_X28_Y21_N20
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

-- Location: FF_X28_Y21_N19
\REGS|cQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[3]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(3));

-- Location: LCCOMB_X28_Y21_N18
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

-- Location: FF_X28_Y21_N25
\REGS|cQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[4]~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(4));

-- Location: LCCOMB_X28_Y21_N24
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

-- Location: FF_X28_Y21_N3
\REGS|cQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[5]~21_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(5));

-- Location: LCCOMB_X28_Y21_N2
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

-- Location: FF_X28_Y21_N9
\REGS|cQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[6]~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(6));

-- Location: LCCOMB_X28_Y21_N8
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

-- Location: FF_X28_Y21_N7
\REGS|cQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[7]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(7));

-- Location: LCCOMB_X28_Y21_N6
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

-- Location: FF_X28_Y21_N1
\REGS|cQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[8]~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(8));

-- Location: LCCOMB_X28_Y21_N0
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

-- Location: FF_X28_Y21_N27
\REGS|cQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[9]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(9));

-- Location: LCCOMB_X28_Y21_N26
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

-- Location: FF_X28_Y21_N5
\REGS|cQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[10]~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(10));

-- Location: LCCOMB_X28_Y21_N4
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

-- Location: FF_X28_Y21_N31
\REGS|cQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[11]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(11));

-- Location: LCCOMB_X28_Y21_N30
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

-- Location: FF_X28_Y21_N29
\REGS|cQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[12]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(12));

-- Location: LCCOMB_X28_Y21_N28
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

-- Location: FF_X28_Y21_N11
\REGS|cQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(13));

-- Location: LCCOMB_X28_Y21_N10
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

-- Location: FF_X28_Y21_N17
\REGS|cQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[14]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(14));

-- Location: LCCOMB_X28_Y21_N16
\REGS|cD[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[15]~11_combout\ = (\REGS|cQ\(14)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datac => \REGS|cQ\(14),
	combout => \REGS|cD[15]~11_combout\);

-- Location: FF_X27_Y21_N25
\REGS|cQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[15]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(15));

-- Location: LCCOMB_X27_Y21_N24
\REGS|cD[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[16]~10_combout\ = (\REGS|cQ\(15)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(15),
	combout => \REGS|cD[16]~10_combout\);

-- Location: FF_X27_Y21_N27
\REGS|cQ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[16]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(16));

-- Location: LCCOMB_X27_Y21_N26
\REGS|cD[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[17]~9_combout\ = (\REGS|cQ\(16)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(16),
	combout => \REGS|cD[17]~9_combout\);

-- Location: FF_X27_Y21_N7
\REGS|cQ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[17]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(17));

-- Location: LCCOMB_X27_Y21_N6
\REGS|cD[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[18]~8_combout\ = (\REGS|cQ\(17)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(17),
	combout => \REGS|cD[18]~8_combout\);

-- Location: FF_X27_Y21_N21
\REGS|cQ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[18]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(18));

-- Location: LCCOMB_X27_Y21_N20
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

-- Location: FF_X27_Y21_N13
\REGS|cQ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[19]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(19));

-- Location: LCCOMB_X27_Y21_N12
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

-- Location: FF_X27_Y21_N15
\REGS|cQ[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[20]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(20));

-- Location: LCCOMB_X27_Y21_N14
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

-- Location: FF_X27_Y21_N5
\REGS|cQ[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[21]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(21));

-- Location: LCCOMB_X27_Y21_N4
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

-- Location: FF_X27_Y21_N17
\REGS|cQ[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[22]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(22));

-- Location: LCCOMB_X27_Y21_N16
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

-- Location: FF_X27_Y21_N11
\REGS|cQ[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[23]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(23));

-- Location: LCCOMB_X27_Y21_N10
\REGS|cD[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[24]~2_combout\ = (\REGS|cQ\(23)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(23),
	combout => \REGS|cD[24]~2_combout\);

-- Location: FF_X27_Y21_N23
\REGS|cQ[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|cD[24]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(24));

-- Location: LCCOMB_X27_Y21_N22
\REGS|cD[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[25]~1_combout\ = (\REGS|cQ\(24)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Esync~q\,
	datac => \REGS|cQ\(24),
	combout => \REGS|cD[25]~1_combout\);

-- Location: LCCOMB_X27_Y21_N2
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

-- Location: FF_X27_Y21_N3
\REGS|cQ[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cQ[25]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(25));

-- Location: LCCOMB_X26_Y21_N6
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

-- Location: FF_X26_Y21_N7
\REGS|cQ[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~q\,
	d => \REGS|cD[26]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(26));

-- Location: LCCOMB_X26_Y21_N28
\dataEedge~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataEedge~0_combout\ = (\clk400~q\ & (((\rst~input_o\) # (!\REGS|Esync~q\)) # (!\REGS|cQ\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|cQ\(26),
	datab => \rst~input_o\,
	datac => \REGS|Esync~q\,
	datad => \clk400~q\,
	combout => \dataEedge~0_combout\);

-- Location: LCCOMB_X26_Y21_N30
dataEedge : cycloneiii_lcell_comb
-- Equation(s):
-- \dataEedge~combout\ = LCELL((!\dataEedge~0_combout\) # (!\clk400data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk400data~q\,
	datad => \dataEedge~0_combout\,
	combout => \dataEedge~combout\);

-- Location: LCCOMB_X26_Y21_N14
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

-- Location: FF_X26_Y21_N15
mssgGO : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dataEedge~combout\,
	d => \mssgGO~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mssgGO~q\);

-- Location: LCCOMB_X27_Y21_N30
C_Eedge : cycloneiii_lcell_comb
-- Equation(s):
-- \C_Eedge~combout\ = LCELL((\C_E~q\ & (!\mssgGO~q\)) # (!\C_E~q\ & ((\eInd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mssgGO~q\,
	datac => \C_E~q\,
	datad => \eInd~q\,
	combout => \C_Eedge~combout\);

-- Location: LCCOMB_X27_Y21_N18
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

-- Location: FF_X27_Y21_N31
C_E : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C_Eedge~combout\,
	asdata => \C_E~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_E~q\);

-- Location: LCCOMB_X23_Y21_N0
\C_Esync~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_Esync~feeder_combout\ = \C_E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_E~q\,
	combout => \C_Esync~feeder_combout\);

-- Location: FF_X23_Y21_N1
C_Esync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~inputclkctrl_outclk\,
	d => \C_Esync~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_Esync~q\);

-- Location: LCCOMB_X26_Y22_N30
DeInd : cycloneiii_lcell_comb
-- Equation(s):
-- \DeInd~combout\ = (\E~input_o\ & (\eInd~q\ $ (!\C_Esync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datac => \eInd~q\,
	datad => \C_Esync~q\,
	combout => \DeInd~combout\);

-- Location: FF_X26_Y22_N31
eInd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk800~input_o\,
	d => \DeInd~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eInd~q\);

-- Location: LCCOMB_X26_Y22_N20
clkE : cycloneiii_lcell_comb
-- Equation(s):
-- \clkE~combout\ = (!\clk400~q\) # (!\eInd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eInd~q\,
	datac => \clk400~q\,
	combout => \clkE~combout\);

-- Location: FF_X26_Y22_N21
clk400 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~input_o\,
	d => \clkE~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk400~q\);

-- Location: LCCOMB_X26_Y21_N8
\SIO_C~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SIO_C~0_combout\ = (\clk400~q\) # (!\C_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk400~q\,
	datad => \C_E~q\,
	combout => \SIO_C~0_combout\);

-- Location: LCCOMB_X27_Y22_N12
\D1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1~0_combout\ = (\E~input_o\ & (\Q1~q\ $ (((\Q0~q\ & !\eInd~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => \Q0~q\,
	datac => \Q1~q\,
	datad => \eInd~q\,
	combout => \D1~0_combout\);

-- Location: FF_X27_Y22_N13
Q1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~inputclkctrl_outclk\,
	d => \D1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q1~q\);

-- Location: LCCOMB_X27_Y22_N14
\D0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D0~0_combout\ = (\E~input_o\ & ((\Q0~q\ & ((\eInd~q\))) # (!\Q0~q\ & ((!\eInd~q\) # (!\Q1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => \Q1~q\,
	datac => \Q0~q\,
	datad => \eInd~q\,
	combout => \D0~0_combout\);

-- Location: FF_X27_Y22_N15
Q0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~inputclkctrl_outclk\,
	d => \D0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q0~q\);

-- Location: FF_X24_Y22_N9
\REGS|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \Q0~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \REGS|Esync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(1));

-- Location: LCCOMB_X27_Y22_N2
\REGS|D[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[2]~24_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(1))) # (!\REGS|Esync~q\ & (((\Q0~q\ & \Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(1),
	datab => \REGS|Esync~q\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \REGS|D[2]~24_combout\);

-- Location: FF_X27_Y22_N1
\REGS|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[2]~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(2));

-- Location: LCCOMB_X27_Y22_N0
\REGS|D[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[3]~23_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(2))))) # (!\REGS|Esync~q\ & (\Q0~q\ & ((!\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \Q0~q\,
	datac => \REGS|Q\(2),
	datad => \Q1~q\,
	combout => \REGS|D[3]~23_combout\);

-- Location: FF_X27_Y22_N19
\REGS|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[3]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(3));

-- Location: LCCOMB_X27_Y22_N18
\REGS|D[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[4]~22_combout\ = (\REGS|Q\(3) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(3),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[4]~22_combout\);

-- Location: FF_X27_Y22_N29
\REGS|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[4]~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(4));

-- Location: LCCOMB_X27_Y22_N28
\REGS|D[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[5]~21_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(4))))) # (!\REGS|Esync~q\ & (!\Q0~q\ & ((\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \Q0~q\,
	datac => \REGS|Q\(4),
	datad => \Q1~q\,
	combout => \REGS|D[5]~21_combout\);

-- Location: FF_X27_Y22_N23
\REGS|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[5]~21_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(5));

-- Location: LCCOMB_X27_Y22_N22
\REGS|D[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[6]~20_combout\ = (\REGS|Q\(5) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(5),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[6]~20_combout\);

-- Location: FF_X27_Y22_N9
\REGS|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[6]~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(6));

-- Location: LCCOMB_X27_Y22_N8
\REGS|D[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[7]~19_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(6))))) # (!\REGS|Esync~q\ & (!\Q0~q\ & ((\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \Q0~q\,
	datac => \REGS|Q\(6),
	datad => \Q1~q\,
	combout => \REGS|D[7]~19_combout\);

-- Location: FF_X27_Y22_N27
\REGS|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[7]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(7));

-- Location: LCCOMB_X27_Y22_N26
\REGS|D[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[8]~18_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(7))))) # (!\REGS|Esync~q\ & (!\Q0~q\ & ((\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \Q0~q\,
	datac => \REGS|Q\(7),
	datad => \Q1~q\,
	combout => \REGS|D[8]~18_combout\);

-- Location: FF_X28_Y22_N19
\REGS|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[8]~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(8));

-- Location: LCCOMB_X28_Y22_N18
\REGS|D[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[9]~17_combout\ = (\REGS|Q\(8) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(8),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[9]~17_combout\);

-- Location: FF_X28_Y22_N13
\REGS|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[9]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(9));

-- Location: LCCOMB_X28_Y22_N12
\REGS|D[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[10]~16_combout\ = (\REGS|Q\(9) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(9),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[10]~16_combout\);

-- Location: FF_X27_Y22_N25
\REGS|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[10]~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(10));

-- Location: LCCOMB_X27_Y22_N24
\REGS|D[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[11]~15_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(10))))) # (!\REGS|Esync~q\ & (\Q0~q\ & ((!\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \Q0~q\,
	datac => \REGS|Q\(10),
	datad => \Q1~q\,
	combout => \REGS|D[11]~15_combout\);

-- Location: FF_X27_Y22_N7
\REGS|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[11]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(11));

-- Location: LCCOMB_X27_Y22_N6
\REGS|D[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[12]~14_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(11))))) # (!\REGS|Esync~q\ & (\Q0~q\ & ((\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \Q0~q\,
	datac => \REGS|Q\(11),
	datad => \Q1~q\,
	combout => \REGS|D[12]~14_combout\);

-- Location: FF_X27_Y22_N21
\REGS|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[12]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(12));

-- Location: LCCOMB_X27_Y22_N20
\REGS|D[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[13]~13_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(12))))) # (!\REGS|Esync~q\ & (\Q0~q\ & ((\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \Q0~q\,
	datac => \REGS|Q\(12),
	datad => \Q1~q\,
	combout => \REGS|D[13]~13_combout\);

-- Location: FF_X27_Y22_N31
\REGS|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(13));

-- Location: LCCOMB_X27_Y22_N30
\REGS|D[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[14]~12_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(13))))) # (!\REGS|Esync~q\ & (\Q0~q\ & ((!\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \Q0~q\,
	datac => \REGS|Q\(13),
	datad => \Q1~q\,
	combout => \REGS|D[14]~12_combout\);

-- Location: FF_X27_Y22_N5
\REGS|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[14]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(14));

-- Location: LCCOMB_X27_Y22_N4
\REGS|D[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[15]~11_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(14))))) # (!\REGS|Esync~q\ & (!\Q0~q\ & ((\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \Q0~q\,
	datac => \REGS|Q\(14),
	datad => \Q1~q\,
	combout => \REGS|D[15]~11_combout\);

-- Location: FF_X27_Y22_N11
\REGS|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[15]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(15));

-- Location: LCCOMB_X27_Y22_N10
\REGS|D[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[16]~10_combout\ = (\REGS|Q\(15) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(15),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[16]~10_combout\);

-- Location: FF_X28_Y22_N15
\REGS|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[16]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(16));

-- Location: LCCOMB_X28_Y22_N14
\REGS|D[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[17]~9_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(16))))) # (!\REGS|Esync~q\ & (\Q0~q\ & ((\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~q\,
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(16),
	datad => \Q1~q\,
	combout => \REGS|D[17]~9_combout\);

-- Location: FF_X28_Y22_N25
\REGS|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[17]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(17));

-- Location: LCCOMB_X28_Y22_N24
\REGS|D[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[18]~8_combout\ = (\REGS|Q\(17) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(17),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[18]~8_combout\);

-- Location: FF_X28_Y22_N11
\REGS|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[18]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(18));

-- Location: LCCOMB_X28_Y22_N10
\REGS|D[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[19]~7_combout\ = (\REGS|Q\(18) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(18),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[19]~7_combout\);

-- Location: FF_X28_Y22_N9
\REGS|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[19]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(19));

-- Location: LCCOMB_X28_Y22_N8
\REGS|D[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[20]~6_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(19))))) # (!\REGS|Esync~q\ & ((\Q0~q\) # ((\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~q\,
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(19),
	datad => \Q1~q\,
	combout => \REGS|D[20]~6_combout\);

-- Location: FF_X28_Y22_N3
\REGS|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[20]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(20));

-- Location: LCCOMB_X28_Y22_N2
\REGS|D[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[21]~5_combout\ = (\REGS|Q\(20) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(20),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[21]~5_combout\);

-- Location: FF_X28_Y22_N17
\REGS|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[21]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(21));

-- Location: LCCOMB_X28_Y22_N16
\REGS|D[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[22]~4_combout\ = (\REGS|Q\(21) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(21),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[22]~4_combout\);

-- Location: FF_X28_Y22_N7
\REGS|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[22]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(22));

-- Location: LCCOMB_X28_Y22_N6
\REGS|D[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[23]~3_combout\ = (\REGS|Q\(22) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(22),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[23]~3_combout\);

-- Location: FF_X28_Y22_N5
\REGS|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[23]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(23));

-- Location: LCCOMB_X28_Y22_N4
\REGS|D[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[24]~2_combout\ = (\REGS|Q\(23) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(23),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[24]~2_combout\);

-- Location: FF_X28_Y22_N27
\REGS|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[24]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(24));

-- Location: LCCOMB_X28_Y22_N26
\REGS|D[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[25]~1_combout\ = (\REGS|Esync~q\ & (((\REGS|Q\(24))))) # (!\REGS|Esync~q\ & ((\Q0~q\) # ((\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~q\,
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(24),
	datad => \Q1~q\,
	combout => \REGS|D[25]~1_combout\);

-- Location: FF_X28_Y22_N29
\REGS|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[25]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(25));

-- Location: LCCOMB_X28_Y22_N28
\REGS|D[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[26]~0_combout\ = (\REGS|Q\(25) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Q\(25),
	datad => \REGS|Esync~q\,
	combout => \REGS|D[26]~0_combout\);

-- Location: FF_X27_Y21_N9
\REGS|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \REGS|D[26]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(26));

-- Location: LCCOMB_X27_Y21_N8
\SIO_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SIO_D~0_combout\ = ((!\rst~input_o\ & (\REGS|Esync~q\ & \REGS|Q\(26)))) # (!\mssgGO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \REGS|Esync~q\,
	datac => \REGS|Q\(26),
	datad => \mssgGO~q\,
	combout => \SIO_D~0_combout\);

-- Location: LCCOMB_X27_Y22_N16
\LIVE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LIVE~0_combout\ = (\eInd~q\) # (\Q0~q\ $ (\Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q0~q\,
	datac => \Q1~q\,
	datad => \eInd~q\,
	combout => \LIVE~0_combout\);

-- Location: FF_X27_Y22_N17
\LIVE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~inputclkctrl_outclk\,
	d => \LIVE~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIVE~reg0_q\);

ww_SIO_C <= \SIO_C~output_o\;

ww_SIO_D <= \SIO_D~output_o\;

ww_LIVE <= \LIVE~output_o\;
END structure;


