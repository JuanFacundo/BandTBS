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

-- DATE "05/31/2024 15:16:18"

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
	SW : IN std_logic_vector(5 DOWNTO 0);
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic
	);
END VGATEST2;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_controller|Add0~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \VGA_controller|Add0~1\ : std_logic;
SIGNAL \VGA_controller|Add0~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~3\ : std_logic;
SIGNAL \VGA_controller|Add0~4_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~5\ : std_logic;
SIGNAL \VGA_controller|Add0~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~7\ : std_logic;
SIGNAL \VGA_controller|Add0~8_combout\ : std_logic;
SIGNAL \data[0]~9_combout\ : std_logic;
SIGNAL \data[0]~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~9\ : std_logic;
SIGNAL \VGA_controller|Add0~10_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~11\ : std_logic;
SIGNAL \VGA_controller|Add0~12_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~13\ : std_logic;
SIGNAL \VGA_controller|Add0~14_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~15\ : std_logic;
SIGNAL \VGA_controller|Add0~16_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~1_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~17\ : std_logic;
SIGNAL \VGA_controller|Add0~18_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~0_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~2_combout\ : std_logic;
SIGNAL \data[0]~3_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~0_combout\ : std_logic;
SIGNAL \VGA_controller|video_on_h~q\ : std_logic;
SIGNAL \VGA_controller|process_0~7_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~8_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~9_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~10_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~11_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~12_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~0_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~20_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~0_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~1_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~1\ : std_logic;
SIGNAL \VGA_controller|Add1~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~21_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~3\ : std_logic;
SIGNAL \VGA_controller|Add1~4_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~22_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~5\ : std_logic;
SIGNAL \VGA_controller|Add1~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~23_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~7\ : std_logic;
SIGNAL \VGA_controller|Add1~8_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[4]~8_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~9\ : std_logic;
SIGNAL \VGA_controller|Add1~10_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[5]~4_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~11\ : std_logic;
SIGNAL \VGA_controller|Add1~12_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[6]~5_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~13\ : std_logic;
SIGNAL \VGA_controller|Add1~14_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[7]~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~15\ : std_logic;
SIGNAL \VGA_controller|Add1~16_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[8]~7_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~17\ : std_logic;
SIGNAL \VGA_controller|Add1~18_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~3_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \VGA_controller|video_on_v~q\ : std_logic;
SIGNAL \VGA_controller|video_on~combout\ : std_logic;
SIGNAL \VGA_controller|VideoOn~q\ : std_logic;
SIGNAL \data[0]~32_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \setcolor~1_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \setcolor~0_combout\ : std_logic;
SIGNAL \data[0]~26_combout\ : std_logic;
SIGNAL \data[0]~27_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \VGA_controller|red~0_combout\ : std_logic;
SIGNAL \VGA_controller|red[0]~feeder_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \data[1]~23_combout\ : std_logic;
SIGNAL \data[1]~24_combout\ : std_logic;
SIGNAL \data[1]~28_combout\ : std_logic;
SIGNAL \data[1]~29_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \VGA_controller|red~1_combout\ : std_logic;
SIGNAL \VGA_controller|red[1]~feeder_combout\ : std_logic;
SIGNAL \data[2]~25_combout\ : std_logic;
SIGNAL \data[2]~30_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \VGA_controller|red~2_combout\ : std_logic;
SIGNAL \VGA_controller|red[2]~feeder_combout\ : std_logic;
SIGNAL \data[2]~31_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \VGA_controller|red~3_combout\ : std_logic;
SIGNAL \VGA_controller|green[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|green[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|green[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~2_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~3_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~1_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~4_combout\ : std_logic;
SIGNAL \VGA_controller|Hsync_aux~q\ : std_logic;
SIGNAL \VGA_controller|Hsync~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|Hsync~q\ : std_logic;
SIGNAL \VGA_controller|process_0~5_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~6_combout\ : std_logic;
SIGNAL \VGA_controller|Vsync_aux~q\ : std_logic;
SIGNAL \VGA_controller|Vsync~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|Vsync~q\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_controller|green\ : std_logic_vector(3 DOWNTO 0);
SIGNAL data : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|red\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|blue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|Hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
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
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;

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
	pll_compensation_delay => 3403,
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
	areset => \SW[1]~input_o\,
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

-- Location: LCCOMB_X21_Y13_N8
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

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X21_Y13_N9
\VGA_controller|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~0_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(0));

-- Location: LCCOMB_X21_Y13_N10
\VGA_controller|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~2_combout\ = (\VGA_controller|h_count\(1) & (!\VGA_controller|Add0~1\)) # (!\VGA_controller|h_count\(1) & ((\VGA_controller|Add0~1\) # (GND)))
-- \VGA_controller|Add0~3\ = CARRY((!\VGA_controller|Add0~1\) # (!\VGA_controller|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(1),
	datad => VCC,
	cin => \VGA_controller|Add0~1\,
	combout => \VGA_controller|Add0~2_combout\,
	cout => \VGA_controller|Add0~3\);

-- Location: FF_X21_Y13_N11
\VGA_controller|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~2_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(1));

-- Location: LCCOMB_X21_Y13_N12
\VGA_controller|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~4_combout\ = (\VGA_controller|h_count\(2) & (\VGA_controller|Add0~3\ $ (GND))) # (!\VGA_controller|h_count\(2) & (!\VGA_controller|Add0~3\ & VCC))
-- \VGA_controller|Add0~5\ = CARRY((\VGA_controller|h_count\(2) & !\VGA_controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(2),
	datad => VCC,
	cin => \VGA_controller|Add0~3\,
	combout => \VGA_controller|Add0~4_combout\,
	cout => \VGA_controller|Add0~5\);

-- Location: FF_X21_Y13_N13
\VGA_controller|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~4_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(2));

-- Location: LCCOMB_X21_Y13_N14
\VGA_controller|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~6_combout\ = (\VGA_controller|h_count\(3) & (!\VGA_controller|Add0~5\)) # (!\VGA_controller|h_count\(3) & ((\VGA_controller|Add0~5\) # (GND)))
-- \VGA_controller|Add0~7\ = CARRY((!\VGA_controller|Add0~5\) # (!\VGA_controller|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(3),
	datad => VCC,
	cin => \VGA_controller|Add0~5\,
	combout => \VGA_controller|Add0~6_combout\,
	cout => \VGA_controller|Add0~7\);

-- Location: FF_X21_Y13_N15
\VGA_controller|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~6_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(3));

-- Location: LCCOMB_X21_Y13_N16
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

-- Location: FF_X21_Y13_N17
\VGA_controller|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~8_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(4));

-- Location: FF_X24_Y19_N13
\VGA_controller|Hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(4),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(4));

-- Location: FF_X24_Y19_N29
\VGA_controller|Hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(1),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(1));

-- Location: FF_X24_Y19_N3
\VGA_controller|Hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(0),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(0));

-- Location: LCCOMB_X24_Y19_N28
\data[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~9_combout\ = (!\VGA_controller|Hcount\(1) & !\VGA_controller|Hcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|Hcount\(1),
	datad => \VGA_controller|Hcount\(0),
	combout => \data[0]~9_combout\);

-- Location: FF_X24_Y19_N9
\VGA_controller|Hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(2),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(2));

-- Location: FF_X24_Y19_N25
\VGA_controller|Hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(3),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(3));

-- Location: LCCOMB_X24_Y19_N8
\data[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~6_combout\ = (!\VGA_controller|Hcount\(4) & (\data[0]~9_combout\ & (!\VGA_controller|Hcount\(2) & !\VGA_controller|Hcount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(4),
	datab => \data[0]~9_combout\,
	datac => \VGA_controller|Hcount\(2),
	datad => \VGA_controller|Hcount\(3),
	combout => \data[0]~6_combout\);

-- Location: LCCOMB_X21_Y13_N18
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

-- Location: LCCOMB_X21_Y13_N4
\VGA_controller|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~0_combout\ = (\VGA_controller|h_count\(1) & (\VGA_controller|h_count\(3) & (\VGA_controller|h_count\(0) & \VGA_controller|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(1),
	datab => \VGA_controller|h_count\(3),
	datac => \VGA_controller|h_count\(0),
	datad => \VGA_controller|h_count\(4),
	combout => \VGA_controller|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
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

-- Location: FF_X21_Y13_N21
\VGA_controller|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~12_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(6));

-- Location: LCCOMB_X21_Y13_N22
\VGA_controller|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~14_combout\ = (\VGA_controller|h_count\(7) & (!\VGA_controller|Add0~13\)) # (!\VGA_controller|h_count\(7) & ((\VGA_controller|Add0~13\) # (GND)))
-- \VGA_controller|Add0~15\ = CARRY((!\VGA_controller|Add0~13\) # (!\VGA_controller|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(7),
	datad => VCC,
	cin => \VGA_controller|Add0~13\,
	combout => \VGA_controller|Add0~14_combout\,
	cout => \VGA_controller|Add0~15\);

-- Location: FF_X21_Y13_N23
\VGA_controller|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~14_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(7));

-- Location: LCCOMB_X21_Y13_N24
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

-- Location: LCCOMB_X21_Y13_N2
\VGA_controller|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|h_count~1_combout\ = (\VGA_controller|Add0~16_combout\ & !\VGA_controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Add0~16_combout\,
	datac => \VGA_controller|Equal0~2_combout\,
	combout => \VGA_controller|h_count~1_combout\);

-- Location: FF_X21_Y13_N3
\VGA_controller|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~1_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(8));

-- Location: LCCOMB_X21_Y13_N26
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

-- Location: LCCOMB_X21_Y13_N0
\VGA_controller|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|h_count~0_combout\ = (!\VGA_controller|Equal0~2_combout\ & \VGA_controller|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Equal0~2_combout\,
	datac => \VGA_controller|Add0~18_combout\,
	combout => \VGA_controller|h_count~0_combout\);

-- Location: FF_X21_Y13_N1
\VGA_controller|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~0_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(9));

-- Location: LCCOMB_X24_Y19_N18
\VGA_controller|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~1_combout\ = (!\VGA_controller|h_count\(7) & (!\VGA_controller|h_count\(5) & (\VGA_controller|h_count\(2) & \VGA_controller|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(7),
	datab => \VGA_controller|h_count\(5),
	datac => \VGA_controller|h_count\(2),
	datad => \VGA_controller|h_count\(8),
	combout => \VGA_controller|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y17_N4
\VGA_controller|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~2_combout\ = (\VGA_controller|Equal0~0_combout\ & (!\VGA_controller|h_count\(6) & (\VGA_controller|h_count\(9) & \VGA_controller|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Equal0~0_combout\,
	datab => \VGA_controller|h_count\(6),
	datac => \VGA_controller|h_count\(9),
	datad => \VGA_controller|Equal0~1_combout\,
	combout => \VGA_controller|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y13_N28
\VGA_controller|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|h_count~2_combout\ = (\VGA_controller|Add0~10_combout\ & !\VGA_controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Add0~10_combout\,
	datac => \VGA_controller|Equal0~2_combout\,
	combout => \VGA_controller|h_count~2_combout\);

-- Location: FF_X21_Y13_N29
\VGA_controller|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~2_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(5));

-- Location: FF_X24_Y19_N15
\VGA_controller|Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(5),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(5));

-- Location: FF_X24_Y19_N23
\VGA_controller|Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(7),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(7));

-- Location: FF_X24_Y19_N5
\VGA_controller|Hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(6),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(6));

-- Location: LCCOMB_X24_Y19_N22
\data[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~3_combout\ = (\data[0]~6_combout\) # (((!\VGA_controller|Hcount\(6)) # (!\VGA_controller|Hcount\(7))) # (!\VGA_controller|Hcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~6_combout\,
	datab => \VGA_controller|Hcount\(5),
	datac => \VGA_controller|Hcount\(7),
	datad => \VGA_controller|Hcount\(6),
	combout => \data[0]~3_combout\);

-- Location: FF_X24_Y19_N17
\VGA_controller|Hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(8),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(8));

-- Location: FF_X24_Y19_N27
\VGA_controller|Hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(9),
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(9));

-- Location: LCCOMB_X28_Y15_N8
\VGA_controller|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~0_combout\ = ((!\VGA_controller|h_count\(8) & !\VGA_controller|h_count\(7))) # (!\VGA_controller|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(8),
	datab => \VGA_controller|h_count\(7),
	datad => \VGA_controller|h_count\(9),
	combout => \VGA_controller|process_0~0_combout\);

-- Location: FF_X28_Y15_N9
\VGA_controller|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~0_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_h~q\);

-- Location: LCCOMB_X27_Y22_N4
\VGA_controller|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~7_combout\ = (!\VGA_controller|v_count\(4) & (!\VGA_controller|v_count\(5) & ((!\VGA_controller|v_count\(2)) # (!\VGA_controller|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(4),
	datab => \VGA_controller|v_count\(3),
	datac => \VGA_controller|v_count\(2),
	datad => \VGA_controller|v_count\(5),
	combout => \VGA_controller|process_0~7_combout\);

-- Location: LCCOMB_X27_Y22_N30
\VGA_controller|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~8_combout\ = (!\VGA_controller|v_count\(8) & (\VGA_controller|process_0~7_combout\ & (!\VGA_controller|v_count\(6) & !\VGA_controller|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(8),
	datab => \VGA_controller|process_0~7_combout\,
	datac => \VGA_controller|v_count\(6),
	datad => \VGA_controller|v_count\(7),
	combout => \VGA_controller|process_0~8_combout\);

-- Location: LCCOMB_X21_Y13_N30
\VGA_controller|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~9_combout\ = ((!\VGA_controller|h_count\(2) & ((!\VGA_controller|h_count\(1)) # (!\VGA_controller|h_count\(0))))) # (!\VGA_controller|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(0),
	datab => \VGA_controller|h_count\(2),
	datac => \VGA_controller|h_count\(3),
	datad => \VGA_controller|h_count\(1),
	combout => \VGA_controller|process_0~9_combout\);

-- Location: LCCOMB_X24_Y19_N20
\VGA_controller|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~10_combout\ = (\VGA_controller|h_count\(5) & \VGA_controller|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(5),
	datad => \VGA_controller|h_count\(4),
	combout => \VGA_controller|process_0~10_combout\);

-- Location: LCCOMB_X28_Y17_N14
\VGA_controller|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~11_combout\ = (!\VGA_controller|h_count\(6) & (!\VGA_controller|h_count\(8) & ((\VGA_controller|process_0~9_combout\) # (!\VGA_controller|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~9_combout\,
	datab => \VGA_controller|h_count\(6),
	datac => \VGA_controller|h_count\(8),
	datad => \VGA_controller|process_0~10_combout\,
	combout => \VGA_controller|process_0~11_combout\);

-- Location: LCCOMB_X28_Y17_N24
\VGA_controller|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~12_combout\ = (\VGA_controller|process_0~8_combout\) # ((\VGA_controller|process_0~11_combout\) # ((\VGA_controller|process_0~0_combout\) # (!\VGA_controller|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~8_combout\,
	datab => \VGA_controller|process_0~11_combout\,
	datac => \VGA_controller|process_0~0_combout\,
	datad => \VGA_controller|v_count\(9),
	combout => \VGA_controller|process_0~12_combout\);

-- Location: LCCOMB_X27_Y22_N8
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

-- Location: LCCOMB_X28_Y17_N20
\VGA_controller|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~20_combout\ = (\VGA_controller|Add1~0_combout\ & \VGA_controller|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~0_combout\,
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|Add1~20_combout\);

-- Location: LCCOMB_X24_Y19_N6
\VGA_controller|v_count[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~0_combout\ = (\VGA_controller|h_count\(7) & (\VGA_controller|h_count\(5) & (!\VGA_controller|h_count\(2) & !\VGA_controller|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(7),
	datab => \VGA_controller|h_count\(5),
	datac => \VGA_controller|h_count\(2),
	datad => \VGA_controller|h_count\(8),
	combout => \VGA_controller|v_count[9]~0_combout\);

-- Location: LCCOMB_X28_Y17_N18
\VGA_controller|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~1_combout\ = (\VGA_controller|Equal0~0_combout\ & (!\VGA_controller|h_count\(6) & (\VGA_controller|h_count\(9) & \VGA_controller|v_count[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Equal0~0_combout\,
	datab => \VGA_controller|h_count\(6),
	datac => \VGA_controller|h_count\(9),
	datad => \VGA_controller|v_count[9]~0_combout\,
	combout => \VGA_controller|v_count[9]~1_combout\);

-- Location: LCCOMB_X28_Y17_N28
\VGA_controller|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~2_combout\ = (\SW[3]~input_o\ & ((\VGA_controller|v_count[9]~1_combout\) # (!\VGA_controller|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \VGA_controller|v_count[9]~1_combout\,
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|v_count[9]~2_combout\);

-- Location: FF_X28_Y17_N21
\VGA_controller|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~20_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(0));

-- Location: LCCOMB_X27_Y22_N10
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

-- Location: LCCOMB_X28_Y17_N30
\VGA_controller|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~21_combout\ = (\VGA_controller|Add1~2_combout\ & \VGA_controller|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|Add1~2_combout\,
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|Add1~21_combout\);

-- Location: FF_X28_Y17_N31
\VGA_controller|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~21_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(1));

-- Location: LCCOMB_X27_Y22_N12
\VGA_controller|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~4_combout\ = (\VGA_controller|v_count\(2) & (\VGA_controller|Add1~3\ $ (GND))) # (!\VGA_controller|v_count\(2) & (!\VGA_controller|Add1~3\ & VCC))
-- \VGA_controller|Add1~5\ = CARRY((\VGA_controller|v_count\(2) & !\VGA_controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(2),
	datad => VCC,
	cin => \VGA_controller|Add1~3\,
	combout => \VGA_controller|Add1~4_combout\,
	cout => \VGA_controller|Add1~5\);

-- Location: LCCOMB_X27_Y22_N28
\VGA_controller|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~22_combout\ = (\VGA_controller|process_0~12_combout\ & \VGA_controller|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|process_0~12_combout\,
	datad => \VGA_controller|Add1~4_combout\,
	combout => \VGA_controller|Add1~22_combout\);

-- Location: FF_X27_Y22_N29
\VGA_controller|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~22_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(2));

-- Location: LCCOMB_X27_Y22_N14
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

-- Location: LCCOMB_X28_Y17_N0
\VGA_controller|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~23_combout\ = (\VGA_controller|Add1~6_combout\ & \VGA_controller|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|Add1~6_combout\,
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|Add1~23_combout\);

-- Location: FF_X28_Y17_N1
\VGA_controller|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~23_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(3));

-- Location: LCCOMB_X27_Y22_N16
\VGA_controller|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~8_combout\ = (\VGA_controller|v_count\(4) & (\VGA_controller|Add1~7\ $ (GND))) # (!\VGA_controller|v_count\(4) & (!\VGA_controller|Add1~7\ & VCC))
-- \VGA_controller|Add1~9\ = CARRY((\VGA_controller|v_count\(4) & !\VGA_controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(4),
	datad => VCC,
	cin => \VGA_controller|Add1~7\,
	combout => \VGA_controller|Add1~8_combout\,
	cout => \VGA_controller|Add1~9\);

-- Location: LCCOMB_X28_Y17_N10
\VGA_controller|v_count[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[4]~8_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~8_combout\ & ((\VGA_controller|process_0~12_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & (((\VGA_controller|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~8_combout\,
	datab => \VGA_controller|v_count[9]~2_combout\,
	datac => \VGA_controller|v_count\(4),
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|v_count[4]~8_combout\);

-- Location: FF_X28_Y17_N11
\VGA_controller|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[4]~8_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(4));

-- Location: LCCOMB_X27_Y22_N18
\VGA_controller|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~10_combout\ = (\VGA_controller|v_count\(5) & (!\VGA_controller|Add1~9\)) # (!\VGA_controller|v_count\(5) & ((\VGA_controller|Add1~9\) # (GND)))
-- \VGA_controller|Add1~11\ = CARRY((!\VGA_controller|Add1~9\) # (!\VGA_controller|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(5),
	datad => VCC,
	cin => \VGA_controller|Add1~9\,
	combout => \VGA_controller|Add1~10_combout\,
	cout => \VGA_controller|Add1~11\);

-- Location: LCCOMB_X28_Y17_N2
\VGA_controller|v_count[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[5]~4_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~10_combout\ & ((\VGA_controller|process_0~12_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & (((\VGA_controller|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~10_combout\,
	datab => \VGA_controller|v_count[9]~2_combout\,
	datac => \VGA_controller|v_count\(5),
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|v_count[5]~4_combout\);

-- Location: FF_X28_Y17_N3
\VGA_controller|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[5]~4_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(5));

-- Location: LCCOMB_X27_Y22_N20
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

-- Location: LCCOMB_X28_Y17_N12
\VGA_controller|v_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[6]~5_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~12_combout\ & ((\VGA_controller|process_0~12_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & (((\VGA_controller|v_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~12_combout\,
	datab => \VGA_controller|v_count[9]~2_combout\,
	datac => \VGA_controller|v_count\(6),
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|v_count[6]~5_combout\);

-- Location: FF_X28_Y17_N13
\VGA_controller|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[6]~5_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(6));

-- Location: LCCOMB_X27_Y22_N22
\VGA_controller|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~14_combout\ = (\VGA_controller|v_count\(7) & (!\VGA_controller|Add1~13\)) # (!\VGA_controller|v_count\(7) & ((\VGA_controller|Add1~13\) # (GND)))
-- \VGA_controller|Add1~15\ = CARRY((!\VGA_controller|Add1~13\) # (!\VGA_controller|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(7),
	datad => VCC,
	cin => \VGA_controller|Add1~13\,
	combout => \VGA_controller|Add1~14_combout\,
	cout => \VGA_controller|Add1~15\);

-- Location: LCCOMB_X28_Y17_N6
\VGA_controller|v_count[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[7]~6_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~14_combout\ & ((\VGA_controller|process_0~12_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & (((\VGA_controller|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~14_combout\,
	datab => \VGA_controller|v_count[9]~2_combout\,
	datac => \VGA_controller|v_count\(7),
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|v_count[7]~6_combout\);

-- Location: FF_X28_Y17_N7
\VGA_controller|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[7]~6_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(7));

-- Location: LCCOMB_X27_Y22_N24
\VGA_controller|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~16_combout\ = (\VGA_controller|v_count\(8) & (\VGA_controller|Add1~15\ $ (GND))) # (!\VGA_controller|v_count\(8) & (!\VGA_controller|Add1~15\ & VCC))
-- \VGA_controller|Add1~17\ = CARRY((\VGA_controller|v_count\(8) & !\VGA_controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(8),
	datad => VCC,
	cin => \VGA_controller|Add1~15\,
	combout => \VGA_controller|Add1~16_combout\,
	cout => \VGA_controller|Add1~17\);

-- Location: LCCOMB_X28_Y17_N8
\VGA_controller|v_count[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[8]~7_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~16_combout\ & ((\VGA_controller|process_0~12_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & (((\VGA_controller|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~16_combout\,
	datab => \VGA_controller|v_count[9]~2_combout\,
	datac => \VGA_controller|v_count\(8),
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|v_count[8]~7_combout\);

-- Location: FF_X28_Y17_N9
\VGA_controller|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[8]~7_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(8));

-- Location: LCCOMB_X27_Y22_N26
\VGA_controller|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~18_combout\ = \VGA_controller|v_count\(9) $ (\VGA_controller|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(9),
	cin => \VGA_controller|Add1~17\,
	combout => \VGA_controller|Add1~18_combout\);

-- Location: LCCOMB_X28_Y17_N16
\VGA_controller|v_count[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~3_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~18_combout\ & ((\VGA_controller|process_0~12_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & (((\VGA_controller|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~18_combout\,
	datab => \VGA_controller|v_count[9]~2_combout\,
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|v_count[9]~3_combout\);

-- Location: FF_X28_Y17_N17
\VGA_controller|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[9]~3_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(9));

-- Location: LCCOMB_X27_Y22_N2
\VGA_controller|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan7~0_combout\ = (\VGA_controller|v_count\(5) & (\VGA_controller|v_count\(8) & (\VGA_controller|v_count\(6) & \VGA_controller|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(5),
	datab => \VGA_controller|v_count\(8),
	datac => \VGA_controller|v_count\(6),
	datad => \VGA_controller|v_count\(7),
	combout => \VGA_controller|LessThan7~0_combout\);

-- Location: LCCOMB_X28_Y15_N2
\VGA_controller|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan7~1_combout\ = (!\VGA_controller|v_count\(9) & !\VGA_controller|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(9),
	datac => \VGA_controller|LessThan7~0_combout\,
	combout => \VGA_controller|LessThan7~1_combout\);

-- Location: FF_X28_Y15_N3
\VGA_controller|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|LessThan7~1_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_v~q\);

-- Location: LCCOMB_X28_Y15_N4
\VGA_controller|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|video_on~combout\ = (\VGA_controller|video_on_h~q\ & \VGA_controller|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|video_on_h~q\,
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|video_on~combout\);

-- Location: FF_X28_Y15_N5
\VGA_controller|VideoOn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|VideoOn~q\);

-- Location: LCCOMB_X24_Y19_N26
\data[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~32_combout\ = (!\VGA_controller|Hcount\(9) & (\VGA_controller|VideoOn~q\ & ((\data[0]~3_combout\) # (!\VGA_controller|Hcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~3_combout\,
	datab => \VGA_controller|Hcount\(8),
	datac => \VGA_controller|Hcount\(9),
	datad => \VGA_controller|VideoOn~q\,
	combout => \data[0]~32_combout\);

-- Location: LCCOMB_X24_Y19_N10
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\VGA_controller|Hcount\(3) & (\VGA_controller|Hcount\(5) & \VGA_controller|Hcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Hcount\(3),
	datac => \VGA_controller|Hcount\(5),
	datad => \VGA_controller|Hcount\(4),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X24_Y19_N16
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\VGA_controller|Hcount\(9)) # ((\VGA_controller|Hcount\(6)) # ((\VGA_controller|Hcount\(8)) # (\VGA_controller|Hcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(9),
	datab => \VGA_controller|Hcount\(6),
	datac => \VGA_controller|Hcount\(8),
	datad => \VGA_controller|Hcount\(7),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y19_N30
\LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\VGA_controller|Hcount\(2) & ((\VGA_controller|Hcount\(1)) # (\VGA_controller|Hcount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Hcount\(1),
	datac => \VGA_controller|Hcount\(2),
	datad => \VGA_controller|Hcount\(0),
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X30_Y16_N18
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\) # ((\LessThan3~0_combout\ & \LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y19_N2
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\VGA_controller|Hcount\(6) & ((\VGA_controller|Hcount\(2)) # ((\VGA_controller|Hcount\(0)) # (\VGA_controller|Hcount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(2),
	datab => \VGA_controller|Hcount\(6),
	datac => \VGA_controller|Hcount\(0),
	datad => \VGA_controller|Hcount\(1),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X30_Y16_N24
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (\VGA_controller|Hcount\(8)) # ((\VGA_controller|Hcount\(7)) # ((\LessThan3~0_combout\ & \LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \VGA_controller|Hcount\(8),
	datac => \VGA_controller|Hcount\(7),
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X30_Y16_N28
\setcolor~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~1_combout\ = (\VGA_controller|VideoOn~q\ & (\LessThan1~1_combout\ & (!\VGA_controller|Hcount\(9) & !\LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|VideoOn~q\,
	datab => \LessThan1~1_combout\,
	datac => \VGA_controller|Hcount\(9),
	datad => \LessThan3~2_combout\,
	combout => \setcolor~1_combout\);

-- Location: LCCOMB_X24_Y19_N12
\LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (\VGA_controller|Hcount\(7) & (\VGA_controller|Hcount\(5) & \VGA_controller|Hcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(7),
	datab => \VGA_controller|Hcount\(5),
	datac => \VGA_controller|Hcount\(4),
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X33_Y20_N16
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\VGA_controller|Hcount\(8) & !\VGA_controller|Hcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Hcount\(8),
	datad => \VGA_controller|Hcount\(9),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y16_N8
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\LessThan5~0_combout\ & (((!\LessThan3~0_combout\ & !\VGA_controller|Hcount\(6))) # (!\VGA_controller|Hcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \VGA_controller|Hcount\(6),
	datac => \VGA_controller|Hcount\(7),
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X30_Y16_N26
\LessThan5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (\LessThan5~1_combout\ & ((!\LessThan5~2_combout\) # (!\LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~3_combout\,
	datab => \LessThan5~2_combout\,
	datac => \LessThan5~1_combout\,
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X24_Y19_N0
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!\VGA_controller|Hcount\(3) & (!\VGA_controller|Hcount\(0) & (!\VGA_controller|Hcount\(2) & !\VGA_controller|Hcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(3),
	datab => \VGA_controller|Hcount\(0),
	datac => \VGA_controller|Hcount\(2),
	datad => \VGA_controller|Hcount\(1),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X30_Y16_N12
\LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ((\LessThan5~3_combout\ & (!\LessThan6~0_combout\ & \VGA_controller|Hcount\(6)))) # (!\LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~3_combout\,
	datab => \LessThan6~0_combout\,
	datac => \VGA_controller|Hcount\(6),
	datad => \LessThan5~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X30_Y16_N30
\setcolor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \setcolor~0_combout\ = (\VGA_controller|VideoOn~q\ & (!\LessThan5~4_combout\ & !\LessThan6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|VideoOn~q\,
	datac => \LessThan5~4_combout\,
	datad => \LessThan6~1_combout\,
	combout => \setcolor~0_combout\);

-- Location: LCCOMB_X30_Y16_N16
\data[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~26_combout\ = (\LessThan5~1_combout\ & (\VGA_controller|VideoOn~q\ & ((!\LessThan5~2_combout\) # (!\LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~3_combout\,
	datab => \LessThan5~2_combout\,
	datac => \LessThan5~1_combout\,
	datad => \VGA_controller|VideoOn~q\,
	combout => \data[0]~26_combout\);

-- Location: LCCOMB_X30_Y16_N10
\data[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[0]~27_combout\ = (\data[0]~26_combout\ & (((!\LessThan1~1_combout\)) # (!\setcolor~1_combout\))) # (!\data[0]~26_combout\ & (((!\setcolor~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setcolor~1_combout\,
	datab => \LessThan1~1_combout\,
	datac => \setcolor~0_combout\,
	datad => \data[0]~26_combout\,
	combout => \data[0]~27_combout\);

-- Location: LCCOMB_X36_Y22_N2
\comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\data[0]~32_combout\ & \data[0]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~32_combout\,
	datac => \data[0]~27_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X36_Y22_N16
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\data[0]~32_combout\ & !\data[0]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~32_combout\,
	datac => \data[0]~27_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X36_Y22_N28
\data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- data(0) = (!\comb~0_combout\ & ((\comb~1_combout\) # (data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => data(0),
	combout => data(0));

-- Location: LCCOMB_X28_Y15_N16
\VGA_controller|red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~0_combout\ = (data(0) & (\VGA_controller|video_on_h~q\ & \VGA_controller|video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data(0),
	datac => \VGA_controller|video_on_h~q\,
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|red~0_combout\);

-- Location: LCCOMB_X28_Y15_N24
\VGA_controller|red[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red[0]~feeder_combout\ = \VGA_controller|red~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~0_combout\,
	combout => \VGA_controller|red[0]~feeder_combout\);

-- Location: FF_X28_Y15_N25
\VGA_controller|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red[0]~feeder_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(0));

-- Location: LCCOMB_X24_Y19_N24
\LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\LessThan5~2_combout\ & (\VGA_controller|Hcount\(5) & (\VGA_controller|Hcount\(3) & \VGA_controller|Hcount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \VGA_controller|Hcount\(5),
	datac => \VGA_controller|Hcount\(3),
	datad => \VGA_controller|Hcount\(8),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\data[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[1]~23_combout\ = ((!\VGA_controller|Hcount\(7) & ((!\VGA_controller|Hcount\(4)) # (!\VGA_controller|Hcount\(5))))) # (!\VGA_controller|Hcount\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(7),
	datab => \VGA_controller|Hcount\(8),
	datac => \VGA_controller|Hcount\(5),
	datad => \VGA_controller|Hcount\(4),
	combout => \data[1]~23_combout\);

-- Location: LCCOMB_X24_Y19_N4
\data[1]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[1]~24_combout\ = (!\VGA_controller|Hcount\(9) & (\VGA_controller|VideoOn~q\ & ((!\VGA_controller|Hcount\(6)) # (!\VGA_controller|Hcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(9),
	datab => \VGA_controller|Hcount\(8),
	datac => \VGA_controller|Hcount\(6),
	datad => \VGA_controller|VideoOn~q\,
	combout => \data[1]~24_combout\);

-- Location: LCCOMB_X30_Y16_N4
\data[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[1]~28_combout\ = (!\LessThan8~0_combout\ & (\data[1]~23_combout\ & \data[1]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan8~0_combout\,
	datac => \data[1]~23_combout\,
	datad => \data[1]~24_combout\,
	combout => \data[1]~28_combout\);

-- Location: LCCOMB_X30_Y16_N6
\data[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[1]~29_combout\ = (\VGA_controller|VideoOn~q\ & (((\data[1]~28_combout\ & \LessThan3~2_combout\)) # (!\LessThan1~1_combout\))) # (!\VGA_controller|VideoOn~q\ & (((\data[1]~28_combout\ & \LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|VideoOn~q\,
	datab => \LessThan1~1_combout\,
	datac => \data[1]~28_combout\,
	datad => \LessThan3~2_combout\,
	combout => \data[1]~29_combout\);

-- Location: LCCOMB_X36_Y22_N12
\comb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\data[0]~32_combout\ & !\data[1]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~32_combout\,
	datad => \data[1]~29_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X36_Y22_N6
\comb~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\data[0]~32_combout\ & \data[1]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~32_combout\,
	datad => \data[1]~29_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X36_Y22_N14
\data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- data(1) = (!\comb~2_combout\ & ((data(1)) # (\comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datac => data(1),
	datad => \comb~3_combout\,
	combout => data(1));

-- Location: LCCOMB_X28_Y15_N18
\VGA_controller|red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~1_combout\ = (\VGA_controller|video_on_h~q\ & (data(1) & \VGA_controller|video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|video_on_h~q\,
	datac => data(1),
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|red~1_combout\);

-- Location: LCCOMB_X28_Y15_N10
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

-- Location: FF_X28_Y15_N11
\VGA_controller|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red[1]~feeder_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(1));

-- Location: LCCOMB_X30_Y16_N14
\data[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[2]~25_combout\ = (\data[1]~24_combout\ & (!\LessThan8~0_combout\ & (\data[1]~23_combout\ & \LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~24_combout\,
	datab => \LessThan8~0_combout\,
	datac => \data[1]~23_combout\,
	datad => \LessThan6~1_combout\,
	combout => \data[2]~25_combout\);

-- Location: LCCOMB_X30_Y16_N0
\data[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[2]~30_combout\ = (\data[0]~26_combout\ & (!\setcolor~1_combout\ & (\LessThan1~1_combout\))) # (!\data[0]~26_combout\ & (((\data[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setcolor~1_combout\,
	datab => \LessThan1~1_combout\,
	datac => \data[2]~25_combout\,
	datad => \data[0]~26_combout\,
	combout => \data[2]~30_combout\);

-- Location: LCCOMB_X36_Y22_N0
\comb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\data[0]~32_combout\ & !\data[2]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~32_combout\,
	datad => \data[2]~30_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X36_Y22_N26
\comb~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\data[0]~32_combout\ & \data[2]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~32_combout\,
	datad => \data[2]~30_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X36_Y22_N24
\data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- data(2) = (!\comb~4_combout\ & ((\comb~5_combout\) # (data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~4_combout\,
	datac => \comb~5_combout\,
	datad => data(2),
	combout => data(2));

-- Location: LCCOMB_X28_Y15_N20
\VGA_controller|red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~2_combout\ = (\VGA_controller|video_on_h~q\ & (data(2) & \VGA_controller|video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|video_on_h~q\,
	datac => data(2),
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|red~2_combout\);

-- Location: LCCOMB_X28_Y15_N28
\VGA_controller|red[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red[2]~feeder_combout\ = \VGA_controller|red~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~2_combout\,
	combout => \VGA_controller|red[2]~feeder_combout\);

-- Location: FF_X28_Y15_N29
\VGA_controller|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red[2]~feeder_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(2));

-- Location: LCCOMB_X30_Y16_N20
\data[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data[2]~31_combout\ = (\data[2]~25_combout\ & !\data[0]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data[2]~25_combout\,
	datad => \data[0]~26_combout\,
	combout => \data[2]~31_combout\);

-- Location: LCCOMB_X30_Y16_N2
\comb~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\data[0]~32_combout\ & ((\data[0]~26_combout\) # (!\data[2]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[2]~25_combout\,
	datac => \data[0]~32_combout\,
	datad => \data[0]~26_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X30_Y16_N22
\data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- data(3) = (!\comb~6_combout\ & ((\data[2]~31_combout\) # (data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[2]~31_combout\,
	datac => data(3),
	datad => \comb~6_combout\,
	combout => data(3));

-- Location: LCCOMB_X28_Y15_N22
\VGA_controller|red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~3_combout\ = (\VGA_controller|video_on_h~q\ & (data(3) & \VGA_controller|video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|video_on_h~q\,
	datac => data(3),
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|red~3_combout\);

-- Location: FF_X28_Y15_N31
\VGA_controller|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(3));

-- Location: LCCOMB_X28_Y15_N0
\VGA_controller|green[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|green[0]~feeder_combout\ = \VGA_controller|red~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~0_combout\,
	combout => \VGA_controller|green[0]~feeder_combout\);

-- Location: FF_X28_Y15_N1
\VGA_controller|green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|green[0]~feeder_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(0));

-- Location: LCCOMB_X28_Y15_N26
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

-- Location: FF_X28_Y15_N27
\VGA_controller|green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|green[1]~feeder_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(1));

-- Location: LCCOMB_X28_Y15_N12
\VGA_controller|green[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|green[2]~feeder_combout\ = \VGA_controller|red~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~2_combout\,
	combout => \VGA_controller|green[2]~feeder_combout\);

-- Location: FF_X28_Y15_N13
\VGA_controller|green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|green[2]~feeder_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(2));

-- Location: FF_X28_Y15_N15
\VGA_controller|green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	sload => VCC,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(3));

-- Location: FF_X28_Y15_N17
\VGA_controller|blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~0_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(0));

-- Location: FF_X28_Y15_N19
\VGA_controller|blue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~1_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(1));

-- Location: FF_X28_Y15_N21
\VGA_controller|blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~2_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(2));

-- Location: FF_X28_Y15_N23
\VGA_controller|blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(3));

-- Location: LCCOMB_X21_Y13_N6
\VGA_controller|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~2_combout\ = (\VGA_controller|h_count\(3)) # ((\VGA_controller|h_count\(0) & (!\VGA_controller|h_count\(5) & \VGA_controller|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(0),
	datab => \VGA_controller|h_count\(5),
	datac => \VGA_controller|h_count\(3),
	datad => \VGA_controller|h_count\(1),
	combout => \VGA_controller|process_0~2_combout\);

-- Location: LCCOMB_X21_Y9_N6
\VGA_controller|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~3_combout\ = (\VGA_controller|h_count\(4) & ((\VGA_controller|process_0~2_combout\) # (\VGA_controller|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~2_combout\,
	datab => \VGA_controller|h_count\(4),
	datac => \VGA_controller|h_count\(2),
	combout => \VGA_controller|process_0~3_combout\);

-- Location: LCCOMB_X28_Y17_N26
\VGA_controller|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~1_combout\ = (\VGA_controller|h_count\(7) & (\VGA_controller|h_count\(9) & !\VGA_controller|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(7),
	datab => \VGA_controller|h_count\(9),
	datac => \VGA_controller|h_count\(8),
	combout => \VGA_controller|process_0~1_combout\);

-- Location: LCCOMB_X21_Y9_N12
\VGA_controller|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~4_combout\ = ((\VGA_controller|process_0~3_combout\ & (\VGA_controller|h_count\(6) & \VGA_controller|h_count\(5))) # (!\VGA_controller|process_0~3_combout\ & (!\VGA_controller|h_count\(6) & !\VGA_controller|h_count\(5)))) # 
-- (!\VGA_controller|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~3_combout\,
	datab => \VGA_controller|h_count\(6),
	datac => \VGA_controller|h_count\(5),
	datad => \VGA_controller|process_0~1_combout\,
	combout => \VGA_controller|process_0~4_combout\);

-- Location: FF_X21_Y9_N13
\VGA_controller|Hsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~4_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync_aux~q\);

-- Location: LCCOMB_X21_Y9_N24
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

-- Location: FF_X21_Y9_N25
\VGA_controller|Hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Hsync~feeder_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync~q\);

-- Location: LCCOMB_X27_Y22_N6
\VGA_controller|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~5_combout\ = ((\VGA_controller|v_count\(1) $ (!\VGA_controller|v_count\(0))) # (!\VGA_controller|v_count\(3))) # (!\VGA_controller|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(1),
	datab => \VGA_controller|v_count\(0),
	datac => \VGA_controller|v_count\(2),
	datad => \VGA_controller|v_count\(3),
	combout => \VGA_controller|process_0~5_combout\);

-- Location: LCCOMB_X27_Y22_N0
\VGA_controller|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~6_combout\ = (\VGA_controller|process_0~5_combout\) # (((\VGA_controller|v_count\(9)) # (\VGA_controller|v_count\(4))) # (!\VGA_controller|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~5_combout\,
	datab => \VGA_controller|LessThan7~0_combout\,
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|v_count\(4),
	combout => \VGA_controller|process_0~6_combout\);

-- Location: FF_X27_Y22_N1
\VGA_controller|Vsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~6_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync_aux~q\);

-- Location: LCCOMB_X21_Y9_N26
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

-- Location: FF_X21_Y9_N27
\VGA_controller|Vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Vsync~feeder_combout\,
	clrn => \ALT_INV_SW[2]~input_o\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync~q\);

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

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);
END structure;


