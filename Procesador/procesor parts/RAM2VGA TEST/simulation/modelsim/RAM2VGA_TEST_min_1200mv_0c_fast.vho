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

-- DATE "06/02/2024 23:50:50"

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

ENTITY 	RAM2VGA_TEST IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(5 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic
	);
END RAM2VGA_TEST;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM2VGA_TEST IS
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
SIGNAL \SW[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_controller|Add0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \VGA_controller|Add0~1\ : std_logic;
SIGNAL \VGA_controller|Add0~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~3\ : std_logic;
SIGNAL \VGA_controller|Add0~4_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~5\ : std_logic;
SIGNAL \VGA_controller|Add0~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~7\ : std_logic;
SIGNAL \VGA_controller|Add0~8_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~9\ : std_logic;
SIGNAL \VGA_controller|Add0~10_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~11\ : std_logic;
SIGNAL \VGA_controller|Add0~12_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~13\ : std_logic;
SIGNAL \VGA_controller|Add0~14_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~15\ : std_logic;
SIGNAL \VGA_controller|Add0~16_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~1_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~17\ : std_logic;
SIGNAL \VGA_controller|Add0~18_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~0_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~0_combout\ : std_logic;
SIGNAL \VGA_controller|video_on_h~q\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~0_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~3_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~0_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~20_combout\ : std_logic;
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
SIGNAL \VGA_controller|v_count[4]~1_combout\ : std_logic;
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
SIGNAL \VGA_controller|process_0~7_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~15\ : std_logic;
SIGNAL \VGA_controller|Add1~16_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[8]~7_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~8_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~9_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~10_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~11_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~12_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~17\ : std_logic;
SIGNAL \VGA_controller|Add1~18_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~3_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \VGA_controller|video_on_v~q\ : std_logic;
SIGNAL \VGA_controller|video_on~combout\ : std_logic;
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
SIGNAL \VGA_controller|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|red\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|green\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|blue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~inputclkctrl_outclk\ : std_logic;

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

\SW[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[1]~input_o\);
\ALT_INV_SW[1]~inputclkctrl_outclk\ <= NOT \SW[1]~inputclkctrl_outclk\;

-- Location: IOOBUF_X41_Y22_N23
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

-- Location: IOOBUF_X37_Y0_N16
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

-- Location: IOOBUF_X37_Y0_N23
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

-- Location: IOOBUF_X41_Y26_N23
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

-- Location: IOOBUF_X41_Y26_N2
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

-- Location: IOOBUF_X41_Y25_N9
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

-- Location: IOOBUF_X41_Y21_N2
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

-- Location: IOOBUF_X41_Y23_N23
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

-- Location: IOOBUF_X39_Y0_N9
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

-- Location: IOOBUF_X41_Y23_N2
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

-- Location: IOOBUF_X39_Y29_N2
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

-- Location: IOOBUF_X39_Y0_N16
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X0_Y11_N23
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

-- Location: IOIBUF_X0_Y14_N8
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: CLKCTRL_G2
\SW[1]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[1]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y14_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
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
	areset => \SW[1]~inputclkctrl_outclk\,
	fbin => \CLK25|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \CLK25|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \CLK25|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \CLK25|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X8_Y10_N8
\VGA_controller|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~0_combout\ = \VGA_controller|h_count\(0) $ (VCC)
-- \VGA_controller|Add0~1\ = CARRY(\VGA_controller|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(0),
	datad => VCC,
	combout => \VGA_controller|Add0~0_combout\,
	cout => \VGA_controller|Add0~1\);

-- Location: IOIBUF_X41_Y7_N22
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X8_Y10_N9
\VGA_controller|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(0));

-- Location: LCCOMB_X8_Y10_N10
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

-- Location: FF_X8_Y10_N11
\VGA_controller|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~2_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(1));

-- Location: LCCOMB_X8_Y10_N12
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

-- Location: FF_X8_Y10_N13
\VGA_controller|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~4_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(2));

-- Location: LCCOMB_X8_Y10_N14
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

-- Location: FF_X8_Y10_N15
\VGA_controller|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~6_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(3));

-- Location: LCCOMB_X8_Y10_N16
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

-- Location: FF_X8_Y10_N17
\VGA_controller|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~8_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(4));

-- Location: LCCOMB_X8_Y10_N4
\VGA_controller|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~0_combout\ = (\VGA_controller|h_count\(1) & (\VGA_controller|h_count\(0) & (\VGA_controller|h_count\(3) & \VGA_controller|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(1),
	datab => \VGA_controller|h_count\(0),
	datac => \VGA_controller|h_count\(3),
	datad => \VGA_controller|h_count\(4),
	combout => \VGA_controller|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y10_N18
\VGA_controller|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~10_combout\ = (\VGA_controller|h_count\(5) & (!\VGA_controller|Add0~9\)) # (!\VGA_controller|h_count\(5) & ((\VGA_controller|Add0~9\) # (GND)))
-- \VGA_controller|Add0~11\ = CARRY((!\VGA_controller|Add0~9\) # (!\VGA_controller|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(5),
	datad => VCC,
	cin => \VGA_controller|Add0~9\,
	combout => \VGA_controller|Add0~10_combout\,
	cout => \VGA_controller|Add0~11\);

-- Location: LCCOMB_X9_Y10_N2
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

-- Location: FF_X9_Y10_N3
\VGA_controller|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~2_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(5));

-- Location: LCCOMB_X8_Y10_N20
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

-- Location: FF_X8_Y10_N21
\VGA_controller|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~12_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(6));

-- Location: LCCOMB_X8_Y10_N22
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

-- Location: FF_X8_Y10_N23
\VGA_controller|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~14_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(7));

-- Location: LCCOMB_X8_Y10_N24
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

-- Location: LCCOMB_X9_Y10_N0
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

-- Location: FF_X9_Y10_N1
\VGA_controller|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~1_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(8));

-- Location: LCCOMB_X9_Y11_N0
\VGA_controller|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~1_combout\ = (!\VGA_controller|h_count\(5) & (!\VGA_controller|h_count\(7) & (\VGA_controller|h_count\(2) & \VGA_controller|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(5),
	datab => \VGA_controller|h_count\(7),
	datac => \VGA_controller|h_count\(2),
	datad => \VGA_controller|h_count\(8),
	combout => \VGA_controller|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y10_N14
\VGA_controller|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~2_combout\ = (\VGA_controller|h_count\(9) & (\VGA_controller|Equal0~0_combout\ & (\VGA_controller|Equal0~1_combout\ & !\VGA_controller|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(9),
	datab => \VGA_controller|Equal0~0_combout\,
	datac => \VGA_controller|Equal0~1_combout\,
	datad => \VGA_controller|h_count\(6),
	combout => \VGA_controller|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y10_N26
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

-- Location: LCCOMB_X9_Y10_N6
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

-- Location: FF_X9_Y10_N7
\VGA_controller|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(9));

-- Location: LCCOMB_X9_Y11_N16
\VGA_controller|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~0_combout\ = ((!\VGA_controller|h_count\(7) & !\VGA_controller|h_count\(8))) # (!\VGA_controller|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(9),
	datab => \VGA_controller|h_count\(7),
	datad => \VGA_controller|h_count\(8),
	combout => \VGA_controller|process_0~0_combout\);

-- Location: FF_X9_Y11_N17
\VGA_controller|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_h~q\);

-- Location: LCCOMB_X9_Y11_N12
\VGA_controller|v_count[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~0_combout\ = (\VGA_controller|h_count\(5) & (\VGA_controller|h_count\(7) & (!\VGA_controller|h_count\(2) & !\VGA_controller|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(5),
	datab => \VGA_controller|h_count\(7),
	datac => \VGA_controller|h_count\(2),
	datad => \VGA_controller|h_count\(8),
	combout => \VGA_controller|v_count[9]~0_combout\);

-- Location: LCCOMB_X9_Y11_N2
\VGA_controller|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~3_combout\ = (!\VGA_controller|h_count\(6) & (\VGA_controller|Equal0~0_combout\ & \VGA_controller|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(6),
	datac => \VGA_controller|Equal0~0_combout\,
	datad => \VGA_controller|h_count\(9),
	combout => \VGA_controller|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y8_N10
\VGA_controller|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~0_combout\ = \VGA_controller|v_count\(0) $ (VCC)
-- \VGA_controller|Add1~1\ = CARRY(\VGA_controller|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(0),
	datad => VCC,
	combout => \VGA_controller|Add1~0_combout\,
	cout => \VGA_controller|Add1~1\);

-- Location: LCCOMB_X9_Y11_N6
\VGA_controller|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~20_combout\ = (\VGA_controller|process_0~12_combout\ & \VGA_controller|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~12_combout\,
	datac => \VGA_controller|Add1~0_combout\,
	combout => \VGA_controller|Add1~20_combout\);

-- Location: FF_X9_Y11_N7
\VGA_controller|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~20_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(0));

-- Location: LCCOMB_X9_Y8_N12
\VGA_controller|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~2_combout\ = (\VGA_controller|v_count\(1) & (!\VGA_controller|Add1~1\)) # (!\VGA_controller|v_count\(1) & ((\VGA_controller|Add1~1\) # (GND)))
-- \VGA_controller|Add1~3\ = CARRY((!\VGA_controller|Add1~1\) # (!\VGA_controller|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(1),
	datad => VCC,
	cin => \VGA_controller|Add1~1\,
	combout => \VGA_controller|Add1~2_combout\,
	cout => \VGA_controller|Add1~3\);

-- Location: LCCOMB_X9_Y11_N24
\VGA_controller|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~21_combout\ = (\VGA_controller|process_0~12_combout\ & \VGA_controller|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~12_combout\,
	datac => \VGA_controller|Add1~2_combout\,
	combout => \VGA_controller|Add1~21_combout\);

-- Location: FF_X9_Y11_N25
\VGA_controller|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~21_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(1));

-- Location: LCCOMB_X9_Y8_N14
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

-- Location: LCCOMB_X9_Y11_N18
\VGA_controller|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~22_combout\ = (\VGA_controller|process_0~12_combout\ & \VGA_controller|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~12_combout\,
	datac => \VGA_controller|Add1~4_combout\,
	combout => \VGA_controller|Add1~22_combout\);

-- Location: FF_X9_Y11_N19
\VGA_controller|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~22_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(2));

-- Location: LCCOMB_X9_Y8_N16
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

-- Location: LCCOMB_X9_Y11_N20
\VGA_controller|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~23_combout\ = (\VGA_controller|Add1~6_combout\ & \VGA_controller|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Add1~6_combout\,
	datac => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|Add1~23_combout\);

-- Location: FF_X9_Y11_N21
\VGA_controller|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~23_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(3));

-- Location: LCCOMB_X9_Y8_N18
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

-- Location: LCCOMB_X9_Y11_N28
\VGA_controller|v_count[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[4]~1_combout\ = (\VGA_controller|v_count[9]~0_combout\ & (\VGA_controller|Equal0~3_combout\ & (\VGA_controller|process_0~12_combout\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~0_combout\,
	datab => \VGA_controller|Equal0~3_combout\,
	datac => \VGA_controller|process_0~12_combout\,
	datad => \SW[0]~input_o\,
	combout => \VGA_controller|v_count[4]~1_combout\);

-- Location: LCCOMB_X9_Y8_N6
\VGA_controller|v_count[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[4]~8_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~8_combout\ & ((\VGA_controller|v_count[4]~1_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(4)) # 
-- ((\VGA_controller|Add1~8_combout\ & \VGA_controller|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|Add1~8_combout\,
	datac => \VGA_controller|v_count\(4),
	datad => \VGA_controller|v_count[4]~1_combout\,
	combout => \VGA_controller|v_count[4]~8_combout\);

-- Location: FF_X9_Y8_N7
\VGA_controller|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[4]~8_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(4));

-- Location: LCCOMB_X9_Y8_N20
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

-- Location: LCCOMB_X9_Y8_N2
\VGA_controller|v_count[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[5]~4_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~10_combout\ & ((\VGA_controller|v_count[4]~1_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(5)) # 
-- ((\VGA_controller|Add1~10_combout\ & \VGA_controller|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|Add1~10_combout\,
	datac => \VGA_controller|v_count\(5),
	datad => \VGA_controller|v_count[4]~1_combout\,
	combout => \VGA_controller|v_count[5]~4_combout\);

-- Location: FF_X9_Y8_N3
\VGA_controller|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[5]~4_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(5));

-- Location: LCCOMB_X9_Y8_N22
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

-- Location: LCCOMB_X9_Y8_N4
\VGA_controller|v_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[6]~5_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~12_combout\ & ((\VGA_controller|v_count[4]~1_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(6)) # 
-- ((\VGA_controller|Add1~12_combout\ & \VGA_controller|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|Add1~12_combout\,
	datac => \VGA_controller|v_count\(6),
	datad => \VGA_controller|v_count[4]~1_combout\,
	combout => \VGA_controller|v_count[6]~5_combout\);

-- Location: FF_X9_Y8_N5
\VGA_controller|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[6]~5_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(6));

-- Location: LCCOMB_X9_Y8_N24
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

-- Location: LCCOMB_X9_Y8_N30
\VGA_controller|v_count[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[7]~6_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~14_combout\ & ((\VGA_controller|v_count[4]~1_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(7)) # 
-- ((\VGA_controller|Add1~14_combout\ & \VGA_controller|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|Add1~14_combout\,
	datac => \VGA_controller|v_count\(7),
	datad => \VGA_controller|v_count[4]~1_combout\,
	combout => \VGA_controller|v_count[7]~6_combout\);

-- Location: FF_X9_Y8_N31
\VGA_controller|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[7]~6_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(7));

-- Location: LCCOMB_X9_Y11_N30
\VGA_controller|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~7_combout\ = (!\VGA_controller|v_count\(4) & (!\VGA_controller|v_count\(5) & ((!\VGA_controller|v_count\(2)) # (!\VGA_controller|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(4),
	datab => \VGA_controller|v_count\(3),
	datac => \VGA_controller|v_count\(5),
	datad => \VGA_controller|v_count\(2),
	combout => \VGA_controller|process_0~7_combout\);

-- Location: LCCOMB_X9_Y8_N26
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

-- Location: LCCOMB_X9_Y8_N8
\VGA_controller|v_count[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[8]~7_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~16_combout\ & ((\VGA_controller|v_count[4]~1_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(8)) # 
-- ((\VGA_controller|Add1~16_combout\ & \VGA_controller|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|Add1~16_combout\,
	datac => \VGA_controller|v_count\(8),
	datad => \VGA_controller|v_count[4]~1_combout\,
	combout => \VGA_controller|v_count[8]~7_combout\);

-- Location: FF_X9_Y8_N9
\VGA_controller|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[8]~7_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(8));

-- Location: LCCOMB_X9_Y11_N8
\VGA_controller|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~8_combout\ = (!\VGA_controller|v_count\(7) & (!\VGA_controller|v_count\(6) & (\VGA_controller|process_0~7_combout\ & !\VGA_controller|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(7),
	datab => \VGA_controller|v_count\(6),
	datac => \VGA_controller|process_0~7_combout\,
	datad => \VGA_controller|v_count\(8),
	combout => \VGA_controller|process_0~8_combout\);

-- Location: LCCOMB_X8_Y10_N6
\VGA_controller|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~9_combout\ = ((!\VGA_controller|h_count\(2) & ((!\VGA_controller|h_count\(0)) # (!\VGA_controller|h_count\(1))))) # (!\VGA_controller|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(1),
	datab => \VGA_controller|h_count\(0),
	datac => \VGA_controller|h_count\(3),
	datad => \VGA_controller|h_count\(2),
	combout => \VGA_controller|process_0~9_combout\);

-- Location: LCCOMB_X8_Y10_N28
\VGA_controller|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~10_combout\ = (\VGA_controller|h_count\(4) & \VGA_controller|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(4),
	datad => \VGA_controller|h_count\(5),
	combout => \VGA_controller|process_0~10_combout\);

-- Location: LCCOMB_X8_Y10_N30
\VGA_controller|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~11_combout\ = (!\VGA_controller|h_count\(8) & (!\VGA_controller|h_count\(6) & ((\VGA_controller|process_0~9_combout\) # (!\VGA_controller|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~9_combout\,
	datab => \VGA_controller|process_0~10_combout\,
	datac => \VGA_controller|h_count\(8),
	datad => \VGA_controller|h_count\(6),
	combout => \VGA_controller|process_0~11_combout\);

-- Location: LCCOMB_X9_Y11_N26
\VGA_controller|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~12_combout\ = ((\VGA_controller|process_0~0_combout\) # ((\VGA_controller|process_0~8_combout\) # (\VGA_controller|process_0~11_combout\))) # (!\VGA_controller|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(9),
	datab => \VGA_controller|process_0~0_combout\,
	datac => \VGA_controller|process_0~8_combout\,
	datad => \VGA_controller|process_0~11_combout\,
	combout => \VGA_controller|process_0~12_combout\);

-- Location: LCCOMB_X9_Y11_N22
\VGA_controller|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~2_combout\ = (\SW[0]~input_o\ & (((\VGA_controller|v_count[9]~0_combout\ & \VGA_controller|Equal0~3_combout\)) # (!\VGA_controller|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~0_combout\,
	datab => \VGA_controller|Equal0~3_combout\,
	datac => \VGA_controller|process_0~12_combout\,
	datad => \SW[0]~input_o\,
	combout => \VGA_controller|v_count[9]~2_combout\);

-- Location: LCCOMB_X9_Y8_N28
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

-- Location: LCCOMB_X9_Y8_N0
\VGA_controller|v_count[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~3_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|Add1~18_combout\ & ((\VGA_controller|v_count[4]~1_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(9)) # 
-- ((\VGA_controller|Add1~18_combout\ & \VGA_controller|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|Add1~18_combout\,
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|v_count[4]~1_combout\,
	combout => \VGA_controller|v_count[9]~3_combout\);

-- Location: FF_X9_Y8_N1
\VGA_controller|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[9]~3_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(9));

-- Location: LCCOMB_X9_Y11_N4
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

-- Location: LCCOMB_X40_Y23_N24
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

-- Location: FF_X40_Y23_N25
\VGA_controller|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|LessThan7~1_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_v~q\);

-- Location: LCCOMB_X40_Y23_N22
\VGA_controller|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|video_on~combout\ = (\VGA_controller|video_on_h~q\ & \VGA_controller|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|video_on_h~q\,
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|video_on~combout\);

-- Location: FF_X40_Y23_N9
\VGA_controller|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(0));

-- Location: FF_X40_Y23_N3
\VGA_controller|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(1));

-- Location: FF_X40_Y23_N29
\VGA_controller|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(2));

-- Location: FF_X40_Y23_N31
\VGA_controller|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(3));

-- Location: FF_X40_Y23_N17
\VGA_controller|green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(0));

-- Location: FF_X40_Y23_N11
\VGA_controller|green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(1));

-- Location: FF_X40_Y23_N21
\VGA_controller|green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(2));

-- Location: FF_X40_Y23_N7
\VGA_controller|green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(3));

-- Location: FF_X40_Y23_N1
\VGA_controller|blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(0));

-- Location: FF_X40_Y23_N27
\VGA_controller|blue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(1));

-- Location: FF_X40_Y23_N13
\VGA_controller|blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(2));

-- Location: FF_X40_Y23_N23
\VGA_controller|blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|video_on~combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(3));

-- Location: LCCOMB_X8_Y10_N2
\VGA_controller|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~2_combout\ = (\VGA_controller|h_count\(2)) # ((\VGA_controller|h_count\(1) & (\VGA_controller|h_count\(0) & !\VGA_controller|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(1),
	datab => \VGA_controller|h_count\(2),
	datac => \VGA_controller|h_count\(0),
	datad => \VGA_controller|h_count\(5),
	combout => \VGA_controller|process_0~2_combout\);

-- Location: LCCOMB_X9_Y10_N28
\VGA_controller|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~3_combout\ = (\VGA_controller|h_count\(4) & ((\VGA_controller|h_count\(3)) # (\VGA_controller|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(3),
	datac => \VGA_controller|h_count\(4),
	datad => \VGA_controller|process_0~2_combout\,
	combout => \VGA_controller|process_0~3_combout\);

-- Location: LCCOMB_X8_Y10_N0
\VGA_controller|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~1_combout\ = (\VGA_controller|h_count\(9) & (!\VGA_controller|h_count\(8) & \VGA_controller|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(9),
	datab => \VGA_controller|h_count\(8),
	datac => \VGA_controller|h_count\(7),
	combout => \VGA_controller|process_0~1_combout\);

-- Location: LCCOMB_X9_Y10_N12
\VGA_controller|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~4_combout\ = ((\VGA_controller|h_count\(5) & (\VGA_controller|process_0~3_combout\ & \VGA_controller|h_count\(6))) # (!\VGA_controller|h_count\(5) & (!\VGA_controller|process_0~3_combout\ & !\VGA_controller|h_count\(6)))) # 
-- (!\VGA_controller|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(5),
	datab => \VGA_controller|process_0~3_combout\,
	datac => \VGA_controller|process_0~1_combout\,
	datad => \VGA_controller|h_count\(6),
	combout => \VGA_controller|process_0~4_combout\);

-- Location: FF_X9_Y10_N13
\VGA_controller|Hsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~4_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync_aux~q\);

-- Location: LCCOMB_X9_Y10_N16
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

-- Location: FF_X9_Y10_N17
\VGA_controller|Hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Hsync~feeder_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync~q\);

-- Location: LCCOMB_X9_Y11_N14
\VGA_controller|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~5_combout\ = ((\VGA_controller|v_count\(0) $ (!\VGA_controller|v_count\(1))) # (!\VGA_controller|v_count\(2))) # (!\VGA_controller|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(0),
	datab => \VGA_controller|v_count\(3),
	datac => \VGA_controller|v_count\(2),
	datad => \VGA_controller|v_count\(1),
	combout => \VGA_controller|process_0~5_combout\);

-- Location: LCCOMB_X9_Y11_N10
\VGA_controller|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~6_combout\ = (\VGA_controller|v_count\(9)) # ((\VGA_controller|process_0~5_combout\) # ((\VGA_controller|v_count\(4)) # (!\VGA_controller|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(9),
	datab => \VGA_controller|process_0~5_combout\,
	datac => \VGA_controller|LessThan7~0_combout\,
	datad => \VGA_controller|v_count\(4),
	combout => \VGA_controller|process_0~6_combout\);

-- Location: FF_X9_Y11_N11
\VGA_controller|Vsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~6_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync_aux~q\);

-- Location: LCCOMB_X9_Y10_N26
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

-- Location: FF_X9_Y10_N27
\VGA_controller|Vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Vsync~feeder_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync~q\);

-- Location: IOIBUF_X0_Y5_N8
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
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


