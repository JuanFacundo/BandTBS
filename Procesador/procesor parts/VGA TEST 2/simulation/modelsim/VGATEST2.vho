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

-- DATE "06/02/2024 21:30:54"

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

ENTITY 	VGATEST2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	GPIO0_D : OUT std_logic_vector(1 DOWNTO 0)
	);
END VGATEST2;

-- Design Ports Information
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGATEST2 IS
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
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_GPIO0_D : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_controller|Add0~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \VGA_controller|Add0~1\ : std_logic;
SIGNAL \VGA_controller|Add0~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~3\ : std_logic;
SIGNAL \VGA_controller|Add0~4_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~5\ : std_logic;
SIGNAL \VGA_controller|Add0~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~7\ : std_logic;
SIGNAL \VGA_controller|Add0~8_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~9\ : std_logic;
SIGNAL \VGA_controller|Add0~10_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~11\ : std_logic;
SIGNAL \VGA_controller|Add0~12_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~13\ : std_logic;
SIGNAL \VGA_controller|Add0~14_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~15\ : std_logic;
SIGNAL \VGA_controller|Add0~17\ : std_logic;
SIGNAL \VGA_controller|Add0~18_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~0_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~16_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~1_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_controller|video_on_h~q\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~0_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~1_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~6_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~7_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~8_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~0_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~22_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~3_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~1\ : std_logic;
SIGNAL \VGA_controller|Add1~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~23_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~3\ : std_logic;
SIGNAL \VGA_controller|Add1~4_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~21_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~5\ : std_logic;
SIGNAL \VGA_controller|Add1~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~20_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~7\ : std_logic;
SIGNAL \VGA_controller|Add1~8_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[4]~8_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~9\ : std_logic;
SIGNAL \VGA_controller|Add1~10_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[5]~5_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~11\ : std_logic;
SIGNAL \VGA_controller|Add1~12_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[6]~4_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~13\ : std_logic;
SIGNAL \VGA_controller|Add1~14_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[7]~7_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~9_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~10_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~11_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[4]~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~15\ : std_logic;
SIGNAL \VGA_controller|Add1~16_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[8]~9_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~17\ : std_logic;
SIGNAL \VGA_controller|Add1~18_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~6_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \VGA_controller|video_on_v~q\ : std_logic;
SIGNAL \VGA_controller|video_on~combout\ : std_logic;
SIGNAL \VGA_controller|VideoOn~q\ : std_logic;
SIGNAL \setcolor~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \setcolor~8_combout\ : std_logic;
SIGNAL \setcolor~9_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \setcolor~11_combout\ : std_logic;
SIGNAL \data[0]~5_combout\ : std_logic;
SIGNAL \data[0]~6_combout\ : std_logic;
SIGNAL \data[0]~7_combout\ : std_logic;
SIGNAL \setcolor~2_combout\ : std_logic;
SIGNAL \data[0]~8_combout\ : std_logic;
SIGNAL \data[0]~9_combout\ : std_logic;
SIGNAL \data[0]~10_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \setcolor~10_combout\ : std_logic;
SIGNAL \VGA_controller|red~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \setcolor~4_combout\ : std_logic;
SIGNAL \setcolor~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \setcolor~6_combout\ : std_logic;
SIGNAL \setcolor~7_combout\ : std_logic;
SIGNAL \setcolor~3_combout\ : std_logic;
SIGNAL \data[0]~1_combout\ : std_logic;
SIGNAL \data[0]~0_combout\ : std_logic;
SIGNAL \data[0]~2_combout\ : std_logic;
SIGNAL \setcolor~0_combout\ : std_logic;
SIGNAL \data[0]~3_combout\ : std_logic;
SIGNAL \data[0]~4_combout\ : std_logic;
SIGNAL \VGA_controller|red~1_combout\ : std_logic;
SIGNAL \VGA_controller|red[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|red[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|red~2_combout\ : std_logic;
SIGNAL \VGA_controller|red~3_combout\ : std_logic;
SIGNAL \VGA_controller|green[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|green[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|blue[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~1_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~2_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~0_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~3_combout\ : std_logic;
SIGNAL \VGA_controller|Hsync_aux~q\ : std_logic;
SIGNAL \VGA_controller|Hsync~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|Hsync~q\ : std_logic;
SIGNAL \VGA_controller|process_0~4_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~5_combout\ : std_logic;
SIGNAL \VGA_controller|Vsync_aux~q\ : std_logic;
SIGNAL \VGA_controller|Vsync~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|Vsync~q\ : std_logic;
SIGNAL \count[0]~27_combout\ : std_logic;
SIGNAL \count[1]~9_combout\ : std_logic;
SIGNAL \count[1]~10\ : std_logic;
SIGNAL \count[2]~11_combout\ : std_logic;
SIGNAL \count[2]~12\ : std_logic;
SIGNAL \count[3]~13_combout\ : std_logic;
SIGNAL \count[3]~14\ : std_logic;
SIGNAL \count[4]~15_combout\ : std_logic;
SIGNAL \count[4]~16\ : std_logic;
SIGNAL \count[5]~17_combout\ : std_logic;
SIGNAL \count[5]~18\ : std_logic;
SIGNAL \count[6]~19_combout\ : std_logic;
SIGNAL \count[6]~20\ : std_logic;
SIGNAL \count[7]~21_combout\ : std_logic;
SIGNAL \count[7]~22\ : std_logic;
SIGNAL \count[8]~23_combout\ : std_logic;
SIGNAL \count[8]~24\ : std_logic;
SIGNAL \count[9]~25_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \cyclecount~0_combout\ : std_logic;
SIGNAL \cyclecount~1_combout\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_controller|blue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|green\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|Vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|Hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|red\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL count : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_cyclecount~1_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
GPIO0_D <= ww_GPIO0_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK25|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\CLK25|altpll_component|auto_generated|wire_pll1_clk\(0) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(0);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(1) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(1);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(2) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(2);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(3) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(3);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(4) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(4);

\CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK25|altpll_component|auto_generated|wire_pll1_clk\(0));
\CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_cyclecount~1_combout\ <= NOT \cyclecount~1_combout\;

-- Location: IOOBUF_X41_Y23_N23
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|red\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X41_Y25_N2
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|red\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X41_Y22_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|red\(2),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X41_Y21_N23
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|red\(3),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X41_Y20_N2
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|green\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X41_Y24_N23
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|green\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X41_Y21_N16
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|green\(2),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X41_Y20_N23
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|green\(3),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X41_Y19_N16
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|blue\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X41_Y19_N9
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|blue\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X41_Y19_N2
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|blue\(2),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X41_Y21_N9
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|blue\(3),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X41_Y18_N16
\VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|Hsync~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X41_Y18_N23
\VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|Vsync~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X28_Y0_N16
\GPIO0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controller|Hsync~q\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(0));

-- Location: IOOBUF_X28_Y0_N23
\GPIO0_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cyclecount~1_combout\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(1));

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

-- Location: PLL_2
\CLK25|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5738,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \SW[0]~input_o\,
	fbin => \CLK25|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \CLK25|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \CLK25|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \CLK25|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y22_N6
\VGA_controller|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~0_combout\ = \VGA_controller|h_count\(0) $ (VCC)
-- \VGA_controller|Add0~1\ = CARRY(\VGA_controller|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(0),
	datad => VCC,
	combout => \VGA_controller|Add0~0_combout\,
	cout => \VGA_controller|Add0~1\);

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

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X33_Y22_N7
\VGA_controller|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(0));

-- Location: LCCOMB_X33_Y22_N8
\VGA_controller|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~2_combout\ = (\VGA_controller|h_count\(1) & (!\VGA_controller|Add0~1\)) # (!\VGA_controller|h_count\(1) & ((\VGA_controller|Add0~1\) # (GND)))
-- \VGA_controller|Add0~3\ = CARRY((!\VGA_controller|Add0~1\) # (!\VGA_controller|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(1),
	datad => VCC,
	cin => \VGA_controller|Add0~1\,
	combout => \VGA_controller|Add0~2_combout\,
	cout => \VGA_controller|Add0~3\);

-- Location: FF_X33_Y22_N9
\VGA_controller|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(1));

-- Location: LCCOMB_X33_Y22_N10
\VGA_controller|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~4_combout\ = (\VGA_controller|h_count\(2) & (\VGA_controller|Add0~3\ $ (GND))) # (!\VGA_controller|h_count\(2) & (!\VGA_controller|Add0~3\ & VCC))
-- \VGA_controller|Add0~5\ = CARRY((\VGA_controller|h_count\(2) & !\VGA_controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(2),
	datad => VCC,
	cin => \VGA_controller|Add0~3\,
	combout => \VGA_controller|Add0~4_combout\,
	cout => \VGA_controller|Add0~5\);

-- Location: FF_X33_Y22_N11
\VGA_controller|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(2));

-- Location: LCCOMB_X33_Y22_N12
\VGA_controller|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~6_combout\ = (\VGA_controller|h_count\(3) & (!\VGA_controller|Add0~5\)) # (!\VGA_controller|h_count\(3) & ((\VGA_controller|Add0~5\) # (GND)))
-- \VGA_controller|Add0~7\ = CARRY((!\VGA_controller|Add0~5\) # (!\VGA_controller|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(3),
	datad => VCC,
	cin => \VGA_controller|Add0~5\,
	combout => \VGA_controller|Add0~6_combout\,
	cout => \VGA_controller|Add0~7\);

-- Location: FF_X33_Y22_N13
\VGA_controller|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~6_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(3));

-- Location: LCCOMB_X33_Y22_N14
\VGA_controller|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~8_combout\ = (\VGA_controller|h_count\(4) & (\VGA_controller|Add0~7\ $ (GND))) # (!\VGA_controller|h_count\(4) & (!\VGA_controller|Add0~7\ & VCC))
-- \VGA_controller|Add0~9\ = CARRY((\VGA_controller|h_count\(4) & !\VGA_controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(4),
	datad => VCC,
	cin => \VGA_controller|Add0~7\,
	combout => \VGA_controller|Add0~8_combout\,
	cout => \VGA_controller|Add0~9\);

-- Location: FF_X33_Y22_N15
\VGA_controller|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~8_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(4));

-- Location: LCCOMB_X33_Y22_N16
\VGA_controller|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~10_combout\ = (\VGA_controller|h_count\(5) & (!\VGA_controller|Add0~9\)) # (!\VGA_controller|h_count\(5) & ((\VGA_controller|Add0~9\) # (GND)))
-- \VGA_controller|Add0~11\ = CARRY((!\VGA_controller|Add0~9\) # (!\VGA_controller|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(5),
	datad => VCC,
	cin => \VGA_controller|Add0~9\,
	combout => \VGA_controller|Add0~10_combout\,
	cout => \VGA_controller|Add0~11\);

-- Location: LCCOMB_X33_Y22_N0
\VGA_controller|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|h_count~2_combout\ = (!\VGA_controller|Equal0~2_combout\ & \VGA_controller|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Equal0~2_combout\,
	datad => \VGA_controller|Add0~10_combout\,
	combout => \VGA_controller|h_count~2_combout\);

-- Location: FF_X33_Y22_N1
\VGA_controller|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(5));

-- Location: LCCOMB_X33_Y22_N18
\VGA_controller|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~12_combout\ = (\VGA_controller|h_count\(6) & (\VGA_controller|Add0~11\ $ (GND))) # (!\VGA_controller|h_count\(6) & (!\VGA_controller|Add0~11\ & VCC))
-- \VGA_controller|Add0~13\ = CARRY((\VGA_controller|h_count\(6) & !\VGA_controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(6),
	datad => VCC,
	cin => \VGA_controller|Add0~11\,
	combout => \VGA_controller|Add0~12_combout\,
	cout => \VGA_controller|Add0~13\);

-- Location: FF_X33_Y22_N19
\VGA_controller|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~12_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(6));

-- Location: LCCOMB_X33_Y22_N20
\VGA_controller|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~14_combout\ = (\VGA_controller|h_count\(7) & (!\VGA_controller|Add0~13\)) # (!\VGA_controller|h_count\(7) & ((\VGA_controller|Add0~13\) # (GND)))
-- \VGA_controller|Add0~15\ = CARRY((!\VGA_controller|Add0~13\) # (!\VGA_controller|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(7),
	datad => VCC,
	cin => \VGA_controller|Add0~13\,
	combout => \VGA_controller|Add0~14_combout\,
	cout => \VGA_controller|Add0~15\);

-- Location: FF_X33_Y22_N21
\VGA_controller|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~14_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(7));

-- Location: LCCOMB_X33_Y21_N6
\VGA_controller|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~1_combout\ = (\VGA_controller|h_count\(2) & (!\VGA_controller|h_count\(5) & (\VGA_controller|h_count\(8) & !\VGA_controller|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(2),
	datab => \VGA_controller|h_count\(5),
	datac => \VGA_controller|h_count\(8),
	datad => \VGA_controller|h_count\(7),
	combout => \VGA_controller|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y22_N22
\VGA_controller|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~16_combout\ = (\VGA_controller|h_count\(8) & (\VGA_controller|Add0~15\ $ (GND))) # (!\VGA_controller|h_count\(8) & (!\VGA_controller|Add0~15\ & VCC))
-- \VGA_controller|Add0~17\ = CARRY((\VGA_controller|h_count\(8) & !\VGA_controller|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(8),
	datad => VCC,
	cin => \VGA_controller|Add0~15\,
	combout => \VGA_controller|Add0~16_combout\,
	cout => \VGA_controller|Add0~17\);

-- Location: LCCOMB_X33_Y22_N24
\VGA_controller|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~18_combout\ = \VGA_controller|Add0~17\ $ (\VGA_controller|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|h_count\(9),
	cin => \VGA_controller|Add0~17\,
	combout => \VGA_controller|Add0~18_combout\);

-- Location: LCCOMB_X35_Y22_N22
\VGA_controller|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|h_count~0_combout\ = (\VGA_controller|Add0~18_combout\ & !\VGA_controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add0~18_combout\,
	datac => \VGA_controller|Equal0~2_combout\,
	combout => \VGA_controller|h_count~0_combout\);

-- Location: FF_X35_Y22_N23
\VGA_controller|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(9));

-- Location: LCCOMB_X33_Y22_N26
\VGA_controller|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~0_combout\ = (\VGA_controller|h_count\(0) & (\VGA_controller|h_count\(4) & (\VGA_controller|h_count\(1) & \VGA_controller|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(0),
	datab => \VGA_controller|h_count\(4),
	datac => \VGA_controller|h_count\(1),
	datad => \VGA_controller|h_count\(3),
	combout => \VGA_controller|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y21_N0
\VGA_controller|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~2_combout\ = (\VGA_controller|Equal0~1_combout\ & (!\VGA_controller|h_count\(6) & (\VGA_controller|h_count\(9) & \VGA_controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Equal0~1_combout\,
	datab => \VGA_controller|h_count\(6),
	datac => \VGA_controller|h_count\(9),
	datad => \VGA_controller|Equal0~0_combout\,
	combout => \VGA_controller|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y22_N16
\VGA_controller|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|h_count~1_combout\ = (!\VGA_controller|Equal0~2_combout\ & \VGA_controller|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Equal0~2_combout\,
	datad => \VGA_controller|Add0~16_combout\,
	combout => \VGA_controller|h_count~1_combout\);

-- Location: FF_X31_Y22_N17
\VGA_controller|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(8));

-- Location: LCCOMB_X35_Y22_N2
\VGA_controller|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan6~0_combout\ = ((!\VGA_controller|h_count\(8) & !\VGA_controller|h_count\(7))) # (!\VGA_controller|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(8),
	datac => \VGA_controller|h_count\(9),
	datad => \VGA_controller|h_count\(7),
	combout => \VGA_controller|LessThan6~0_combout\);

-- Location: FF_X35_Y22_N3
\VGA_controller|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|LessThan6~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_h~q\);

-- Location: LCCOMB_X33_Y21_N16
\VGA_controller|v_count[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~0_combout\ = (!\VGA_controller|h_count\(2) & (\VGA_controller|h_count\(5) & (!\VGA_controller|h_count\(8) & \VGA_controller|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(2),
	datab => \VGA_controller|h_count\(5),
	datac => \VGA_controller|h_count\(8),
	datad => \VGA_controller|h_count\(7),
	combout => \VGA_controller|v_count[9]~0_combout\);

-- Location: LCCOMB_X33_Y21_N2
\VGA_controller|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~1_combout\ = (\VGA_controller|h_count\(9) & (\VGA_controller|v_count[9]~0_combout\ & (!\VGA_controller|h_count\(6) & \VGA_controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(9),
	datab => \VGA_controller|v_count[9]~0_combout\,
	datac => \VGA_controller|h_count\(6),
	datad => \VGA_controller|Equal0~0_combout\,
	combout => \VGA_controller|v_count[9]~1_combout\);

-- Location: LCCOMB_X33_Y22_N28
\VGA_controller|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~6_combout\ = ((!\VGA_controller|h_count\(2) & ((!\VGA_controller|h_count\(1)) # (!\VGA_controller|h_count\(0))))) # (!\VGA_controller|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(2),
	datab => \VGA_controller|h_count\(0),
	datac => \VGA_controller|h_count\(1),
	datad => \VGA_controller|h_count\(3),
	combout => \VGA_controller|process_0~6_combout\);

-- Location: LCCOMB_X33_Y22_N30
\VGA_controller|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~7_combout\ = (!\VGA_controller|h_count\(6) & ((\VGA_controller|process_0~6_combout\) # ((!\VGA_controller|h_count\(5)) # (!\VGA_controller|h_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(6),
	datab => \VGA_controller|process_0~6_combout\,
	datac => \VGA_controller|h_count\(4),
	datad => \VGA_controller|h_count\(5),
	combout => \VGA_controller|process_0~7_combout\);

-- Location: LCCOMB_X33_Y21_N4
\VGA_controller|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~8_combout\ = (!\VGA_controller|h_count\(8) & ((\VGA_controller|process_0~7_combout\) # (!\VGA_controller|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(8),
	datac => \VGA_controller|process_0~7_combout\,
	datad => \VGA_controller|h_count\(7),
	combout => \VGA_controller|process_0~8_combout\);

-- Location: LCCOMB_X37_Y23_N4
\VGA_controller|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~0_combout\ = \VGA_controller|v_count\(0) $ (VCC)
-- \VGA_controller|Add1~1\ = CARRY(\VGA_controller|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(0),
	datad => VCC,
	combout => \VGA_controller|Add1~0_combout\,
	cout => \VGA_controller|Add1~1\);

-- Location: LCCOMB_X38_Y23_N0
\VGA_controller|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~22_combout\ = (\VGA_controller|Add1~0_combout\ & \VGA_controller|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|Add1~0_combout\,
	datad => \VGA_controller|process_0~11_combout\,
	combout => \VGA_controller|Add1~22_combout\);

-- Location: LCCOMB_X38_Y23_N24
\VGA_controller|v_count[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~3_combout\ = (\SW[2]~input_o\ & ((\VGA_controller|v_count[9]~1_combout\) # (!\VGA_controller|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~1_combout\,
	datac => \SW[2]~input_o\,
	datad => \VGA_controller|process_0~11_combout\,
	combout => \VGA_controller|v_count[9]~3_combout\);

-- Location: FF_X38_Y23_N1
\VGA_controller|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~22_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGA_controller|v_count[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(0));

-- Location: LCCOMB_X37_Y23_N6
\VGA_controller|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~2_combout\ = (\VGA_controller|v_count\(1) & (!\VGA_controller|Add1~1\)) # (!\VGA_controller|v_count\(1) & ((\VGA_controller|Add1~1\) # (GND)))
-- \VGA_controller|Add1~3\ = CARRY((!\VGA_controller|Add1~1\) # (!\VGA_controller|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(1),
	datad => VCC,
	cin => \VGA_controller|Add1~1\,
	combout => \VGA_controller|Add1~2_combout\,
	cout => \VGA_controller|Add1~3\);

-- Location: LCCOMB_X38_Y23_N2
\VGA_controller|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~23_combout\ = (\VGA_controller|Add1~2_combout\ & \VGA_controller|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|Add1~2_combout\,
	datad => \VGA_controller|process_0~11_combout\,
	combout => \VGA_controller|Add1~23_combout\);

-- Location: FF_X38_Y23_N3
\VGA_controller|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~23_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGA_controller|v_count[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(1));

-- Location: LCCOMB_X37_Y23_N8
\VGA_controller|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~4_combout\ = (\VGA_controller|v_count\(2) & (\VGA_controller|Add1~3\ $ (GND))) # (!\VGA_controller|v_count\(2) & (!\VGA_controller|Add1~3\ & VCC))
-- \VGA_controller|Add1~5\ = CARRY((\VGA_controller|v_count\(2) & !\VGA_controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(2),
	datad => VCC,
	cin => \VGA_controller|Add1~3\,
	combout => \VGA_controller|Add1~4_combout\,
	cout => \VGA_controller|Add1~5\);

-- Location: LCCOMB_X38_Y23_N22
\VGA_controller|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~21_combout\ = (\VGA_controller|Add1~4_combout\ & \VGA_controller|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~4_combout\,
	datad => \VGA_controller|process_0~11_combout\,
	combout => \VGA_controller|Add1~21_combout\);

-- Location: FF_X38_Y23_N23
\VGA_controller|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~21_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGA_controller|v_count[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(2));

-- Location: LCCOMB_X37_Y23_N10
\VGA_controller|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~6_combout\ = (\VGA_controller|v_count\(3) & (!\VGA_controller|Add1~5\)) # (!\VGA_controller|v_count\(3) & ((\VGA_controller|Add1~5\) # (GND)))
-- \VGA_controller|Add1~7\ = CARRY((!\VGA_controller|Add1~5\) # (!\VGA_controller|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(3),
	datad => VCC,
	cin => \VGA_controller|Add1~5\,
	combout => \VGA_controller|Add1~6_combout\,
	cout => \VGA_controller|Add1~7\);

-- Location: LCCOMB_X38_Y23_N12
\VGA_controller|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~20_combout\ = (\VGA_controller|Add1~6_combout\ & \VGA_controller|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~6_combout\,
	datad => \VGA_controller|process_0~11_combout\,
	combout => \VGA_controller|Add1~20_combout\);

-- Location: FF_X38_Y23_N13
\VGA_controller|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~20_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGA_controller|v_count[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(3));

-- Location: LCCOMB_X37_Y23_N12
\VGA_controller|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~8_combout\ = (\VGA_controller|v_count\(4) & (\VGA_controller|Add1~7\ $ (GND))) # (!\VGA_controller|v_count\(4) & (!\VGA_controller|Add1~7\ & VCC))
-- \VGA_controller|Add1~9\ = CARRY((\VGA_controller|v_count\(4) & !\VGA_controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(4),
	datad => VCC,
	cin => \VGA_controller|Add1~7\,
	combout => \VGA_controller|Add1~8_combout\,
	cout => \VGA_controller|Add1~9\);

-- Location: LCCOMB_X37_Y23_N28
\VGA_controller|v_count[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[4]~8_combout\ = (\VGA_controller|Add1~8_combout\ & ((\VGA_controller|v_count[4]~2_combout\) # ((!\VGA_controller|v_count[9]~3_combout\ & \VGA_controller|v_count\(4))))) # (!\VGA_controller|Add1~8_combout\ & 
-- (!\VGA_controller|v_count[9]~3_combout\ & (\VGA_controller|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~8_combout\,
	datab => \VGA_controller|v_count[9]~3_combout\,
	datac => \VGA_controller|v_count\(4),
	datad => \VGA_controller|v_count[4]~2_combout\,
	combout => \VGA_controller|v_count[4]~8_combout\);

-- Location: FF_X37_Y23_N29
\VGA_controller|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[4]~8_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(4));

-- Location: LCCOMB_X37_Y23_N14
\VGA_controller|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~10_combout\ = (\VGA_controller|v_count\(5) & (!\VGA_controller|Add1~9\)) # (!\VGA_controller|v_count\(5) & ((\VGA_controller|Add1~9\) # (GND)))
-- \VGA_controller|Add1~11\ = CARRY((!\VGA_controller|Add1~9\) # (!\VGA_controller|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(5),
	datad => VCC,
	cin => \VGA_controller|Add1~9\,
	combout => \VGA_controller|Add1~10_combout\,
	cout => \VGA_controller|Add1~11\);

-- Location: LCCOMB_X37_Y23_N2
\VGA_controller|v_count[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[5]~5_combout\ = (\VGA_controller|v_count[4]~2_combout\ & ((\VGA_controller|Add1~10_combout\) # ((\VGA_controller|v_count\(5) & !\VGA_controller|v_count[9]~3_combout\)))) # (!\VGA_controller|v_count[4]~2_combout\ & 
-- (((\VGA_controller|v_count\(5) & !\VGA_controller|v_count[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[4]~2_combout\,
	datab => \VGA_controller|Add1~10_combout\,
	datac => \VGA_controller|v_count\(5),
	datad => \VGA_controller|v_count[9]~3_combout\,
	combout => \VGA_controller|v_count[5]~5_combout\);

-- Location: FF_X37_Y23_N3
\VGA_controller|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[5]~5_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(5));

-- Location: LCCOMB_X37_Y23_N16
\VGA_controller|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~12_combout\ = (\VGA_controller|v_count\(6) & (\VGA_controller|Add1~11\ $ (GND))) # (!\VGA_controller|v_count\(6) & (!\VGA_controller|Add1~11\ & VCC))
-- \VGA_controller|Add1~13\ = CARRY((\VGA_controller|v_count\(6) & !\VGA_controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(6),
	datad => VCC,
	cin => \VGA_controller|Add1~11\,
	combout => \VGA_controller|Add1~12_combout\,
	cout => \VGA_controller|Add1~13\);

-- Location: LCCOMB_X37_Y23_N24
\VGA_controller|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[6]~4_combout\ = (\VGA_controller|v_count[4]~2_combout\ & ((\VGA_controller|Add1~12_combout\) # ((\VGA_controller|v_count\(6) & !\VGA_controller|v_count[9]~3_combout\)))) # (!\VGA_controller|v_count[4]~2_combout\ & 
-- (((\VGA_controller|v_count\(6) & !\VGA_controller|v_count[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[4]~2_combout\,
	datab => \VGA_controller|Add1~12_combout\,
	datac => \VGA_controller|v_count\(6),
	datad => \VGA_controller|v_count[9]~3_combout\,
	combout => \VGA_controller|v_count[6]~4_combout\);

-- Location: FF_X37_Y23_N25
\VGA_controller|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[6]~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(6));

-- Location: LCCOMB_X37_Y23_N18
\VGA_controller|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~14_combout\ = (\VGA_controller|v_count\(7) & (!\VGA_controller|Add1~13\)) # (!\VGA_controller|v_count\(7) & ((\VGA_controller|Add1~13\) # (GND)))
-- \VGA_controller|Add1~15\ = CARRY((!\VGA_controller|Add1~13\) # (!\VGA_controller|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(7),
	datad => VCC,
	cin => \VGA_controller|Add1~13\,
	combout => \VGA_controller|Add1~14_combout\,
	cout => \VGA_controller|Add1~15\);

-- Location: LCCOMB_X37_Y23_N26
\VGA_controller|v_count[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[7]~7_combout\ = (\VGA_controller|v_count[4]~2_combout\ & ((\VGA_controller|Add1~14_combout\) # ((\VGA_controller|v_count\(7) & !\VGA_controller|v_count[9]~3_combout\)))) # (!\VGA_controller|v_count[4]~2_combout\ & 
-- (((\VGA_controller|v_count\(7) & !\VGA_controller|v_count[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[4]~2_combout\,
	datab => \VGA_controller|Add1~14_combout\,
	datac => \VGA_controller|v_count\(7),
	datad => \VGA_controller|v_count[9]~3_combout\,
	combout => \VGA_controller|v_count[7]~7_combout\);

-- Location: FF_X37_Y23_N27
\VGA_controller|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[7]~7_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(7));

-- Location: LCCOMB_X38_Y23_N16
\VGA_controller|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~9_combout\ = (!\VGA_controller|v_count\(5) & (!\VGA_controller|v_count\(4) & ((!\VGA_controller|v_count\(3)) # (!\VGA_controller|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(2),
	datab => \VGA_controller|v_count\(5),
	datac => \VGA_controller|v_count\(3),
	datad => \VGA_controller|v_count\(4),
	combout => \VGA_controller|process_0~9_combout\);

-- Location: LCCOMB_X38_Y23_N26
\VGA_controller|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~10_combout\ = (!\VGA_controller|v_count\(6) & (!\VGA_controller|v_count\(8) & (!\VGA_controller|v_count\(7) & \VGA_controller|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(6),
	datab => \VGA_controller|v_count\(8),
	datac => \VGA_controller|v_count\(7),
	datad => \VGA_controller|process_0~9_combout\,
	combout => \VGA_controller|process_0~10_combout\);

-- Location: LCCOMB_X38_Y23_N28
\VGA_controller|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~11_combout\ = ((\VGA_controller|process_0~8_combout\) # ((\VGA_controller|process_0~10_combout\) # (!\VGA_controller|h_count\(9)))) # (!\VGA_controller|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(9),
	datab => \VGA_controller|process_0~8_combout\,
	datac => \VGA_controller|process_0~10_combout\,
	datad => \VGA_controller|h_count\(9),
	combout => \VGA_controller|process_0~11_combout\);

-- Location: LCCOMB_X38_Y23_N6
\VGA_controller|v_count[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[4]~2_combout\ = (\VGA_controller|v_count[9]~1_combout\ & (\SW[2]~input_o\ & \VGA_controller|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~1_combout\,
	datac => \SW[2]~input_o\,
	datad => \VGA_controller|process_0~11_combout\,
	combout => \VGA_controller|v_count[4]~2_combout\);

-- Location: LCCOMB_X37_Y23_N20
\VGA_controller|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~16_combout\ = (\VGA_controller|v_count\(8) & (\VGA_controller|Add1~15\ $ (GND))) # (!\VGA_controller|v_count\(8) & (!\VGA_controller|Add1~15\ & VCC))
-- \VGA_controller|Add1~17\ = CARRY((\VGA_controller|v_count\(8) & !\VGA_controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(8),
	datad => VCC,
	cin => \VGA_controller|Add1~15\,
	combout => \VGA_controller|Add1~16_combout\,
	cout => \VGA_controller|Add1~17\);

-- Location: LCCOMB_X37_Y23_N30
\VGA_controller|v_count[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[8]~9_combout\ = (\VGA_controller|v_count[4]~2_combout\ & ((\VGA_controller|Add1~16_combout\) # ((\VGA_controller|v_count\(8) & !\VGA_controller|v_count[9]~3_combout\)))) # (!\VGA_controller|v_count[4]~2_combout\ & 
-- (((\VGA_controller|v_count\(8) & !\VGA_controller|v_count[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[4]~2_combout\,
	datab => \VGA_controller|Add1~16_combout\,
	datac => \VGA_controller|v_count\(8),
	datad => \VGA_controller|v_count[9]~3_combout\,
	combout => \VGA_controller|v_count[8]~9_combout\);

-- Location: FF_X37_Y23_N31
\VGA_controller|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[8]~9_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(8));

-- Location: LCCOMB_X37_Y23_N22
\VGA_controller|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~18_combout\ = \VGA_controller|Add1~17\ $ (\VGA_controller|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|v_count\(9),
	cin => \VGA_controller|Add1~17\,
	combout => \VGA_controller|Add1~18_combout\);

-- Location: LCCOMB_X37_Y23_N0
\VGA_controller|v_count[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~6_combout\ = (\VGA_controller|Add1~18_combout\ & ((\VGA_controller|v_count[4]~2_combout\) # ((!\VGA_controller|v_count[9]~3_combout\ & \VGA_controller|v_count\(9))))) # (!\VGA_controller|Add1~18_combout\ & 
-- (!\VGA_controller|v_count[9]~3_combout\ & (\VGA_controller|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~18_combout\,
	datab => \VGA_controller|v_count[9]~3_combout\,
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|v_count[4]~2_combout\,
	combout => \VGA_controller|v_count[9]~6_combout\);

-- Location: FF_X37_Y23_N1
\VGA_controller|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[9]~6_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(9));

-- Location: LCCOMB_X38_Y23_N4
\VGA_controller|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan7~0_combout\ = (\VGA_controller|v_count\(6) & (\VGA_controller|v_count\(5) & (\VGA_controller|v_count\(7) & \VGA_controller|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(6),
	datab => \VGA_controller|v_count\(5),
	datac => \VGA_controller|v_count\(7),
	datad => \VGA_controller|v_count\(8),
	combout => \VGA_controller|LessThan7~0_combout\);

-- Location: LCCOMB_X35_Y22_N12
\VGA_controller|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan7~1_combout\ = (!\VGA_controller|v_count\(9) & !\VGA_controller|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(9),
	datad => \VGA_controller|LessThan7~0_combout\,
	combout => \VGA_controller|LessThan7~1_combout\);

-- Location: FF_X35_Y22_N13
\VGA_controller|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|LessThan7~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_v~q\);

-- Location: LCCOMB_X35_Y22_N8
\VGA_controller|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|video_on~combout\ = (\VGA_controller|video_on_h~q\ & \VGA_controller|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|video_on_h~q\,
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|video_on~combout\);

-- Location: FF_X35_Y22_N9
\VGA_controller|VideoOn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|VideoOn~q\);

-- Location: FF_X31_Y23_N23
\VGA_controller|Hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(8),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(8));

-- Location: FF_X32_Y23_N1
\VGA_controller|Hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(9),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(9));

-- Location: FF_X31_Y23_N21
\VGA_controller|Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(7),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(7));

-- Location: LCCOMB_X32_Y23_N0
\setcolor~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~1_combout\ = (!\VGA_controller|Hcount\(8) & (!\VGA_controller|Hcount\(9) & !\VGA_controller|Hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Hcount\(8),
	datac => \VGA_controller|Hcount\(9),
	datad => \VGA_controller|Hcount\(7),
	combout => \setcolor~1_combout\);

-- Location: FF_X32_Y23_N21
\VGA_controller|Hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(6),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(6));

-- Location: FF_X31_Y23_N17
\VGA_controller|Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(5),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(5));

-- Location: FF_X32_Y23_N17
\VGA_controller|Hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(4),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(4));

-- Location: LCCOMB_X36_Y22_N22
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ((!\VGA_controller|Hcount\(5) & !\VGA_controller|Hcount\(4))) # (!\VGA_controller|Hcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(6),
	datab => \VGA_controller|Hcount\(5),
	datad => \VGA_controller|Hcount\(4),
	combout => \LessThan4~0_combout\);

-- Location: FF_X31_Y23_N13
\VGA_controller|Hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(3),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(3));

-- Location: FF_X32_Y23_N15
\VGA_controller|Vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(3),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(3));

-- Location: FF_X31_Y23_N11
\VGA_controller|Vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(2),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(2));

-- Location: FF_X32_Y23_N13
\VGA_controller|Hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(2),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(2));

-- Location: FF_X31_Y23_N9
\VGA_controller|Hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(1),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(1));

-- Location: FF_X32_Y23_N11
\VGA_controller|Vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(1),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(1));

-- Location: FF_X31_Y23_N7
\VGA_controller|Vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(0),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(0));

-- Location: FF_X32_Y23_N9
\VGA_controller|Hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(0),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(0));

-- Location: LCCOMB_X31_Y23_N6
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\VGA_controller|Vcount\(0) & (!\VGA_controller|Hcount\(0) & VCC)) # (!\VGA_controller|Vcount\(0) & (\VGA_controller|Hcount\(0) $ (GND)))
-- \Add2~1\ = CARRY((!\VGA_controller|Vcount\(0) & !\VGA_controller|Hcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(0),
	datab => \VGA_controller|Hcount\(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X31_Y23_N8
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\VGA_controller|Hcount\(1) & ((\VGA_controller|Vcount\(1) & ((\Add2~1\) # (GND))) # (!\VGA_controller|Vcount\(1) & (!\Add2~1\)))) # (!\VGA_controller|Hcount\(1) & ((\VGA_controller|Vcount\(1) & (!\Add2~1\)) # 
-- (!\VGA_controller|Vcount\(1) & (\Add2~1\ & VCC))))
-- \Add2~3\ = CARRY((\VGA_controller|Hcount\(1) & ((\VGA_controller|Vcount\(1)) # (!\Add2~1\))) # (!\VGA_controller|Hcount\(1) & (\VGA_controller|Vcount\(1) & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(1),
	datab => \VGA_controller|Vcount\(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X31_Y23_N10
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\VGA_controller|Vcount\(2) $ (\VGA_controller|Hcount\(2) $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\VGA_controller|Vcount\(2) & (!\VGA_controller|Hcount\(2) & !\Add2~3\)) # (!\VGA_controller|Vcount\(2) & ((!\Add2~3\) # (!\VGA_controller|Hcount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(2),
	datab => \VGA_controller|Hcount\(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X31_Y23_N12
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\VGA_controller|Hcount\(3) & ((\VGA_controller|Vcount\(3) & ((\Add2~5\) # (GND))) # (!\VGA_controller|Vcount\(3) & (!\Add2~5\)))) # (!\VGA_controller|Hcount\(3) & ((\VGA_controller|Vcount\(3) & (!\Add2~5\)) # 
-- (!\VGA_controller|Vcount\(3) & (\Add2~5\ & VCC))))
-- \Add2~7\ = CARRY((\VGA_controller|Hcount\(3) & ((\VGA_controller|Vcount\(3)) # (!\Add2~5\))) # (!\VGA_controller|Hcount\(3) & (\VGA_controller|Vcount\(3) & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(3),
	datab => \VGA_controller|Vcount\(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X32_Y22_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \Add2~2_combout\ $ (VCC)
-- \Add3~1\ = CARRY(\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X32_Y22_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add2~4_combout\ & (!\Add3~1\)) # (!\Add2~4_combout\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X32_Y22_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Add2~6_combout\ & (\Add3~3\ $ (GND))) # (!\Add2~6_combout\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\Add2~6_combout\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X36_Y22_N12
\setcolor~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~8_combout\ = (\Add3~4_combout\) # ((\Add3~2_combout\) # ((\Add3~0_combout\ & \Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add3~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Add3~2_combout\,
	combout => \setcolor~8_combout\);

-- Location: LCCOMB_X36_Y22_N6
\setcolor~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~9_combout\ = ((\setcolor~8_combout\) # ((\setcolor~1_combout\ & \LessThan4~0_combout\))) # (!\VGA_controller|VideoOn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|VideoOn~q\,
	datab => \setcolor~1_combout\,
	datac => \LessThan4~0_combout\,
	datad => \setcolor~8_combout\,
	combout => \setcolor~9_combout\);

-- Location: FF_X31_Y23_N25
\VGA_controller|Vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(9),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(9));

-- Location: FF_X32_Y23_N25
\VGA_controller|Vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(8),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(8));

-- Location: FF_X32_Y23_N23
\VGA_controller|Vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(7),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(7));

-- Location: FF_X31_Y23_N19
\VGA_controller|Vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(6),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(6));

-- Location: FF_X32_Y23_N19
\VGA_controller|Vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(5),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(5));

-- Location: FF_X31_Y23_N15
\VGA_controller|Vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(4),
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(4));

-- Location: LCCOMB_X31_Y23_N14
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\VGA_controller|Vcount\(4) $ (\VGA_controller|Hcount\(4) $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\VGA_controller|Vcount\(4) & (!\VGA_controller|Hcount\(4) & !\Add2~7\)) # (!\VGA_controller|Vcount\(4) & ((!\Add2~7\) # (!\VGA_controller|Hcount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(4),
	datab => \VGA_controller|Hcount\(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X31_Y23_N16
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\VGA_controller|Hcount\(5) & ((\VGA_controller|Vcount\(5) & ((\Add2~9\) # (GND))) # (!\VGA_controller|Vcount\(5) & (!\Add2~9\)))) # (!\VGA_controller|Hcount\(5) & ((\VGA_controller|Vcount\(5) & (!\Add2~9\)) # 
-- (!\VGA_controller|Vcount\(5) & (\Add2~9\ & VCC))))
-- \Add2~11\ = CARRY((\VGA_controller|Hcount\(5) & ((\VGA_controller|Vcount\(5)) # (!\Add2~9\))) # (!\VGA_controller|Hcount\(5) & (\VGA_controller|Vcount\(5) & !\Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(5),
	datab => \VGA_controller|Vcount\(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X31_Y23_N18
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\VGA_controller|Hcount\(6) $ (\VGA_controller|Vcount\(6) $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\VGA_controller|Hcount\(6) & (!\VGA_controller|Vcount\(6) & !\Add2~11\)) # (!\VGA_controller|Hcount\(6) & ((!\Add2~11\) # (!\VGA_controller|Vcount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(6),
	datab => \VGA_controller|Vcount\(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X31_Y23_N20
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\VGA_controller|Hcount\(7) & ((\VGA_controller|Vcount\(7) & ((\Add2~13\) # (GND))) # (!\VGA_controller|Vcount\(7) & (!\Add2~13\)))) # (!\VGA_controller|Hcount\(7) & ((\VGA_controller|Vcount\(7) & (!\Add2~13\)) # 
-- (!\VGA_controller|Vcount\(7) & (\Add2~13\ & VCC))))
-- \Add2~15\ = CARRY((\VGA_controller|Hcount\(7) & ((\VGA_controller|Vcount\(7)) # (!\Add2~13\))) # (!\VGA_controller|Hcount\(7) & (\VGA_controller|Vcount\(7) & !\Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(7),
	datab => \VGA_controller|Vcount\(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X31_Y23_N22
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\VGA_controller|Hcount\(8) $ (\VGA_controller|Vcount\(8) $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\VGA_controller|Hcount\(8) & (!\VGA_controller|Vcount\(8) & !\Add2~15\)) # (!\VGA_controller|Hcount\(8) & ((!\Add2~15\) # (!\VGA_controller|Vcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(8),
	datab => \VGA_controller|Vcount\(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X31_Y23_N24
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = \VGA_controller|Hcount\(9) $ (\Add2~17\ $ (\VGA_controller|Vcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Hcount\(9),
	datad => \VGA_controller|Vcount\(9),
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X32_Y22_N6
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add2~8_combout\ & (!\Add3~5\)) # (!\Add2~8_combout\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X32_Y22_N8
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add2~10_combout\ & ((GND) # (!\Add3~7\))) # (!\Add2~10_combout\ & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((\Add2~10_combout\) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X32_Y22_N10
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Add2~12_combout\ & (\Add3~9\ & VCC)) # (!\Add2~12_combout\ & (!\Add3~9\))
-- \Add3~11\ = CARRY((!\Add2~12_combout\ & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X32_Y22_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Add2~14_combout\ & ((GND) # (!\Add3~11\))) # (!\Add2~14_combout\ & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((\Add2~14_combout\) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X32_Y22_N14
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add2~16_combout\ & (\Add3~13\ & VCC)) # (!\Add2~16_combout\ & (!\Add3~13\))
-- \Add3~15\ = CARRY((!\Add2~16_combout\ & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X32_Y22_N16
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = \Add2~18_combout\ $ (!\Add3~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	cin => \Add3~15\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X32_Y22_N18
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \Add3~6_combout\ $ (VCC)
-- \Add4~1\ = CARRY(\Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X32_Y22_N20
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add3~8_combout\ & (!\Add4~1\)) # (!\Add3~8_combout\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X32_Y22_N22
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\Add3~10_combout\ & ((GND) # (!\Add4~3\))) # (!\Add3~10_combout\ & (\Add4~3\ $ (GND)))
-- \Add4~5\ = CARRY((\Add3~10_combout\) # (!\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X32_Y22_N24
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add3~12_combout\ & (!\Add4~5\)) # (!\Add3~12_combout\ & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!\Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X32_Y22_N26
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\Add3~14_combout\ & (\Add4~7\ $ (GND))) # (!\Add3~14_combout\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\Add3~14_combout\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~14_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X32_Y22_N28
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = \Add4~9\ $ (\Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add3~16_combout\,
	cin => \Add4~9\,
	combout => \Add4~10_combout\);

-- Location: LCCOMB_X36_Y22_N24
\setcolor~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~11_combout\ = (\Add4~10_combout\) # (\Add4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~10_combout\,
	datad => \Add4~8_combout\,
	combout => \setcolor~11_combout\);

-- Location: LCCOMB_X31_Y23_N2
\data[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~5_combout\ = (\VGA_controller|Hcount\(1) & (\VGA_controller|Hcount\(2) & (\VGA_controller|Hcount\(0) & \VGA_controller|Hcount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(1),
	datab => \VGA_controller|Hcount\(2),
	datac => \VGA_controller|Hcount\(0),
	datad => \VGA_controller|Hcount\(3),
	combout => \data[0]~5_combout\);

-- Location: LCCOMB_X31_Y23_N4
\data[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~6_combout\ = (\VGA_controller|Hcount\(5) & (\data[0]~5_combout\ & (\VGA_controller|Hcount\(6) & \VGA_controller|Hcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(5),
	datab => \data[0]~5_combout\,
	datac => \VGA_controller|Hcount\(6),
	datad => \VGA_controller|Hcount\(4),
	combout => \data[0]~6_combout\);

-- Location: LCCOMB_X31_Y23_N30
\data[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~7_combout\ = (\VGA_controller|Hcount\(9) & ((\VGA_controller|Hcount\(8)) # ((\data[0]~6_combout\) # (\VGA_controller|Hcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(8),
	datab => \data[0]~6_combout\,
	datac => \VGA_controller|Hcount\(9),
	datad => \VGA_controller|Hcount\(7),
	combout => \data[0]~7_combout\);

-- Location: LCCOMB_X32_Y23_N2
\setcolor~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~2_combout\ = (!\VGA_controller|Hcount\(3) & (!\VGA_controller|Hcount\(1) & !\VGA_controller|Hcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(3),
	datac => \VGA_controller|Hcount\(1),
	datad => \VGA_controller|Hcount\(2),
	combout => \setcolor~2_combout\);

-- Location: LCCOMB_X32_Y23_N4
\data[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~8_combout\ = (\VGA_controller|Hcount\(6) & (((!\VGA_controller|Hcount\(5) & \setcolor~1_combout\)))) # (!\VGA_controller|Hcount\(6) & (\VGA_controller|Hcount\(9) & (\VGA_controller|Hcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(9),
	datab => \VGA_controller|Hcount\(6),
	datac => \VGA_controller|Hcount\(5),
	datad => \setcolor~1_combout\,
	combout => \data[0]~8_combout\);

-- Location: LCCOMB_X32_Y23_N6
\data[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~9_combout\ = (!\VGA_controller|Hcount\(0) & (\setcolor~2_combout\ & (\data[0]~8_combout\ & \VGA_controller|Hcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(0),
	datab => \setcolor~2_combout\,
	datac => \data[0]~8_combout\,
	datad => \VGA_controller|Hcount\(4),
	combout => \data[0]~9_combout\);

-- Location: LCCOMB_X36_Y22_N18
\data[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~10_combout\ = (\VGA_controller|VideoOn~q\ & ((\data[0]~7_combout\) # (\data[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[0]~7_combout\,
	datac => \data[0]~9_combout\,
	datad => \VGA_controller|VideoOn~q\,
	combout => \data[0]~10_combout\);

-- Location: LCCOMB_X32_Y22_N30
\setcolor~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~10_combout\ = (\Add4~0_combout\) # ((\Add4~6_combout\) # ((\Add4~4_combout\) # (\Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add4~6_combout\,
	datac => \Add4~4_combout\,
	datad => \Add4~2_combout\,
	combout => \setcolor~10_combout\);

-- Location: LCCOMB_X36_Y22_N2
\VGA_controller|red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~0_combout\ = (!\data[0]~10_combout\ & ((\setcolor~9_combout\) # ((\setcolor~11_combout\) # (\setcolor~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setcolor~9_combout\,
	datab => \setcolor~11_combout\,
	datac => \data[0]~10_combout\,
	datad => \setcolor~10_combout\,
	combout => \VGA_controller|red~0_combout\);

-- Location: LCCOMB_X32_Y23_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\VGA_controller|Hcount\(0) & ((GND) # (!\VGA_controller|Vcount\(0)))) # (!\VGA_controller|Hcount\(0) & (\VGA_controller|Vcount\(0) $ (GND)))
-- \Add0~1\ = CARRY((\VGA_controller|Hcount\(0)) # (!\VGA_controller|Vcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(0),
	datab => \VGA_controller|Vcount\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X32_Y23_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\VGA_controller|Hcount\(1) & ((\VGA_controller|Vcount\(1) & (!\Add0~1\)) # (!\VGA_controller|Vcount\(1) & (\Add0~1\ & VCC)))) # (!\VGA_controller|Hcount\(1) & ((\VGA_controller|Vcount\(1) & ((\Add0~1\) # (GND))) # 
-- (!\VGA_controller|Vcount\(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\VGA_controller|Hcount\(1) & (\VGA_controller|Vcount\(1) & !\Add0~1\)) # (!\VGA_controller|Hcount\(1) & ((\VGA_controller|Vcount\(1)) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(1),
	datab => \VGA_controller|Vcount\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X32_Y23_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\VGA_controller|Hcount\(2) $ (\VGA_controller|Vcount\(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\VGA_controller|Hcount\(2) & ((!\Add0~3\) # (!\VGA_controller|Vcount\(2)))) # (!\VGA_controller|Hcount\(2) & (!\VGA_controller|Vcount\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(2),
	datab => \VGA_controller|Vcount\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X32_Y23_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\VGA_controller|Hcount\(3) & ((\VGA_controller|Vcount\(3) & (!\Add0~5\)) # (!\VGA_controller|Vcount\(3) & (\Add0~5\ & VCC)))) # (!\VGA_controller|Hcount\(3) & ((\VGA_controller|Vcount\(3) & ((\Add0~5\) # (GND))) # 
-- (!\VGA_controller|Vcount\(3) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\VGA_controller|Hcount\(3) & (\VGA_controller|Vcount\(3) & !\Add0~5\)) # (!\VGA_controller|Hcount\(3) & ((\VGA_controller|Vcount\(3)) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(3),
	datab => \VGA_controller|Vcount\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X32_Y23_N30
\setcolor~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~4_combout\ = (!\Add0~6_combout\ & (!\Add0~4_combout\ & ((!\Add0~0_combout\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \setcolor~4_combout\);

-- Location: LCCOMB_X36_Y22_N8
\setcolor~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~5_combout\ = (\VGA_controller|VideoOn~q\ & (\setcolor~4_combout\ & ((!\LessThan4~0_combout\) # (!\setcolor~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|VideoOn~q\,
	datab => \setcolor~1_combout\,
	datac => \LessThan4~0_combout\,
	datad => \setcolor~4_combout\,
	combout => \setcolor~5_combout\);

-- Location: LCCOMB_X32_Y23_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\VGA_controller|Vcount\(4) $ (\VGA_controller|Hcount\(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\VGA_controller|Vcount\(4) & (\VGA_controller|Hcount\(4) & !\Add0~7\)) # (!\VGA_controller|Vcount\(4) & ((\VGA_controller|Hcount\(4)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(4),
	datab => \VGA_controller|Hcount\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X32_Y23_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\VGA_controller|Hcount\(5) & ((\VGA_controller|Vcount\(5) & (!\Add0~9\)) # (!\VGA_controller|Vcount\(5) & (\Add0~9\ & VCC)))) # (!\VGA_controller|Hcount\(5) & ((\VGA_controller|Vcount\(5) & ((\Add0~9\) # (GND))) # 
-- (!\VGA_controller|Vcount\(5) & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\VGA_controller|Hcount\(5) & (\VGA_controller|Vcount\(5) & !\Add0~9\)) # (!\VGA_controller|Hcount\(5) & ((\VGA_controller|Vcount\(5)) # (!\Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(5),
	datab => \VGA_controller|Vcount\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X32_Y23_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\VGA_controller|Vcount\(6) $ (\VGA_controller|Hcount\(6) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\VGA_controller|Vcount\(6) & (\VGA_controller|Hcount\(6) & !\Add0~11\)) # (!\VGA_controller|Vcount\(6) & ((\VGA_controller|Hcount\(6)) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(6),
	datab => \VGA_controller|Hcount\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X32_Y23_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\VGA_controller|Vcount\(7) & ((\VGA_controller|Hcount\(7) & (!\Add0~13\)) # (!\VGA_controller|Hcount\(7) & ((\Add0~13\) # (GND))))) # (!\VGA_controller|Vcount\(7) & ((\VGA_controller|Hcount\(7) & (\Add0~13\ & VCC)) # 
-- (!\VGA_controller|Hcount\(7) & (!\Add0~13\))))
-- \Add0~15\ = CARRY((\VGA_controller|Vcount\(7) & ((!\Add0~13\) # (!\VGA_controller|Hcount\(7)))) # (!\VGA_controller|Vcount\(7) & (!\VGA_controller|Hcount\(7) & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(7),
	datab => \VGA_controller|Hcount\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X32_Y23_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\VGA_controller|Vcount\(8) $ (\VGA_controller|Hcount\(8) $ (\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\VGA_controller|Vcount\(8) & (\VGA_controller|Hcount\(8) & !\Add0~15\)) # (!\VGA_controller|Vcount\(8) & ((\VGA_controller|Hcount\(8)) # (!\Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(8),
	datab => \VGA_controller|Hcount\(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X32_Y23_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \VGA_controller|Hcount\(9) $ (\VGA_controller|Vcount\(9) $ (!\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(9),
	datab => \VGA_controller|Vcount\(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X32_Y21_N18
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \Add0~8_combout\ $ (VCC)
-- \Add1~1\ = CARRY(\Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X32_Y21_N20
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~10_combout\ & (\Add1~1\ & VCC)) # (!\Add0~10_combout\ & (!\Add1~1\))
-- \Add1~3\ = CARRY((!\Add0~10_combout\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X32_Y21_N22
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add0~12_combout\ & (\Add1~3\ $ (GND))) # (!\Add0~12_combout\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\Add0~12_combout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X32_Y21_N24
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~14_combout\ & (\Add1~5\ & VCC)) # (!\Add0~14_combout\ & (!\Add1~5\))
-- \Add1~7\ = CARRY((!\Add0~14_combout\ & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X32_Y21_N26
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add0~16_combout\ & ((GND) # (!\Add1~7\))) # (!\Add0~16_combout\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((\Add0~16_combout\) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X32_Y21_N28
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add0~18_combout\,
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X32_Y21_N0
\setcolor~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~6_combout\ = (!\Add1~6_combout\ & (!\Add1~0_combout\ & (!\Add1~4_combout\ & !\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~4_combout\,
	datad => \Add1~2_combout\,
	combout => \setcolor~6_combout\);

-- Location: LCCOMB_X32_Y21_N10
\setcolor~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~7_combout\ = (\setcolor~5_combout\ & (!\Add1~10_combout\ & (!\Add1~8_combout\ & \setcolor~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setcolor~5_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~8_combout\,
	datad => \setcolor~6_combout\,
	combout => \setcolor~7_combout\);

-- Location: LCCOMB_X32_Y23_N28
\setcolor~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~3_combout\ = (!\VGA_controller|Hcount\(6) & (\setcolor~2_combout\ & (!\VGA_controller|Hcount\(5) & !\VGA_controller|Hcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(6),
	datab => \setcolor~2_combout\,
	datac => \VGA_controller|Hcount\(5),
	datad => \VGA_controller|Hcount\(4),
	combout => \setcolor~3_combout\);

-- Location: LCCOMB_X31_Y23_N26
\data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~1_combout\ = (\VGA_controller|Vcount\(2) & (((\VGA_controller|Vcount\(4) & \VGA_controller|Vcount\(8))) # (!\VGA_controller|Vcount\(1)))) # (!\VGA_controller|Vcount\(2) & (!\VGA_controller|Vcount\(1) & ((\VGA_controller|Vcount\(4)) # 
-- (\VGA_controller|Vcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(2),
	datab => \VGA_controller|Vcount\(4),
	datac => \VGA_controller|Vcount\(1),
	datad => \VGA_controller|Vcount\(8),
	combout => \data[0]~1_combout\);

-- Location: LCCOMB_X31_Y23_N0
\data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~0_combout\ = (\VGA_controller|Vcount\(2) & (\VGA_controller|Vcount\(7) & \VGA_controller|Vcount\(0))) # (!\VGA_controller|Vcount\(2) & ((\VGA_controller|Vcount\(7)) # (\VGA_controller|Vcount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(2),
	datab => \VGA_controller|Vcount\(7),
	datad => \VGA_controller|Vcount\(0),
	combout => \data[0]~0_combout\);

-- Location: LCCOMB_X31_Y23_N28
\data[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~2_combout\ = (\data[0]~1_combout\ & (((\VGA_controller|Vcount\(1) & \data[0]~0_combout\)) # (!\VGA_controller|Vcount\(3)))) # (!\data[0]~1_combout\ & (!\VGA_controller|Vcount\(3) & ((\VGA_controller|Vcount\(1)) # (\data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~1_combout\,
	datab => \VGA_controller|Vcount\(3),
	datac => \VGA_controller|Vcount\(1),
	datad => \data[0]~0_combout\,
	combout => \data[0]~2_combout\);

-- Location: LCCOMB_X36_Y22_N0
\setcolor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~0_combout\ = (!\VGA_controller|Vcount\(5) & (!\VGA_controller|Vcount\(9) & \VGA_controller|VideoOn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(5),
	datac => \VGA_controller|Vcount\(9),
	datad => \VGA_controller|VideoOn~q\,
	combout => \setcolor~0_combout\);

-- Location: LCCOMB_X36_Y22_N10
\data[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~3_combout\ = ((\data[0]~2_combout\ & ((!\VGA_controller|Vcount\(3)) # (!\VGA_controller|Vcount\(6)))) # (!\data[0]~2_combout\ & ((\VGA_controller|Vcount\(6)) # (\VGA_controller|Vcount\(3))))) # (!\setcolor~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~2_combout\,
	datab => \VGA_controller|Vcount\(6),
	datac => \VGA_controller|Vcount\(3),
	datad => \setcolor~0_combout\,
	combout => \data[0]~3_combout\);

-- Location: LCCOMB_X36_Y22_N4
\data[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~4_combout\ = (\data[0]~3_combout\ & (((!\setcolor~3_combout\) # (!\setcolor~1_combout\)) # (!\VGA_controller|VideoOn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|VideoOn~q\,
	datab => \setcolor~1_combout\,
	datac => \setcolor~3_combout\,
	datad => \data[0]~3_combout\,
	combout => \data[0]~4_combout\);

-- Location: LCCOMB_X35_Y22_N10
\VGA_controller|red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~1_combout\ = (\VGA_controller|video_on~combout\ & (((\setcolor~7_combout\) # (!\data[0]~4_combout\)) # (!\VGA_controller|red~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|red~0_combout\,
	datab => \setcolor~7_combout\,
	datac => \VGA_controller|video_on~combout\,
	datad => \data[0]~4_combout\,
	combout => \VGA_controller|red~1_combout\);

-- Location: LCCOMB_X35_Y22_N0
\VGA_controller|red[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red[0]~feeder_combout\ = \VGA_controller|red~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~1_combout\,
	combout => \VGA_controller|red[0]~feeder_combout\);

-- Location: FF_X35_Y22_N1
\VGA_controller|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red[0]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(0));

-- Location: LCCOMB_X35_Y22_N26
\VGA_controller|red[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red[1]~feeder_combout\ = \VGA_controller|red~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~1_combout\,
	combout => \VGA_controller|red[1]~feeder_combout\);

-- Location: FF_X35_Y22_N27
\VGA_controller|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red[1]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(1));

-- Location: LCCOMB_X36_Y22_N20
\VGA_controller|red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~2_combout\ = (\data[0]~10_combout\ & ((\setcolor~9_combout\) # ((\setcolor~11_combout\) # (\setcolor~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setcolor~9_combout\,
	datab => \setcolor~11_combout\,
	datac => \data[0]~10_combout\,
	datad => \setcolor~10_combout\,
	combout => \VGA_controller|red~2_combout\);

-- Location: LCCOMB_X35_Y22_N14
\VGA_controller|red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~3_combout\ = (\VGA_controller|video_on~combout\ & (((\VGA_controller|red~2_combout\ & !\setcolor~7_combout\)) # (!\data[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|red~2_combout\,
	datab => \setcolor~7_combout\,
	datac => \VGA_controller|video_on~combout\,
	datad => \data[0]~4_combout\,
	combout => \VGA_controller|red~3_combout\);

-- Location: FF_X35_Y22_N29
\VGA_controller|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(2));

-- Location: FF_X35_Y22_N31
\VGA_controller|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(3));

-- Location: LCCOMB_X35_Y22_N24
\VGA_controller|green[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|green[0]~feeder_combout\ = \VGA_controller|red~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~1_combout\,
	combout => \VGA_controller|green[0]~feeder_combout\);

-- Location: FF_X35_Y22_N25
\VGA_controller|green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|green[0]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(0));

-- Location: LCCOMB_X35_Y22_N18
\VGA_controller|green[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|green[1]~feeder_combout\ = \VGA_controller|red~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~1_combout\,
	combout => \VGA_controller|green[1]~feeder_combout\);

-- Location: FF_X35_Y22_N19
\VGA_controller|green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|green[1]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(1));

-- Location: FF_X35_Y22_N5
\VGA_controller|green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(2));

-- Location: FF_X35_Y22_N7
\VGA_controller|green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(3));

-- Location: LCCOMB_X35_Y22_N16
\VGA_controller|blue[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|blue[0]~feeder_combout\ = \VGA_controller|red~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~1_combout\,
	combout => \VGA_controller|blue[0]~feeder_combout\);

-- Location: FF_X35_Y22_N17
\VGA_controller|blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|blue[0]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(0));

-- Location: FF_X35_Y22_N11
\VGA_controller|blue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(1));

-- Location: FF_X35_Y22_N21
\VGA_controller|blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(2));

-- Location: FF_X35_Y22_N15
\VGA_controller|blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(3));

-- Location: LCCOMB_X33_Y22_N2
\VGA_controller|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~1_combout\ = (\VGA_controller|h_count\(3)) # ((\VGA_controller|h_count\(0) & (!\VGA_controller|h_count\(6) & \VGA_controller|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(0),
	datab => \VGA_controller|h_count\(6),
	datac => \VGA_controller|h_count\(1),
	datad => \VGA_controller|h_count\(3),
	combout => \VGA_controller|process_0~1_combout\);

-- Location: LCCOMB_X33_Y22_N4
\VGA_controller|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~2_combout\ = (\VGA_controller|h_count\(4) & ((\VGA_controller|process_0~1_combout\) # (\VGA_controller|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|process_0~1_combout\,
	datac => \VGA_controller|h_count\(4),
	datad => \VGA_controller|h_count\(2),
	combout => \VGA_controller|process_0~2_combout\);

-- Location: LCCOMB_X36_Y21_N6
\VGA_controller|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~0_combout\ = (!\VGA_controller|h_count\(8) & (\VGA_controller|h_count\(7) & \VGA_controller|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(8),
	datab => \VGA_controller|h_count\(7),
	datad => \VGA_controller|h_count\(9),
	combout => \VGA_controller|process_0~0_combout\);

-- Location: LCCOMB_X36_Y21_N0
\VGA_controller|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~3_combout\ = ((\VGA_controller|h_count\(6) & (\VGA_controller|process_0~2_combout\ & \VGA_controller|h_count\(5))) # (!\VGA_controller|h_count\(6) & (!\VGA_controller|process_0~2_combout\ & !\VGA_controller|h_count\(5)))) # 
-- (!\VGA_controller|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(6),
	datab => \VGA_controller|process_0~2_combout\,
	datac => \VGA_controller|h_count\(5),
	datad => \VGA_controller|process_0~0_combout\,
	combout => \VGA_controller|process_0~3_combout\);

-- Location: FF_X36_Y21_N1
\VGA_controller|Hsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync_aux~q\);

-- Location: LCCOMB_X36_Y21_N8
\VGA_controller|Hsync~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Hsync~feeder_combout\ = \VGA_controller|Hsync_aux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|Hsync_aux~q\,
	combout => \VGA_controller|Hsync~feeder_combout\);

-- Location: FF_X36_Y21_N9
\VGA_controller|Hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Hsync~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync~q\);

-- Location: LCCOMB_X38_Y23_N30
\VGA_controller|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~4_combout\ = ((\VGA_controller|v_count\(1) $ (!\VGA_controller|v_count\(0))) # (!\VGA_controller|v_count\(3))) # (!\VGA_controller|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(2),
	datab => \VGA_controller|v_count\(1),
	datac => \VGA_controller|v_count\(3),
	datad => \VGA_controller|v_count\(0),
	combout => \VGA_controller|process_0~4_combout\);

-- Location: LCCOMB_X38_Y23_N10
\VGA_controller|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~5_combout\ = (\VGA_controller|process_0~4_combout\) # ((\VGA_controller|v_count\(4)) # ((\VGA_controller|v_count\(9)) # (!\VGA_controller|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~4_combout\,
	datab => \VGA_controller|v_count\(4),
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|LessThan7~0_combout\,
	combout => \VGA_controller|process_0~5_combout\);

-- Location: FF_X38_Y23_N11
\VGA_controller|Vsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~5_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync_aux~q\);

-- Location: LCCOMB_X38_Y23_N8
\VGA_controller|Vsync~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Vsync~feeder_combout\ = \VGA_controller|Vsync_aux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|Vsync_aux~q\,
	combout => \VGA_controller|Vsync~feeder_combout\);

-- Location: FF_X38_Y23_N9
\VGA_controller|Vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Vsync~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync~q\);

-- Location: LCCOMB_X36_Y21_N4
\count[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~27_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~27_combout\);

-- Location: FF_X36_Y21_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[0]~27_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X36_Y21_N10
\count[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~9_combout\ = (count(1) & (count(0) $ (VCC))) # (!count(1) & (count(0) & VCC))
-- \count[1]~10\ = CARRY((count(1) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datad => VCC,
	combout => \count[1]~9_combout\,
	cout => \count[1]~10\);

-- Location: FF_X36_Y21_N11
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[1]~9_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X36_Y21_N12
\count[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~11_combout\ = (count(2) & (!\count[1]~10\)) # (!count(2) & ((\count[1]~10\) # (GND)))
-- \count[2]~12\ = CARRY((!\count[1]~10\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~10\,
	combout => \count[2]~11_combout\,
	cout => \count[2]~12\);

-- Location: FF_X36_Y21_N13
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[2]~11_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X36_Y21_N14
\count[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~13_combout\ = (count(3) & (\count[2]~12\ $ (GND))) # (!count(3) & (!\count[2]~12\ & VCC))
-- \count[3]~14\ = CARRY((count(3) & !\count[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~12\,
	combout => \count[3]~13_combout\,
	cout => \count[3]~14\);

-- Location: FF_X36_Y21_N15
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[3]~13_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X36_Y21_N16
\count[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~15_combout\ = (count(4) & (!\count[3]~14\)) # (!count(4) & ((\count[3]~14\) # (GND)))
-- \count[4]~16\ = CARRY((!\count[3]~14\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~14\,
	combout => \count[4]~15_combout\,
	cout => \count[4]~16\);

-- Location: FF_X36_Y21_N17
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[4]~15_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X36_Y21_N18
\count[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~17_combout\ = (count(5) & (\count[4]~16\ $ (GND))) # (!count(5) & (!\count[4]~16\ & VCC))
-- \count[5]~18\ = CARRY((count(5) & !\count[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~16\,
	combout => \count[5]~17_combout\,
	cout => \count[5]~18\);

-- Location: FF_X36_Y21_N19
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[5]~17_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X36_Y21_N20
\count[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~19_combout\ = (count(6) & (!\count[5]~18\)) # (!count(6) & ((\count[5]~18\) # (GND)))
-- \count[6]~20\ = CARRY((!\count[5]~18\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~18\,
	combout => \count[6]~19_combout\,
	cout => \count[6]~20\);

-- Location: FF_X36_Y21_N21
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[6]~19_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X36_Y21_N22
\count[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~21_combout\ = (count(7) & (\count[6]~20\ $ (GND))) # (!count(7) & (!\count[6]~20\ & VCC))
-- \count[7]~22\ = CARRY((count(7) & !\count[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \count[6]~20\,
	combout => \count[7]~21_combout\,
	cout => \count[7]~22\);

-- Location: FF_X36_Y21_N23
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[7]~21_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X36_Y21_N24
\count[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~23_combout\ = (count(8) & (!\count[7]~22\)) # (!count(8) & ((\count[7]~22\) # (GND)))
-- \count[8]~24\ = CARRY((!\count[7]~22\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~22\,
	combout => \count[8]~23_combout\,
	cout => \count[8]~24\);

-- Location: FF_X36_Y21_N25
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[8]~23_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X36_Y21_N26
\count[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~25_combout\ = count(9) $ (!\count[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	cin => \count[8]~24\,
	combout => \count[9]~25_combout\);

-- Location: FF_X36_Y21_N27
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \count[9]~25_combout\,
	clrn => \VGA_controller|Hsync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X36_Y21_N2
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ((!count(4) & ((!count(3)) # (!count(2))))) # (!count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(4),
	datac => count(3),
	datad => count(5),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X36_Y21_N28
\cyclecount~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cyclecount~0_combout\ = (\LessThan6~0_combout\ & !count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan6~0_combout\,
	datad => count(6),
	combout => \cyclecount~0_combout\);

-- Location: LCCOMB_X36_Y21_N30
\cyclecount~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cyclecount~1_combout\ = (count(9) & ((count(8)) # ((!\cyclecount~0_combout\ & count(7))))) # (!count(9) & (\cyclecount~0_combout\ & (!count(7) & !count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => \cyclecount~0_combout\,
	datac => count(7),
	datad => count(8),
	combout => \cyclecount~1_combout\);
END structure;


