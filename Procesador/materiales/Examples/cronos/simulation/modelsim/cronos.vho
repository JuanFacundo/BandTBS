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

-- DATE "05/17/2024 17:51:15"

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

ENTITY 	cronos IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX0_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX1_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX2_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX3_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX2_DP : OUT std_logic;
	GPIO0_D : OUT std_logic_vector(1 DOWNTO 0)
	);
END cronos;

-- Design Ports Information
-- HEX0_D[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_DP	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronos IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_DP : std_logic;
SIGNAL ww_GPIO0_D : std_logic_vector(1 DOWNTO 0);
SIGNAL \flag~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_D[0]~output_o\ : std_logic;
SIGNAL \HEX0_D[1]~output_o\ : std_logic;
SIGNAL \HEX0_D[2]~output_o\ : std_logic;
SIGNAL \HEX0_D[3]~output_o\ : std_logic;
SIGNAL \HEX0_D[4]~output_o\ : std_logic;
SIGNAL \HEX0_D[5]~output_o\ : std_logic;
SIGNAL \HEX0_D[6]~output_o\ : std_logic;
SIGNAL \HEX1_D[0]~output_o\ : std_logic;
SIGNAL \HEX1_D[1]~output_o\ : std_logic;
SIGNAL \HEX1_D[2]~output_o\ : std_logic;
SIGNAL \HEX1_D[3]~output_o\ : std_logic;
SIGNAL \HEX1_D[4]~output_o\ : std_logic;
SIGNAL \HEX1_D[5]~output_o\ : std_logic;
SIGNAL \HEX1_D[6]~output_o\ : std_logic;
SIGNAL \HEX2_D[0]~output_o\ : std_logic;
SIGNAL \HEX2_D[1]~output_o\ : std_logic;
SIGNAL \HEX2_D[2]~output_o\ : std_logic;
SIGNAL \HEX2_D[3]~output_o\ : std_logic;
SIGNAL \HEX2_D[4]~output_o\ : std_logic;
SIGNAL \HEX2_D[5]~output_o\ : std_logic;
SIGNAL \HEX2_D[6]~output_o\ : std_logic;
SIGNAL \HEX3_D[0]~output_o\ : std_logic;
SIGNAL \HEX3_D[1]~output_o\ : std_logic;
SIGNAL \HEX3_D[2]~output_o\ : std_logic;
SIGNAL \HEX3_D[3]~output_o\ : std_logic;
SIGNAL \HEX3_D[4]~output_o\ : std_logic;
SIGNAL \HEX3_D[5]~output_o\ : std_logic;
SIGNAL \HEX3_D[6]~output_o\ : std_logic;
SIGNAL \HEX2_DP~output_o\ : std_logic;
SIGNAL \GPIO0_D[0]~output_o\ : std_logic;
SIGNAL \GPIO0_D[1]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \TFFg:0:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \TFFg:0:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:1:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:1:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:2:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:2:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:3:TFF0|Taux~0_combout\ : std_logic;
SIGNAL \TFFg:3:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:3:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:4:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:4:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:5:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:5:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:9:TFF0|Taux~2_combout\ : std_logic;
SIGNAL \TFFg:6:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:6:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:7:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:7:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:8:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:8:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:9:TFF0|Taux~0_combout\ : std_logic;
SIGNAL \TFFg:9:TFF0|Taux~1_combout\ : std_logic;
SIGNAL \TFFg:9:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:9:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:10:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:10:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:11:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:11:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:13:TFF0|Taux~0_combout\ : std_logic;
SIGNAL \TFFg:12:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:12:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:13:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:13:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:14:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:14:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:15:TFF0|Taux~0_combout\ : std_logic;
SIGNAL \TFFg:15:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:15:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:16:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:16:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:17:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:17:TFF0|Qaux~q\ : std_logic;
SIGNAL \TFFg:18:TFF0|Taux~0_combout\ : std_logic;
SIGNAL \TFFg:18:TFF0|Qaux~0_combout\ : std_logic;
SIGNAL \TFFg:18:TFF0|Qaux~q\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \flag~1_combout\ : std_logic;
SIGNAL \flag~2_combout\ : std_logic;
SIGNAL \flag~3_combout\ : std_logic;
SIGNAL \flag~4_combout\ : std_logic;
SIGNAL \flag~combout\ : std_logic;
SIGNAL \flag~clkctrl_outclk\ : std_logic;
SIGNAL \cent[0]~3_combout\ : std_logic;
SIGNAL \cent[2]~1_combout\ : std_logic;
SIGNAL \cent~0_combout\ : std_logic;
SIGNAL \cent~2_combout\ : std_logic;
SIGNAL \deco_cent|Mux6~0_combout\ : std_logic;
SIGNAL \deco_cent|Mux5~0_combout\ : std_logic;
SIGNAL \deco_cent|Mux4~0_combout\ : std_logic;
SIGNAL \deco_cent|Mux3~0_combout\ : std_logic;
SIGNAL \deco_cent|Mux2~0_combout\ : std_logic;
SIGNAL \deco_cent|Mux1~0_combout\ : std_logic;
SIGNAL \deco_cent|Mux0~0_combout\ : std_logic;
SIGNAL \dec[0]~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \dec[3]~0_combout\ : std_logic;
SIGNAL \dec~1_combout\ : std_logic;
SIGNAL \dec[2]~2_combout\ : std_logic;
SIGNAL \dec~3_combout\ : std_logic;
SIGNAL \deco_dec|Mux6~0_combout\ : std_logic;
SIGNAL \deco_dec|Mux5~0_combout\ : std_logic;
SIGNAL \deco_dec|Mux4~0_combout\ : std_logic;
SIGNAL \deco_dec|Mux3~0_combout\ : std_logic;
SIGNAL \deco_dec|Mux2~0_combout\ : std_logic;
SIGNAL \deco_dec|Mux1~0_combout\ : std_logic;
SIGNAL \deco_dec|Mux0~0_combout\ : std_logic;
SIGNAL \sec[0]~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sec[3]~0_combout\ : std_logic;
SIGNAL \sec[2]~2_combout\ : std_logic;
SIGNAL \sec~3_combout\ : std_logic;
SIGNAL \sec~1_combout\ : std_logic;
SIGNAL \deco_sec|Mux6~0_combout\ : std_logic;
SIGNAL \deco_sec|Mux5~0_combout\ : std_logic;
SIGNAL \deco_sec|Mux4~0_combout\ : std_logic;
SIGNAL \deco_sec|Mux3~0_combout\ : std_logic;
SIGNAL \deco_sec|Mux2~0_combout\ : std_logic;
SIGNAL \deco_sec|Mux1~0_combout\ : std_logic;
SIGNAL \deco_sec|Mux0~0_combout\ : std_logic;
SIGNAL \desec[0]~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \desec[3]~0_combout\ : std_logic;
SIGNAL \desec~1_combout\ : std_logic;
SIGNAL \desec[2]~2_combout\ : std_logic;
SIGNAL \desec~3_combout\ : std_logic;
SIGNAL \deco_desec|Mux6~0_combout\ : std_logic;
SIGNAL \deco_desec|Mux5~0_combout\ : std_logic;
SIGNAL \deco_desec|Mux4~0_combout\ : std_logic;
SIGNAL \deco_desec|Mux3~0_combout\ : std_logic;
SIGNAL \deco_desec|Mux2~0_combout\ : std_logic;
SIGNAL \deco_desec|Mux1~0_combout\ : std_logic;
SIGNAL \deco_desec|Mux0~0_combout\ : std_logic;
SIGNAL sec : std_logic_vector(3 DOWNTO 0);
SIGNAL cent : std_logic_vector(3 DOWNTO 0);
SIGNAL desec : std_logic_vector(3 DOWNTO 0);
SIGNAL dec : std_logic_vector(3 DOWNTO 0);
SIGNAL \deco_desec|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \deco_sec|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \deco_dec|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_flag~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \deco_cent|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX0_D <= ww_HEX0_D;
HEX1_D <= ww_HEX1_D;
HEX2_D <= ww_HEX2_D;
HEX3_D <= ww_HEX3_D;
HEX2_DP <= ww_HEX2_DP;
GPIO0_D <= ww_GPIO0_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\flag~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \flag~combout\);
\deco_desec|ALT_INV_Mux0~0_combout\ <= NOT \deco_desec|Mux0~0_combout\;
\deco_sec|ALT_INV_Mux0~0_combout\ <= NOT \deco_sec|Mux0~0_combout\;
\deco_dec|ALT_INV_Mux0~0_combout\ <= NOT \deco_dec|Mux0~0_combout\;
\ALT_INV_flag~clkctrl_outclk\ <= NOT \flag~clkctrl_outclk\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\deco_cent|ALT_INV_Mux0~0_combout\ <= NOT \deco_cent|Mux0~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
\HEX0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_cent|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_cent|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_cent|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_cent|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_cent|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_cent|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_cent|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_dec|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_dec|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_dec|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_dec|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_dec|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_dec|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_dec|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_sec|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_sec|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_sec|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_sec|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_sec|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_sec|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_sec|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_desec|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_desec|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_desec|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_desec|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_desec|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_desec|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_desec|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\HEX2_DP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2_DP~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\GPIO0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLOCK_50~input_o\,
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
	i => GND,
	devoe => ww_devoe,
	o => \GPIO0_D[1]~output_o\);

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

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X37_Y26_N24
\TFFg:0:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:0:TFF0|Qaux~0_combout\ = \SW[1]~input_o\ $ (!\TFFg:0:TFF0|Qaux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \TFFg:0:TFF0|Qaux~q\,
	combout => \TFFg:0:TFF0|Qaux~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X37_Y26_N31
\TFFg:0:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \TFFg:0:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:0:TFF0|Qaux~q\);

-- Location: LCCOMB_X37_Y26_N22
\TFFg:1:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:1:TFF0|Qaux~0_combout\ = \TFFg:1:TFF0|Qaux~q\ $ (((!\SW[1]~input_o\ & \TFFg:0:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \TFFg:0:TFF0|Qaux~q\,
	datad => \TFFg:1:TFF0|Qaux~q\,
	combout => \TFFg:1:TFF0|Qaux~0_combout\);

-- Location: FF_X37_Y26_N27
\TFFg:1:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \TFFg:1:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:1:TFF0|Qaux~q\);

-- Location: LCCOMB_X37_Y26_N26
\TFFg:2:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:2:TFF0|Qaux~0_combout\ = \TFFg:2:TFF0|Qaux~q\ $ (((!\SW[1]~input_o\ & (\TFFg:0:TFF0|Qaux~q\ & \TFFg:1:TFF0|Qaux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \TFFg:0:TFF0|Qaux~q\,
	datac => \TFFg:1:TFF0|Qaux~q\,
	datad => \TFFg:2:TFF0|Qaux~q\,
	combout => \TFFg:2:TFF0|Qaux~0_combout\);

-- Location: FF_X37_Y26_N25
\TFFg:2:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \TFFg:2:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:2:TFF0|Qaux~q\);

-- Location: LCCOMB_X37_Y26_N18
\TFFg:3:TFF0|Taux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:3:TFF0|Taux~0_combout\ = (!\SW[1]~input_o\ & (\TFFg:0:TFF0|Qaux~q\ & (\TFFg:1:TFF0|Qaux~q\ & \TFFg:2:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \TFFg:0:TFF0|Qaux~q\,
	datac => \TFFg:1:TFF0|Qaux~q\,
	datad => \TFFg:2:TFF0|Qaux~q\,
	combout => \TFFg:3:TFF0|Taux~0_combout\);

-- Location: LCCOMB_X36_Y26_N14
\TFFg:3:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:3:TFF0|Qaux~0_combout\ = \TFFg:3:TFF0|Qaux~q\ $ (\TFFg:3:TFF0|Taux~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TFFg:3:TFF0|Qaux~q\,
	datad => \TFFg:3:TFF0|Taux~0_combout\,
	combout => \TFFg:3:TFF0|Qaux~0_combout\);

-- Location: FF_X36_Y26_N15
\TFFg:3:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:3:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:3:TFF0|Qaux~q\);

-- Location: LCCOMB_X36_Y26_N4
\TFFg:4:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:4:TFF0|Qaux~0_combout\ = \TFFg:4:TFF0|Qaux~q\ $ (((\TFFg:3:TFF0|Qaux~q\ & \TFFg:3:TFF0|Taux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TFFg:3:TFF0|Qaux~q\,
	datac => \TFFg:4:TFF0|Qaux~q\,
	datad => \TFFg:3:TFF0|Taux~0_combout\,
	combout => \TFFg:4:TFF0|Qaux~0_combout\);

-- Location: FF_X36_Y26_N5
\TFFg:4:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:4:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:4:TFF0|Qaux~q\);

-- Location: LCCOMB_X36_Y26_N10
\TFFg:5:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:5:TFF0|Qaux~0_combout\ = \TFFg:5:TFF0|Qaux~q\ $ (((\TFFg:4:TFF0|Qaux~q\ & (\TFFg:3:TFF0|Qaux~q\ & \TFFg:3:TFF0|Taux~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:4:TFF0|Qaux~q\,
	datab => \TFFg:3:TFF0|Qaux~q\,
	datac => \TFFg:5:TFF0|Qaux~q\,
	datad => \TFFg:3:TFF0|Taux~0_combout\,
	combout => \TFFg:5:TFF0|Qaux~0_combout\);

-- Location: FF_X36_Y26_N11
\TFFg:5:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:5:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:5:TFF0|Qaux~q\);

-- Location: LCCOMB_X37_Y26_N14
\TFFg:9:TFF0|Taux~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:9:TFF0|Taux~2_combout\ = (\TFFg:3:TFF0|Qaux~q\ & (\TFFg:4:TFF0|Qaux~q\ & (\TFFg:3:TFF0|Taux~0_combout\ & \TFFg:5:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:3:TFF0|Qaux~q\,
	datab => \TFFg:4:TFF0|Qaux~q\,
	datac => \TFFg:3:TFF0|Taux~0_combout\,
	datad => \TFFg:5:TFF0|Qaux~q\,
	combout => \TFFg:9:TFF0|Taux~2_combout\);

-- Location: LCCOMB_X35_Y26_N6
\TFFg:6:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:6:TFF0|Qaux~0_combout\ = \TFFg:9:TFF0|Taux~2_combout\ $ (\TFFg:6:TFF0|Qaux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TFFg:9:TFF0|Taux~2_combout\,
	datac => \TFFg:6:TFF0|Qaux~q\,
	combout => \TFFg:6:TFF0|Qaux~0_combout\);

-- Location: FF_X35_Y26_N7
\TFFg:6:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:6:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:6:TFF0|Qaux~q\);

-- Location: LCCOMB_X36_Y26_N16
\TFFg:7:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:7:TFF0|Qaux~0_combout\ = \TFFg:7:TFF0|Qaux~q\ $ (((\TFFg:9:TFF0|Taux~2_combout\ & \TFFg:6:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TFFg:9:TFF0|Taux~2_combout\,
	datac => \TFFg:7:TFF0|Qaux~q\,
	datad => \TFFg:6:TFF0|Qaux~q\,
	combout => \TFFg:7:TFF0|Qaux~0_combout\);

-- Location: FF_X36_Y26_N17
\TFFg:7:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:7:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:7:TFF0|Qaux~q\);

-- Location: LCCOMB_X33_Y26_N26
\TFFg:8:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:8:TFF0|Qaux~0_combout\ = \TFFg:8:TFF0|Qaux~q\ $ (((\TFFg:6:TFF0|Qaux~q\ & (\TFFg:7:TFF0|Qaux~q\ & \TFFg:9:TFF0|Taux~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:6:TFF0|Qaux~q\,
	datab => \TFFg:7:TFF0|Qaux~q\,
	datac => \TFFg:8:TFF0|Qaux~q\,
	datad => \TFFg:9:TFF0|Taux~2_combout\,
	combout => \TFFg:8:TFF0|Qaux~0_combout\);

-- Location: FF_X33_Y26_N27
\TFFg:8:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:8:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:8:TFF0|Qaux~q\);

-- Location: LCCOMB_X36_Y26_N26
\TFFg:9:TFF0|Taux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:9:TFF0|Taux~0_combout\ = (\TFFg:3:TFF0|Qaux~q\ & (\TFFg:7:TFF0|Qaux~q\ & (\TFFg:4:TFF0|Qaux~q\ & \TFFg:5:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:3:TFF0|Qaux~q\,
	datab => \TFFg:7:TFF0|Qaux~q\,
	datac => \TFFg:4:TFF0|Qaux~q\,
	datad => \TFFg:5:TFF0|Qaux~q\,
	combout => \TFFg:9:TFF0|Taux~0_combout\);

-- Location: LCCOMB_X36_Y26_N12
\TFFg:9:TFF0|Taux~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:9:TFF0|Taux~1_combout\ = (\TFFg:8:TFF0|Qaux~q\ & (\TFFg:6:TFF0|Qaux~q\ & (\TFFg:9:TFF0|Taux~0_combout\ & \TFFg:3:TFF0|Taux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:8:TFF0|Qaux~q\,
	datab => \TFFg:6:TFF0|Qaux~q\,
	datac => \TFFg:9:TFF0|Taux~0_combout\,
	datad => \TFFg:3:TFF0|Taux~0_combout\,
	combout => \TFFg:9:TFF0|Taux~1_combout\);

-- Location: LCCOMB_X33_Y26_N2
\TFFg:9:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:9:TFF0|Qaux~0_combout\ = \TFFg:9:TFF0|Qaux~q\ $ (\TFFg:9:TFF0|Taux~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TFFg:9:TFF0|Qaux~q\,
	datad => \TFFg:9:TFF0|Taux~1_combout\,
	combout => \TFFg:9:TFF0|Qaux~0_combout\);

-- Location: FF_X33_Y26_N3
\TFFg:9:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:9:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:9:TFF0|Qaux~q\);

-- Location: LCCOMB_X33_Y26_N8
\TFFg:10:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:10:TFF0|Qaux~0_combout\ = \TFFg:10:TFF0|Qaux~q\ $ (((\TFFg:9:TFF0|Qaux~q\ & \TFFg:9:TFF0|Taux~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:9:TFF0|Qaux~q\,
	datac => \TFFg:10:TFF0|Qaux~q\,
	datad => \TFFg:9:TFF0|Taux~1_combout\,
	combout => \TFFg:10:TFF0|Qaux~0_combout\);

-- Location: FF_X33_Y26_N9
\TFFg:10:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:10:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:10:TFF0|Qaux~q\);

-- Location: LCCOMB_X33_Y26_N28
\TFFg:11:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:11:TFF0|Qaux~0_combout\ = \TFFg:11:TFF0|Qaux~q\ $ (((\TFFg:9:TFF0|Qaux~q\ & (\TFFg:10:TFF0|Qaux~q\ & \TFFg:9:TFF0|Taux~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:9:TFF0|Qaux~q\,
	datab => \TFFg:10:TFF0|Qaux~q\,
	datac => \TFFg:11:TFF0|Qaux~q\,
	datad => \TFFg:9:TFF0|Taux~1_combout\,
	combout => \TFFg:11:TFF0|Qaux~0_combout\);

-- Location: FF_X33_Y26_N29
\TFFg:11:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:11:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:11:TFF0|Qaux~q\);

-- Location: LCCOMB_X36_Y26_N22
\TFFg:13:TFF0|Taux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:13:TFF0|Taux~0_combout\ = (\TFFg:10:TFF0|Qaux~q\ & (\TFFg:9:TFF0|Qaux~q\ & (\TFFg:11:TFF0|Qaux~q\ & \TFFg:9:TFF0|Taux~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:10:TFF0|Qaux~q\,
	datab => \TFFg:9:TFF0|Qaux~q\,
	datac => \TFFg:11:TFF0|Qaux~q\,
	datad => \TFFg:9:TFF0|Taux~1_combout\,
	combout => \TFFg:13:TFF0|Taux~0_combout\);

-- Location: LCCOMB_X35_Y26_N22
\TFFg:12:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:12:TFF0|Qaux~0_combout\ = \TFFg:13:TFF0|Taux~0_combout\ $ (\TFFg:12:TFF0|Qaux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:13:TFF0|Taux~0_combout\,
	datac => \TFFg:12:TFF0|Qaux~q\,
	combout => \TFFg:12:TFF0|Qaux~0_combout\);

-- Location: FF_X35_Y26_N23
\TFFg:12:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:12:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:12:TFF0|Qaux~q\);

-- Location: LCCOMB_X35_Y26_N28
\TFFg:13:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:13:TFF0|Qaux~0_combout\ = \TFFg:13:TFF0|Qaux~q\ $ (((\TFFg:13:TFF0|Taux~0_combout\ & \TFFg:12:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:13:TFF0|Taux~0_combout\,
	datac => \TFFg:13:TFF0|Qaux~q\,
	datad => \TFFg:12:TFF0|Qaux~q\,
	combout => \TFFg:13:TFF0|Qaux~0_combout\);

-- Location: FF_X35_Y26_N29
\TFFg:13:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:13:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:13:TFF0|Qaux~q\);

-- Location: LCCOMB_X35_Y26_N26
\TFFg:14:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:14:TFF0|Qaux~0_combout\ = \TFFg:14:TFF0|Qaux~q\ $ (((\TFFg:13:TFF0|Taux~0_combout\ & (\TFFg:13:TFF0|Qaux~q\ & \TFFg:12:TFF0|Qaux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:13:TFF0|Taux~0_combout\,
	datab => \TFFg:13:TFF0|Qaux~q\,
	datac => \TFFg:14:TFF0|Qaux~q\,
	datad => \TFFg:12:TFF0|Qaux~q\,
	combout => \TFFg:14:TFF0|Qaux~0_combout\);

-- Location: FF_X35_Y26_N27
\TFFg:14:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:14:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:14:TFF0|Qaux~q\);

-- Location: LCCOMB_X36_Y26_N20
\TFFg:15:TFF0|Taux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:15:TFF0|Taux~0_combout\ = (\TFFg:12:TFF0|Qaux~q\ & (\TFFg:13:TFF0|Qaux~q\ & (\TFFg:13:TFF0|Taux~0_combout\ & \TFFg:14:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:12:TFF0|Qaux~q\,
	datab => \TFFg:13:TFF0|Qaux~q\,
	datac => \TFFg:13:TFF0|Taux~0_combout\,
	datad => \TFFg:14:TFF0|Qaux~q\,
	combout => \TFFg:15:TFF0|Taux~0_combout\);

-- Location: LCCOMB_X36_Y26_N28
\TFFg:15:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:15:TFF0|Qaux~0_combout\ = \TFFg:15:TFF0|Qaux~q\ $ (\TFFg:15:TFF0|Taux~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TFFg:15:TFF0|Qaux~q\,
	datad => \TFFg:15:TFF0|Taux~0_combout\,
	combout => \TFFg:15:TFF0|Qaux~0_combout\);

-- Location: FF_X36_Y26_N29
\TFFg:15:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:15:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:15:TFF0|Qaux~q\);

-- Location: LCCOMB_X36_Y26_N30
\TFFg:16:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:16:TFF0|Qaux~0_combout\ = \TFFg:16:TFF0|Qaux~q\ $ (((\TFFg:15:TFF0|Qaux~q\ & \TFFg:15:TFF0|Taux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TFFg:15:TFF0|Qaux~q\,
	datac => \TFFg:16:TFF0|Qaux~q\,
	datad => \TFFg:15:TFF0|Taux~0_combout\,
	combout => \TFFg:16:TFF0|Qaux~0_combout\);

-- Location: FF_X36_Y26_N31
\TFFg:16:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:16:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:16:TFF0|Qaux~q\);

-- Location: LCCOMB_X36_Y26_N2
\TFFg:17:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:17:TFF0|Qaux~0_combout\ = \TFFg:17:TFF0|Qaux~q\ $ (((\TFFg:16:TFF0|Qaux~q\ & (\TFFg:15:TFF0|Qaux~q\ & \TFFg:15:TFF0|Taux~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:16:TFF0|Qaux~q\,
	datab => \TFFg:15:TFF0|Qaux~q\,
	datac => \TFFg:17:TFF0|Qaux~q\,
	datad => \TFFg:15:TFF0|Taux~0_combout\,
	combout => \TFFg:17:TFF0|Qaux~0_combout\);

-- Location: FF_X36_Y26_N3
\TFFg:17:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:17:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:17:TFF0|Qaux~q\);

-- Location: LCCOMB_X36_Y26_N6
\TFFg:18:TFF0|Taux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:18:TFF0|Taux~0_combout\ = (\TFFg:16:TFF0|Qaux~q\ & (\TFFg:17:TFF0|Qaux~q\ & (\TFFg:15:TFF0|Qaux~q\ & \TFFg:15:TFF0|Taux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:16:TFF0|Qaux~q\,
	datab => \TFFg:17:TFF0|Qaux~q\,
	datac => \TFFg:15:TFF0|Qaux~q\,
	datad => \TFFg:15:TFF0|Taux~0_combout\,
	combout => \TFFg:18:TFF0|Taux~0_combout\);

-- Location: LCCOMB_X36_Y26_N8
\TFFg:18:TFF0|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TFFg:18:TFF0|Qaux~0_combout\ = \TFFg:18:TFF0|Qaux~q\ $ (\TFFg:18:TFF0|Taux~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TFFg:18:TFF0|Qaux~q\,
	datad => \TFFg:18:TFF0|Taux~0_combout\,
	combout => \TFFg:18:TFF0|Qaux~0_combout\);

-- Location: FF_X36_Y26_N9
\TFFg:18:TFF0|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \TFFg:18:TFF0|Qaux~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFFg:18:TFF0|Qaux~q\);

-- Location: LCCOMB_X37_Y26_N20
\flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = (\TFFg:0:TFF0|Qaux~q\ & (\TFFg:2:TFF0|Qaux~q\ & (\TFFg:1:TFF0|Qaux~q\ & \TFFg:3:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:0:TFF0|Qaux~q\,
	datab => \TFFg:2:TFF0|Qaux~q\,
	datac => \TFFg:1:TFF0|Qaux~q\,
	datad => \TFFg:3:TFF0|Qaux~q\,
	combout => \flag~0_combout\);

-- Location: LCCOMB_X36_Y26_N18
\flag~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flag~1_combout\ = (!\TFFg:5:TFF0|Qaux~q\ & (!\TFFg:6:TFF0|Qaux~q\ & (\TFFg:4:TFF0|Qaux~q\ & !\TFFg:7:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:5:TFF0|Qaux~q\,
	datab => \TFFg:6:TFF0|Qaux~q\,
	datac => \TFFg:4:TFF0|Qaux~q\,
	datad => \TFFg:7:TFF0|Qaux~q\,
	combout => \flag~1_combout\);

-- Location: LCCOMB_X33_Y26_N24
\flag~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flag~2_combout\ = (\TFFg:8:TFF0|Qaux~q\ & (!\TFFg:11:TFF0|Qaux~q\ & (!\TFFg:10:TFF0|Qaux~q\ & !\TFFg:9:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:8:TFF0|Qaux~q\,
	datab => \TFFg:11:TFF0|Qaux~q\,
	datac => \TFFg:10:TFF0|Qaux~q\,
	datad => \TFFg:9:TFF0|Qaux~q\,
	combout => \flag~2_combout\);

-- Location: LCCOMB_X35_Y26_N14
\flag~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flag~3_combout\ = (!\TFFg:12:TFF0|Qaux~q\ & (\TFFg:13:TFF0|Qaux~q\ & (!\TFFg:14:TFF0|Qaux~q\ & \TFFg:15:TFF0|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:12:TFF0|Qaux~q\,
	datab => \TFFg:13:TFF0|Qaux~q\,
	datac => \TFFg:14:TFF0|Qaux~q\,
	datad => \TFFg:15:TFF0|Qaux~q\,
	combout => \flag~3_combout\);

-- Location: LCCOMB_X36_Y26_N24
\flag~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flag~4_combout\ = (\flag~0_combout\ & (\flag~1_combout\ & (\flag~2_combout\ & \flag~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~0_combout\,
	datab => \flag~1_combout\,
	datac => \flag~2_combout\,
	datad => \flag~3_combout\,
	combout => \flag~4_combout\);

-- Location: LCCOMB_X36_Y26_N0
flag : cycloneiii_lcell_comb
-- Equation(s):
-- \flag~combout\ = LCELL((\TFFg:17:TFF0|Qaux~q\ & (\TFFg:18:TFF0|Qaux~q\ & (\TFFg:16:TFF0|Qaux~q\ & \flag~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TFFg:17:TFF0|Qaux~q\,
	datab => \TFFg:18:TFF0|Qaux~q\,
	datac => \TFFg:16:TFF0|Qaux~q\,
	datad => \flag~4_combout\,
	combout => \flag~combout\);

-- Location: CLKCTRL_G9
\flag~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \flag~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \flag~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y27_N4
\cent[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cent[0]~3_combout\ = !cent(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cent(0),
	combout => \cent[0]~3_combout\);

-- Location: FF_X33_Y27_N5
\cent[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \cent[0]~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cent(0));

-- Location: LCCOMB_X33_Y27_N22
\cent[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cent[2]~1_combout\ = cent(2) $ (((cent(1) & (cent(0) & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cent(1),
	datab => cent(0),
	datac => \SW[1]~input_o\,
	datad => cent(2),
	combout => \cent[2]~1_combout\);

-- Location: FF_X32_Y27_N25
\cent[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	asdata => \cent[2]~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cent(2));

-- Location: LCCOMB_X33_Y27_N30
\cent~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cent~0_combout\ = (cent(1) & (((!cent(0))))) # (!cent(1) & (cent(0) & ((cent(2)) # (!cent(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cent(2),
	datab => cent(3),
	datac => cent(1),
	datad => cent(0),
	combout => \cent~0_combout\);

-- Location: FF_X33_Y27_N31
\cent[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \cent~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cent(1));

-- Location: LCCOMB_X33_Y27_N12
\cent~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cent~2_combout\ = (cent(1) & (cent(3) $ (((cent(0) & cent(2)))))) # (!cent(1) & (cent(3) & ((cent(2)) # (!cent(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cent(1),
	datab => cent(0),
	datac => cent(3),
	datad => cent(2),
	combout => \cent~2_combout\);

-- Location: FF_X33_Y27_N13
\cent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \cent~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cent(3));

-- Location: LCCOMB_X30_Y27_N8
\deco_cent|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_cent|Mux6~0_combout\ = (!cent(3) & (!cent(1) & (cent(0) $ (cent(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cent(3),
	datab => cent(1),
	datac => cent(0),
	datad => cent(2),
	combout => \deco_cent|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y27_N26
\deco_cent|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_cent|Mux5~0_combout\ = (cent(2) & (cent(1) $ (cent(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cent(1),
	datac => cent(0),
	datad => cent(2),
	combout => \deco_cent|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y27_N4
\deco_cent|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_cent|Mux4~0_combout\ = (cent(1) & (!cent(0) & !cent(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cent(1),
	datac => cent(0),
	datad => cent(2),
	combout => \deco_cent|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y27_N2
\deco_cent|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_cent|Mux3~0_combout\ = (!cent(3) & ((cent(1) & (cent(0) & cent(2))) # (!cent(1) & (cent(0) $ (cent(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cent(3),
	datab => cent(1),
	datac => cent(0),
	datad => cent(2),
	combout => \deco_cent|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y27_N0
\deco_cent|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_cent|Mux2~0_combout\ = (cent(0)) # ((!cent(1) & cent(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cent(1),
	datac => cent(0),
	datad => cent(2),
	combout => \deco_cent|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y27_N22
\deco_cent|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_cent|Mux1~0_combout\ = (!cent(3) & ((cent(1) & ((cent(0)) # (!cent(2)))) # (!cent(1) & (cent(0) & !cent(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cent(3),
	datab => cent(1),
	datac => cent(0),
	datad => cent(2),
	combout => \deco_cent|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y27_N12
\deco_cent|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_cent|Mux0~0_combout\ = (cent(3)) # ((cent(1) & ((!cent(2)) # (!cent(0)))) # (!cent(1) & ((cent(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cent(3),
	datab => cent(1),
	datac => cent(0),
	datad => cent(2),
	combout => \deco_cent|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y27_N18
\dec[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec[0]~4_combout\ = !dec(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dec(0),
	combout => \dec[0]~4_combout\);

-- Location: LCCOMB_X32_Y27_N20
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cent(1) & (!cent(2) & (cent(3) & cent(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cent(1),
	datab => cent(2),
	datac => cent(3),
	datad => cent(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y27_N6
\dec[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec[3]~0_combout\ = (!\SW[1]~input_o\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \dec[3]~0_combout\);

-- Location: FF_X33_Y27_N19
\dec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \dec[0]~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \dec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec(0));

-- Location: LCCOMB_X33_Y27_N8
\dec~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec~1_combout\ = (dec(0) & (!dec(1) & ((dec(2)) # (!dec(3))))) # (!dec(0) & (((dec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec(3),
	datab => dec(0),
	datac => dec(1),
	datad => dec(2),
	combout => \dec~1_combout\);

-- Location: FF_X33_Y27_N9
\dec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \dec~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \dec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec(1));

-- Location: LCCOMB_X32_Y27_N22
\dec[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec[2]~2_combout\ = dec(2) $ (((dec(0) & (dec(1) & \dec[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec(0),
	datab => dec(1),
	datac => dec(2),
	datad => \dec[3]~0_combout\,
	combout => \dec[2]~2_combout\);

-- Location: FF_X32_Y27_N23
\dec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \dec[2]~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec(2));

-- Location: LCCOMB_X33_Y27_N10
\dec~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec~3_combout\ = (dec(2) & (dec(3) $ (((dec(1) & dec(0)))))) # (!dec(2) & (dec(3) & ((dec(1)) # (!dec(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec(2),
	datab => dec(1),
	datac => dec(3),
	datad => dec(0),
	combout => \dec~3_combout\);

-- Location: FF_X33_Y27_N11
\dec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \dec~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \dec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec(3));

-- Location: LCCOMB_X33_Y27_N16
\deco_dec|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_dec|Mux6~0_combout\ = (!dec(3) & (!dec(1) & (dec(0) $ (dec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec(3),
	datab => dec(0),
	datac => dec(1),
	datad => dec(2),
	combout => \deco_dec|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y27_N16
\deco_dec|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_dec|Mux5~0_combout\ = (dec(2) & (dec(1) $ (dec(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec(2),
	datab => dec(1),
	datad => dec(0),
	combout => \deco_dec|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y26_N30
\deco_dec|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_dec|Mux4~0_combout\ = (!dec(0) & (dec(1) & !dec(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dec(0),
	datac => dec(1),
	datad => dec(2),
	combout => \deco_dec|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y27_N18
\deco_dec|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_dec|Mux3~0_combout\ = (!dec(3) & ((dec(2) & (dec(1) $ (!dec(0)))) # (!dec(2) & (!dec(1) & dec(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec(2),
	datab => dec(3),
	datac => dec(1),
	datad => dec(0),
	combout => \deco_dec|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y26_N24
\deco_dec|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_dec|Mux2~0_combout\ = (dec(0)) # ((!dec(1) & dec(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dec(0),
	datac => dec(1),
	datad => dec(2),
	combout => \deco_dec|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y26_N8
\deco_dec|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_dec|Mux1~0_combout\ = (!dec(3) & ((dec(2) & (dec(0) & dec(1))) # (!dec(2) & ((dec(0)) # (dec(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec(2),
	datab => dec(0),
	datac => dec(1),
	datad => dec(3),
	combout => \deco_dec|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y26_N12
\deco_dec|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_dec|Mux0~0_combout\ = (dec(3)) # ((dec(2) & ((!dec(1)) # (!dec(0)))) # (!dec(2) & ((dec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec(2),
	datab => dec(0),
	datac => dec(1),
	datad => dec(3),
	combout => \deco_dec|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y27_N24
\sec[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec[0]~4_combout\ = !sec(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sec(0),
	combout => \sec[0]~4_combout\);

-- Location: LCCOMB_X32_Y27_N4
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!dec(2) & (!dec(1) & (dec(3) & dec(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec(2),
	datab => dec(1),
	datac => dec(3),
	datad => dec(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X32_Y27_N26
\sec[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec[3]~0_combout\ = (!\SW[1]~input_o\ & (\Equal1~0_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \sec[3]~0_combout\);

-- Location: FF_X32_Y27_N17
\sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	asdata => \sec[0]~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \sec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(0));

-- Location: LCCOMB_X32_Y27_N30
\sec[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec[2]~2_combout\ = sec(2) $ (((sec(1) & (sec(0) & \sec[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(0),
	datac => sec(2),
	datad => \sec[3]~0_combout\,
	combout => \sec[2]~2_combout\);

-- Location: FF_X32_Y27_N31
\sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \sec[2]~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(2));

-- Location: LCCOMB_X32_Y27_N28
\sec~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec~3_combout\ = (sec(1) & (sec(3) $ (((sec(2) & sec(0)))))) # (!sec(1) & (sec(3) & ((sec(2)) # (!sec(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(2),
	datac => sec(3),
	datad => sec(0),
	combout => \sec~3_combout\);

-- Location: FF_X32_Y27_N29
\sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \sec~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \sec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(3));

-- Location: LCCOMB_X32_Y27_N12
\sec~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec~1_combout\ = (sec(0) & (!sec(1) & ((sec(2)) # (!sec(3))))) # (!sec(0) & (((sec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(2),
	datab => sec(0),
	datac => sec(1),
	datad => sec(3),
	combout => \sec~1_combout\);

-- Location: FF_X32_Y27_N13
\sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \sec~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \sec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(1));

-- Location: LCCOMB_X32_Y27_N10
\deco_sec|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_sec|Mux6~0_combout\ = (!sec(1) & (!sec(3) & (sec(0) $ (sec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(0),
	datac => sec(2),
	datad => sec(3),
	combout => \deco_sec|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y27_N26
\deco_sec|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_sec|Mux5~0_combout\ = (sec(2) & (sec(1) $ (sec(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datac => sec(0),
	datad => sec(2),
	combout => \deco_sec|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y27_N28
\deco_sec|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_sec|Mux4~0_combout\ = (sec(1) & (!sec(0) & !sec(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datac => sec(0),
	datad => sec(2),
	combout => \deco_sec|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y27_N0
\deco_sec|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_sec|Mux3~0_combout\ = (!sec(3) & ((sec(1) & (sec(0) & sec(2))) # (!sec(1) & (sec(0) $ (sec(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(0),
	datac => sec(2),
	datad => sec(3),
	combout => \deco_sec|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y27_N14
\deco_sec|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_sec|Mux2~0_combout\ = (sec(0)) # ((!sec(1) & sec(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(0),
	datac => sec(2),
	combout => \deco_sec|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y27_N14
\deco_sec|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_sec|Mux1~0_combout\ = (!sec(3) & ((sec(1) & ((sec(0)) # (!sec(2)))) # (!sec(1) & (sec(0) & !sec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(3),
	datac => sec(0),
	datad => sec(2),
	combout => \deco_sec|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y27_N0
\deco_sec|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_sec|Mux0~0_combout\ = (sec(3)) # ((sec(1) & ((!sec(2)) # (!sec(0)))) # (!sec(1) & ((sec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(3),
	datac => sec(0),
	datad => sec(2),
	combout => \deco_sec|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y27_N20
\desec[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desec[0]~4_combout\ = !desec(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => desec(0),
	combout => \desec[0]~4_combout\);

-- Location: LCCOMB_X32_Y27_N8
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!sec(1) & (sec(3) & (!sec(2) & sec(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(3),
	datac => sec(2),
	datad => sec(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X32_Y27_N2
\desec[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desec[3]~0_combout\ = (!\SW[1]~input_o\ & (\Equal2~0_combout\ & (\Equal1~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \desec[3]~0_combout\);

-- Location: FF_X31_Y27_N21
\desec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \desec[0]~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \desec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desec(0));

-- Location: LCCOMB_X31_Y27_N18
\desec~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desec~1_combout\ = (desec(1) & (((!desec(0))))) # (!desec(1) & (desec(0) & ((desec(2)) # (!desec(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desec(3),
	datab => desec(2),
	datac => desec(1),
	datad => desec(0),
	combout => \desec~1_combout\);

-- Location: FF_X31_Y27_N19
\desec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \desec~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \desec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desec(1));

-- Location: LCCOMB_X31_Y27_N0
\desec[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desec[2]~2_combout\ = desec(2) $ (((desec(0) & (desec(1) & \desec[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desec(0),
	datab => desec(1),
	datac => desec(2),
	datad => \desec[3]~0_combout\,
	combout => \desec[2]~2_combout\);

-- Location: FF_X31_Y27_N1
\desec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \desec[2]~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desec(2));

-- Location: LCCOMB_X31_Y27_N10
\desec~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desec~3_combout\ = (desec(0) & ((desec(2) & (desec(3) $ (desec(1)))) # (!desec(2) & (desec(3) & desec(1))))) # (!desec(0) & (((desec(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desec(0),
	datab => desec(2),
	datac => desec(3),
	datad => desec(1),
	combout => \desec~3_combout\);

-- Location: FF_X31_Y27_N11
\desec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_flag~clkctrl_outclk\,
	d => \desec~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \desec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desec(3));

-- Location: LCCOMB_X31_Y27_N16
\deco_desec|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_desec|Mux6~0_combout\ = (!desec(3) & (!desec(1) & (desec(0) $ (desec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desec(3),
	datab => desec(0),
	datac => desec(1),
	datad => desec(2),
	combout => \deco_desec|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y27_N2
\deco_desec|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_desec|Mux5~0_combout\ = (desec(2) & (desec(1) $ (desec(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desec(2),
	datab => desec(1),
	datac => desec(0),
	combout => \deco_desec|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y27_N20
\deco_desec|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_desec|Mux4~0_combout\ = (!desec(2) & (desec(1) & !desec(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desec(2),
	datab => desec(1),
	datac => desec(0),
	combout => \deco_desec|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y27_N6
\deco_desec|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_desec|Mux3~0_combout\ = (!desec(3) & ((desec(2) & (desec(1) $ (!desec(0)))) # (!desec(2) & (!desec(1) & desec(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desec(2),
	datab => desec(1),
	datac => desec(0),
	datad => desec(3),
	combout => \deco_desec|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y27_N14
\deco_desec|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_desec|Mux2~0_combout\ = (desec(0)) # ((!desec(1) & desec(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => desec(0),
	datac => desec(1),
	datad => desec(2),
	combout => \deco_desec|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y27_N12
\deco_desec|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_desec|Mux1~0_combout\ = (!desec(3) & ((desec(0) & ((desec(1)) # (!desec(2)))) # (!desec(0) & (desec(1) & !desec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desec(3),
	datab => desec(0),
	datac => desec(1),
	datad => desec(2),
	combout => \deco_desec|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y27_N24
\deco_desec|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_desec|Mux0~0_combout\ = (desec(3)) # ((desec(2) & ((!desec(0)) # (!desec(1)))) # (!desec(2) & (desec(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desec(2),
	datab => desec(1),
	datac => desec(0),
	datad => desec(3),
	combout => \deco_desec|Mux0~0_combout\);

ww_HEX0_D(0) <= \HEX0_D[0]~output_o\;

ww_HEX0_D(1) <= \HEX0_D[1]~output_o\;

ww_HEX0_D(2) <= \HEX0_D[2]~output_o\;

ww_HEX0_D(3) <= \HEX0_D[3]~output_o\;

ww_HEX0_D(4) <= \HEX0_D[4]~output_o\;

ww_HEX0_D(5) <= \HEX0_D[5]~output_o\;

ww_HEX0_D(6) <= \HEX0_D[6]~output_o\;

ww_HEX1_D(0) <= \HEX1_D[0]~output_o\;

ww_HEX1_D(1) <= \HEX1_D[1]~output_o\;

ww_HEX1_D(2) <= \HEX1_D[2]~output_o\;

ww_HEX1_D(3) <= \HEX1_D[3]~output_o\;

ww_HEX1_D(4) <= \HEX1_D[4]~output_o\;

ww_HEX1_D(5) <= \HEX1_D[5]~output_o\;

ww_HEX1_D(6) <= \HEX1_D[6]~output_o\;

ww_HEX2_D(0) <= \HEX2_D[0]~output_o\;

ww_HEX2_D(1) <= \HEX2_D[1]~output_o\;

ww_HEX2_D(2) <= \HEX2_D[2]~output_o\;

ww_HEX2_D(3) <= \HEX2_D[3]~output_o\;

ww_HEX2_D(4) <= \HEX2_D[4]~output_o\;

ww_HEX2_D(5) <= \HEX2_D[5]~output_o\;

ww_HEX2_D(6) <= \HEX2_D[6]~output_o\;

ww_HEX3_D(0) <= \HEX3_D[0]~output_o\;

ww_HEX3_D(1) <= \HEX3_D[1]~output_o\;

ww_HEX3_D(2) <= \HEX3_D[2]~output_o\;

ww_HEX3_D(3) <= \HEX3_D[3]~output_o\;

ww_HEX3_D(4) <= \HEX3_D[4]~output_o\;

ww_HEX3_D(5) <= \HEX3_D[5]~output_o\;

ww_HEX3_D(6) <= \HEX3_D[6]~output_o\;

ww_HEX2_DP <= \HEX2_DP~output_o\;

ww_GPIO0_D(0) <= \GPIO0_D[0]~output_o\;

ww_GPIO0_D(1) <= \GPIO0_D[1]~output_o\;
END structure;


