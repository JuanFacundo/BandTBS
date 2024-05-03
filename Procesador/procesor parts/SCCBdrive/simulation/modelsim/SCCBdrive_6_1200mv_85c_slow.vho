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

-- DATE "05/03/2024 18:17:50"

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
	SIO_C : OUT std_logic;
	SIO_D : OUT std_logic;
	LIVE : OUT std_logic
	);
END SCCBdrive;

-- Design Ports Information
-- SIO_C	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIO_D	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LIVE	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk800	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SIO_C : std_logic;
SIGNAL ww_SIO_D : std_logic;
SIGNAL ww_LIVE : std_logic;
SIGNAL \clk800~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk400data~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \E~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SIO_C~output_o\ : std_logic;
SIGNAL \SIO_D~output_o\ : std_logic;
SIGNAL \LIVE~output_o\ : std_logic;
SIGNAL \clk800~input_o\ : std_logic;
SIGNAL \clk800~inputclkctrl_outclk\ : std_logic;
SIGNAL \EE~feeder_combout\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \E~inputclkctrl_outclk\ : std_logic;
SIGNAL \EE~q\ : std_logic;
SIGNAL \D0~0_combout\ : std_logic;
SIGNAL \Q0~q\ : std_logic;
SIGNAL \D1~0_combout\ : std_logic;
SIGNAL \Q1~q\ : std_logic;
SIGNAL \clk400D~combout\ : std_logic;
SIGNAL \clk400data~feeder_combout\ : std_logic;
SIGNAL \clk400data~q\ : std_logic;
SIGNAL \clk400data~clkctrl_outclk\ : std_logic;
SIGNAL \REGS|Esync~feeder_combout\ : std_logic;
SIGNAL \REGS|Esync~q\ : std_logic;
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
SIGNAL \REGS|cD[26]~0_combout\ : std_logic;
SIGNAL \dataEedge~combout\ : std_logic;
SIGNAL \mssgGO~0_combout\ : std_logic;
SIGNAL \mssgGO~q\ : std_logic;
SIGNAL \C_Eedge~combout\ : std_logic;
SIGNAL \C_E~0_combout\ : std_logic;
SIGNAL \C_E~q\ : std_logic;
SIGNAL \C_Esync~q\ : std_logic;
SIGNAL \DeInd~0_combout\ : std_logic;
SIGNAL \DeInd~1_combout\ : std_logic;
SIGNAL \eInd~q\ : std_logic;
SIGNAL \clkE~combout\ : std_logic;
SIGNAL \clk400~q\ : std_logic;
SIGNAL \SIO_C~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_clk800~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk800~input_o\ : std_logic;

BEGIN

ww_clk800 <= clk800;
ww_E <= E;
SIO_C <= ww_SIO_C;
SIO_D <= ww_SIO_D;
LIVE <= ww_LIVE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk800~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk800~input_o\);

\clk400data~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk400data~q\);

\E~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \E~input_o\);
\ALT_INV_clk800~inputclkctrl_outclk\ <= NOT \clk800~inputclkctrl_outclk\;
\ALT_INV_clk800~input_o\ <= NOT \clk800~input_o\;

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X0_Y13_N23
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

-- Location: LCCOMB_X3_Y13_N28
\EE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \EE~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\E~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: CLKCTRL_G2
\E~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \E~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \E~inputclkctrl_outclk\);

-- Location: FF_X3_Y13_N29
EE : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk800~inputclkctrl_outclk\,
	d => \EE~feeder_combout\,
	clrn => \E~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EE~q\);

-- Location: LCCOMB_X2_Y13_N8
\D0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D0~0_combout\ = (\EE~q\ & ((\Q1~q\ & ((\Q0~q\) # (!\eInd~q\))) # (!\Q1~q\ & ((\eInd~q\) # (!\Q0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q1~q\,
	datab => \eInd~q\,
	datac => \Q0~q\,
	datad => \EE~q\,
	combout => \D0~0_combout\);

-- Location: FF_X2_Y13_N9
Q0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~inputclkctrl_outclk\,
	d => \D0~0_combout\,
	clrn => \E~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q0~q\);

-- Location: LCCOMB_X2_Y13_N22
\D1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1~0_combout\ = (\EE~q\ & ((\Q1~q\) # ((!\eInd~q\ & \Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eInd~q\,
	datab => \Q0~q\,
	datac => \Q1~q\,
	datad => \EE~q\,
	combout => \D1~0_combout\);

-- Location: FF_X2_Y13_N23
Q1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~inputclkctrl_outclk\,
	d => \D1~0_combout\,
	clrn => \E~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q1~q\);

-- Location: LCCOMB_X2_Y12_N30
clk400D : cycloneiii_lcell_comb
-- Equation(s):
-- \clk400D~combout\ = (!\clk400data~q\ & \C_Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk400data~q\,
	datad => \C_Esync~q\,
	combout => \clk400D~combout\);

-- Location: LCCOMB_X2_Y12_N16
\clk400data~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk400data~feeder_combout\ = \clk400D~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk400D~combout\,
	combout => \clk400data~feeder_combout\);

-- Location: FF_X2_Y12_N17
clk400data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk800~inputclkctrl_outclk\,
	d => \clk400data~feeder_combout\,
	clrn => \E~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk400data~q\);

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X3_Y12_N10
\REGS|Esync~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|Esync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \REGS|Esync~feeder_combout\);

-- Location: FF_X3_Y12_N11
\REGS|Esync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|Esync~feeder_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Esync~q\);

-- Location: LCCOMB_X4_Y13_N26
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

-- Location: FF_X4_Y13_N27
\REGS|cQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cQ[0]~0_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(0));

-- Location: LCCOMB_X4_Y13_N24
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

-- Location: FF_X4_Y13_N25
\REGS|cQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[1]~25_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(1));

-- Location: LCCOMB_X4_Y13_N22
\REGS|cD[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[2]~24_combout\ = (\REGS|cQ\(1)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|cQ\(1),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[2]~24_combout\);

-- Location: FF_X4_Y13_N23
\REGS|cQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[2]~24_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(2));

-- Location: LCCOMB_X4_Y13_N12
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

-- Location: FF_X4_Y13_N13
\REGS|cQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[3]~23_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(3));

-- Location: LCCOMB_X4_Y13_N10
\REGS|cD[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[4]~22_combout\ = (\REGS|cQ\(3)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|cQ\(3),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[4]~22_combout\);

-- Location: FF_X4_Y13_N11
\REGS|cQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[4]~22_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(4));

-- Location: LCCOMB_X4_Y13_N28
\REGS|cD[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[5]~21_combout\ = (\REGS|cQ\(4)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|cQ\(4),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[5]~21_combout\);

-- Location: FF_X4_Y13_N29
\REGS|cQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[5]~21_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(5));

-- Location: LCCOMB_X4_Y13_N6
\REGS|cD[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[6]~20_combout\ = (\REGS|cQ\(5)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|cQ\(5),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[6]~20_combout\);

-- Location: FF_X4_Y13_N7
\REGS|cQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[6]~20_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(6));

-- Location: LCCOMB_X3_Y13_N16
\REGS|cD[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[7]~19_combout\ = (\REGS|cQ\(6)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(6),
	combout => \REGS|cD[7]~19_combout\);

-- Location: FF_X3_Y13_N17
\REGS|cQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[7]~19_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(7));

-- Location: LCCOMB_X3_Y13_N18
\REGS|cD[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[8]~18_combout\ = (\REGS|cQ\(7)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(7),
	combout => \REGS|cD[8]~18_combout\);

-- Location: FF_X3_Y13_N19
\REGS|cQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[8]~18_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(8));

-- Location: LCCOMB_X3_Y13_N10
\REGS|cD[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[9]~17_combout\ = (\REGS|cQ\(8)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(8),
	combout => \REGS|cD[9]~17_combout\);

-- Location: FF_X3_Y13_N11
\REGS|cQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[9]~17_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(9));

-- Location: LCCOMB_X3_Y13_N0
\REGS|cD[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[10]~16_combout\ = (\REGS|cQ\(9)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(9),
	combout => \REGS|cD[10]~16_combout\);

-- Location: FF_X3_Y13_N1
\REGS|cQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[10]~16_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(10));

-- Location: LCCOMB_X3_Y13_N22
\REGS|cD[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[11]~15_combout\ = (\REGS|cQ\(10)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(10),
	combout => \REGS|cD[11]~15_combout\);

-- Location: FF_X3_Y13_N23
\REGS|cQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[11]~15_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(11));

-- Location: LCCOMB_X3_Y13_N14
\REGS|cD[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[12]~14_combout\ = (\REGS|cQ\(11)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|cQ\(11),
	datac => \REGS|Esync~q\,
	combout => \REGS|cD[12]~14_combout\);

-- Location: FF_X3_Y13_N15
\REGS|cQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[12]~14_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(12));

-- Location: LCCOMB_X4_Y13_N20
\REGS|cD[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[13]~13_combout\ = (\REGS|cQ\(12)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|cQ\(12),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[13]~13_combout\);

-- Location: FF_X4_Y13_N21
\REGS|cQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[13]~13_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(13));

-- Location: LCCOMB_X4_Y13_N18
\REGS|cD[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[14]~12_combout\ = (\REGS|cQ\(13)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|cQ\(13),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[14]~12_combout\);

-- Location: FF_X4_Y13_N19
\REGS|cQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[14]~12_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(14));

-- Location: LCCOMB_X4_Y13_N0
\REGS|cD[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[15]~11_combout\ = (\REGS|cQ\(14)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|cQ\(14),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[15]~11_combout\);

-- Location: FF_X4_Y13_N1
\REGS|cQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[15]~11_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(15));

-- Location: LCCOMB_X4_Y13_N2
\REGS|cD[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[16]~10_combout\ = (\REGS|cQ\(15)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|cQ\(15),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[16]~10_combout\);

-- Location: FF_X4_Y13_N3
\REGS|cQ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[16]~10_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(16));

-- Location: LCCOMB_X4_Y13_N4
\REGS|cD[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[17]~9_combout\ = (\REGS|cQ\(16)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|cQ\(16),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[17]~9_combout\);

-- Location: FF_X4_Y13_N5
\REGS|cQ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[17]~9_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(17));

-- Location: LCCOMB_X3_Y13_N26
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

-- Location: FF_X3_Y13_N27
\REGS|cQ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[18]~8_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(18));

-- Location: LCCOMB_X3_Y13_N24
\REGS|cD[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[19]~7_combout\ = (\REGS|cQ\(18)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|cQ\(18),
	datac => \REGS|Esync~q\,
	combout => \REGS|cD[19]~7_combout\);

-- Location: FF_X3_Y13_N25
\REGS|cQ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[19]~7_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(19));

-- Location: LCCOMB_X3_Y13_N2
\REGS|cD[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[20]~6_combout\ = (\REGS|cQ\(19)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(19),
	combout => \REGS|cD[20]~6_combout\);

-- Location: FF_X3_Y13_N3
\REGS|cQ[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[20]~6_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(20));

-- Location: LCCOMB_X3_Y13_N12
\REGS|cD[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[21]~5_combout\ = (\REGS|cQ\(20)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(20),
	combout => \REGS|cD[21]~5_combout\);

-- Location: FF_X3_Y13_N13
\REGS|cQ[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[21]~5_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(21));

-- Location: LCCOMB_X3_Y13_N30
\REGS|cD[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[22]~4_combout\ = (\REGS|cQ\(21)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|cQ\(21),
	combout => \REGS|cD[22]~4_combout\);

-- Location: FF_X3_Y13_N31
\REGS|cQ[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[22]~4_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(22));

-- Location: LCCOMB_X3_Y12_N4
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

-- Location: FF_X3_Y12_N5
\REGS|cQ[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[23]~3_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(23));

-- Location: LCCOMB_X3_Y12_N22
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

-- Location: FF_X3_Y12_N23
\REGS|cQ[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[24]~2_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(24));

-- Location: LCCOMB_X3_Y12_N26
\REGS|cD[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[25]~1_combout\ = (\REGS|cQ\(24)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|cQ\(24),
	datac => \REGS|Esync~q\,
	combout => \REGS|cD[25]~1_combout\);

-- Location: FF_X3_Y12_N27
\REGS|cQ[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|cD[25]~1_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(25));

-- Location: LCCOMB_X3_Y12_N0
\REGS|cD[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|cD[26]~0_combout\ = (\REGS|cQ\(25)) # (!\REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|cQ\(25),
	datad => \REGS|Esync~q\,
	combout => \REGS|cD[26]~0_combout\);

-- Location: FF_X3_Y12_N1
\REGS|cQ[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~q\,
	d => \REGS|cD[26]~0_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|cQ\(26));

-- Location: LCCOMB_X2_Y12_N22
dataEedge : cycloneiii_lcell_comb
-- Equation(s):
-- \dataEedge~combout\ = LCELL((((\mssgGO~q\ & \REGS|cQ\(26))) # (!\clk400data~q\)) # (!\clk400~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mssgGO~q\,
	datab => \clk400~q\,
	datac => \REGS|cQ\(26),
	datad => \clk400data~q\,
	combout => \dataEedge~combout\);

-- Location: LCCOMB_X2_Y12_N6
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

-- Location: FF_X2_Y12_N7
mssgGO : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dataEedge~combout\,
	d => \mssgGO~0_combout\,
	clrn => \E~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mssgGO~q\);

-- Location: LCCOMB_X1_Y12_N22
C_Eedge : cycloneiii_lcell_comb
-- Equation(s):
-- \C_Eedge~combout\ = LCELL((\C_E~q\ & ((!\mssgGO~q\))) # (!\C_E~q\ & (\eInd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eInd~q\,
	datac => \C_E~q\,
	datad => \mssgGO~q\,
	combout => \C_Eedge~combout\);

-- Location: LCCOMB_X1_Y12_N26
\C_E~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_E~0_combout\ = !\C_E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C_E~q\,
	combout => \C_E~0_combout\);

-- Location: FF_X1_Y12_N23
C_E : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C_Eedge~combout\,
	asdata => \C_E~0_combout\,
	clrn => \E~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_E~q\);

-- Location: FF_X2_Y13_N29
C_Esync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~inputclkctrl_outclk\,
	asdata => \C_E~q\,
	clrn => \E~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_Esync~q\);

-- Location: LCCOMB_X2_Y13_N28
\DeInd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DeInd~0_combout\ = \C_Esync~q\ $ (!\eInd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C_Esync~q\,
	datad => \eInd~q\,
	combout => \DeInd~0_combout\);

-- Location: LCCOMB_X1_Y13_N30
\DeInd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DeInd~1_combout\ = (\EE~q\ & (\DeInd~0_combout\ & ((!\Q0~q\) # (!\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EE~q\,
	datab => \Q1~q\,
	datac => \Q0~q\,
	datad => \DeInd~0_combout\,
	combout => \DeInd~1_combout\);

-- Location: FF_X1_Y13_N31
eInd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk800~input_o\,
	d => \DeInd~1_combout\,
	clrn => \E~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eInd~q\);

-- Location: LCCOMB_X1_Y12_N6
clkE : cycloneiii_lcell_comb
-- Equation(s):
-- \clkE~combout\ = (!\eInd~q\) # (!\clk400~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk400~q\,
	datad => \eInd~q\,
	combout => \clkE~combout\);

-- Location: FF_X1_Y12_N7
clk400 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~input_o\,
	d => \clkE~combout\,
	clrn => \E~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk400~q\);

-- Location: LCCOMB_X1_Y12_N16
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

-- Location: FF_X1_Y13_N11
\REGS|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	asdata => \Q0~q\,
	clrn => \mssgGO~q\,
	sclr => \REGS|Esync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(1));

-- Location: LCCOMB_X2_Y13_N10
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

-- Location: FF_X2_Y13_N11
\REGS|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[2]~24_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(2));

-- Location: LCCOMB_X2_Y13_N12
\REGS|D[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[3]~23_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(2))) # (!\REGS|Esync~q\ & (((\Q0~q\ & !\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(2),
	datab => \Q0~q\,
	datac => \Q1~q\,
	datad => \REGS|Esync~q\,
	combout => \REGS|D[3]~23_combout\);

-- Location: FF_X2_Y13_N13
\REGS|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[3]~23_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(3));

-- Location: LCCOMB_X3_Y13_N6
\REGS|D[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[4]~22_combout\ = (\REGS|Esync~q\ & \REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(3),
	combout => \REGS|D[4]~22_combout\);

-- Location: FF_X3_Y13_N7
\REGS|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[4]~22_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(4));

-- Location: LCCOMB_X2_Y13_N2
\REGS|D[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[5]~21_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(4))) # (!\REGS|Esync~q\ & (((!\Q0~q\ & \Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(4),
	datab => \REGS|Esync~q\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \REGS|D[5]~21_combout\);

-- Location: FF_X2_Y13_N3
\REGS|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[5]~21_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(5));

-- Location: LCCOMB_X3_Y13_N20
\REGS|D[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[6]~20_combout\ = (\REGS|Esync~q\ & \REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(5),
	combout => \REGS|D[6]~20_combout\);

-- Location: FF_X3_Y13_N21
\REGS|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[6]~20_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(6));

-- Location: LCCOMB_X2_Y13_N16
\REGS|D[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[7]~19_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(6))) # (!\REGS|Esync~q\ & (((!\Q0~q\ & \Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(6),
	datab => \REGS|Esync~q\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \REGS|D[7]~19_combout\);

-- Location: FF_X2_Y13_N17
\REGS|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[7]~19_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(7));

-- Location: LCCOMB_X2_Y13_N14
\REGS|D[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[8]~18_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(7))) # (!\REGS|Esync~q\ & (((!\Q0~q\ & \Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Esync~q\,
	datab => \REGS|Q\(7),
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \REGS|D[8]~18_combout\);

-- Location: FF_X2_Y13_N15
\REGS|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[8]~18_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(8));

-- Location: LCCOMB_X3_Y13_N8
\REGS|D[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[9]~17_combout\ = (\REGS|Esync~q\ & \REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(8),
	combout => \REGS|D[9]~17_combout\);

-- Location: FF_X3_Y13_N9
\REGS|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[9]~17_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(9));

-- Location: LCCOMB_X3_Y13_N4
\REGS|D[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[10]~16_combout\ = (\REGS|Q\(9) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Q\(9),
	datac => \REGS|Esync~q\,
	combout => \REGS|D[10]~16_combout\);

-- Location: FF_X3_Y13_N5
\REGS|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[10]~16_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(10));

-- Location: LCCOMB_X2_Y13_N20
\REGS|D[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[11]~15_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(10))) # (!\REGS|Esync~q\ & (((\Q0~q\ & !\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(10),
	datab => \Q0~q\,
	datac => \Q1~q\,
	datad => \REGS|Esync~q\,
	combout => \REGS|D[11]~15_combout\);

-- Location: FF_X2_Y13_N21
\REGS|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[11]~15_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(11));

-- Location: LCCOMB_X2_Y13_N6
\REGS|D[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[12]~14_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(11))) # (!\REGS|Esync~q\ & (((\Q0~q\ & \Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(11),
	datab => \REGS|Esync~q\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \REGS|D[12]~14_combout\);

-- Location: FF_X2_Y13_N7
\REGS|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[12]~14_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(12));

-- Location: LCCOMB_X2_Y13_N0
\REGS|D[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[13]~13_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(12))) # (!\REGS|Esync~q\ & (((\Q0~q\ & \Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(12),
	datab => \REGS|Esync~q\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \REGS|D[13]~13_combout\);

-- Location: FF_X2_Y13_N1
\REGS|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[13]~13_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(13));

-- Location: LCCOMB_X2_Y13_N30
\REGS|D[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[14]~12_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(13))) # (!\REGS|Esync~q\ & (((\Q0~q\ & !\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(13),
	datab => \REGS|Esync~q\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \REGS|D[14]~12_combout\);

-- Location: FF_X2_Y13_N31
\REGS|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[14]~12_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(14));

-- Location: LCCOMB_X2_Y13_N4
\REGS|D[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[15]~11_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(14))) # (!\REGS|Esync~q\ & (((!\Q0~q\ & \Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(14),
	datab => \Q0~q\,
	datac => \Q1~q\,
	datad => \REGS|Esync~q\,
	combout => \REGS|D[15]~11_combout\);

-- Location: FF_X2_Y13_N5
\REGS|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[15]~11_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(15));

-- Location: LCCOMB_X1_Y13_N12
\REGS|D[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[16]~10_combout\ = (\REGS|Esync~q\ & \REGS|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(15),
	combout => \REGS|D[16]~10_combout\);

-- Location: FF_X1_Y13_N13
\REGS|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[16]~10_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(16));

-- Location: LCCOMB_X1_Y13_N24
\REGS|D[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[17]~9_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(16))) # (!\REGS|Esync~q\ & (((\Q0~q\ & \Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(16),
	datab => \REGS|Esync~q\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \REGS|D[17]~9_combout\);

-- Location: FF_X1_Y13_N25
\REGS|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[17]~9_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(17));

-- Location: LCCOMB_X1_Y13_N4
\REGS|D[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[18]~8_combout\ = (\REGS|Esync~q\ & \REGS|Q\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(17),
	combout => \REGS|D[18]~8_combout\);

-- Location: FF_X1_Y13_N5
\REGS|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[18]~8_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(18));

-- Location: LCCOMB_X1_Y13_N26
\REGS|D[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[19]~7_combout\ = (\REGS|Q\(18) & \REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGS|Q\(18),
	datac => \REGS|Esync~q\,
	combout => \REGS|D[19]~7_combout\);

-- Location: FF_X1_Y13_N27
\REGS|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[19]~7_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(19));

-- Location: LCCOMB_X2_Y13_N26
\REGS|D[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[20]~6_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(19))) # (!\REGS|Esync~q\ & (((\Q0~q\) # (\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(19),
	datab => \Q0~q\,
	datac => \Q1~q\,
	datad => \REGS|Esync~q\,
	combout => \REGS|D[20]~6_combout\);

-- Location: FF_X2_Y13_N27
\REGS|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[20]~6_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(20));

-- Location: LCCOMB_X1_Y13_N0
\REGS|D[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[21]~5_combout\ = (\REGS|Esync~q\ & \REGS|Q\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(20),
	combout => \REGS|D[21]~5_combout\);

-- Location: FF_X1_Y13_N1
\REGS|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[21]~5_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(21));

-- Location: LCCOMB_X1_Y13_N18
\REGS|D[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[22]~4_combout\ = (\REGS|Esync~q\ & \REGS|Q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(21),
	combout => \REGS|D[22]~4_combout\);

-- Location: FF_X1_Y13_N19
\REGS|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[22]~4_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(22));

-- Location: LCCOMB_X1_Y13_N28
\REGS|D[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[23]~3_combout\ = (\REGS|Esync~q\ & \REGS|Q\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(22),
	combout => \REGS|D[23]~3_combout\);

-- Location: FF_X1_Y13_N29
\REGS|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[23]~3_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(23));

-- Location: LCCOMB_X1_Y13_N14
\REGS|D[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[24]~2_combout\ = (\REGS|Esync~q\ & \REGS|Q\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(23),
	combout => \REGS|D[24]~2_combout\);

-- Location: FF_X1_Y13_N15
\REGS|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[24]~2_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(24));

-- Location: LCCOMB_X2_Y13_N18
\REGS|D[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[25]~1_combout\ = (\REGS|Esync~q\ & (\REGS|Q\(24))) # (!\REGS|Esync~q\ & (((\Q0~q\) # (\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|Q\(24),
	datab => \Q0~q\,
	datac => \Q1~q\,
	datad => \REGS|Esync~q\,
	combout => \REGS|D[25]~1_combout\);

-- Location: FF_X2_Y13_N19
\REGS|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[25]~1_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(25));

-- Location: LCCOMB_X1_Y13_N20
\REGS|D[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGS|D[26]~0_combout\ = (\REGS|Esync~q\ & \REGS|Q\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGS|Esync~q\,
	datad => \REGS|Q\(25),
	combout => \REGS|D[26]~0_combout\);

-- Location: FF_X1_Y13_N21
\REGS|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400data~clkctrl_outclk\,
	d => \REGS|D[26]~0_combout\,
	clrn => \mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|Q\(26));

-- Location: LCCOMB_X1_Y13_N22
\SIO_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SIO_D~0_combout\ = (\REGS|Q\(26)) # (!\mssgGO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mssgGO~q\,
	datad => \REGS|Q\(26),
	combout => \SIO_D~0_combout\);

-- Location: LCCOMB_X2_Y13_N24
\LIVE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LIVE~0_combout\ = (\eInd~q\) # (\Q0~q\ $ (\Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eInd~q\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \LIVE~0_combout\);

-- Location: FF_X2_Y13_N25
\LIVE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk800~inputclkctrl_outclk\,
	d => \LIVE~0_combout\,
	clrn => \E~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIVE~reg0_q\);

ww_SIO_C <= \SIO_C~output_o\;

ww_SIO_D <= \SIO_D~output_o\;

ww_LIVE <= \LIVE~output_o\;
END structure;


