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

-- DATE "05/04/2024 15:49:47"

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

ENTITY 	capture_and_store IS
    PORT (
	PCLK : IN std_logic;
	RST : IN std_logic;
	HREF : IN std_logic;
	D_IN : IN std_logic_vector(7 DOWNTO 0);
	Q_OUT : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END capture_and_store;

-- Design Ports Information
-- Q_OUT[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_OUT[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_OUT[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_OUT[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HREF	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_IN[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF capture_and_store IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PCLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_HREF : std_logic;
SIGNAL ww_D_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \PCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cap|DIV|Clk_aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q_OUT[0]~output_o\ : std_logic;
SIGNAL \Q_OUT[1]~output_o\ : std_logic;
SIGNAL \Q_OUT[2]~output_o\ : std_logic;
SIGNAL \Q_OUT[3]~output_o\ : std_logic;
SIGNAL \PCLK~input_o\ : std_logic;
SIGNAL \PCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Cap|DIV|Clk_aux~0_combout\ : std_logic;
SIGNAL \Cap|DIV|Clk_aux~feeder_combout\ : std_logic;
SIGNAL \Cap|DIV|Clk_aux~q\ : std_logic;
SIGNAL \Cap|DIV|Clk_aux~clkctrl_outclk\ : std_logic;
SIGNAL \HREF~input_o\ : std_logic;
SIGNAL \Cap|start_counting|counter~feeder_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \Cap|start_counting|counter~q\ : std_logic;
SIGNAL \Cap|start_counting|delayed_output~0_combout\ : std_logic;
SIGNAL \Cap|start_counting|delayed_output~q\ : std_logic;
SIGNAL \Cap|pixel_per_line_counter_aux[0]~0_combout\ : std_logic;
SIGNAL \address[0]~feeder_combout\ : std_logic;
SIGNAL \D_IN[2]~input_o\ : std_logic;
SIGNAL \Cap|mux_out[2]~0_combout\ : std_logic;
SIGNAL \D_IN[6]~input_o\ : std_logic;
SIGNAL \D_IN[5]~input_o\ : std_logic;
SIGNAL \Cap|ER|reg[5]~feeder_combout\ : std_logic;
SIGNAL \D_IN[1]~input_o\ : std_logic;
SIGNAL \D_IN[4]~input_o\ : std_logic;
SIGNAL \Cap|ER|reg[4]~feeder_combout\ : std_logic;
SIGNAL \D_IN[0]~input_o\ : std_logic;
SIGNAL \Cap|ACC|reg[0]~6_combout\ : std_logic;
SIGNAL \Cap|mux_out[0]~2_combout\ : std_logic;
SIGNAL \Cap|ACC|reg[0]~7\ : std_logic;
SIGNAL \Cap|ACC|reg[1]~8_combout\ : std_logic;
SIGNAL \Cap|mux_out[1]~1_combout\ : std_logic;
SIGNAL \Cap|ACC|reg[1]~9\ : std_logic;
SIGNAL \Cap|ACC|reg[2]~10_combout\ : std_logic;
SIGNAL \Cap|BUF|reg[0]~feeder_combout\ : std_logic;
SIGNAL \Cap|pixel_per_line_counter_aux[1]~1_combout\ : std_logic;
SIGNAL \Cap|line_counter_aux[1]~0_combout\ : std_logic;
SIGNAL \Cap|line_counter_aux[0]~1_combout\ : std_logic;
SIGNAL \Cap|line_counter_aux[1]~2_combout\ : std_logic;
SIGNAL \Cap|line_counter_aux[1]~3_combout\ : std_logic;
SIGNAL \address[3]~feeder_combout\ : std_logic;
SIGNAL \address[1]~feeder_combout\ : std_logic;
SIGNAL \address[2]~feeder_combout\ : std_logic;
SIGNAL \wr~0_combout\ : std_logic;
SIGNAL \wr~q\ : std_logic;
SIGNAL \Load_Store|Decoder0~6_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~7_combout\ : std_logic;
SIGNAL \Load_Store|ram[7][0]~q\ : std_logic;
SIGNAL \Load_Store|Decoder0~0_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~1_combout\ : std_logic;
SIGNAL \Load_Store|ram[5][0]~q\ : std_logic;
SIGNAL \Load_Store|Decoder0~2_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~3_combout\ : std_logic;
SIGNAL \Load_Store|ram[6][0]~q\ : std_logic;
SIGNAL \Load_Store|Decoder0~4_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~5_combout\ : std_logic;
SIGNAL \Load_Store|ram[4][0]~q\ : std_logic;
SIGNAL \Load_Store|Mux3~0_combout\ : std_logic;
SIGNAL \Load_Store|Mux3~1_combout\ : std_logic;
SIGNAL \Load_Store|ram[10][0]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~8_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~9_combout\ : std_logic;
SIGNAL \Load_Store|ram[10][0]~q\ : std_logic;
SIGNAL \Load_Store|Decoder0~14_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~15_combout\ : std_logic;
SIGNAL \Load_Store|ram[11][0]~q\ : std_logic;
SIGNAL \Load_Store|ram[8][0]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~12_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~13_combout\ : std_logic;
SIGNAL \Load_Store|ram[8][0]~q\ : std_logic;
SIGNAL \Load_Store|ram[9][0]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~10_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~11_combout\ : std_logic;
SIGNAL \Load_Store|ram[9][0]~q\ : std_logic;
SIGNAL \Load_Store|Mux3~2_combout\ : std_logic;
SIGNAL \Load_Store|Mux3~3_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~16_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~17_combout\ : std_logic;
SIGNAL \Load_Store|ram[2][0]~q\ : std_logic;
SIGNAL \Load_Store|Decoder0~20_combout\ : std_logic;
SIGNAL \Load_Store|ram[3][0]~q\ : std_logic;
SIGNAL \Load_Store|ram[0][0]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~19_combout\ : std_logic;
SIGNAL \Load_Store|ram[0][0]~q\ : std_logic;
SIGNAL \Load_Store|Decoder0~18_combout\ : std_logic;
SIGNAL \Load_Store|ram[1][0]~q\ : std_logic;
SIGNAL \Load_Store|Mux3~4_combout\ : std_logic;
SIGNAL \Load_Store|Mux3~5_combout\ : std_logic;
SIGNAL \Load_Store|Mux3~6_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~21_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~22_combout\ : std_logic;
SIGNAL \Load_Store|ram[13][0]~q\ : std_logic;
SIGNAL \Load_Store|Decoder0~25_combout\ : std_logic;
SIGNAL \Load_Store|ram[15][0]~q\ : std_logic;
SIGNAL \Load_Store|Decoder0~23_combout\ : std_logic;
SIGNAL \Load_Store|ram[14][0]~q\ : std_logic;
SIGNAL \Load_Store|ram[12][0]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|Decoder0~24_combout\ : std_logic;
SIGNAL \Load_Store|ram[12][0]~q\ : std_logic;
SIGNAL \Load_Store|Mux3~7_combout\ : std_logic;
SIGNAL \Load_Store|Mux3~8_combout\ : std_logic;
SIGNAL \Load_Store|Mux3~9_combout\ : std_logic;
SIGNAL \Load_Store|data_out[0]~0_combout\ : std_logic;
SIGNAL \D_IN[7]~input_o\ : std_logic;
SIGNAL \Cap|ER|reg[7]~feeder_combout\ : std_logic;
SIGNAL \D_IN[3]~input_o\ : std_logic;
SIGNAL \Cap|mux_out[3]~3_combout\ : std_logic;
SIGNAL \Cap|ACC|reg[2]~11\ : std_logic;
SIGNAL \Cap|ACC|reg[3]~12_combout\ : std_logic;
SIGNAL \Cap|BUF|reg[1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[15][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[13][1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[13][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[11][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[9][1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[9][1]~q\ : std_logic;
SIGNAL \Load_Store|Mux2~7_combout\ : std_logic;
SIGNAL \Load_Store|Mux2~8_combout\ : std_logic;
SIGNAL \Load_Store|ram[6][1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[6][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[4][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[0][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[2][1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[2][1]~q\ : std_logic;
SIGNAL \Load_Store|Mux2~4_combout\ : std_logic;
SIGNAL \Load_Store|Mux2~5_combout\ : std_logic;
SIGNAL \Load_Store|ram[5][1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[5][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[7][1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[7][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[3][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[1][1]~q\ : std_logic;
SIGNAL \Load_Store|Mux2~2_combout\ : std_logic;
SIGNAL \Load_Store|Mux2~3_combout\ : std_logic;
SIGNAL \Load_Store|Mux2~6_combout\ : std_logic;
SIGNAL \Load_Store|ram[12][1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[12][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[14][1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[14][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[8][1]~q\ : std_logic;
SIGNAL \Load_Store|ram[10][1]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[10][1]~q\ : std_logic;
SIGNAL \Load_Store|Mux2~0_combout\ : std_logic;
SIGNAL \Load_Store|Mux2~1_combout\ : std_logic;
SIGNAL \Load_Store|Mux2~9_combout\ : std_logic;
SIGNAL \Cap|ACC|reg[3]~13\ : std_logic;
SIGNAL \Cap|ACC|reg[4]~14_combout\ : std_logic;
SIGNAL \Cap|BUF|reg[2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[14][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[14][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[15][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[15][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[10][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[11][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[11][2]~q\ : std_logic;
SIGNAL \Load_Store|Mux1~7_combout\ : std_logic;
SIGNAL \Load_Store|Mux1~8_combout\ : std_logic;
SIGNAL \Load_Store|ram[9][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[9][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[13][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[13][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[12][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[8][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[8][2]~q\ : std_logic;
SIGNAL \Load_Store|Mux1~0_combout\ : std_logic;
SIGNAL \Load_Store|Mux1~1_combout\ : std_logic;
SIGNAL \Load_Store|ram[1][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[1][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[5][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[4][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[4][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[0][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[0][2]~q\ : std_logic;
SIGNAL \Load_Store|Mux1~4_combout\ : std_logic;
SIGNAL \Load_Store|Mux1~5_combout\ : std_logic;
SIGNAL \Load_Store|ram[6][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[6][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[7][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[3][2]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[3][2]~q\ : std_logic;
SIGNAL \Load_Store|ram[2][2]~q\ : std_logic;
SIGNAL \Load_Store|Mux1~2_combout\ : std_logic;
SIGNAL \Load_Store|Mux1~3_combout\ : std_logic;
SIGNAL \Load_Store|Mux1~6_combout\ : std_logic;
SIGNAL \Load_Store|Mux1~9_combout\ : std_logic;
SIGNAL \Cap|ACC|reg[4]~15\ : std_logic;
SIGNAL \Cap|ACC|reg[5]~16_combout\ : std_logic;
SIGNAL \Cap|BUF|reg[3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[13][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[13][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[15][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[15][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[12][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[12][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[14][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[14][3]~q\ : std_logic;
SIGNAL \Load_Store|Mux0~7_combout\ : std_logic;
SIGNAL \Load_Store|Mux0~8_combout\ : std_logic;
SIGNAL \Load_Store|ram[2][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[2][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[3][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[1][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[1][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[0][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[0][3]~q\ : std_logic;
SIGNAL \Load_Store|Mux0~4_combout\ : std_logic;
SIGNAL \Load_Store|Mux0~5_combout\ : std_logic;
SIGNAL \Load_Store|ram[6][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[6][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[7][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[5][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[5][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[4][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[4][3]~q\ : std_logic;
SIGNAL \Load_Store|Mux0~2_combout\ : std_logic;
SIGNAL \Load_Store|Mux0~3_combout\ : std_logic;
SIGNAL \Load_Store|Mux0~6_combout\ : std_logic;
SIGNAL \Load_Store|ram[10][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[10][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[11][3]~feeder_combout\ : std_logic;
SIGNAL \Load_Store|ram[11][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[9][3]~q\ : std_logic;
SIGNAL \Load_Store|ram[8][3]~q\ : std_logic;
SIGNAL \Load_Store|Mux0~0_combout\ : std_logic;
SIGNAL \Load_Store|Mux0~1_combout\ : std_logic;
SIGNAL \Load_Store|Mux0~9_combout\ : std_logic;
SIGNAL address : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cap|pixel_per_line_counter_aux\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Cap|line_counter_aux\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Cap|ER|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Cap|ACC|reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Cap|BUF|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Load_Store|data_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_PCLK~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_PCLK <= PCLK;
ww_RST <= RST;
ww_HREF <= HREF;
ww_D_IN <= D_IN;
Q_OUT <= ww_Q_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PCLK~input_o\);

\Cap|DIV|Clk_aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Cap|DIV|Clk_aux~q\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
\ALT_INV_PCLK~inputclkctrl_outclk\ <= NOT \PCLK~inputclkctrl_outclk\;

-- Location: IOOBUF_X28_Y29_N2
\Q_OUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Load_Store|data_out\(0),
	devoe => ww_devoe,
	o => \Q_OUT[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Q_OUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Load_Store|data_out\(1),
	devoe => ww_devoe,
	o => \Q_OUT[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\Q_OUT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Load_Store|data_out\(2),
	devoe => ww_devoe,
	o => \Q_OUT[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\Q_OUT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Load_Store|data_out\(3),
	devoe => ww_devoe,
	o => \Q_OUT[3]~output_o\);

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

-- Location: LCCOMB_X27_Y28_N20
\Cap|DIV|Clk_aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|DIV|Clk_aux~0_combout\ = !\Cap|DIV|Clk_aux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|DIV|Clk_aux~q\,
	combout => \Cap|DIV|Clk_aux~0_combout\);

-- Location: LCCOMB_X27_Y28_N28
\Cap|DIV|Clk_aux~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|DIV|Clk_aux~feeder_combout\ = \Cap|DIV|Clk_aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|DIV|Clk_aux~0_combout\,
	combout => \Cap|DIV|Clk_aux~feeder_combout\);

-- Location: FF_X27_Y28_N29
\Cap|DIV|Clk_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Cap|DIV|Clk_aux~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|DIV|Clk_aux~q\);

-- Location: CLKCTRL_G14
\Cap|DIV|Clk_aux~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Cap|DIV|Clk_aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Cap|DIV|Clk_aux~clkctrl_outclk\);

-- Location: IOIBUF_X30_Y29_N29
\HREF~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HREF,
	o => \HREF~input_o\);

-- Location: LCCOMB_X33_Y26_N2
\Cap|start_counting|counter~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|start_counting|counter~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Cap|start_counting|counter~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G2
\RST~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X33_Y26_N3
\Cap|start_counting|counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PCLK~inputclkctrl_outclk\,
	d => \Cap|start_counting|counter~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|start_counting|counter~q\);

-- Location: LCCOMB_X33_Y26_N4
\Cap|start_counting|delayed_output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|start_counting|delayed_output~0_combout\ = (\Cap|start_counting|delayed_output~q\) # (\Cap|start_counting|counter~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|start_counting|delayed_output~q\,
	datad => \Cap|start_counting|counter~q\,
	combout => \Cap|start_counting|delayed_output~0_combout\);

-- Location: FF_X33_Y26_N5
\Cap|start_counting|delayed_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PCLK~inputclkctrl_outclk\,
	d => \Cap|start_counting|delayed_output~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|start_counting|delayed_output~q\);

-- Location: LCCOMB_X32_Y26_N28
\Cap|pixel_per_line_counter_aux[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|pixel_per_line_counter_aux[0]~0_combout\ = \Cap|pixel_per_line_counter_aux\(0) $ (((\HREF~input_o\ & \Cap|start_counting|delayed_output~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HREF~input_o\,
	datac => \Cap|pixel_per_line_counter_aux\(0),
	datad => \Cap|start_counting|delayed_output~q\,
	combout => \Cap|pixel_per_line_counter_aux[0]~0_combout\);

-- Location: FF_X32_Y26_N29
\Cap|pixel_per_line_counter_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \Cap|pixel_per_line_counter_aux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|pixel_per_line_counter_aux\(0));

-- Location: LCCOMB_X31_Y26_N8
\address[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address[0]~feeder_combout\ = \Cap|pixel_per_line_counter_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|pixel_per_line_counter_aux\(0),
	combout => \address[0]~feeder_combout\);

-- Location: FF_X31_Y26_N9
\address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \address[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(0));

-- Location: IOIBUF_X32_Y29_N1
\D_IN[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(2),
	o => \D_IN[2]~input_o\);

-- Location: FF_X32_Y28_N29
\Cap|ER|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \D_IN[2]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ER|reg\(2));

-- Location: LCCOMB_X32_Y28_N28
\Cap|mux_out[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|mux_out[2]~0_combout\ = (\Cap|DIV|Clk_aux~q\ & (\Cap|ER|reg\(2))) # (!\Cap|DIV|Clk_aux~q\ & ((\Cap|ACC|reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cap|DIV|Clk_aux~q\,
	datac => \Cap|ER|reg\(2),
	datad => \Cap|ACC|reg\(2),
	combout => \Cap|mux_out[2]~0_combout\);

-- Location: IOIBUF_X30_Y29_N1
\D_IN[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(6),
	o => \D_IN[6]~input_o\);

-- Location: FF_X32_Y28_N3
\Cap|ER|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \D_IN[6]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ER|reg\(6));

-- Location: IOIBUF_X32_Y29_N15
\D_IN[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(5),
	o => \D_IN[5]~input_o\);

-- Location: LCCOMB_X32_Y28_N6
\Cap|ER|reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|ER|reg[5]~feeder_combout\ = \D_IN[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_IN[5]~input_o\,
	combout => \Cap|ER|reg[5]~feeder_combout\);

-- Location: FF_X32_Y28_N7
\Cap|ER|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Cap|ER|reg[5]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ER|reg\(5));

-- Location: IOIBUF_X28_Y29_N22
\D_IN[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(1),
	o => \D_IN[1]~input_o\);

-- Location: FF_X32_Y28_N9
\Cap|ER|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \D_IN[1]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ER|reg\(1));

-- Location: IOIBUF_X30_Y29_N15
\D_IN[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(4),
	o => \D_IN[4]~input_o\);

-- Location: LCCOMB_X32_Y28_N26
\Cap|ER|reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|ER|reg[4]~feeder_combout\ = \D_IN[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_IN[4]~input_o\,
	combout => \Cap|ER|reg[4]~feeder_combout\);

-- Location: FF_X32_Y28_N27
\Cap|ER|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Cap|ER|reg[4]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ER|reg\(4));

-- Location: IOIBUF_X32_Y29_N29
\D_IN[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(0),
	o => \D_IN[0]~input_o\);

-- Location: FF_X32_Y28_N5
\Cap|ER|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \D_IN[0]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ER|reg\(0));

-- Location: LCCOMB_X32_Y28_N14
\Cap|ACC|reg[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|ACC|reg[0]~6_combout\ = (\Cap|ER|reg\(4) & (\Cap|mux_out[0]~2_combout\ $ (VCC))) # (!\Cap|ER|reg\(4) & (\Cap|mux_out[0]~2_combout\ & VCC))
-- \Cap|ACC|reg[0]~7\ = CARRY((\Cap|ER|reg\(4) & \Cap|mux_out[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cap|ER|reg\(4),
	datab => \Cap|mux_out[0]~2_combout\,
	datad => VCC,
	combout => \Cap|ACC|reg[0]~6_combout\,
	cout => \Cap|ACC|reg[0]~7\);

-- Location: FF_X32_Y28_N15
\Cap|ACC|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PCLK~inputclkctrl_outclk\,
	d => \Cap|ACC|reg[0]~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ACC|reg\(0));

-- Location: LCCOMB_X32_Y28_N4
\Cap|mux_out[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|mux_out[0]~2_combout\ = (\Cap|DIV|Clk_aux~q\ & (\Cap|ER|reg\(0))) # (!\Cap|DIV|Clk_aux~q\ & ((\Cap|ACC|reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cap|DIV|Clk_aux~q\,
	datac => \Cap|ER|reg\(0),
	datad => \Cap|ACC|reg\(0),
	combout => \Cap|mux_out[0]~2_combout\);

-- Location: LCCOMB_X32_Y28_N16
\Cap|ACC|reg[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|ACC|reg[1]~8_combout\ = (\Cap|ER|reg\(5) & ((\Cap|mux_out[1]~1_combout\ & (\Cap|ACC|reg[0]~7\ & VCC)) # (!\Cap|mux_out[1]~1_combout\ & (!\Cap|ACC|reg[0]~7\)))) # (!\Cap|ER|reg\(5) & ((\Cap|mux_out[1]~1_combout\ & (!\Cap|ACC|reg[0]~7\)) # 
-- (!\Cap|mux_out[1]~1_combout\ & ((\Cap|ACC|reg[0]~7\) # (GND)))))
-- \Cap|ACC|reg[1]~9\ = CARRY((\Cap|ER|reg\(5) & (!\Cap|mux_out[1]~1_combout\ & !\Cap|ACC|reg[0]~7\)) # (!\Cap|ER|reg\(5) & ((!\Cap|ACC|reg[0]~7\) # (!\Cap|mux_out[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cap|ER|reg\(5),
	datab => \Cap|mux_out[1]~1_combout\,
	datad => VCC,
	cin => \Cap|ACC|reg[0]~7\,
	combout => \Cap|ACC|reg[1]~8_combout\,
	cout => \Cap|ACC|reg[1]~9\);

-- Location: FF_X32_Y28_N17
\Cap|ACC|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PCLK~inputclkctrl_outclk\,
	d => \Cap|ACC|reg[1]~8_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ACC|reg\(1));

-- Location: LCCOMB_X32_Y28_N8
\Cap|mux_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|mux_out[1]~1_combout\ = (\Cap|DIV|Clk_aux~q\ & (\Cap|ER|reg\(1))) # (!\Cap|DIV|Clk_aux~q\ & ((\Cap|ACC|reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cap|DIV|Clk_aux~q\,
	datac => \Cap|ER|reg\(1),
	datad => \Cap|ACC|reg\(1),
	combout => \Cap|mux_out[1]~1_combout\);

-- Location: LCCOMB_X32_Y28_N18
\Cap|ACC|reg[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|ACC|reg[2]~10_combout\ = ((\Cap|mux_out[2]~0_combout\ $ (\Cap|ER|reg\(6) $ (!\Cap|ACC|reg[1]~9\)))) # (GND)
-- \Cap|ACC|reg[2]~11\ = CARRY((\Cap|mux_out[2]~0_combout\ & ((\Cap|ER|reg\(6)) # (!\Cap|ACC|reg[1]~9\))) # (!\Cap|mux_out[2]~0_combout\ & (\Cap|ER|reg\(6) & !\Cap|ACC|reg[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cap|mux_out[2]~0_combout\,
	datab => \Cap|ER|reg\(6),
	datad => VCC,
	cin => \Cap|ACC|reg[1]~9\,
	combout => \Cap|ACC|reg[2]~10_combout\,
	cout => \Cap|ACC|reg[2]~11\);

-- Location: FF_X32_Y28_N19
\Cap|ACC|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PCLK~inputclkctrl_outclk\,
	d => \Cap|ACC|reg[2]~10_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ACC|reg\(2));

-- Location: LCCOMB_X31_Y28_N24
\Cap|BUF|reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|BUF|reg[0]~feeder_combout\ = \Cap|ACC|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|ACC|reg\(2),
	combout => \Cap|BUF|reg[0]~feeder_combout\);

-- Location: FF_X31_Y28_N25
\Cap|BUF|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \Cap|BUF|reg[0]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|BUF|reg\(0));

-- Location: LCCOMB_X32_Y26_N22
\Cap|pixel_per_line_counter_aux[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|pixel_per_line_counter_aux[1]~1_combout\ = \Cap|pixel_per_line_counter_aux\(1) $ (((\Cap|pixel_per_line_counter_aux\(0) & (\HREF~input_o\ & \Cap|start_counting|delayed_output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cap|pixel_per_line_counter_aux\(0),
	datab => \HREF~input_o\,
	datac => \Cap|pixel_per_line_counter_aux\(1),
	datad => \Cap|start_counting|delayed_output~q\,
	combout => \Cap|pixel_per_line_counter_aux[1]~1_combout\);

-- Location: FF_X32_Y26_N23
\Cap|pixel_per_line_counter_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \Cap|pixel_per_line_counter_aux[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|pixel_per_line_counter_aux\(1));

-- Location: LCCOMB_X32_Y26_N0
\Cap|line_counter_aux[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|line_counter_aux[1]~0_combout\ = (\HREF~input_o\ & (\Cap|pixel_per_line_counter_aux\(0) & (\Cap|pixel_per_line_counter_aux\(1) & \Cap|start_counting|delayed_output~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HREF~input_o\,
	datab => \Cap|pixel_per_line_counter_aux\(0),
	datac => \Cap|pixel_per_line_counter_aux\(1),
	datad => \Cap|start_counting|delayed_output~q\,
	combout => \Cap|line_counter_aux[1]~0_combout\);

-- Location: LCCOMB_X32_Y26_N4
\Cap|line_counter_aux[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|line_counter_aux[0]~1_combout\ = \Cap|line_counter_aux\(0) $ (\Cap|line_counter_aux[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|line_counter_aux\(0),
	datad => \Cap|line_counter_aux[1]~0_combout\,
	combout => \Cap|line_counter_aux[0]~1_combout\);

-- Location: FF_X32_Y26_N5
\Cap|line_counter_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \Cap|line_counter_aux[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|line_counter_aux\(0));

-- Location: LCCOMB_X32_Y26_N6
\Cap|line_counter_aux[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|line_counter_aux[1]~2_combout\ = ((!\Cap|pixel_per_line_counter_aux\(0)) # (!\Cap|line_counter_aux\(0))) # (!\HREF~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HREF~input_o\,
	datac => \Cap|line_counter_aux\(0),
	datad => \Cap|pixel_per_line_counter_aux\(0),
	combout => \Cap|line_counter_aux[1]~2_combout\);

-- Location: LCCOMB_X32_Y26_N18
\Cap|line_counter_aux[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|line_counter_aux[1]~3_combout\ = \Cap|line_counter_aux\(1) $ (((\Cap|start_counting|delayed_output~q\ & (\Cap|pixel_per_line_counter_aux\(1) & !\Cap|line_counter_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cap|start_counting|delayed_output~q\,
	datab => \Cap|pixel_per_line_counter_aux\(1),
	datac => \Cap|line_counter_aux\(1),
	datad => \Cap|line_counter_aux[1]~2_combout\,
	combout => \Cap|line_counter_aux[1]~3_combout\);

-- Location: FF_X32_Y26_N19
\Cap|line_counter_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \Cap|line_counter_aux[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|line_counter_aux\(1));

-- Location: LCCOMB_X31_Y26_N12
\address[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address[3]~feeder_combout\ = \Cap|line_counter_aux\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|line_counter_aux\(1),
	combout => \address[3]~feeder_combout\);

-- Location: FF_X31_Y26_N13
\address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \address[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(3));

-- Location: LCCOMB_X31_Y26_N30
\address[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address[1]~feeder_combout\ = \Cap|pixel_per_line_counter_aux\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|pixel_per_line_counter_aux\(1),
	combout => \address[1]~feeder_combout\);

-- Location: FF_X31_Y26_N31
\address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \address[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(1));

-- Location: LCCOMB_X31_Y26_N26
\address[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address[2]~feeder_combout\ = \Cap|line_counter_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|line_counter_aux\(0),
	combout => \address[2]~feeder_combout\);

-- Location: FF_X31_Y26_N27
\address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \address[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(2));

-- Location: LCCOMB_X30_Y26_N2
\wr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wr~0_combout\ = !\wr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr~q\,
	combout => \wr~0_combout\);

-- Location: FF_X30_Y26_N3
wr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PCLK~inputclkctrl_outclk\,
	d => \wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wr~q\);

-- Location: LCCOMB_X31_Y26_N20
\Load_Store|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~6_combout\ = (address(1) & (address(0) & (address(2) & \wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(0),
	datac => address(2),
	datad => \wr~q\,
	combout => \Load_Store|Decoder0~6_combout\);

-- Location: LCCOMB_X30_Y27_N28
\Load_Store|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~7_combout\ = (!address(3) & \Load_Store|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datad => \Load_Store|Decoder0~6_combout\,
	combout => \Load_Store|Decoder0~7_combout\);

-- Location: FF_X30_Y27_N29
\Load_Store|ram[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[7][0]~q\);

-- Location: LCCOMB_X31_Y26_N24
\Load_Store|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~0_combout\ = (!address(3) & address(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datad => address(2),
	combout => \Load_Store|Decoder0~0_combout\);

-- Location: LCCOMB_X28_Y27_N2
\Load_Store|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~1_combout\ = (address(0) & (\wr~q\ & (!address(1) & \Load_Store|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \wr~q\,
	datac => address(1),
	datad => \Load_Store|Decoder0~0_combout\,
	combout => \Load_Store|Decoder0~1_combout\);

-- Location: FF_X28_Y27_N17
\Load_Store|ram[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[5][0]~q\);

-- Location: LCCOMB_X30_Y26_N24
\Load_Store|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~2_combout\ = (address(1) & (\wr~q\ & (!address(0) & address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \wr~q\,
	datac => address(0),
	datad => address(2),
	combout => \Load_Store|Decoder0~2_combout\);

-- Location: LCCOMB_X30_Y26_N20
\Load_Store|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~3_combout\ = (!address(3) & \Load_Store|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~2_combout\,
	combout => \Load_Store|Decoder0~3_combout\);

-- Location: FF_X30_Y26_N21
\Load_Store|ram[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[6][0]~q\);

-- Location: LCCOMB_X31_Y26_N2
\Load_Store|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~4_combout\ = (!address(1) & (!address(0) & (address(2) & \wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(0),
	datac => address(2),
	datad => \wr~q\,
	combout => \Load_Store|Decoder0~4_combout\);

-- Location: LCCOMB_X31_Y26_N16
\Load_Store|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~5_combout\ = (!address(3) & \Load_Store|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datad => \Load_Store|Decoder0~4_combout\,
	combout => \Load_Store|Decoder0~5_combout\);

-- Location: FF_X31_Y26_N25
\Load_Store|ram[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[4][0]~q\);

-- Location: LCCOMB_X28_Y27_N10
\Load_Store|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~0_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & (\Load_Store|ram[6][0]~q\)) # (!address(1) & ((\Load_Store|ram[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[6][0]~q\,
	datab => \Load_Store|ram[4][0]~q\,
	datac => address(0),
	datad => address(1),
	combout => \Load_Store|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y27_N16
\Load_Store|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~1_combout\ = (address(0) & ((\Load_Store|Mux3~0_combout\ & (\Load_Store|ram[7][0]~q\)) # (!\Load_Store|Mux3~0_combout\ & ((\Load_Store|ram[5][0]~q\))))) # (!address(0) & (((\Load_Store|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \Load_Store|ram[7][0]~q\,
	datac => \Load_Store|ram[5][0]~q\,
	datad => \Load_Store|Mux3~0_combout\,
	combout => \Load_Store|Mux3~1_combout\);

-- Location: LCCOMB_X32_Y26_N24
\Load_Store|ram[10][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[10][0]~feeder_combout\ = \Cap|BUF|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(0),
	combout => \Load_Store|ram[10][0]~feeder_combout\);

-- Location: LCCOMB_X31_Y26_N18
\Load_Store|Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~8_combout\ = (address(1) & (!address(0) & (!address(2) & \wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(0),
	datac => address(2),
	datad => \wr~q\,
	combout => \Load_Store|Decoder0~8_combout\);

-- Location: LCCOMB_X32_Y26_N8
\Load_Store|Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~9_combout\ = (address(3) & \Load_Store|Decoder0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~8_combout\,
	combout => \Load_Store|Decoder0~9_combout\);

-- Location: FF_X32_Y26_N25
\Load_Store|ram[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[10][0]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[10][0]~q\);

-- Location: LCCOMB_X30_Y27_N2
\Load_Store|Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~14_combout\ = (!address(2) & (address(0) & (address(1) & \wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(0),
	datac => address(1),
	datad => \wr~q\,
	combout => \Load_Store|Decoder0~14_combout\);

-- Location: LCCOMB_X31_Y27_N4
\Load_Store|Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~15_combout\ = (address(3) & \Load_Store|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~14_combout\,
	combout => \Load_Store|Decoder0~15_combout\);

-- Location: FF_X31_Y27_N23
\Load_Store|ram[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[11][0]~q\);

-- Location: LCCOMB_X31_Y25_N4
\Load_Store|ram[8][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[8][0]~feeder_combout\ = \Cap|BUF|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(0),
	combout => \Load_Store|ram[8][0]~feeder_combout\);

-- Location: LCCOMB_X30_Y26_N8
\Load_Store|Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~12_combout\ = (!address(1) & (\wr~q\ & (!address(0) & !address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \wr~q\,
	datac => address(0),
	datad => address(2),
	combout => \Load_Store|Decoder0~12_combout\);

-- Location: LCCOMB_X31_Y25_N12
\Load_Store|Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~13_combout\ = (address(3) & \Load_Store|Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~12_combout\,
	combout => \Load_Store|Decoder0~13_combout\);

-- Location: FF_X31_Y25_N5
\Load_Store|ram[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[8][0]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[8][0]~q\);

-- Location: LCCOMB_X30_Y28_N12
\Load_Store|ram[9][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[9][0]~feeder_combout\ = \Cap|BUF|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(0),
	combout => \Load_Store|ram[9][0]~feeder_combout\);

-- Location: LCCOMB_X30_Y26_N6
\Load_Store|Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~10_combout\ = (!address(1) & (\wr~q\ & (address(0) & !address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \wr~q\,
	datac => address(0),
	datad => address(2),
	combout => \Load_Store|Decoder0~10_combout\);

-- Location: LCCOMB_X30_Y28_N10
\Load_Store|Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~11_combout\ = (address(3) & \Load_Store|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~10_combout\,
	combout => \Load_Store|Decoder0~11_combout\);

-- Location: FF_X30_Y28_N13
\Load_Store|ram[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[9][0]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[9][0]~q\);

-- Location: LCCOMB_X31_Y27_N16
\Load_Store|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~2_combout\ = (address(1) & (((address(0))))) # (!address(1) & ((address(0) & ((\Load_Store|ram[9][0]~q\))) # (!address(0) & (\Load_Store|ram[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[8][0]~q\,
	datab => \Load_Store|ram[9][0]~q\,
	datac => address(1),
	datad => address(0),
	combout => \Load_Store|Mux3~2_combout\);

-- Location: LCCOMB_X31_Y27_N22
\Load_Store|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~3_combout\ = (address(1) & ((\Load_Store|Mux3~2_combout\ & ((\Load_Store|ram[11][0]~q\))) # (!\Load_Store|Mux3~2_combout\ & (\Load_Store|ram[10][0]~q\)))) # (!address(1) & (((\Load_Store|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[10][0]~q\,
	datab => address(1),
	datac => \Load_Store|ram[11][0]~q\,
	datad => \Load_Store|Mux3~2_combout\,
	combout => \Load_Store|Mux3~3_combout\);

-- Location: LCCOMB_X30_Y27_N30
\Load_Store|Decoder0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~16_combout\ = (!address(0) & !address(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(0),
	datad => address(3),
	combout => \Load_Store|Decoder0~16_combout\);

-- Location: LCCOMB_X30_Y27_N0
\Load_Store|Decoder0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~17_combout\ = (\wr~q\ & (address(1) & (\Load_Store|Decoder0~16_combout\ & !address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~q\,
	datab => address(1),
	datac => \Load_Store|Decoder0~16_combout\,
	datad => address(2),
	combout => \Load_Store|Decoder0~17_combout\);

-- Location: FF_X30_Y27_N31
\Load_Store|ram[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[2][0]~q\);

-- Location: LCCOMB_X29_Y27_N30
\Load_Store|Decoder0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~20_combout\ = (!address(3) & \Load_Store|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~14_combout\,
	combout => \Load_Store|Decoder0~20_combout\);

-- Location: FF_X29_Y27_N13
\Load_Store|ram[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[3][0]~q\);

-- Location: LCCOMB_X29_Y26_N26
\Load_Store|ram[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[0][0]~feeder_combout\ = \Cap|BUF|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(0),
	combout => \Load_Store|ram[0][0]~feeder_combout\);

-- Location: LCCOMB_X29_Y26_N22
\Load_Store|Decoder0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~19_combout\ = (!address(3) & \Load_Store|Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~12_combout\,
	combout => \Load_Store|Decoder0~19_combout\);

-- Location: FF_X29_Y26_N27
\Load_Store|ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[0][0]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[0][0]~q\);

-- Location: LCCOMB_X29_Y26_N4
\Load_Store|Decoder0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~18_combout\ = (!address(3) & \Load_Store|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~10_combout\,
	combout => \Load_Store|Decoder0~18_combout\);

-- Location: FF_X29_Y26_N5
\Load_Store|ram[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[1][0]~q\);

-- Location: LCCOMB_X30_Y27_N16
\Load_Store|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~4_combout\ = (address(0) & (((address(1)) # (\Load_Store|ram[1][0]~q\)))) # (!address(0) & (\Load_Store|ram[0][0]~q\ & (!address(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[0][0]~q\,
	datab => address(0),
	datac => address(1),
	datad => \Load_Store|ram[1][0]~q\,
	combout => \Load_Store|Mux3~4_combout\);

-- Location: LCCOMB_X29_Y27_N12
\Load_Store|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~5_combout\ = (address(1) & ((\Load_Store|Mux3~4_combout\ & ((\Load_Store|ram[3][0]~q\))) # (!\Load_Store|Mux3~4_combout\ & (\Load_Store|ram[2][0]~q\)))) # (!address(1) & (((\Load_Store|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[2][0]~q\,
	datab => address(1),
	datac => \Load_Store|ram[3][0]~q\,
	datad => \Load_Store|Mux3~4_combout\,
	combout => \Load_Store|Mux3~5_combout\);

-- Location: LCCOMB_X29_Y27_N14
\Load_Store|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~6_combout\ = (address(2) & (address(3))) # (!address(2) & ((address(3) & (\Load_Store|Mux3~3_combout\)) # (!address(3) & ((\Load_Store|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	datac => \Load_Store|Mux3~3_combout\,
	datad => \Load_Store|Mux3~5_combout\,
	combout => \Load_Store|Mux3~6_combout\);

-- Location: LCCOMB_X30_Y26_N30
\Load_Store|Decoder0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~21_combout\ = (\wr~q\ & (address(0) & (!address(1) & address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~q\,
	datab => address(0),
	datac => address(1),
	datad => address(2),
	combout => \Load_Store|Decoder0~21_combout\);

-- Location: LCCOMB_X31_Y25_N22
\Load_Store|Decoder0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~22_combout\ = (address(3) & \Load_Store|Decoder0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~21_combout\,
	combout => \Load_Store|Decoder0~22_combout\);

-- Location: FF_X31_Y25_N23
\Load_Store|ram[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[13][0]~q\);

-- Location: LCCOMB_X30_Y28_N8
\Load_Store|Decoder0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~25_combout\ = (address(3) & \Load_Store|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~6_combout\,
	combout => \Load_Store|Decoder0~25_combout\);

-- Location: FF_X30_Y28_N25
\Load_Store|ram[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[15][0]~q\);

-- Location: LCCOMB_X28_Y26_N24
\Load_Store|Decoder0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~23_combout\ = (address(3) & \Load_Store|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~2_combout\,
	combout => \Load_Store|Decoder0~23_combout\);

-- Location: FF_X28_Y26_N25
\Load_Store|ram[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(0),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[14][0]~q\);

-- Location: LCCOMB_X31_Y28_N28
\Load_Store|ram[12][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[12][0]~feeder_combout\ = \Cap|BUF|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(0),
	combout => \Load_Store|ram[12][0]~feeder_combout\);

-- Location: LCCOMB_X31_Y28_N8
\Load_Store|Decoder0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Decoder0~24_combout\ = (address(3) & \Load_Store|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(3),
	datad => \Load_Store|Decoder0~4_combout\,
	combout => \Load_Store|Decoder0~24_combout\);

-- Location: FF_X31_Y28_N29
\Load_Store|ram[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[12][0]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[12][0]~q\);

-- Location: LCCOMB_X30_Y28_N18
\Load_Store|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~7_combout\ = (address(1) & ((\Load_Store|ram[14][0]~q\) # ((address(0))))) # (!address(1) & (((\Load_Store|ram[12][0]~q\ & !address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[14][0]~q\,
	datab => \Load_Store|ram[12][0]~q\,
	datac => address(1),
	datad => address(0),
	combout => \Load_Store|Mux3~7_combout\);

-- Location: LCCOMB_X30_Y28_N24
\Load_Store|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~8_combout\ = (address(0) & ((\Load_Store|Mux3~7_combout\ & ((\Load_Store|ram[15][0]~q\))) # (!\Load_Store|Mux3~7_combout\ & (\Load_Store|ram[13][0]~q\)))) # (!address(0) & (((\Load_Store|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[13][0]~q\,
	datab => address(0),
	datac => \Load_Store|ram[15][0]~q\,
	datad => \Load_Store|Mux3~7_combout\,
	combout => \Load_Store|Mux3~8_combout\);

-- Location: LCCOMB_X29_Y27_N24
\Load_Store|Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux3~9_combout\ = (address(2) & ((\Load_Store|Mux3~6_combout\ & ((\Load_Store|Mux3~8_combout\))) # (!\Load_Store|Mux3~6_combout\ & (\Load_Store|Mux3~1_combout\)))) # (!address(2) & (((\Load_Store|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|Mux3~1_combout\,
	datab => address(2),
	datac => \Load_Store|Mux3~6_combout\,
	datad => \Load_Store|Mux3~8_combout\,
	combout => \Load_Store|Mux3~9_combout\);

-- Location: LCCOMB_X29_Y27_N28
\Load_Store|data_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|data_out[0]~0_combout\ = (\RST~input_o\ & !\wr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \wr~q\,
	combout => \Load_Store|data_out[0]~0_combout\);

-- Location: FF_X29_Y27_N25
\Load_Store|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|Mux3~9_combout\,
	ena => \Load_Store|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|data_out\(0));

-- Location: IOIBUF_X32_Y29_N22
\D_IN[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(7),
	o => \D_IN[7]~input_o\);

-- Location: LCCOMB_X32_Y28_N30
\Cap|ER|reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|ER|reg[7]~feeder_combout\ = \D_IN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_IN[7]~input_o\,
	combout => \Cap|ER|reg[7]~feeder_combout\);

-- Location: FF_X32_Y28_N31
\Cap|ER|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Cap|ER|reg[7]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ER|reg\(7));

-- Location: IOIBUF_X32_Y29_N8
\D_IN[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_IN(3),
	o => \D_IN[3]~input_o\);

-- Location: FF_X32_Y28_N13
\Cap|ER|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \D_IN[3]~input_o\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ER|reg\(3));

-- Location: LCCOMB_X32_Y28_N12
\Cap|mux_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|mux_out[3]~3_combout\ = (\Cap|DIV|Clk_aux~q\ & (\Cap|ER|reg\(3))) # (!\Cap|DIV|Clk_aux~q\ & ((\Cap|ACC|reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cap|DIV|Clk_aux~q\,
	datac => \Cap|ER|reg\(3),
	datad => \Cap|ACC|reg\(3),
	combout => \Cap|mux_out[3]~3_combout\);

-- Location: LCCOMB_X32_Y28_N20
\Cap|ACC|reg[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|ACC|reg[3]~12_combout\ = (\Cap|ER|reg\(7) & ((\Cap|mux_out[3]~3_combout\ & (\Cap|ACC|reg[2]~11\ & VCC)) # (!\Cap|mux_out[3]~3_combout\ & (!\Cap|ACC|reg[2]~11\)))) # (!\Cap|ER|reg\(7) & ((\Cap|mux_out[3]~3_combout\ & (!\Cap|ACC|reg[2]~11\)) # 
-- (!\Cap|mux_out[3]~3_combout\ & ((\Cap|ACC|reg[2]~11\) # (GND)))))
-- \Cap|ACC|reg[3]~13\ = CARRY((\Cap|ER|reg\(7) & (!\Cap|mux_out[3]~3_combout\ & !\Cap|ACC|reg[2]~11\)) # (!\Cap|ER|reg\(7) & ((!\Cap|ACC|reg[2]~11\) # (!\Cap|mux_out[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cap|ER|reg\(7),
	datab => \Cap|mux_out[3]~3_combout\,
	datad => VCC,
	cin => \Cap|ACC|reg[2]~11\,
	combout => \Cap|ACC|reg[3]~12_combout\,
	cout => \Cap|ACC|reg[3]~13\);

-- Location: FF_X32_Y28_N21
\Cap|ACC|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PCLK~inputclkctrl_outclk\,
	d => \Cap|ACC|reg[3]~12_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ACC|reg\(3));

-- Location: LCCOMB_X31_Y28_N30
\Cap|BUF|reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|BUF|reg[1]~feeder_combout\ = \Cap|ACC|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|ACC|reg\(3),
	combout => \Cap|BUF|reg[1]~feeder_combout\);

-- Location: FF_X31_Y28_N31
\Cap|BUF|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \Cap|BUF|reg[1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|BUF|reg\(1));

-- Location: FF_X30_Y28_N9
\Load_Store|ram[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(1),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[15][1]~q\);

-- Location: LCCOMB_X31_Y25_N6
\Load_Store|ram[13][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[13][1]~feeder_combout\ = \Cap|BUF|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(1),
	combout => \Load_Store|ram[13][1]~feeder_combout\);

-- Location: FF_X31_Y25_N7
\Load_Store|ram[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[13][1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[13][1]~q\);

-- Location: FF_X31_Y27_N5
\Load_Store|ram[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(1),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[11][1]~q\);

-- Location: LCCOMB_X30_Y28_N30
\Load_Store|ram[9][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[9][1]~feeder_combout\ = \Cap|BUF|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(1),
	combout => \Load_Store|ram[9][1]~feeder_combout\);

-- Location: FF_X30_Y28_N31
\Load_Store|ram[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[9][1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[9][1]~q\);

-- Location: LCCOMB_X30_Y27_N10
\Load_Store|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~7_combout\ = (address(1) & ((\Load_Store|ram[11][1]~q\) # ((address(2))))) # (!address(1) & (((\Load_Store|ram[9][1]~q\ & !address(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[11][1]~q\,
	datab => \Load_Store|ram[9][1]~q\,
	datac => address(1),
	datad => address(2),
	combout => \Load_Store|Mux2~7_combout\);

-- Location: LCCOMB_X30_Y27_N12
\Load_Store|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~8_combout\ = (address(2) & ((\Load_Store|Mux2~7_combout\ & (\Load_Store|ram[15][1]~q\)) # (!\Load_Store|Mux2~7_combout\ & ((\Load_Store|ram[13][1]~q\))))) # (!address(2) & (((\Load_Store|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[15][1]~q\,
	datab => address(2),
	datac => \Load_Store|ram[13][1]~q\,
	datad => \Load_Store|Mux2~7_combout\,
	combout => \Load_Store|Mux2~8_combout\);

-- Location: LCCOMB_X30_Y26_N26
\Load_Store|ram[6][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[6][1]~feeder_combout\ = \Cap|BUF|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(1),
	combout => \Load_Store|ram[6][1]~feeder_combout\);

-- Location: FF_X30_Y26_N27
\Load_Store|ram[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[6][1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[6][1]~q\);

-- Location: FF_X31_Y26_N17
\Load_Store|ram[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(1),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[4][1]~q\);

-- Location: FF_X29_Y26_N23
\Load_Store|ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(1),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[0][1]~q\);

-- Location: LCCOMB_X30_Y27_N24
\Load_Store|ram[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[2][1]~feeder_combout\ = \Cap|BUF|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(1),
	combout => \Load_Store|ram[2][1]~feeder_combout\);

-- Location: FF_X30_Y27_N25
\Load_Store|ram[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[2][1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[2][1]~q\);

-- Location: LCCOMB_X31_Y26_N6
\Load_Store|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~4_combout\ = (address(1) & (((\Load_Store|ram[2][1]~q\) # (address(2))))) # (!address(1) & (\Load_Store|ram[0][1]~q\ & ((!address(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[0][1]~q\,
	datab => \Load_Store|ram[2][1]~q\,
	datac => address(1),
	datad => address(2),
	combout => \Load_Store|Mux2~4_combout\);

-- Location: LCCOMB_X31_Y26_N4
\Load_Store|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~5_combout\ = (address(2) & ((\Load_Store|Mux2~4_combout\ & (\Load_Store|ram[6][1]~q\)) # (!\Load_Store|Mux2~4_combout\ & ((\Load_Store|ram[4][1]~q\))))) # (!address(2) & (((\Load_Store|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[6][1]~q\,
	datab => \Load_Store|ram[4][1]~q\,
	datac => address(2),
	datad => \Load_Store|Mux2~4_combout\,
	combout => \Load_Store|Mux2~5_combout\);

-- Location: LCCOMB_X28_Y27_N8
\Load_Store|ram[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[5][1]~feeder_combout\ = \Cap|BUF|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(1),
	combout => \Load_Store|ram[5][1]~feeder_combout\);

-- Location: FF_X28_Y27_N9
\Load_Store|ram[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[5][1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[5][1]~q\);

-- Location: LCCOMB_X30_Y27_N22
\Load_Store|ram[7][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[7][1]~feeder_combout\ = \Cap|BUF|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(1),
	combout => \Load_Store|ram[7][1]~feeder_combout\);

-- Location: FF_X30_Y27_N23
\Load_Store|ram[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[7][1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[7][1]~q\);

-- Location: FF_X29_Y27_N31
\Load_Store|ram[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(1),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[3][1]~q\);

-- Location: FF_X29_Y26_N1
\Load_Store|ram[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(1),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[1][1]~q\);

-- Location: LCCOMB_X29_Y26_N0
\Load_Store|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~2_combout\ = (address(2) & (((address(1))))) # (!address(2) & ((address(1) & (\Load_Store|ram[3][1]~q\)) # (!address(1) & ((\Load_Store|ram[1][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => \Load_Store|ram[3][1]~q\,
	datac => \Load_Store|ram[1][1]~q\,
	datad => address(1),
	combout => \Load_Store|Mux2~2_combout\);

-- Location: LCCOMB_X29_Y27_N0
\Load_Store|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~3_combout\ = (address(2) & ((\Load_Store|Mux2~2_combout\ & ((\Load_Store|ram[7][1]~q\))) # (!\Load_Store|Mux2~2_combout\ & (\Load_Store|ram[5][1]~q\)))) # (!address(2) & (((\Load_Store|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[5][1]~q\,
	datab => \Load_Store|ram[7][1]~q\,
	datac => address(2),
	datad => \Load_Store|Mux2~2_combout\,
	combout => \Load_Store|Mux2~3_combout\);

-- Location: LCCOMB_X29_Y27_N26
\Load_Store|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~6_combout\ = (address(3) & (address(0))) # (!address(3) & ((address(0) & ((\Load_Store|Mux2~3_combout\))) # (!address(0) & (\Load_Store|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(0),
	datac => \Load_Store|Mux2~5_combout\,
	datad => \Load_Store|Mux2~3_combout\,
	combout => \Load_Store|Mux2~6_combout\);

-- Location: LCCOMB_X31_Y28_N26
\Load_Store|ram[12][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[12][1]~feeder_combout\ = \Cap|BUF|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(1),
	combout => \Load_Store|ram[12][1]~feeder_combout\);

-- Location: FF_X31_Y28_N27
\Load_Store|ram[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[12][1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[12][1]~q\);

-- Location: LCCOMB_X28_Y26_N10
\Load_Store|ram[14][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[14][1]~feeder_combout\ = \Cap|BUF|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(1),
	combout => \Load_Store|ram[14][1]~feeder_combout\);

-- Location: FF_X28_Y26_N11
\Load_Store|ram[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[14][1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[14][1]~q\);

-- Location: FF_X31_Y25_N13
\Load_Store|ram[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(1),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[8][1]~q\);

-- Location: LCCOMB_X32_Y26_N14
\Load_Store|ram[10][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[10][1]~feeder_combout\ = \Cap|BUF|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(1),
	combout => \Load_Store|ram[10][1]~feeder_combout\);

-- Location: FF_X32_Y26_N15
\Load_Store|ram[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[10][1]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[10][1]~q\);

-- Location: LCCOMB_X31_Y26_N14
\Load_Store|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~0_combout\ = (address(2) & (((address(1))))) # (!address(2) & ((address(1) & ((\Load_Store|ram[10][1]~q\))) # (!address(1) & (\Load_Store|ram[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[8][1]~q\,
	datab => \Load_Store|ram[10][1]~q\,
	datac => address(2),
	datad => address(1),
	combout => \Load_Store|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y26_N16
\Load_Store|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~1_combout\ = (\Load_Store|Mux2~0_combout\ & (((\Load_Store|ram[14][1]~q\) # (!address(2))))) # (!\Load_Store|Mux2~0_combout\ & (\Load_Store|ram[12][1]~q\ & ((address(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[12][1]~q\,
	datab => \Load_Store|ram[14][1]~q\,
	datac => \Load_Store|Mux2~0_combout\,
	datad => address(2),
	combout => \Load_Store|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y27_N18
\Load_Store|Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux2~9_combout\ = (address(3) & ((\Load_Store|Mux2~6_combout\ & (\Load_Store|Mux2~8_combout\)) # (!\Load_Store|Mux2~6_combout\ & ((\Load_Store|Mux2~1_combout\))))) # (!address(3) & (((\Load_Store|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => \Load_Store|Mux2~8_combout\,
	datac => \Load_Store|Mux2~6_combout\,
	datad => \Load_Store|Mux2~1_combout\,
	combout => \Load_Store|Mux2~9_combout\);

-- Location: FF_X29_Y27_N19
\Load_Store|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|Mux2~9_combout\,
	ena => \Load_Store|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|data_out\(1));

-- Location: LCCOMB_X32_Y28_N22
\Cap|ACC|reg[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|ACC|reg[4]~14_combout\ = (\Cap|ACC|reg[3]~13\ & (\Cap|ACC|reg\(4) & (!\Cap|DIV|Clk_aux~q\ & VCC))) # (!\Cap|ACC|reg[3]~13\ & ((((\Cap|ACC|reg\(4) & !\Cap|DIV|Clk_aux~q\)))))
-- \Cap|ACC|reg[4]~15\ = CARRY((\Cap|ACC|reg\(4) & (!\Cap|DIV|Clk_aux~q\ & !\Cap|ACC|reg[3]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cap|ACC|reg\(4),
	datab => \Cap|DIV|Clk_aux~q\,
	datad => VCC,
	cin => \Cap|ACC|reg[3]~13\,
	combout => \Cap|ACC|reg[4]~14_combout\,
	cout => \Cap|ACC|reg[4]~15\);

-- Location: FF_X32_Y28_N23
\Cap|ACC|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PCLK~inputclkctrl_outclk\,
	d => \Cap|ACC|reg[4]~14_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ACC|reg\(4));

-- Location: LCCOMB_X31_Y28_N20
\Cap|BUF|reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|BUF|reg[2]~feeder_combout\ = \Cap|ACC|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|ACC|reg\(4),
	combout => \Cap|BUF|reg[2]~feeder_combout\);

-- Location: FF_X31_Y28_N21
\Cap|BUF|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \Cap|BUF|reg[2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|BUF|reg\(2));

-- Location: LCCOMB_X28_Y26_N16
\Load_Store|ram[14][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[14][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[14][2]~feeder_combout\);

-- Location: FF_X28_Y26_N17
\Load_Store|ram[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[14][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[14][2]~q\);

-- Location: LCCOMB_X30_Y28_N28
\Load_Store|ram[15][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[15][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[15][2]~feeder_combout\);

-- Location: FF_X30_Y28_N29
\Load_Store|ram[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[15][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[15][2]~q\);

-- Location: FF_X32_Y26_N9
\Load_Store|ram[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(2),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[10][2]~q\);

-- Location: LCCOMB_X31_Y27_N30
\Load_Store|ram[11][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[11][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[11][2]~feeder_combout\);

-- Location: FF_X31_Y27_N31
\Load_Store|ram[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[11][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[11][2]~q\);

-- Location: LCCOMB_X30_Y26_N18
\Load_Store|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~7_combout\ = (address(0) & (((\Load_Store|ram[11][2]~q\) # (address(2))))) # (!address(0) & (\Load_Store|ram[10][2]~q\ & ((!address(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[10][2]~q\,
	datab => \Load_Store|ram[11][2]~q\,
	datac => address(0),
	datad => address(2),
	combout => \Load_Store|Mux1~7_combout\);

-- Location: LCCOMB_X30_Y26_N0
\Load_Store|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~8_combout\ = (address(2) & ((\Load_Store|Mux1~7_combout\ & ((\Load_Store|ram[15][2]~q\))) # (!\Load_Store|Mux1~7_combout\ & (\Load_Store|ram[14][2]~q\)))) # (!address(2) & (((\Load_Store|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[14][2]~q\,
	datab => address(2),
	datac => \Load_Store|ram[15][2]~q\,
	datad => \Load_Store|Mux1~7_combout\,
	combout => \Load_Store|Mux1~8_combout\);

-- Location: LCCOMB_X30_Y28_N2
\Load_Store|ram[9][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[9][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[9][2]~feeder_combout\);

-- Location: FF_X30_Y28_N3
\Load_Store|ram[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[9][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[9][2]~q\);

-- Location: LCCOMB_X31_Y25_N18
\Load_Store|ram[13][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[13][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[13][2]~feeder_combout\);

-- Location: FF_X31_Y25_N19
\Load_Store|ram[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[13][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[13][2]~q\);

-- Location: FF_X31_Y28_N9
\Load_Store|ram[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(2),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[12][2]~q\);

-- Location: LCCOMB_X31_Y25_N20
\Load_Store|ram[8][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[8][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[8][2]~feeder_combout\);

-- Location: FF_X31_Y25_N21
\Load_Store|ram[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[8][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[8][2]~q\);

-- Location: LCCOMB_X31_Y27_N2
\Load_Store|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~0_combout\ = (address(0) & (((address(2))))) # (!address(0) & ((address(2) & (\Load_Store|ram[12][2]~q\)) # (!address(2) & ((\Load_Store|ram[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[12][2]~q\,
	datab => \Load_Store|ram[8][2]~q\,
	datac => address(0),
	datad => address(2),
	combout => \Load_Store|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y27_N24
\Load_Store|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~1_combout\ = (address(0) & ((\Load_Store|Mux1~0_combout\ & ((\Load_Store|ram[13][2]~q\))) # (!\Load_Store|Mux1~0_combout\ & (\Load_Store|ram[9][2]~q\)))) # (!address(0) & (((\Load_Store|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[9][2]~q\,
	datab => address(0),
	datac => \Load_Store|ram[13][2]~q\,
	datad => \Load_Store|Mux1~0_combout\,
	combout => \Load_Store|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y26_N28
\Load_Store|ram[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[1][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[1][2]~feeder_combout\);

-- Location: FF_X29_Y26_N29
\Load_Store|ram[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[1][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[1][2]~q\);

-- Location: FF_X28_Y27_N7
\Load_Store|ram[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(2),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[5][2]~q\);

-- Location: LCCOMB_X31_Y26_N10
\Load_Store|ram[4][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[4][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[4][2]~feeder_combout\);

-- Location: FF_X31_Y26_N11
\Load_Store|ram[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[4][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[4][2]~q\);

-- Location: LCCOMB_X29_Y26_N30
\Load_Store|ram[0][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[0][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[0][2]~feeder_combout\);

-- Location: FF_X29_Y26_N31
\Load_Store|ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[0][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[0][2]~q\);

-- Location: LCCOMB_X31_Y26_N0
\Load_Store|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~4_combout\ = (address(0) & (((address(2))))) # (!address(0) & ((address(2) & (\Load_Store|ram[4][2]~q\)) # (!address(2) & ((\Load_Store|ram[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[4][2]~q\,
	datab => \Load_Store|ram[0][2]~q\,
	datac => address(0),
	datad => address(2),
	combout => \Load_Store|Mux1~4_combout\);

-- Location: LCCOMB_X28_Y27_N6
\Load_Store|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~5_combout\ = (address(0) & ((\Load_Store|Mux1~4_combout\ & ((\Load_Store|ram[5][2]~q\))) # (!\Load_Store|Mux1~4_combout\ & (\Load_Store|ram[1][2]~q\)))) # (!address(0) & (((\Load_Store|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \Load_Store|ram[1][2]~q\,
	datac => \Load_Store|ram[5][2]~q\,
	datad => \Load_Store|Mux1~4_combout\,
	combout => \Load_Store|Mux1~5_combout\);

-- Location: LCCOMB_X30_Y26_N4
\Load_Store|ram[6][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[6][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[6][2]~feeder_combout\);

-- Location: FF_X30_Y26_N5
\Load_Store|ram[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[6][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[6][2]~q\);

-- Location: FF_X30_Y27_N5
\Load_Store|ram[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(2),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[7][2]~q\);

-- Location: LCCOMB_X29_Y27_N20
\Load_Store|ram[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[3][2]~feeder_combout\ = \Cap|BUF|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(2),
	combout => \Load_Store|ram[3][2]~feeder_combout\);

-- Location: FF_X29_Y27_N21
\Load_Store|ram[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[3][2]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[3][2]~q\);

-- Location: FF_X30_Y27_N19
\Load_Store|ram[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(2),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[2][2]~q\);

-- Location: LCCOMB_X30_Y27_N18
\Load_Store|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~2_combout\ = (address(0) & ((\Load_Store|ram[3][2]~q\) # ((address(2))))) # (!address(0) & (((\Load_Store|ram[2][2]~q\ & !address(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[3][2]~q\,
	datab => address(0),
	datac => \Load_Store|ram[2][2]~q\,
	datad => address(2),
	combout => \Load_Store|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y27_N4
\Load_Store|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~3_combout\ = (address(2) & ((\Load_Store|Mux1~2_combout\ & ((\Load_Store|ram[7][2]~q\))) # (!\Load_Store|Mux1~2_combout\ & (\Load_Store|ram[6][2]~q\)))) # (!address(2) & (((\Load_Store|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[6][2]~q\,
	datab => address(2),
	datac => \Load_Store|ram[7][2]~q\,
	datad => \Load_Store|Mux1~2_combout\,
	combout => \Load_Store|Mux1~3_combout\);

-- Location: LCCOMB_X29_Y27_N6
\Load_Store|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~6_combout\ = (address(3) & (address(1))) # (!address(3) & ((address(1) & ((\Load_Store|Mux1~3_combout\))) # (!address(1) & (\Load_Store|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(1),
	datac => \Load_Store|Mux1~5_combout\,
	datad => \Load_Store|Mux1~3_combout\,
	combout => \Load_Store|Mux1~6_combout\);

-- Location: LCCOMB_X29_Y27_N16
\Load_Store|Mux1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux1~9_combout\ = (address(3) & ((\Load_Store|Mux1~6_combout\ & (\Load_Store|Mux1~8_combout\)) # (!\Load_Store|Mux1~6_combout\ & ((\Load_Store|Mux1~1_combout\))))) # (!address(3) & (((\Load_Store|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => \Load_Store|Mux1~8_combout\,
	datac => \Load_Store|Mux1~1_combout\,
	datad => \Load_Store|Mux1~6_combout\,
	combout => \Load_Store|Mux1~9_combout\);

-- Location: FF_X29_Y27_N17
\Load_Store|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|Mux1~9_combout\,
	ena => \Load_Store|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|data_out\(2));

-- Location: LCCOMB_X32_Y28_N24
\Cap|ACC|reg[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|ACC|reg[5]~16_combout\ = \Cap|ACC|reg[4]~15\ $ (((!\Cap|DIV|Clk_aux~q\ & \Cap|ACC|reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cap|DIV|Clk_aux~q\,
	datab => \Cap|ACC|reg\(5),
	cin => \Cap|ACC|reg[4]~15\,
	combout => \Cap|ACC|reg[5]~16_combout\);

-- Location: FF_X32_Y28_N25
\Cap|ACC|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PCLK~inputclkctrl_outclk\,
	d => \Cap|ACC|reg[5]~16_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|ACC|reg\(5));

-- Location: LCCOMB_X31_Y28_N22
\Cap|BUF|reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cap|BUF|reg[3]~feeder_combout\ = \Cap|ACC|reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|ACC|reg\(5),
	combout => \Cap|BUF|reg[3]~feeder_combout\);

-- Location: FF_X31_Y28_N23
\Cap|BUF|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cap|DIV|Clk_aux~clkctrl_outclk\,
	d => \Cap|BUF|reg[3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \HREF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cap|BUF|reg\(3));

-- Location: LCCOMB_X31_Y25_N10
\Load_Store|ram[13][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[13][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[13][3]~feeder_combout\);

-- Location: FF_X31_Y25_N11
\Load_Store|ram[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[13][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[13][3]~q\);

-- Location: LCCOMB_X30_Y28_N16
\Load_Store|ram[15][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[15][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[15][3]~feeder_combout\);

-- Location: FF_X30_Y28_N17
\Load_Store|ram[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[15][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[15][3]~q\);

-- Location: LCCOMB_X31_Y28_N2
\Load_Store|ram[12][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[12][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[12][3]~feeder_combout\);

-- Location: FF_X31_Y28_N3
\Load_Store|ram[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[12][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[12][3]~q\);

-- Location: LCCOMB_X28_Y26_N18
\Load_Store|ram[14][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[14][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[14][3]~feeder_combout\);

-- Location: FF_X28_Y26_N19
\Load_Store|ram[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[14][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[14][3]~q\);

-- Location: LCCOMB_X30_Y26_N28
\Load_Store|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~7_combout\ = (address(0) & (((address(1))))) # (!address(0) & ((address(1) & ((\Load_Store|ram[14][3]~q\))) # (!address(1) & (\Load_Store|ram[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[12][3]~q\,
	datab => \Load_Store|ram[14][3]~q\,
	datac => address(0),
	datad => address(1),
	combout => \Load_Store|Mux0~7_combout\);

-- Location: LCCOMB_X30_Y26_N10
\Load_Store|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~8_combout\ = (address(0) & ((\Load_Store|Mux0~7_combout\ & ((\Load_Store|ram[15][3]~q\))) # (!\Load_Store|Mux0~7_combout\ & (\Load_Store|ram[13][3]~q\)))) # (!address(0) & (((\Load_Store|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[13][3]~q\,
	datab => address(0),
	datac => \Load_Store|ram[15][3]~q\,
	datad => \Load_Store|Mux0~7_combout\,
	combout => \Load_Store|Mux0~8_combout\);

-- Location: LCCOMB_X30_Y27_N8
\Load_Store|ram[2][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[2][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[2][3]~feeder_combout\);

-- Location: FF_X30_Y27_N9
\Load_Store|ram[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[2][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[2][3]~q\);

-- Location: FF_X29_Y27_N9
\Load_Store|ram[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(3),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[3][3]~q\);

-- Location: LCCOMB_X29_Y26_N24
\Load_Store|ram[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[1][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[1][3]~feeder_combout\);

-- Location: FF_X29_Y26_N25
\Load_Store|ram[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[1][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[1][3]~q\);

-- Location: LCCOMB_X29_Y26_N14
\Load_Store|ram[0][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[0][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[0][3]~feeder_combout\);

-- Location: FF_X29_Y26_N15
\Load_Store|ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[0][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[0][3]~q\);

-- Location: LCCOMB_X31_Y26_N28
\Load_Store|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~4_combout\ = (address(1) & (((address(0))))) # (!address(1) & ((address(0) & (\Load_Store|ram[1][3]~q\)) # (!address(0) & ((\Load_Store|ram[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[1][3]~q\,
	datab => \Load_Store|ram[0][3]~q\,
	datac => address(1),
	datad => address(0),
	combout => \Load_Store|Mux0~4_combout\);

-- Location: LCCOMB_X29_Y27_N8
\Load_Store|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~5_combout\ = (address(1) & ((\Load_Store|Mux0~4_combout\ & ((\Load_Store|ram[3][3]~q\))) # (!\Load_Store|Mux0~4_combout\ & (\Load_Store|ram[2][3]~q\)))) # (!address(1) & (((\Load_Store|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[2][3]~q\,
	datab => address(1),
	datac => \Load_Store|ram[3][3]~q\,
	datad => \Load_Store|Mux0~4_combout\,
	combout => \Load_Store|Mux0~5_combout\);

-- Location: LCCOMB_X30_Y26_N22
\Load_Store|ram[6][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[6][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[6][3]~feeder_combout\);

-- Location: FF_X30_Y26_N23
\Load_Store|ram[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[6][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[6][3]~q\);

-- Location: FF_X30_Y27_N27
\Load_Store|ram[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(3),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[7][3]~q\);

-- Location: LCCOMB_X28_Y27_N20
\Load_Store|ram[5][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[5][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[5][3]~feeder_combout\);

-- Location: FF_X28_Y27_N21
\Load_Store|ram[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[5][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[5][3]~q\);

-- Location: LCCOMB_X31_Y26_N22
\Load_Store|ram[4][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[4][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[4][3]~feeder_combout\);

-- Location: FF_X31_Y26_N23
\Load_Store|ram[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[4][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[4][3]~q\);

-- Location: LCCOMB_X30_Y27_N20
\Load_Store|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~2_combout\ = (address(1) & (((address(0))))) # (!address(1) & ((address(0) & (\Load_Store|ram[5][3]~q\)) # (!address(0) & ((\Load_Store|ram[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[5][3]~q\,
	datab => address(1),
	datac => address(0),
	datad => \Load_Store|ram[4][3]~q\,
	combout => \Load_Store|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y27_N26
\Load_Store|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~3_combout\ = (address(1) & ((\Load_Store|Mux0~2_combout\ & ((\Load_Store|ram[7][3]~q\))) # (!\Load_Store|Mux0~2_combout\ & (\Load_Store|ram[6][3]~q\)))) # (!address(1) & (((\Load_Store|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[6][3]~q\,
	datab => address(1),
	datac => \Load_Store|ram[7][3]~q\,
	datad => \Load_Store|Mux0~2_combout\,
	combout => \Load_Store|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y27_N22
\Load_Store|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~6_combout\ = (address(2) & ((address(3)) # ((\Load_Store|Mux0~3_combout\)))) # (!address(2) & (!address(3) & (\Load_Store|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	datac => \Load_Store|Mux0~5_combout\,
	datad => \Load_Store|Mux0~3_combout\,
	combout => \Load_Store|Mux0~6_combout\);

-- Location: LCCOMB_X32_Y26_N26
\Load_Store|ram[10][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[10][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[10][3]~feeder_combout\);

-- Location: FF_X32_Y26_N27
\Load_Store|ram[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[10][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[10][3]~q\);

-- Location: LCCOMB_X31_Y27_N8
\Load_Store|ram[11][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|ram[11][3]~feeder_combout\ = \Cap|BUF|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cap|BUF|reg\(3),
	combout => \Load_Store|ram[11][3]~feeder_combout\);

-- Location: FF_X31_Y27_N9
\Load_Store|ram[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|ram[11][3]~feeder_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \Load_Store|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[11][3]~q\);

-- Location: FF_X30_Y28_N11
\Load_Store|ram[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(3),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[9][3]~q\);

-- Location: FF_X31_Y25_N1
\Load_Store|ram[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	asdata => \Cap|BUF|reg\(3),
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_Store|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|ram[8][3]~q\);

-- Location: LCCOMB_X31_Y25_N0
\Load_Store|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~0_combout\ = (address(1) & (((address(0))))) # (!address(1) & ((address(0) & (\Load_Store|ram[9][3]~q\)) # (!address(0) & ((\Load_Store|ram[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \Load_Store|ram[9][3]~q\,
	datac => \Load_Store|ram[8][3]~q\,
	datad => address(0),
	combout => \Load_Store|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y27_N6
\Load_Store|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~1_combout\ = (address(1) & ((\Load_Store|Mux0~0_combout\ & ((\Load_Store|ram[11][3]~q\))) # (!\Load_Store|Mux0~0_combout\ & (\Load_Store|ram[10][3]~q\)))) # (!address(1) & (((\Load_Store|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Store|ram[10][3]~q\,
	datab => \Load_Store|ram[11][3]~q\,
	datac => address(1),
	datad => \Load_Store|Mux0~0_combout\,
	combout => \Load_Store|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y27_N10
\Load_Store|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Load_Store|Mux0~9_combout\ = (address(3) & ((\Load_Store|Mux0~6_combout\ & (\Load_Store|Mux0~8_combout\)) # (!\Load_Store|Mux0~6_combout\ & ((\Load_Store|Mux0~1_combout\))))) # (!address(3) & (((\Load_Store|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => \Load_Store|Mux0~8_combout\,
	datac => \Load_Store|Mux0~6_combout\,
	datad => \Load_Store|Mux0~1_combout\,
	combout => \Load_Store|Mux0~9_combout\);

-- Location: FF_X29_Y27_N11
\Load_Store|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PCLK~inputclkctrl_outclk\,
	d => \Load_Store|Mux0~9_combout\,
	ena => \Load_Store|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Load_Store|data_out\(3));

ww_Q_OUT(0) <= \Q_OUT[0]~output_o\;

ww_Q_OUT(1) <= \Q_OUT[1]~output_o\;

ww_Q_OUT(2) <= \Q_OUT[2]~output_o\;

ww_Q_OUT(3) <= \Q_OUT[3]~output_o\;
END structure;


