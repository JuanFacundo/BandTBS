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

-- DATE "06/18/2024 10:36:20"

-- 
-- Device: Altera EP3C16U484C6 Package UFBGA484
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

ENTITY 	CAPonce IS
    PORT (
	rst : IN std_logic;
	D_in : IN std_logic_vector(7 DOWNTO 0);
	PCLK : IN std_logic;
	HREF : IN std_logic;
	D_out : BUFFER std_logic_vector(3 DOWNTO 0);
	RAMadr : BUFFER std_logic_vector(15 DOWNTO 0);
	outCLK : BUFFER std_logic
	);
END CAPonce;

-- Design Ports Information
-- D_in[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[0]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[5]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[8]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[9]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[10]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[14]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[15]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outCLK	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HREF	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[6]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CAPonce IS
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
SIGNAL ww_RAMadr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_outCLK : std_logic;
SIGNAL \PCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAPclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HREF~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dPCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D_in[0]~input_o\ : std_logic;
SIGNAL \D_in[1]~input_o\ : std_logic;
SIGNAL \D_in[2]~input_o\ : std_logic;
SIGNAL \D_in[3]~input_o\ : std_logic;
SIGNAL \D_out[0]~output_o\ : std_logic;
SIGNAL \D_out[1]~output_o\ : std_logic;
SIGNAL \D_out[2]~output_o\ : std_logic;
SIGNAL \D_out[3]~output_o\ : std_logic;
SIGNAL \RAMadr[0]~output_o\ : std_logic;
SIGNAL \RAMadr[1]~output_o\ : std_logic;
SIGNAL \RAMadr[2]~output_o\ : std_logic;
SIGNAL \RAMadr[3]~output_o\ : std_logic;
SIGNAL \RAMadr[4]~output_o\ : std_logic;
SIGNAL \RAMadr[5]~output_o\ : std_logic;
SIGNAL \RAMadr[6]~output_o\ : std_logic;
SIGNAL \RAMadr[7]~output_o\ : std_logic;
SIGNAL \RAMadr[8]~output_o\ : std_logic;
SIGNAL \RAMadr[9]~output_o\ : std_logic;
SIGNAL \RAMadr[10]~output_o\ : std_logic;
SIGNAL \RAMadr[11]~output_o\ : std_logic;
SIGNAL \RAMadr[12]~output_o\ : std_logic;
SIGNAL \RAMadr[13]~output_o\ : std_logic;
SIGNAL \RAMadr[14]~output_o\ : std_logic;
SIGNAL \RAMadr[15]~output_o\ : std_logic;
SIGNAL \outCLK~output_o\ : std_logic;
SIGNAL \HREF~input_o\ : std_logic;
SIGNAL \PCLK~input_o\ : std_logic;
SIGNAL \dPCLK~combout\ : std_logic;
SIGNAL \dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \takeTurn~0_combout\ : std_logic;
SIGNAL \HREF~inputclkctrl_outclk\ : std_logic;
SIGNAL \takeTurn~q\ : std_logic;
SIGNAL \D_in[4]~input_o\ : std_logic;
SIGNAL \QinReg[4]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[0]~0_combout\ : std_logic;
SIGNAL \D_in[5]~input_o\ : std_logic;
SIGNAL \QinReg[5]~feeder_combout\ : std_logic;
SIGNAL \B[1]~1_combout\ : std_logic;
SIGNAL \D_in[6]~input_o\ : std_logic;
SIGNAL \QinReg[6]~feeder_combout\ : std_logic;
SIGNAL \B[2]~2_combout\ : std_logic;
SIGNAL \D_in[7]~input_o\ : std_logic;
SIGNAL \QinReg[7]~feeder_combout\ : std_logic;
SIGNAL \B[3]~3_combout\ : std_logic;
SIGNAL \PCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DEPHASE|Qt~0_combout\ : std_logic;
SIGNAL \DEPHASE|Qt~q\ : std_logic;
SIGNAL \DEPHASE|Qd[0]~feeder_combout\ : std_logic;
SIGNAL \DEPHASE|Qd[1]~feeder_combout\ : std_logic;
SIGNAL \CAPclk~0_combout\ : std_logic;
SIGNAL \CAPclk~q\ : std_logic;
SIGNAL \CAPclk~clkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \h_count~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \h_count~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \v_count[0]~0_combout\ : std_logic;
SIGNAL \RAM_adr[0]~0_combout\ : std_logic;
SIGNAL \RAM_adr[0]~1_combout\ : std_logic;
SIGNAL \RAM_adr[0]~2_combout\ : std_logic;
SIGNAL \RAM_adr[0]~3_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \RAM_adr~5_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \RAM_adr~6_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \RAM_adr~7_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \RAM_adr~4_combout\ : std_logic;
SIGNAL \enawRAMclk~0_combout\ : std_logic;
SIGNAL \enawRAMclk~q\ : std_logic;
SIGNAL \outCLK~0_combout\ : std_logic;
SIGNAL v_count : std_logic_vector(9 DOWNTO 0);
SIGNAL h_count : std_logic_vector(9 DOWNTO 0);
SIGNAL RAM_adr : std_logic_vector(15 DOWNTO 0);
SIGNAL QinReg : std_logic_vector(7 DOWNTO 0);
SIGNAL QaddReg : std_logic_vector(5 DOWNTO 0);
SIGNAL \DEPHASE|Qd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CAPclk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_rst <= rst;
ww_D_in <= D_in;
ww_PCLK <= PCLK;
ww_HREF <= HREF;
D_out <= ww_D_out;
RAMadr <= ww_RAMadr;
outCLK <= ww_outCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PCLK~input_o\);

\CAPclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAPclk~q\);

\HREF~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \HREF~input_o\);

\dPCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dPCLK~combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_dPCLK~clkctrl_outclk\ <= NOT \dPCLK~clkctrl_outclk\;
\ALT_INV_CAPclk~clkctrl_outclk\ <= NOT \CAPclk~clkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X39_Y29_N9
\D_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QaddReg(0),
	devoe => ww_devoe,
	o => \D_out[0]~output_o\);

-- Location: IOOBUF_X41_Y27_N23
\D_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QaddReg(1),
	devoe => ww_devoe,
	o => \D_out[1]~output_o\);

-- Location: IOOBUF_X41_Y26_N16
\D_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QaddReg(2),
	devoe => ww_devoe,
	o => \D_out[2]~output_o\);

-- Location: IOOBUF_X41_Y27_N16
\D_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QaddReg(3),
	devoe => ww_devoe,
	o => \D_out[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\RAMadr[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(0),
	devoe => ww_devoe,
	o => \RAMadr[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\RAMadr[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(1),
	devoe => ww_devoe,
	o => \RAMadr[1]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\RAMadr[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(2),
	devoe => ww_devoe,
	o => \RAMadr[2]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\RAMadr[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(3),
	devoe => ww_devoe,
	o => \RAMadr[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\RAMadr[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(4),
	devoe => ww_devoe,
	o => \RAMadr[4]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\RAMadr[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(5),
	devoe => ww_devoe,
	o => \RAMadr[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\RAMadr[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(6),
	devoe => ww_devoe,
	o => \RAMadr[6]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\RAMadr[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(7),
	devoe => ww_devoe,
	o => \RAMadr[7]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\RAMadr[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(8),
	devoe => ww_devoe,
	o => \RAMadr[8]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\RAMadr[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(9),
	devoe => ww_devoe,
	o => \RAMadr[9]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\RAMadr[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(10),
	devoe => ww_devoe,
	o => \RAMadr[10]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\RAMadr[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(11),
	devoe => ww_devoe,
	o => \RAMadr[11]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\RAMadr[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(12),
	devoe => ww_devoe,
	o => \RAMadr[12]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\RAMadr[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(13),
	devoe => ww_devoe,
	o => \RAMadr[13]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\RAMadr[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(14),
	devoe => ww_devoe,
	o => \RAMadr[14]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\RAMadr[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RAM_adr(15),
	devoe => ww_devoe,
	o => \RAMadr[15]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\outCLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outCLK~0_combout\,
	devoe => ww_devoe,
	o => \outCLK~output_o\);

-- Location: IOIBUF_X0_Y14_N15
\HREF~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HREF,
	o => \HREF~input_o\);

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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X40_Y27_N30
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

-- Location: CLKCTRL_G1
\HREF~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \HREF~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \HREF~inputclkctrl_outclk\);

-- Location: FF_X40_Y27_N31
takeTurn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	d => \takeTurn~0_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \takeTurn~q\);

-- Location: IOIBUF_X41_Y27_N1
\D_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(4),
	o => \D_in[4]~input_o\);

-- Location: LCCOMB_X40_Y27_N20
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

-- Location: FF_X40_Y27_N21
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

-- Location: LCCOMB_X40_Y27_N12
\B[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[0]~0_combout\ = (!\takeTurn~q\ & QinReg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \takeTurn~q\,
	datad => QinReg(4),
	combout => \B[0]~0_combout\);

-- Location: FF_X40_Y27_N13
\QaddReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \B[0]~0_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(0));

-- Location: IOIBUF_X41_Y26_N22
\D_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(5),
	o => \D_in[5]~input_o\);

-- Location: LCCOMB_X40_Y27_N24
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

-- Location: FF_X40_Y27_N25
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

-- Location: LCCOMB_X40_Y27_N26
\B[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[1]~1_combout\ = (!\takeTurn~q\ & QinReg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \takeTurn~q\,
	datad => QinReg(5),
	combout => \B[1]~1_combout\);

-- Location: FF_X40_Y27_N27
\QaddReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \B[1]~1_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(1));

-- Location: IOIBUF_X41_Y27_N8
\D_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(6),
	o => \D_in[6]~input_o\);

-- Location: LCCOMB_X40_Y27_N6
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

-- Location: FF_X40_Y27_N7
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

-- Location: LCCOMB_X40_Y27_N28
\B[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[2]~2_combout\ = (!\takeTurn~q\ & QinReg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \takeTurn~q\,
	datad => QinReg(6),
	combout => \B[2]~2_combout\);

-- Location: FF_X40_Y27_N29
\QaddReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \B[2]~2_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(2));

-- Location: IOIBUF_X41_Y26_N8
\D_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(7),
	o => \D_in[7]~input_o\);

-- Location: LCCOMB_X40_Y27_N0
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

-- Location: FF_X40_Y27_N1
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

-- Location: LCCOMB_X40_Y27_N18
\B[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[3]~3_combout\ = (!\takeTurn~q\ & QinReg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \takeTurn~q\,
	datad => QinReg(7),
	combout => \B[3]~3_combout\);

-- Location: FF_X40_Y27_N19
\QaddReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \B[3]~3_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(3));

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

-- Location: LCCOMB_X19_Y28_N12
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

-- Location: FF_X19_Y28_N13
\DEPHASE|Qt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \DEPHASE|Qt~0_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEPHASE|Qt~q\);

-- Location: LCCOMB_X19_Y28_N10
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

-- Location: FF_X19_Y28_N11
\DEPHASE|Qd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \DEPHASE|Qd[0]~feeder_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEPHASE|Qd\(0));

-- Location: LCCOMB_X19_Y28_N8
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

-- Location: FF_X19_Y28_N9
\DEPHASE|Qd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \DEPHASE|Qd[1]~feeder_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEPHASE|Qd\(1));

-- Location: LCCOMB_X19_Y28_N26
\CAPclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPclk~0_combout\ = !\CAPclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAPclk~q\,
	combout => \CAPclk~0_combout\);

-- Location: FF_X19_Y28_N5
CAPclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DEPHASE|Qd\(1),
	asdata => \CAPclk~0_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPclk~q\);

-- Location: CLKCTRL_G10
\CAPclk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAPclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAPclk~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y28_N0
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = RAM_adr(0) $ (VCC)
-- \Add2~1\ = CARRY(RAM_adr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X9_Y28_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = h_count(0) $ (VCC)
-- \Add0~1\ = CARRY(h_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X9_Y28_N1
\h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(0));

-- Location: LCCOMB_X9_Y28_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (h_count(1) & (!\Add0~1\)) # (!h_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!h_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X9_Y28_N3
\h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(1));

-- Location: LCCOMB_X9_Y28_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (h_count(2) & (\Add0~3\ $ (GND))) # (!h_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((h_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X9_Y28_N5
\h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(2));

-- Location: LCCOMB_X9_Y28_N6
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

-- Location: FF_X9_Y28_N7
\h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(3));

-- Location: LCCOMB_X9_Y28_N8
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

-- Location: FF_X9_Y28_N9
\h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(4));

-- Location: LCCOMB_X9_Y28_N10
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

-- Location: FF_X9_Y28_N11
\h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(5));

-- Location: LCCOMB_X8_Y28_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (h_count(2) & (h_count(4) & (h_count(5) & h_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(2),
	datab => h_count(4),
	datac => h_count(5),
	datad => h_count(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X9_Y28_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (h_count(6) & (\Add0~11\ $ (GND))) # (!h_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((h_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X8_Y28_N14
\h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~1_combout\ = (\Add0~12_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \Equal0~2_combout\,
	combout => \h_count~1_combout\);

-- Location: FF_X8_Y28_N15
\h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \h_count~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(6));

-- Location: LCCOMB_X9_Y28_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (h_count(7) & (!\Add0~13\)) # (!h_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!h_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X9_Y28_N15
\h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(7));

-- Location: LCCOMB_X9_Y28_N16
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

-- Location: LCCOMB_X9_Y28_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = h_count(9) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: FF_X9_Y28_N19
\h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(9));

-- Location: LCCOMB_X8_Y28_N12
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (h_count(8) & (!h_count(6) & (!h_count(7) & !h_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => h_count(6),
	datac => h_count(7),
	datad => h_count(9),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y28_N28
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (h_count(1) & (\Equal0~1_combout\ & (h_count(0) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(1),
	datab => \Equal0~1_combout\,
	datac => h_count(0),
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X9_Y28_N30
\h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~0_combout\ = (!\Equal0~2_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datad => \Add0~16_combout\,
	combout => \h_count~0_combout\);

-- Location: FF_X9_Y28_N31
\h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \h_count~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(8));

-- Location: LCCOMB_X8_Y28_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = !v_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X8_Y28_N16
\v_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[0]~0_combout\ = (\Equal0~2_combout\ & (\Add1~0_combout\)) # (!\Equal0~2_combout\ & ((v_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => v_count(0),
	datad => \Equal0~2_combout\,
	combout => \v_count[0]~0_combout\);

-- Location: FF_X8_Y28_N17
\v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \v_count[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(0));

-- Location: LCCOMB_X9_Y28_N20
\RAM_adr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr[0]~0_combout\ = (h_count(3) & ((h_count(0)) # ((h_count(2)) # (h_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(3),
	datab => h_count(0),
	datac => h_count(2),
	datad => h_count(1),
	combout => \RAM_adr[0]~0_combout\);

-- Location: LCCOMB_X9_Y28_N26
\RAM_adr[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr[0]~1_combout\ = (h_count(4) & ((h_count(5)) # ((h_count(8) & \RAM_adr[0]~0_combout\)))) # (!h_count(4) & (h_count(5) & ((h_count(8)) # (\RAM_adr[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(4),
	datab => h_count(5),
	datac => h_count(8),
	datad => \RAM_adr[0]~0_combout\,
	combout => \RAM_adr[0]~1_combout\);

-- Location: LCCOMB_X9_Y28_N24
\RAM_adr[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr[0]~2_combout\ = (h_count(6)) # ((h_count(7)) # (\RAM_adr[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(6),
	datab => h_count(7),
	datac => \RAM_adr[0]~1_combout\,
	combout => \RAM_adr[0]~2_combout\);

-- Location: LCCOMB_X9_Y28_N22
\RAM_adr[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr[0]~3_combout\ = (!h_count(9) & (!v_count(0) & (h_count(8) $ (\RAM_adr[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => h_count(9),
	datac => v_count(0),
	datad => \RAM_adr[0]~2_combout\,
	combout => \RAM_adr[0]~3_combout\);

-- Location: FF_X10_Y28_N1
\RAM_adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(0));

-- Location: LCCOMB_X10_Y28_N2
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (RAM_adr(1) & (!\Add2~1\)) # (!RAM_adr(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!RAM_adr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X10_Y28_N3
\RAM_adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(1));

-- Location: LCCOMB_X10_Y28_N4
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (RAM_adr(2) & (\Add2~3\ $ (GND))) # (!RAM_adr(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((RAM_adr(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X10_Y28_N5
\RAM_adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(2));

-- Location: LCCOMB_X10_Y28_N6
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (RAM_adr(3) & (!\Add2~5\)) # (!RAM_adr(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!RAM_adr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X10_Y28_N7
\RAM_adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(3));

-- Location: LCCOMB_X10_Y28_N8
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (RAM_adr(4) & (\Add2~7\ $ (GND))) # (!RAM_adr(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((RAM_adr(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X10_Y28_N9
\RAM_adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(4));

-- Location: LCCOMB_X10_Y28_N10
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (RAM_adr(5) & (!\Add2~9\)) # (!RAM_adr(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!RAM_adr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X10_Y28_N11
\RAM_adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(5));

-- Location: LCCOMB_X10_Y28_N12
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (RAM_adr(6) & (\Add2~11\ $ (GND))) # (!RAM_adr(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((RAM_adr(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X10_Y28_N13
\RAM_adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(6));

-- Location: LCCOMB_X10_Y28_N14
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (RAM_adr(7) & (!\Add2~13\)) # (!RAM_adr(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!RAM_adr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X10_Y28_N15
\RAM_adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(7));

-- Location: LCCOMB_X10_Y28_N16
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (RAM_adr(8) & (\Add2~15\ $ (GND))) # (!RAM_adr(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((RAM_adr(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X10_Y28_N18
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (RAM_adr(9) & (!\Add2~17\)) # (!RAM_adr(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!RAM_adr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X10_Y28_N19
\RAM_adr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(9));

-- Location: LCCOMB_X10_Y28_N20
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (RAM_adr(10) & (\Add2~19\ $ (GND))) # (!RAM_adr(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((RAM_adr(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X10_Y28_N21
\RAM_adr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(10));

-- Location: LCCOMB_X10_Y28_N22
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (RAM_adr(11) & (!\Add2~21\)) # (!RAM_adr(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!RAM_adr(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X10_Y28_N23
\RAM_adr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(11));

-- Location: LCCOMB_X10_Y28_N24
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (RAM_adr(12) & (\Add2~23\ $ (GND))) # (!RAM_adr(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((RAM_adr(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X10_Y28_N25
\RAM_adr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(12));

-- Location: LCCOMB_X10_Y28_N26
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (RAM_adr(13) & (!\Add2~25\)) # (!RAM_adr(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!RAM_adr(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X11_Y28_N20
\RAM_adr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr~5_combout\ = (!\Equal2~4_combout\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datac => \Add2~26_combout\,
	combout => \RAM_adr~5_combout\);

-- Location: FF_X11_Y28_N21
\RAM_adr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \RAM_adr~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(13));

-- Location: LCCOMB_X10_Y28_N28
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (RAM_adr(14) & (\Add2~27\ $ (GND))) # (!RAM_adr(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((RAM_adr(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X11_Y28_N2
\RAM_adr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr~6_combout\ = (!\Equal2~4_combout\ & \Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~4_combout\,
	datad => \Add2~28_combout\,
	combout => \RAM_adr~6_combout\);

-- Location: FF_X11_Y28_N3
\RAM_adr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \RAM_adr~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(14));

-- Location: LCCOMB_X10_Y28_N30
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = RAM_adr(15) $ (\Add2~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RAM_adr(15),
	cin => \Add2~29\,
	combout => \Add2~30_combout\);

-- Location: LCCOMB_X11_Y28_N0
\RAM_adr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr~7_combout\ = (!\Equal2~4_combout\ & \Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~4_combout\,
	datad => \Add2~30_combout\,
	combout => \RAM_adr~7_combout\);

-- Location: FF_X11_Y28_N1
\RAM_adr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \RAM_adr~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(15));

-- Location: LCCOMB_X11_Y28_N6
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (RAM_adr(13) & (RAM_adr(15) & (RAM_adr(14) & !RAM_adr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(13),
	datab => RAM_adr(15),
	datac => RAM_adr(14),
	datad => RAM_adr(12),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X11_Y28_N8
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (RAM_adr(0) & (RAM_adr(2) & (RAM_adr(3) & RAM_adr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(0),
	datab => RAM_adr(2),
	datac => RAM_adr(3),
	datad => RAM_adr(1),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X11_Y28_N22
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (RAM_adr(5) & (RAM_adr(4) & (RAM_adr(6) & RAM_adr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(5),
	datab => RAM_adr(4),
	datac => RAM_adr(6),
	datad => RAM_adr(7),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X11_Y28_N12
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!RAM_adr(8) & (!RAM_adr(11) & (!RAM_adr(10) & !RAM_adr(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(8),
	datab => RAM_adr(11),
	datac => RAM_adr(10),
	datad => RAM_adr(9),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X11_Y28_N26
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~0_combout\ & (\Equal2~3_combout\ & (\Equal2~2_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X9_Y28_N28
\RAM_adr~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr~4_combout\ = (!\Equal2~4_combout\ & \Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~4_combout\,
	datad => \Add2~16_combout\,
	combout => \RAM_adr~4_combout\);

-- Location: FF_X9_Y28_N29
\RAM_adr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \RAM_adr~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \RAM_adr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(8));

-- Location: LCCOMB_X8_Y28_N22
\enawRAMclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enawRAMclk~0_combout\ = !v_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(0),
	combout => \enawRAMclk~0_combout\);

-- Location: FF_X8_Y28_N23
enawRAMclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \enawRAMclk~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enawRAMclk~q\);

-- Location: LCCOMB_X15_Y28_N0
\outCLK~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outCLK~0_combout\ = (\CAPclk~q\ & \enawRAMclk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAPclk~q\,
	datad => \enawRAMclk~q\,
	combout => \outCLK~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\D_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(0),
	o => \D_in[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\D_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(1),
	o => \D_in[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\D_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(2),
	o => \D_in[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\D_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(3),
	o => \D_in[3]~input_o\);

ww_D_out(0) <= \D_out[0]~output_o\;

ww_D_out(1) <= \D_out[1]~output_o\;

ww_D_out(2) <= \D_out[2]~output_o\;

ww_D_out(3) <= \D_out[3]~output_o\;

ww_RAMadr(0) <= \RAMadr[0]~output_o\;

ww_RAMadr(1) <= \RAMadr[1]~output_o\;

ww_RAMadr(2) <= \RAMadr[2]~output_o\;

ww_RAMadr(3) <= \RAMadr[3]~output_o\;

ww_RAMadr(4) <= \RAMadr[4]~output_o\;

ww_RAMadr(5) <= \RAMadr[5]~output_o\;

ww_RAMadr(6) <= \RAMadr[6]~output_o\;

ww_RAMadr(7) <= \RAMadr[7]~output_o\;

ww_RAMadr(8) <= \RAMadr[8]~output_o\;

ww_RAMadr(9) <= \RAMadr[9]~output_o\;

ww_RAMadr(10) <= \RAMadr[10]~output_o\;

ww_RAMadr(11) <= \RAMadr[11]~output_o\;

ww_RAMadr(12) <= \RAMadr[12]~output_o\;

ww_RAMadr(13) <= \RAMadr[13]~output_o\;

ww_RAMadr(14) <= \RAMadr[14]~output_o\;

ww_RAMadr(15) <= \RAMadr[15]~output_o\;

ww_outCLK <= \outCLK~output_o\;
END structure;


