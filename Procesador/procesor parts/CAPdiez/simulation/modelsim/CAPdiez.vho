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

-- DATE "06/11/2024 17:35:52"

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

ENTITY 	CAPdiez IS
    PORT (
	rst : IN std_logic;
	D_in : IN std_logic_vector(7 DOWNTO 0);
	PCLK : IN std_logic;
	HREF : IN std_logic;
	D_out : BUFFER std_logic_vector(3 DOWNTO 0);
	RAMadr : BUFFER std_logic_vector(15 DOWNTO 0);
	outCLK : BUFFER std_logic
	);
END CAPdiez;

-- Design Ports Information
-- D_out[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[8]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[10]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[11]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[13]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[14]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMadr[15]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outCLK	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HREF	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CAPdiez IS
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
SIGNAL \D_in[6]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \D_in[2]~input_o\ : std_logic;
SIGNAL \takeTurn~0_combout\ : std_logic;
SIGNAL \HREF~inputclkctrl_outclk\ : std_logic;
SIGNAL \takeTurn~q\ : std_logic;
SIGNAL \B[2]~2_combout\ : std_logic;
SIGNAL \D_in[4]~input_o\ : std_logic;
SIGNAL \D_in[5]~input_o\ : std_logic;
SIGNAL \QinReg[5]~feeder_combout\ : std_logic;
SIGNAL \D_in[0]~input_o\ : std_logic;
SIGNAL \QinReg[0]~feeder_combout\ : std_logic;
SIGNAL \RipCar:0:FA|s~0_combout\ : std_logic;
SIGNAL \B[0]~0_combout\ : std_logic;
SIGNAL \RipCar:1:FA|s~combout\ : std_logic;
SIGNAL \D_in[1]~input_o\ : std_logic;
SIGNAL \B[1]~1_combout\ : std_logic;
SIGNAL \RipCar:1:FA|co~0_combout\ : std_logic;
SIGNAL \RipCar:2:FA|s~combout\ : std_logic;
SIGNAL \D_in[3]~input_o\ : std_logic;
SIGNAL \B[3]~3_combout\ : std_logic;
SIGNAL \D_in[7]~input_o\ : std_logic;
SIGNAL \RipCar:2:FA|co~0_combout\ : std_logic;
SIGNAL \RipCar:3:FA|s~combout\ : std_logic;
SIGNAL \B[4]~4_combout\ : std_logic;
SIGNAL \RipCar:4:FA|s~combout\ : std_logic;
SIGNAL \RipCar:4:FA|co~0_combout\ : std_logic;
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
SIGNAL \h_count~2_combout\ : std_logic;
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
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \h_count~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \h_count~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \v_count~4_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \v_count~3_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \v_count~2_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \v_count~1_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \v_count~0_combout\ : std_logic;
SIGNAL \RAM_adr[0]~0_combout\ : std_logic;
SIGNAL \RAM_adr[0]~1_combout\ : std_logic;
SIGNAL \RAM_adr[0]~2_combout\ : std_logic;
SIGNAL \RAM_adr[0]~3_combout\ : std_logic;
SIGNAL \RAM_adr[0]~4_combout\ : std_logic;
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
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
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
SIGNAL \RAM_adr~6_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \RAM_adr~7_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \RAM_adr~8_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \RAM_adr~5_combout\ : std_logic;
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

-- Location: IOOBUF_X7_Y29_N16
\D_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QaddReg(2),
	devoe => ww_devoe,
	o => \D_out[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\D_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QaddReg(3),
	devoe => ww_devoe,
	o => \D_out[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\D_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QaddReg(4),
	devoe => ww_devoe,
	o => \D_out[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\D_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QaddReg(5),
	devoe => ww_devoe,
	o => \D_out[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
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

-- Location: IOOBUF_X26_Y29_N16
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

-- Location: IOOBUF_X32_Y29_N9
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

-- Location: IOOBUF_X32_Y29_N30
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

-- Location: IOOBUF_X30_Y29_N23
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

-- Location: IOOBUF_X28_Y29_N23
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

-- Location: IOOBUF_X32_Y29_N23
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

-- Location: IOOBUF_X30_Y29_N2
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

-- Location: IOOBUF_X28_Y29_N16
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

-- Location: IOOBUF_X32_Y29_N2
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

-- Location: IOOBUF_X30_Y29_N9
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

-- Location: IOOBUF_X32_Y29_N16
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

-- Location: IOOBUF_X28_Y29_N9
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

-- Location: IOOBUF_X28_Y29_N2
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

-- Location: IOOBUF_X28_Y29_N30
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

-- Location: IOOBUF_X30_Y29_N30
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

-- Location: IOOBUF_X41_Y14_N16
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

-- Location: IOIBUF_X9_Y29_N22
\D_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(6),
	o => \D_in[6]~input_o\);

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

-- Location: FF_X8_Y25_N11
\QinReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(6));

-- Location: IOIBUF_X9_Y29_N15
\D_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(2),
	o => \D_in[2]~input_o\);

-- Location: FF_X8_Y25_N15
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

-- Location: LCCOMB_X8_Y25_N28
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

-- Location: FF_X8_Y25_N29
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

-- Location: LCCOMB_X8_Y25_N14
\B[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[2]~2_combout\ = (\takeTurn~q\ & ((QinReg(2)))) # (!\takeTurn~q\ & (QaddReg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => QaddReg(2),
	datac => QinReg(2),
	datad => \takeTurn~q\,
	combout => \B[2]~2_combout\);

-- Location: IOIBUF_X21_Y0_N1
\D_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(4),
	o => \D_in[4]~input_o\);

-- Location: FF_X8_Y25_N13
\QinReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(4));

-- Location: IOIBUF_X9_Y29_N29
\D_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(5),
	o => \D_in[5]~input_o\);

-- Location: LCCOMB_X8_Y25_N6
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

-- Location: FF_X8_Y25_N7
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

-- Location: LCCOMB_X8_Y25_N24
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

-- Location: FF_X8_Y25_N25
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

-- Location: LCCOMB_X8_Y25_N26
\RipCar:0:FA|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:0:FA|s~0_combout\ = QinReg(4) $ (((\takeTurn~q\ & (QinReg(0))) # (!\takeTurn~q\ & ((QaddReg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QinReg(4),
	datab => QinReg(0),
	datac => QaddReg(0),
	datad => \takeTurn~q\,
	combout => \RipCar:0:FA|s~0_combout\);

-- Location: FF_X8_Y25_N27
\QaddReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:0:FA|s~0_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(0));

-- Location: LCCOMB_X8_Y25_N10
\B[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[0]~0_combout\ = (\takeTurn~q\ & ((QinReg(0)))) # (!\takeTurn~q\ & (QaddReg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QaddReg(0),
	datab => \takeTurn~q\,
	datad => QinReg(0),
	combout => \B[0]~0_combout\);

-- Location: LCCOMB_X8_Y25_N20
\RipCar:1:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:1:FA|s~combout\ = QinReg(5) $ (\B[1]~1_combout\ $ (((\B[0]~0_combout\ & QinReg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QinReg(5),
	datab => \B[0]~0_combout\,
	datac => \B[1]~1_combout\,
	datad => QinReg(4),
	combout => \RipCar:1:FA|s~combout\);

-- Location: FF_X8_Y25_N21
\QaddReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:1:FA|s~combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(1));

-- Location: IOIBUF_X0_Y25_N1
\D_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(1),
	o => \D_in[1]~input_o\);

-- Location: FF_X8_Y25_N31
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

-- Location: LCCOMB_X8_Y25_N30
\B[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[1]~1_combout\ = (\takeTurn~q\ & ((QinReg(1)))) # (!\takeTurn~q\ & (QaddReg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => QaddReg(1),
	datac => QinReg(1),
	datad => \takeTurn~q\,
	combout => \B[1]~1_combout\);

-- Location: LCCOMB_X8_Y25_N16
\RipCar:1:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:1:FA|co~0_combout\ = (QinReg(5) & ((\B[1]~1_combout\) # ((QinReg(4) & \B[0]~0_combout\)))) # (!QinReg(5) & (QinReg(4) & (\B[1]~1_combout\ & \B[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QinReg(4),
	datab => QinReg(5),
	datac => \B[1]~1_combout\,
	datad => \B[0]~0_combout\,
	combout => \RipCar:1:FA|co~0_combout\);

-- Location: LCCOMB_X8_Y25_N8
\RipCar:2:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:2:FA|s~combout\ = QinReg(6) $ (\B[2]~2_combout\ $ (\RipCar:1:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QinReg(6),
	datac => \B[2]~2_combout\,
	datad => \RipCar:1:FA|co~0_combout\,
	combout => \RipCar:2:FA|s~combout\);

-- Location: FF_X8_Y25_N9
\QaddReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:2:FA|s~combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(2));

-- Location: IOIBUF_X7_Y29_N29
\D_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(3),
	o => \D_in[3]~input_o\);

-- Location: FF_X8_Y25_N3
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

-- Location: LCCOMB_X8_Y25_N2
\B[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[3]~3_combout\ = (\takeTurn~q\ & ((QinReg(3)))) # (!\takeTurn~q\ & (QaddReg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QaddReg(3),
	datac => QinReg(3),
	datad => \takeTurn~q\,
	combout => \B[3]~3_combout\);

-- Location: IOIBUF_X7_Y29_N1
\D_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(7),
	o => \D_in[7]~input_o\);

-- Location: FF_X8_Y25_N1
\QinReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QinReg(7));

-- Location: LCCOMB_X8_Y25_N0
\RipCar:2:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:2:FA|co~0_combout\ = (QinReg(6) & ((\B[2]~2_combout\) # (\RipCar:1:FA|co~0_combout\))) # (!QinReg(6) & (\B[2]~2_combout\ & \RipCar:1:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QinReg(6),
	datab => \B[2]~2_combout\,
	datad => \RipCar:1:FA|co~0_combout\,
	combout => \RipCar:2:FA|co~0_combout\);

-- Location: LCCOMB_X8_Y25_N22
\RipCar:3:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:3:FA|s~combout\ = \B[3]~3_combout\ $ (QinReg(7) $ (\RipCar:2:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~3_combout\,
	datac => QinReg(7),
	datad => \RipCar:2:FA|co~0_combout\,
	combout => \RipCar:3:FA|s~combout\);

-- Location: FF_X8_Y25_N23
\QaddReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:3:FA|s~combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(3));

-- Location: LCCOMB_X8_Y25_N12
\B[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B[4]~4_combout\ = (QaddReg(4) & !\takeTurn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => QaddReg(4),
	datad => \takeTurn~q\,
	combout => \B[4]~4_combout\);

-- Location: LCCOMB_X8_Y25_N4
\RipCar:4:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:4:FA|s~combout\ = \B[4]~4_combout\ $ (((QinReg(7) & ((\B[3]~3_combout\) # (\RipCar:2:FA|co~0_combout\))) # (!QinReg(7) & (\B[3]~3_combout\ & \RipCar:2:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QinReg(7),
	datab => \B[3]~3_combout\,
	datac => \B[4]~4_combout\,
	datad => \RipCar:2:FA|co~0_combout\,
	combout => \RipCar:4:FA|s~combout\);

-- Location: FF_X8_Y25_N5
\QaddReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:4:FA|s~combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(4));

-- Location: LCCOMB_X8_Y25_N18
\RipCar:4:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RipCar:4:FA|co~0_combout\ = (\B[4]~4_combout\ & ((QinReg(7) & ((\B[3]~3_combout\) # (\RipCar:2:FA|co~0_combout\))) # (!QinReg(7) & (\B[3]~3_combout\ & \RipCar:2:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => QinReg(7),
	datab => \B[3]~3_combout\,
	datac => \B[4]~4_combout\,
	datad => \RipCar:2:FA|co~0_combout\,
	combout => \RipCar:4:FA|co~0_combout\);

-- Location: FF_X8_Y25_N19
\QaddReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dPCLK~clkctrl_outclk\,
	d => \RipCar:4:FA|co~0_combout\,
	clrn => \HREF~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QaddReg(5));

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

-- Location: LCCOMB_X40_Y15_N10
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

-- Location: FF_X40_Y15_N11
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

-- Location: LCCOMB_X40_Y15_N12
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

-- Location: FF_X40_Y15_N13
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

-- Location: LCCOMB_X40_Y15_N18
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

-- Location: FF_X40_Y15_N19
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

-- Location: LCCOMB_X40_Y15_N8
\CAPclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPclk~0_combout\ = !\CAPclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAPclk~q\,
	combout => \CAPclk~0_combout\);

-- Location: FF_X40_Y15_N23
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X31_Y28_N0
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

-- Location: LCCOMB_X30_Y28_N0
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

-- Location: LCCOMB_X30_Y28_N28
\h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~2_combout\ = (\Add0~0_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \h_count~2_combout\);

-- Location: FF_X30_Y28_N29
\h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \h_count~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(0));

-- Location: LCCOMB_X30_Y28_N2
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

-- Location: FF_X30_Y28_N3
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

-- Location: LCCOMB_X30_Y28_N4
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

-- Location: FF_X30_Y28_N5
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

-- Location: LCCOMB_X30_Y28_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (h_count(3) & (!\Add0~5\)) # (!h_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!h_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X30_Y28_N7
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

-- Location: LCCOMB_X30_Y28_N8
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

-- Location: FF_X30_Y28_N9
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

-- Location: LCCOMB_X30_Y28_N10
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

-- Location: FF_X30_Y28_N11
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

-- Location: LCCOMB_X30_Y28_N12
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

-- Location: LCCOMB_X29_Y28_N14
\h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~0_combout\ = (\Add0~12_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \Equal0~2_combout\,
	combout => \h_count~0_combout\);

-- Location: FF_X29_Y28_N15
\h_count[6]\ : dffeas
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
	q => h_count(6));

-- Location: LCCOMB_X29_Y28_N22
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!h_count(1) & (!h_count(0) & (h_count(6) & !h_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(1),
	datab => h_count(0),
	datac => h_count(6),
	datad => h_count(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y28_N14
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

-- Location: FF_X30_Y28_N15
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

-- Location: LCCOMB_X30_Y28_N16
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

-- Location: LCCOMB_X30_Y28_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (h_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => h_count(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: FF_X30_Y28_N19
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

-- Location: LCCOMB_X29_Y28_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (h_count(8) & (!h_count(7) & (!h_count(5) & !h_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => h_count(7),
	datac => h_count(5),
	datad => h_count(9),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y28_N12
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!h_count(3) & (!h_count(4) & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(3),
	datab => h_count(4),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X29_Y28_N8
\h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~1_combout\ = (!\Equal0~2_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datad => \Add0~16_combout\,
	combout => \h_count~1_combout\);

-- Location: FF_X29_Y28_N9
\h_count[8]\ : dffeas
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
	q => h_count(8));

-- Location: LCCOMB_X28_Y28_N4
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

-- Location: LCCOMB_X28_Y28_N6
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (v_count(1) & (!\Add1~1\)) # (!v_count(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!v_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X28_Y28_N7
\v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(1));

-- Location: LCCOMB_X28_Y28_N8
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (v_count(2) & (\Add1~3\ $ (GND))) # (!v_count(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((v_count(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X28_Y28_N9
\v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(2));

-- Location: LCCOMB_X28_Y28_N10
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

-- Location: FF_X28_Y28_N11
\v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(3));

-- Location: LCCOMB_X28_Y28_N12
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (v_count(4) & (\Add1~7\ $ (GND))) # (!v_count(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((v_count(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X28_Y28_N13
\v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(4));

-- Location: LCCOMB_X28_Y28_N14
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (v_count(5) & (!\Add1~9\)) # (!v_count(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!v_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X28_Y28_N0
\v_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~4_combout\ = (!\Equal1~2_combout\ & \Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~2_combout\,
	datad => \Add1~10_combout\,
	combout => \v_count~4_combout\);

-- Location: FF_X28_Y28_N1
\v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \v_count~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(5));

-- Location: LCCOMB_X28_Y28_N16
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (v_count(6) & (\Add1~11\ $ (GND))) # (!v_count(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((v_count(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X28_Y28_N28
\v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~3_combout\ = (!\Equal1~2_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~2_combout\,
	datad => \Add1~12_combout\,
	combout => \v_count~3_combout\);

-- Location: FF_X28_Y28_N29
\v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \v_count~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(6));

-- Location: LCCOMB_X28_Y28_N18
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (v_count(7) & (!\Add1~13\)) # (!v_count(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!v_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X28_Y28_N26
\v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~2_combout\ = (!\Equal1~2_combout\ & \Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~2_combout\,
	datad => \Add1~14_combout\,
	combout => \v_count~2_combout\);

-- Location: FF_X28_Y28_N27
\v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \v_count~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(7));

-- Location: LCCOMB_X28_Y28_N20
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

-- Location: LCCOMB_X28_Y28_N24
\v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~1_combout\ = (!\Equal1~2_combout\ & \Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~2_combout\,
	datad => \Add1~16_combout\,
	combout => \v_count~1_combout\);

-- Location: FF_X28_Y28_N25
\v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \v_count~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(8));

-- Location: LCCOMB_X28_Y28_N22
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = v_count(9) $ (\Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(9),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: FF_X28_Y28_N23
\v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(9));

-- Location: LCCOMB_X28_Y28_N30
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!v_count(9) & (v_count(8) & (v_count(7) & v_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(9),
	datab => v_count(8),
	datac => v_count(7),
	datad => v_count(6),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X28_Y28_N2
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!v_count(3) & (v_count(5) & (!v_count(2) & !v_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(3),
	datab => v_count(5),
	datac => v_count(2),
	datad => v_count(4),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X29_Y28_N10
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!v_count(0) & (\Equal1~0_combout\ & (!v_count(1) & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(0),
	datab => \Equal1~0_combout\,
	datac => v_count(1),
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X29_Y28_N20
\v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~0_combout\ = (\Add1~0_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \v_count~0_combout\);

-- Location: FF_X29_Y28_N21
\v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \v_count~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(0));

-- Location: LCCOMB_X30_Y28_N24
\RAM_adr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr[0]~0_combout\ = (\rst~input_o\) # ((v_count(0)) # (h_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => v_count(0),
	datad => h_count(9),
	combout => \RAM_adr[0]~0_combout\);

-- Location: LCCOMB_X30_Y28_N30
\RAM_adr[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr[0]~1_combout\ = (h_count(7)) # (h_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_count(7),
	datad => h_count(6),
	combout => \RAM_adr[0]~1_combout\);

-- Location: LCCOMB_X30_Y28_N22
\RAM_adr[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr[0]~2_combout\ = (h_count(3) & ((h_count(0)) # ((h_count(2)) # (h_count(1)))))

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
	combout => \RAM_adr[0]~2_combout\);

-- Location: LCCOMB_X30_Y28_N20
\RAM_adr[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr[0]~3_combout\ = (h_count(5) & ((h_count(4)) # ((\RAM_adr[0]~2_combout\) # (h_count(8))))) # (!h_count(5) & (h_count(4) & (\RAM_adr[0]~2_combout\ & h_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(5),
	datab => h_count(4),
	datac => \RAM_adr[0]~2_combout\,
	datad => h_count(8),
	combout => \RAM_adr[0]~3_combout\);

-- Location: LCCOMB_X30_Y28_N26
\RAM_adr[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr[0]~4_combout\ = (!\RAM_adr[0]~0_combout\ & (h_count(8) $ (((\RAM_adr[0]~1_combout\) # (\RAM_adr[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => \RAM_adr[0]~0_combout\,
	datac => \RAM_adr[0]~1_combout\,
	datad => \RAM_adr[0]~3_combout\,
	combout => \RAM_adr[0]~4_combout\);

-- Location: FF_X31_Y28_N1
\RAM_adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~0_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(0));

-- Location: LCCOMB_X31_Y28_N2
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

-- Location: FF_X31_Y28_N3
\RAM_adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(1));

-- Location: LCCOMB_X31_Y28_N4
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

-- Location: FF_X31_Y28_N5
\RAM_adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~4_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(2));

-- Location: LCCOMB_X31_Y28_N6
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

-- Location: FF_X31_Y28_N7
\RAM_adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~6_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(3));

-- Location: LCCOMB_X31_Y28_N8
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

-- Location: FF_X31_Y28_N9
\RAM_adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~8_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(4));

-- Location: LCCOMB_X31_Y28_N10
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

-- Location: FF_X31_Y28_N11
\RAM_adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~10_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(5));

-- Location: LCCOMB_X31_Y28_N12
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

-- Location: FF_X31_Y28_N13
\RAM_adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~12_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(6));

-- Location: LCCOMB_X31_Y28_N14
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

-- Location: FF_X31_Y28_N15
\RAM_adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(7));

-- Location: LCCOMB_X31_Y28_N16
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

-- Location: LCCOMB_X32_Y28_N12
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (RAM_adr(6) & (!RAM_adr(8) & (RAM_adr(5) & RAM_adr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(6),
	datab => RAM_adr(8),
	datac => RAM_adr(5),
	datad => RAM_adr(7),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X31_Y28_N18
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

-- Location: FF_X31_Y28_N19
\RAM_adr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~18_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(9));

-- Location: LCCOMB_X31_Y28_N20
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

-- Location: FF_X31_Y28_N21
\RAM_adr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~20_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(10));

-- Location: LCCOMB_X31_Y28_N22
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

-- Location: FF_X31_Y28_N23
\RAM_adr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~22_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(11));

-- Location: LCCOMB_X31_Y28_N24
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

-- Location: FF_X31_Y28_N25
\RAM_adr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \Add2~24_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(12));

-- Location: LCCOMB_X31_Y28_N26
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

-- Location: LCCOMB_X32_Y28_N6
\RAM_adr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr~6_combout\ = (\Add2~26_combout\ & !\Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	datad => \Equal2~4_combout\,
	combout => \RAM_adr~6_combout\);

-- Location: FF_X32_Y28_N7
\RAM_adr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \RAM_adr~6_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(13));

-- Location: LCCOMB_X31_Y28_N28
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

-- Location: LCCOMB_X32_Y28_N4
\RAM_adr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr~7_combout\ = (!\Equal2~4_combout\ & \Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datad => \Add2~28_combout\,
	combout => \RAM_adr~7_combout\);

-- Location: FF_X32_Y28_N5
\RAM_adr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \RAM_adr~7_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(14));

-- Location: LCCOMB_X31_Y28_N30
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = \Add2~29\ $ (RAM_adr(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => RAM_adr(15),
	cin => \Add2~29\,
	combout => \Add2~30_combout\);

-- Location: LCCOMB_X32_Y28_N18
\RAM_adr~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr~8_combout\ = (!\Equal2~4_combout\ & \Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datad => \Add2~30_combout\,
	combout => \RAM_adr~8_combout\);

-- Location: FF_X32_Y28_N19
\RAM_adr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \RAM_adr~8_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(15));

-- Location: LCCOMB_X32_Y28_N0
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (RAM_adr(0) & (RAM_adr(15) & (RAM_adr(14) & RAM_adr(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(0),
	datab => RAM_adr(15),
	datac => RAM_adr(14),
	datad => RAM_adr(13),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X32_Y28_N22
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (RAM_adr(1) & (RAM_adr(2) & (RAM_adr(3) & RAM_adr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(1),
	datab => RAM_adr(2),
	datac => RAM_adr(3),
	datad => RAM_adr(4),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X32_Y28_N2
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!RAM_adr(12) & (!RAM_adr(11) & (!RAM_adr(9) & !RAM_adr(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RAM_adr(12),
	datab => RAM_adr(11),
	datac => RAM_adr(9),
	datad => RAM_adr(10),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X32_Y28_N28
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\ & (\Equal2~0_combout\ & (\Equal2~3_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X32_Y28_N8
\RAM_adr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_adr~5_combout\ = (\Add2~16_combout\ & !\Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	datad => \Equal2~4_combout\,
	combout => \RAM_adr~5_combout\);

-- Location: FF_X32_Y28_N9
\RAM_adr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	d => \RAM_adr~5_combout\,
	ena => \RAM_adr[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAM_adr(8));

-- Location: LCCOMB_X29_Y28_N26
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

-- Location: FF_X30_Y28_N1
enawRAMclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CAPclk~clkctrl_outclk\,
	asdata => \enawRAMclk~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enawRAMclk~q\);

-- Location: LCCOMB_X40_Y15_N26
\outCLK~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outCLK~0_combout\ = (\enawRAMclk~q\ & \CAPclk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enawRAMclk~q\,
	datad => \CAPclk~q\,
	combout => \outCLK~0_combout\);

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


