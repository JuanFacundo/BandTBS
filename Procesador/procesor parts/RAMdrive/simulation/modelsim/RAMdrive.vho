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

-- DATE "05/21/2024 20:17:40"

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

ENTITY 	RAMdrive IS
    PORT (
	clkWrite : IN std_logic;
	clkRead : IN std_logic;
	D_in : IN std_logic_vector(31 DOWNTO 0);
	D_out : OUT std_logic_vector(3 DOWNTO 0);
	writeEna : IN std_logic;
	readEna : IN std_logic;
	clear : IN std_logic;
	rstCount16 : IN std_logic;
	rstCount19 : IN std_logic
	);
END RAMdrive;

-- Design Ports Information
-- D_out[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstCount16	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstCount19	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeEna	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readEna	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkWrite	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkRead	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[4]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[8]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[12]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[16]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[20]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[24]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[28]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[1]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[5]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[9]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[17]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[21]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[25]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[29]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[2]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[14]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[18]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[22]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[26]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[30]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[11]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[15]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[19]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[23]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[27]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[31]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAMdrive IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkWrite : std_logic;
SIGNAL ww_clkRead : std_logic;
SIGNAL ww_D_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_writeEna : std_logic;
SIGNAL ww_readEna : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_rstCount16 : std_logic;
SIGNAL ww_rstCount19 : std_logic;
SIGNAL \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkRead~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkWrite~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rstCount16~input_o\ : std_logic;
SIGNAL \rstCount19~input_o\ : std_logic;
SIGNAL \D_out[0]~output_o\ : std_logic;
SIGNAL \D_out[1]~output_o\ : std_logic;
SIGNAL \D_out[2]~output_o\ : std_logic;
SIGNAL \D_out[3]~output_o\ : std_logic;
SIGNAL \writeEna~input_o\ : std_logic;
SIGNAL \readEna~input_o\ : std_logic;
SIGNAL \clkWrite~input_o\ : std_logic;
SIGNAL \clkWrite~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkRead~input_o\ : std_logic;
SIGNAL \clkRead~inputclkctrl_outclk\ : std_logic;
SIGNAL \RAMdev|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \RAMdev|altsyncram_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \D_in[0]~input_o\ : std_logic;
SIGNAL \D_in[4]~input_o\ : std_logic;
SIGNAL \D_in[8]~input_o\ : std_logic;
SIGNAL \D_in[12]~input_o\ : std_logic;
SIGNAL \D_in[16]~input_o\ : std_logic;
SIGNAL \D_in[20]~input_o\ : std_logic;
SIGNAL \D_in[24]~input_o\ : std_logic;
SIGNAL \D_in[28]~input_o\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \D_in[1]~input_o\ : std_logic;
SIGNAL \D_in[2]~input_o\ : std_logic;
SIGNAL \D_in[3]~input_o\ : std_logic;
SIGNAL \D_in[5]~input_o\ : std_logic;
SIGNAL \D_in[6]~input_o\ : std_logic;
SIGNAL \D_in[7]~input_o\ : std_logic;
SIGNAL \D_in[9]~input_o\ : std_logic;
SIGNAL \D_in[10]~input_o\ : std_logic;
SIGNAL \D_in[11]~input_o\ : std_logic;
SIGNAL \D_in[13]~input_o\ : std_logic;
SIGNAL \D_in[14]~input_o\ : std_logic;
SIGNAL \D_in[15]~input_o\ : std_logic;
SIGNAL \D_in[17]~input_o\ : std_logic;
SIGNAL \D_in[18]~input_o\ : std_logic;
SIGNAL \D_in[19]~input_o\ : std_logic;
SIGNAL \D_in[21]~input_o\ : std_logic;
SIGNAL \D_in[22]~input_o\ : std_logic;
SIGNAL \D_in[23]~input_o\ : std_logic;
SIGNAL \D_in[25]~input_o\ : std_logic;
SIGNAL \D_in[26]~input_o\ : std_logic;
SIGNAL \D_in[27]~input_o\ : std_logic;
SIGNAL \D_in[29]~input_o\ : std_logic;
SIGNAL \D_in[30]~input_o\ : std_logic;
SIGNAL \D_in[31]~input_o\ : std_logic;
SIGNAL \RAMdev|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \RAMdev|altsyncram_component|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \RAMdev|altsyncram_component|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \RAMdev|altsyncram_component|auto_generated|ram_block1a3\ : std_logic;

BEGIN

ww_clkWrite <= clkWrite;
ww_clkRead <= clkRead;
ww_D_in <= D_in;
D_out <= ww_D_out;
ww_writeEna <= writeEna;
ww_readEna <= readEna;
ww_clear <= clear;
ww_rstCount16 <= rstCount16;
ww_rstCount19 <= rstCount19;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\D_in[31]~input_o\ & \D_in[30]~input_o\ & \D_in[29]~input_o\ & \D_in[28]~input_o\ & \D_in[27]~input_o\ & \D_in[26]~input_o\ & \D_in[25]~input_o\ & \D_in[24]~input_o\ & 
\D_in[23]~input_o\ & \D_in[22]~input_o\ & \D_in[21]~input_o\ & \D_in[20]~input_o\ & \D_in[19]~input_o\ & \D_in[18]~input_o\ & \D_in[17]~input_o\ & \D_in[16]~input_o\ & \D_in[15]~input_o\ & \D_in[14]~input_o\ & \D_in[13]~input_o\ & \D_in[12]~input_o\ & 
\D_in[11]~input_o\ & \D_in[10]~input_o\ & \D_in[9]~input_o\ & \D_in[8]~input_o\ & \D_in[7]~input_o\ & \D_in[6]~input_o\ & \D_in[5]~input_o\ & \D_in[4]~input_o\ & \D_in[3]~input_o\ & \D_in[2]~input_o\ & \D_in[1]~input_o\ & \D_in[0]~input_o\);

\RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\RAMdev|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ <= \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RAMdev|altsyncram_component|auto_generated|ram_block1a1\ <= \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RAMdev|altsyncram_component|auto_generated|ram_block1a2\ <= \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RAMdev|altsyncram_component|auto_generated|ram_block1a3\ <= \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\clkRead~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkRead~input_o\);

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clkWrite~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkWrite~input_o\);

-- Location: IOOBUF_X11_Y0_N2
\D_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMdev|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \D_out[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\D_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMdev|altsyncram_component|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \D_out[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\D_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMdev|altsyncram_component|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \D_out[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\D_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMdev|altsyncram_component|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \D_out[3]~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\writeEna~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeEna,
	o => \writeEna~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\readEna~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readEna,
	o => \readEna~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\clkWrite~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkWrite,
	o => \clkWrite~input_o\);

-- Location: CLKCTRL_G2
\clkWrite~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkWrite~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkWrite~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y14_N1
\clkRead~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkRead,
	o => \clkRead~input_o\);

-- Location: CLKCTRL_G4
\clkRead~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkRead~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkRead~inputclkctrl_outclk\);

-- Location: FF_X14_Y1_N9
\RAMdev|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkRead~inputclkctrl_outclk\,
	asdata => \readEna~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMdev|altsyncram_component|auto_generated|rden_b_store~q\);

-- Location: LCCOMB_X14_Y1_N8
\RAMdev|altsyncram_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMdev|altsyncram_component|auto_generated|_~0_combout\ = (\readEna~input_o\) # (\RAMdev|altsyncram_component|auto_generated|rden_b_store~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readEna~input_o\,
	datac => \RAMdev|altsyncram_component|auto_generated|rden_b_store~q\,
	combout => \RAMdev|altsyncram_component|auto_generated|_~0_combout\);

-- Location: IOIBUF_X0_Y14_N15
\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G3
\clear~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N22
\D_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(0),
	o => \D_in[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\D_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(4),
	o => \D_in[4]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\D_in[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(8),
	o => \D_in[8]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\D_in[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(12),
	o => \D_in[12]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\D_in[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(16),
	o => \D_in[16]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\D_in[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(20),
	o => \D_in[20]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\D_in[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(24),
	o => \D_in[24]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\D_in[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(28),
	o => \D_in[28]~input_o\);

-- Location: LCCOMB_X14_Y1_N10
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X7_Y0_N22
\D_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(1),
	o => \D_in[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\D_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(2),
	o => \D_in[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\D_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(3),
	o => \D_in[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\D_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(5),
	o => \D_in[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\D_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(6),
	o => \D_in[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\D_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(7),
	o => \D_in[7]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\D_in[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(9),
	o => \D_in[9]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\D_in[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(10),
	o => \D_in[10]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\D_in[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(11),
	o => \D_in[11]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\D_in[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(13),
	o => \D_in[13]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\D_in[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(14),
	o => \D_in[14]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\D_in[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(15),
	o => \D_in[15]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\D_in[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(17),
	o => \D_in[17]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\D_in[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(18),
	o => \D_in[18]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\D_in[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(19),
	o => \D_in[19]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\D_in[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(21),
	o => \D_in[21]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\D_in[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(22),
	o => \D_in[22]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\D_in[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(23),
	o => \D_in[23]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\D_in[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(25),
	o => \D_in[25]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\D_in[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(26),
	o => \D_in[26]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\D_in[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(27),
	o => \D_in[27]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\D_in[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(29),
	o => \D_in[29]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\D_in[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(30),
	o => \D_in[30]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\D_in[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(31),
	o => \D_in[31]~input_o\);

-- Location: M9K_X13_Y1_N0
\RAMdev|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMdevice:RAMdev|altsyncram:altsyncram_component|altsyncram_c7q3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 524288,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeEna~input_o\,
	portbre => \readEna~input_o\,
	clk0 => \clkWrite~inputclkctrl_outclk\,
	clk1 => \clkRead~inputclkctrl_outclk\,
	ena0 => \writeEna~input_o\,
	ena1 => \RAMdev|altsyncram_component|auto_generated|_~0_combout\,
	clr1 => \clear~inputclkctrl_outclk\,
	portadatain => \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X21_Y0_N8
\rstCount16~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstCount16,
	o => \rstCount16~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\rstCount19~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstCount19,
	o => \rstCount19~input_o\);

ww_D_out(0) <= \D_out[0]~output_o\;

ww_D_out(1) <= \D_out[1]~output_o\;

ww_D_out(2) <= \D_out[2]~output_o\;

ww_D_out(3) <= \D_out[3]~output_o\;
END structure;


