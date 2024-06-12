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

-- DATE "06/11/2024 15:49:21"

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

ENTITY 	CAPdrive IS
    PORT (
	rst : IN std_logic;
	D_in : IN std_logic_vector(7 DOWNTO 0);
	PCLK : IN std_logic;
	HREF : IN std_logic;
	D_out : BUFFER std_logic_vector(3 DOWNTO 0);
	outCLK : BUFFER std_logic
	);
END CAPdrive;

-- Design Ports Information
-- D_out[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[1]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outCLK	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HREF	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[7]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CAPdrive IS
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
SIGNAL ww_D_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PCLK : std_logic;
SIGNAL ww_HREF : std_logic;
SIGNAL ww_D_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outCLK : std_logic;
SIGNAL \PCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dPCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DEPHASE|Qd[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D_out[0]~output_o\ : std_logic;
SIGNAL \D_out[1]~output_o\ : std_logic;
SIGNAL \D_out[2]~output_o\ : std_logic;
SIGNAL \D_out[3]~output_o\ : std_logic;
SIGNAL \outCLK~output_o\ : std_logic;
SIGNAL \PCLK~input_o\ : std_logic;
SIGNAL \PCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DEPHASE|Qt~0_combout\ : std_logic;
SIGNAL \HREF~input_o\ : std_logic;
SIGNAL \DEPHASE|Qt~q\ : std_logic;
SIGNAL \DEPHASE|Qd[0]~feeder_combout\ : std_logic;
SIGNAL \DEPHASE|Qd[1]~feeder_combout\ : std_logic;
SIGNAL \DEPHASE|Qd[1]~clkctrl_outclk\ : std_logic;
SIGNAL \dPCLK~combout\ : std_logic;
SIGNAL \dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \takeTurn~0_combout\ : std_logic;
SIGNAL \takeTurn~q\ : std_logic;
SIGNAL \D_in[2]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[2]~2_combout\ : std_logic;
SIGNAL \D_in[5]~input_o\ : std_logic;
SIGNAL \QinReg[5]~feeder_combout\ : std_logic;
SIGNAL \D_in[4]~input_o\ : std_logic;
SIGNAL \QinReg[4]~feeder_combout\ : std_logic;
SIGNAL \D_in[0]~input_o\ : std_logic;
SIGNAL \QinReg[0]~feeder_combout\ : std_logic;
SIGNAL \RipCar:0:FA|s~0_combout\ : std_logic;
SIGNAL \B[0]~0_combout\ : std_logic;
SIGNAL \D_in[1]~input_o\ : std_logic;
SIGNAL \RipCar:1:FA|s~combout\ : std_logic;
SIGNAL \B[1]~1_combout\ : std_logic;
SIGNAL \RipCar:1:FA|co~0_combout\ : std_logic;
SIGNAL \D_in[6]~input_o\ : std_logic;
SIGNAL \QinReg[6]~feeder_combout\ : std_logic;
SIGNAL \RipCar:2:FA|s~combout\ : std_logic;
SIGNAL \Chewed[0]~feeder_combout\ : std_logic;
SIGNAL \D_in[7]~input_o\ : std_logic;
SIGNAL \QinReg[7]~feeder_combout\ : std_logic;
SIGNAL \D_in[3]~input_o\ : std_logic;
SIGNAL \B[3]~3_combout\ : std_logic;
SIGNAL \RipCar:2:FA|co~0_combout\ : std_logic;
SIGNAL \RipCar:3:FA|s~combout\ : std_logic;
SIGNAL \Chewed[1]~feeder_combout\ : std_logic;
SIGNAL \B[4]~4_combout\ : std_logic;
SIGNAL \RipCar:4:FA|s~combout\ : std_logic;
SIGNAL \Chewed[2]~feeder_combout\ : std_logic;
SIGNAL \RipCar:4:FA|co~0_combout\ : std_logic;
SIGNAL \Chewed[3]~feeder_combout\ : std_logic;
SIGNAL QinReg : std_logic_vector(7 DOWNTO 0);
SIGNAL QaddReg : std_logic_vector(5 DOWNTO 0);
SIGNAL Chewed : std_logic_vector(3 DOWNTO 0);
SIGNAL \DEPHASE|Qd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_dPCLK~clkctrl_outclk\ : std_logic;

BEGIN

ww_rst <= rst;
ww_D_in <= D_in;
ww_PCLK <= PCLK;
ww_HREF <= HREF;
D_out <= ww_D_out;
outCLK <= ww_outCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PCLK~input_o\);

\dPCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dPCLK~combout\);

\DEPHASE|Qd[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DEPHASE|Qd\(1));

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_dPCLK~clkctrl_outclk\ <= NOT \dPCLK~clkctrl_outclk\;

-- Location: IOOBUF_X1_Y29_N23
\D_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Chewed(0),
	devoe => ww_devoe,
	o => \D_out[0]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\D_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Chewed(1),
	devoe => ww_devoe,
	o => \D_out[1]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\D_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Chewed(2),
	devoe => ww_devoe,
	o => \D_out[2]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\D_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Chewed(3),
	devoe => ww_devoe,
	o => \D_out[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\outCLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEPHASE|Qd\(1),
	devoe => ww_devoe,
	o => \outCLK~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\PCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCLK,
	o => \PCLK~input_o\);

-- Location: CLKCTRL_G4
\PCLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y27_N10
\DEPHASE|Qt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEPHASE|Qt~0_combout\ = !\DEPHASE|Qt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEPHASE|Qt~q\,
	combout => \DEPHASE|Qt~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\HREF~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HREF,
	o => \HREF~input_o\);

-- Location: FF_X1_Y27_N11
\DEPHASE|Qt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \DEPHASE|Qt~0_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEPHASE|Qt~q\);

-- Location: LCCOMB_X1_Y27_N16
\DEPHASE|Qd[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEPHASE|Qd[0]~feeder_combout\ = \DEPHASE|Qt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DEPHASE|Qt~q\,
	combout => \DEPHASE|Qd[0]~feeder_combout\);

-- Location: FF_X1_Y27_N17
\DEPHASE|Qd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \DEPHASE|Qd[0]~feeder_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEPHASE|Qd\(0));

-- Location: LCCOMB_X1_Y27_N8
\DEPHASE|Qd[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DEPHASE|Qd[1]~feeder_combout\ = \DEPHASE|Qd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DEPHASE|Qd\(0),
	combout => \DEPHASE|Qd[1]~feeder_combout\);

-- Location: FF_X1_Y27_N9
\DEPHASE|Qd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \DEPHASE|Qd[1]~feeder_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEPHASE|Qd\(1));

-- Location: CLKCTRL_G3
\DEPHASE|Qd[1]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DEPHASE|Qd[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DEPHASE|Qd[1]~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y14_N14
dPCLK : cycloneiii_lcell_comb
-- Equation(s):
-- \dPCLK~combout\ = LCELL((\HREF~input_o\ & !\PCLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HREF~input_o\,
	datad => \PCLK~input_o\,
	combout => \dPCLK~combout\);

-- Location: CLKCTRL_G0
\dPCLK~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dPCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dPCLK~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y27_N14
\takeTurn~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \takeTurn~0_combout\ = !\takeTurn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \takeTurn~q\,
	combout => \takeTurn~0_combout\);

-- Location: FF_X1_Y27_N15
takeTurn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	d => \takeTurn~0_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \takeTurn~q\);

-- Location: IOIBUF_X1_Y29_N29
\D_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(2),
	o => \D_in[2]~input_o\);

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

-- Location: FF_X1_Y27_N27
\QinReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(2));

-- Location: LCCOMB_X1_Y27_N26
\B[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[2]~2_combout\ = (\takeTurn~q\ & (QinReg(2))) # (!\takeTurn~q\ & ((QaddReg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \takeTurn~q\,
	datac => QinReg(2),
	datad => QaddReg(2),
	combout => \B[2]~2_combout\);

-- Location: IOIBUF_X0_Y27_N22
\D_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(5),
	o => \D_in[5]~input_o\);

-- Location: LCCOMB_X1_Y27_N6
\QinReg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QinReg[5]~feeder_combout\ = \D_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[5]~input_o\,
	combout => \QinReg[5]~feeder_combout\);

-- Location: FF_X1_Y27_N7
\QinReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	d => \QinReg[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(5));

-- Location: IOIBUF_X0_Y26_N15
\D_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(4),
	o => \D_in[4]~input_o\);

-- Location: LCCOMB_X1_Y27_N20
\QinReg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QinReg[4]~feeder_combout\ = \D_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[4]~input_o\,
	combout => \QinReg[4]~feeder_combout\);

-- Location: FF_X1_Y27_N21
\QinReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	d => \QinReg[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(4));

-- Location: IOIBUF_X0_Y26_N1
\D_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(0),
	o => \D_in[0]~input_o\);

-- Location: LCCOMB_X1_Y27_N4
\QinReg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QinReg[0]~feeder_combout\ = \D_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[0]~input_o\,
	combout => \QinReg[0]~feeder_combout\);

-- Location: FF_X1_Y27_N5
\QinReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	d => \QinReg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(0));

-- Location: LCCOMB_X2_Y27_N28
\RipCar:0:FA|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:0:FA|s~0_combout\ = QinReg(4) $ (((\takeTurn~q\ & (QinReg(0))) # (!\takeTurn~q\ & ((QaddReg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \takeTurn~q\,
	datab => QinReg(0),
	datac => QaddReg(0),
	datad => QinReg(4),
	combout => \RipCar:0:FA|s~0_combout\);

-- Location: FF_X2_Y27_N29
\QaddReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:0:FA|s~0_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(0));

-- Location: LCCOMB_X1_Y27_N30
\B[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[0]~0_combout\ = (\takeTurn~q\ & (QinReg(0))) # (!\takeTurn~q\ & ((QaddReg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => QinReg(0),
	datac => \takeTurn~q\,
	datad => QaddReg(0),
	combout => \B[0]~0_combout\);

-- Location: IOIBUF_X0_Y27_N15
\D_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(1),
	o => \D_in[1]~input_o\);

-- Location: FF_X1_Y27_N25
\QinReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(1));

-- Location: LCCOMB_X2_Y27_N2
\RipCar:1:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:1:FA|s~combout\ = \B[1]~1_combout\ $ (QinReg(5) $ (((\B[0]~0_combout\ & QinReg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~0_combout\,
	datab => \B[1]~1_combout\,
	datac => QinReg(5),
	datad => QinReg(4),
	combout => \RipCar:1:FA|s~combout\);

-- Location: FF_X2_Y27_N3
\QaddReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:1:FA|s~combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(1));

-- Location: LCCOMB_X1_Y27_N24
\B[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[1]~1_combout\ = (\takeTurn~q\ & (QinReg(1))) # (!\takeTurn~q\ & ((QaddReg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \takeTurn~q\,
	datac => QinReg(1),
	datad => QaddReg(1),
	combout => \B[1]~1_combout\);

-- Location: LCCOMB_X1_Y27_N18
\RipCar:1:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:1:FA|co~0_combout\ = (QinReg(5) & ((\B[1]~1_combout\) # ((QinReg(4) & \B[0]~0_combout\)))) # (!QinReg(5) & (QinReg(4) & (\B[0]~0_combout\ & \B[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QinReg(5),
	datab => QinReg(4),
	datac => \B[0]~0_combout\,
	datad => \B[1]~1_combout\,
	combout => \RipCar:1:FA|co~0_combout\);

-- Location: IOIBUF_X0_Y27_N8
\D_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(6),
	o => \D_in[6]~input_o\);

-- Location: LCCOMB_X1_Y27_N22
\QinReg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QinReg[6]~feeder_combout\ = \D_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[6]~input_o\,
	combout => \QinReg[6]~feeder_combout\);

-- Location: FF_X1_Y27_N23
\QinReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	d => \QinReg[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(6));

-- Location: LCCOMB_X2_Y27_N24
\RipCar:2:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:2:FA|s~combout\ = \B[2]~2_combout\ $ (\RipCar:1:FA|co~0_combout\ $ (QinReg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~2_combout\,
	datab => \RipCar:1:FA|co~0_combout\,
	datac => QinReg(6),
	combout => \RipCar:2:FA|s~combout\);

-- Location: FF_X2_Y27_N25
\QaddReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:2:FA|s~combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(2));

-- Location: LCCOMB_X2_Y27_N8
\Chewed[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Chewed[0]~feeder_combout\ = QaddReg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => QaddReg(2),
	combout => \Chewed[0]~feeder_combout\);

-- Location: FF_X2_Y27_N9
\Chewed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DEPHASE|Qd[1]~clkctrl_outclk\,
	d => \Chewed[0]~feeder_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Chewed(0));

-- Location: IOIBUF_X3_Y29_N1
\D_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(7),
	o => \D_in[7]~input_o\);

-- Location: LCCOMB_X3_Y27_N0
\QinReg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \QinReg[7]~feeder_combout\ = \D_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[7]~input_o\,
	combout => \QinReg[7]~feeder_combout\);

-- Location: FF_X3_Y27_N1
\QinReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	d => \QinReg[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(7));

-- Location: IOIBUF_X0_Y26_N22
\D_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(3),
	o => \D_in[3]~input_o\);

-- Location: FF_X1_Y27_N13
\QinReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(3));

-- Location: LCCOMB_X1_Y27_N12
\B[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[3]~3_combout\ = (\takeTurn~q\ & (QinReg(3))) # (!\takeTurn~q\ & ((QaddReg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \takeTurn~q\,
	datac => QinReg(3),
	datad => QaddReg(3),
	combout => \B[3]~3_combout\);

-- Location: LCCOMB_X1_Y27_N28
\RipCar:2:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:2:FA|co~0_combout\ = (\B[2]~2_combout\ & ((QinReg(6)) # (\RipCar:1:FA|co~0_combout\))) # (!\B[2]~2_combout\ & (QinReg(6) & \RipCar:1:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~2_combout\,
	datab => QinReg(6),
	datad => \RipCar:1:FA|co~0_combout\,
	combout => \RipCar:2:FA|co~0_combout\);

-- Location: LCCOMB_X2_Y27_N6
\RipCar:3:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:3:FA|s~combout\ = QinReg(7) $ (\B[3]~3_combout\ $ (\RipCar:2:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => QinReg(7),
	datac => \B[3]~3_combout\,
	datad => \RipCar:2:FA|co~0_combout\,
	combout => \RipCar:3:FA|s~combout\);

-- Location: FF_X2_Y27_N7
\QaddReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:3:FA|s~combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(3));

-- Location: LCCOMB_X2_Y27_N10
\Chewed[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Chewed[1]~feeder_combout\ = QaddReg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => QaddReg(3),
	combout => \Chewed[1]~feeder_combout\);

-- Location: FF_X2_Y27_N11
\Chewed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DEPHASE|Qd[1]~clkctrl_outclk\,
	d => \Chewed[1]~feeder_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Chewed(1));

-- Location: LCCOMB_X2_Y27_N12
\B[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[4]~4_combout\ = (QaddReg(4) & !\takeTurn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QaddReg(4),
	datad => \takeTurn~q\,
	combout => \B[4]~4_combout\);

-- Location: LCCOMB_X2_Y27_N16
\RipCar:4:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:4:FA|s~combout\ = \B[4]~4_combout\ $ (((\B[3]~3_combout\ & ((QinReg(7)) # (\RipCar:2:FA|co~0_combout\))) # (!\B[3]~3_combout\ & (QinReg(7) & \RipCar:2:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~3_combout\,
	datab => QinReg(7),
	datac => \B[4]~4_combout\,
	datad => \RipCar:2:FA|co~0_combout\,
	combout => \RipCar:4:FA|s~combout\);

-- Location: FF_X2_Y27_N17
\QaddReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:4:FA|s~combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(4));

-- Location: LCCOMB_X2_Y27_N20
\Chewed[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Chewed[2]~feeder_combout\ = QaddReg(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => QaddReg(4),
	combout => \Chewed[2]~feeder_combout\);

-- Location: FF_X2_Y27_N21
\Chewed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DEPHASE|Qd[1]~clkctrl_outclk\,
	d => \Chewed[2]~feeder_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Chewed(2));

-- Location: LCCOMB_X2_Y27_N18
\RipCar:4:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:4:FA|co~0_combout\ = (\B[4]~4_combout\ & ((\B[3]~3_combout\ & ((QinReg(7)) # (\RipCar:2:FA|co~0_combout\))) # (!\B[3]~3_combout\ & (QinReg(7) & \RipCar:2:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~3_combout\,
	datab => QinReg(7),
	datac => \B[4]~4_combout\,
	datad => \RipCar:2:FA|co~0_combout\,
	combout => \RipCar:4:FA|co~0_combout\);

-- Location: FF_X2_Y27_N19
\QaddReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:4:FA|co~0_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(5));

-- Location: LCCOMB_X2_Y27_N14
\Chewed[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Chewed[3]~feeder_combout\ = QaddReg(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => QaddReg(5),
	combout => \Chewed[3]~feeder_combout\);

-- Location: FF_X2_Y27_N15
\Chewed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DEPHASE|Qd[1]~clkctrl_outclk\,
	d => \Chewed[3]~feeder_combout\,
	clrn => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Chewed(3));

ww_D_out(0) <= \D_out[0]~output_o\;

ww_D_out(1) <= \D_out[1]~output_o\;

ww_D_out(2) <= \D_out[2]~output_o\;

ww_D_out(3) <= \D_out[3]~output_o\;

ww_outCLK <= \outCLK~output_o\;
END structure;


