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

-- DATE "06/03/2024 20:32:12"

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
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLK24|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK24|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
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
SIGNAL \CLK24|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:0:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:0:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:1:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:1:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:2:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:2:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:3:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:3:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|Taux[5]~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:4:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:4:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:5:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:5:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:6:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:6:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|Taux[7]~1_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:7:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:7:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:8:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:8:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:9:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:9:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|Taux[10]~2_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:10:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:10:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:11:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:11:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:12:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:12:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|Taux[13]~3_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:13:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:13:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:14:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:14:Treg|Qaux~q\ : std_logic;
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w[3]~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:15:Treg|Qaux~0_combout\ : std_logic;
SIGNAL \RAMbus|wC|CONTR:15:Treg|Qaux~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~0_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~3_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~9_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~10_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~11_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[4]~1_combout\ : std_logic;
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
SIGNAL \VGA_controller|v_count[4]~8_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~9\ : std_logic;
SIGNAL \VGA_controller|Add1~10_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[5]~4_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~7_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~11\ : std_logic;
SIGNAL \VGA_controller|Add1~12_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[6]~5_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~13\ : std_logic;
SIGNAL \VGA_controller|Add1~14_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[7]~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~15\ : std_logic;
SIGNAL \VGA_controller|Add1~16_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[8]~7_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~8_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~12_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~17\ : std_logic;
SIGNAL \VGA_controller|Add1~18_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~3_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \VGA_controller|video_on_v~q\ : std_logic;
SIGNAL \VGA_controller|red~0_combout\ : std_logic;
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \VGA_controller|red~1_combout\ : std_logic;
SIGNAL \VGA_controller|red[1]~feeder_combout\ : std_logic;
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \VGA_controller|red~2_combout\ : std_logic;
SIGNAL \VGA_controller|red[2]~feeder_combout\ : std_logic;
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \VGA_controller|red~3_combout\ : std_logic;
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
SIGNAL \CLK24|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_controller|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|red\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|green\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|blue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;

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

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\RAMbus|wC|CONTR:9:Treg|Qaux~q\ & \RAMbus|wC|CONTR:8:Treg|Qaux~q\ & \RAMbus|wC|CONTR:7:Treg|Qaux~q\ & \RAMbus|wC|CONTR:6:Treg|Qaux~q\ & \RAMbus|wC|CONTR:5:Treg|Qaux~q\ & 
\RAMbus|wC|CONTR:4:Treg|Qaux~q\ & \RAMbus|wC|CONTR:3:Treg|Qaux~q\ & \RAMbus|wC|CONTR:2:Treg|Qaux~q\ & \RAMbus|wC|CONTR:1:Treg|Qaux~q\ & \RAMbus|wC|CONTR:0:Treg|Qaux~q\);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ <= \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\CLK25|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\CLK25|altpll_component|auto_generated|wire_pll1_clk\(0) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(0);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(1) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(1);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(2) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(2);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(3) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(3);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(4) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(4);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\RAMbus|wC|CONTR:9:Treg|Qaux~q\ & \RAMbus|wC|CONTR:8:Treg|Qaux~q\ & \RAMbus|wC|CONTR:7:Treg|Qaux~q\ & \RAMbus|wC|CONTR:6:Treg|Qaux~q\ & \RAMbus|wC|CONTR:5:Treg|Qaux~q\ & 
\RAMbus|wC|CONTR:4:Treg|Qaux~q\ & \RAMbus|wC|CONTR:3:Treg|Qaux~q\ & \RAMbus|wC|CONTR:2:Treg|Qaux~q\ & \RAMbus|wC|CONTR:1:Treg|Qaux~q\ & \RAMbus|wC|CONTR:0:Treg|Qaux~q\);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ <= \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\RAMbus|wC|CONTR:9:Treg|Qaux~q\ & \RAMbus|wC|CONTR:8:Treg|Qaux~q\ & \RAMbus|wC|CONTR:7:Treg|Qaux~q\ & \RAMbus|wC|CONTR:6:Treg|Qaux~q\ & \RAMbus|wC|CONTR:5:Treg|Qaux~q\ & 
\RAMbus|wC|CONTR:4:Treg|Qaux~q\ & \RAMbus|wC|CONTR:3:Treg|Qaux~q\ & \RAMbus|wC|CONTR:2:Treg|Qaux~q\ & \RAMbus|wC|CONTR:1:Treg|Qaux~q\ & \RAMbus|wC|CONTR:0:Treg|Qaux~q\);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ <= \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\RAMbus|wC|CONTR:9:Treg|Qaux~q\ & \RAMbus|wC|CONTR:8:Treg|Qaux~q\ & \RAMbus|wC|CONTR:7:Treg|Qaux~q\ & \RAMbus|wC|CONTR:6:Treg|Qaux~q\ & \RAMbus|wC|CONTR:5:Treg|Qaux~q\ & 
\RAMbus|wC|CONTR:4:Treg|Qaux~q\ & \RAMbus|wC|CONTR:3:Treg|Qaux~q\ & \RAMbus|wC|CONTR:2:Treg|Qaux~q\ & \RAMbus|wC|CONTR:1:Treg|Qaux~q\ & \RAMbus|wC|CONTR:0:Treg|Qaux~q\);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ <= \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\CLK24|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\CLK24|altpll_component|auto_generated|wire_pll1_clk\(0) <= \CLK24|altpll_component|auto_generated|pll1_CLK_bus\(0);
\CLK24|altpll_component|auto_generated|wire_pll1_clk\(1) <= \CLK24|altpll_component|auto_generated|pll1_CLK_bus\(1);
\CLK24|altpll_component|auto_generated|wire_pll1_clk\(2) <= \CLK24|altpll_component|auto_generated|pll1_CLK_bus\(2);
\CLK24|altpll_component|auto_generated|wire_pll1_clk\(3) <= \CLK24|altpll_component|auto_generated|pll1_CLK_bus\(3);
\CLK24|altpll_component|auto_generated|wire_pll1_clk\(4) <= \CLK24|altpll_component|auto_generated|pll1_CLK_bus\(4);

\CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK24|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK25|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;

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

-- Location: LCCOMB_X26_Y12_N10
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

-- Location: FF_X26_Y12_N11
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(0));

-- Location: LCCOMB_X26_Y12_N12
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

-- Location: FF_X26_Y12_N13
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(1));

-- Location: LCCOMB_X26_Y12_N14
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

-- Location: FF_X26_Y12_N15
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(2));

-- Location: LCCOMB_X26_Y12_N16
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

-- Location: FF_X26_Y12_N17
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(3));

-- Location: LCCOMB_X26_Y12_N18
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

-- Location: FF_X26_Y12_N19
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(4));

-- Location: LCCOMB_X26_Y12_N4
\VGA_controller|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~0_combout\ = (\VGA_controller|h_count\(0) & (\VGA_controller|h_count\(3) & (\VGA_controller|h_count\(1) & \VGA_controller|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(0),
	datab => \VGA_controller|h_count\(3),
	datac => \VGA_controller|h_count\(1),
	datad => \VGA_controller|h_count\(4),
	combout => \VGA_controller|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y12_N20
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

-- Location: LCCOMB_X26_Y12_N8
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

-- Location: FF_X26_Y12_N9
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(5));

-- Location: LCCOMB_X26_Y12_N22
\VGA_controller|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~12_combout\ = (\VGA_controller|h_count\(6) & (\VGA_controller|Add0~11\ $ (GND))) # (!\VGA_controller|h_count\(6) & (!\VGA_controller|Add0~11\ & VCC))
-- \VGA_controller|Add0~13\ = CARRY((\VGA_controller|h_count\(6) & !\VGA_controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(6),
	datad => VCC,
	cin => \VGA_controller|Add0~11\,
	combout => \VGA_controller|Add0~12_combout\,
	cout => \VGA_controller|Add0~13\);

-- Location: FF_X26_Y12_N23
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(6));

-- Location: LCCOMB_X26_Y12_N24
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

-- Location: FF_X26_Y12_N25
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(7));

-- Location: LCCOMB_X26_Y12_N26
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

-- Location: LCCOMB_X24_Y12_N8
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

-- Location: FF_X24_Y12_N9
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(8));

-- Location: LCCOMB_X24_Y12_N22
\VGA_controller|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~1_combout\ = (!\VGA_controller|h_count\(5) & (\VGA_controller|h_count\(2) & (\VGA_controller|h_count\(8) & !\VGA_controller|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(5),
	datab => \VGA_controller|h_count\(2),
	datac => \VGA_controller|h_count\(8),
	datad => \VGA_controller|h_count\(7),
	combout => \VGA_controller|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y12_N16
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

-- Location: LCCOMB_X26_Y12_N28
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

-- Location: LCCOMB_X24_Y12_N6
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

-- Location: FF_X24_Y12_N7
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(9));

-- Location: LCCOMB_X24_Y12_N2
\VGA_controller|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~0_combout\ = ((!\VGA_controller|h_count\(8) & !\VGA_controller|h_count\(7))) # (!\VGA_controller|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(9),
	datac => \VGA_controller|h_count\(8),
	datad => \VGA_controller|h_count\(7),
	combout => \VGA_controller|process_0~0_combout\);

-- Location: FF_X24_Y12_N3
\VGA_controller|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_h~q\);

-- Location: PLL_4
\CLK24|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 192,
	c0_initial => 1,
	c0_low => 192,
	c0_mode => "even",
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
	clk0_divide_by => 64,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
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
	inclk0_input_frequency => 10000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
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
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \SW[1]~input_o\,
	fbin => \CLK24|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \CLK24|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \CLK24|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \CLK24|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y9_N14
\RAMbus|wC|CONTR:0:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:0:Treg|Qaux~0_combout\ = !\RAMbus|wC|CONTR:0:Treg|Qaux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAMbus|wC|CONTR:0:Treg|Qaux~q\,
	combout => \RAMbus|wC|CONTR:0:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N15
\RAMbus|wC|CONTR:0:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:0:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:0:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N0
\RAMbus|wC|CONTR:1:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:1:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:0:Treg|Qaux~q\ $ (\RAMbus|wC|CONTR:1:Treg|Qaux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMbus|wC|CONTR:0:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:1:Treg|Qaux~q\,
	combout => \RAMbus|wC|CONTR:1:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N1
\RAMbus|wC|CONTR:1:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:1:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:1:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N26
\RAMbus|wC|CONTR:2:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:2:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:2:Treg|Qaux~q\ $ (((\RAMbus|wC|CONTR:0:Treg|Qaux~q\ & \RAMbus|wC|CONTR:1:Treg|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMbus|wC|CONTR:0:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:2:Treg|Qaux~q\,
	datad => \RAMbus|wC|CONTR:1:Treg|Qaux~q\,
	combout => \RAMbus|wC|CONTR:2:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N27
\RAMbus|wC|CONTR:2:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:2:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:2:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N4
\RAMbus|wC|CONTR:3:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:3:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:3:Treg|Qaux~q\ $ (((\RAMbus|wC|CONTR:2:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:0:Treg|Qaux~q\ & \RAMbus|wC|CONTR:1:Treg|Qaux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:2:Treg|Qaux~q\,
	datab => \RAMbus|wC|CONTR:0:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:3:Treg|Qaux~q\,
	datad => \RAMbus|wC|CONTR:1:Treg|Qaux~q\,
	combout => \RAMbus|wC|CONTR:3:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N5
\RAMbus|wC|CONTR:3:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:3:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:3:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N10
\RAMbus|wC|Taux[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|Taux[5]~0_combout\ = (\RAMbus|wC|CONTR:3:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:0:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:2:Treg|Qaux~q\ & \RAMbus|wC|CONTR:1:Treg|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:3:Treg|Qaux~q\,
	datab => \RAMbus|wC|CONTR:0:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:2:Treg|Qaux~q\,
	datad => \RAMbus|wC|CONTR:1:Treg|Qaux~q\,
	combout => \RAMbus|wC|Taux[5]~0_combout\);

-- Location: LCCOMB_X21_Y9_N22
\RAMbus|wC|CONTR:4:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:4:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:4:Treg|Qaux~q\ $ (\RAMbus|wC|Taux[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAMbus|wC|CONTR:4:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[5]~0_combout\,
	combout => \RAMbus|wC|CONTR:4:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N23
\RAMbus|wC|CONTR:4:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:4:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:4:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N16
\RAMbus|wC|CONTR:5:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:5:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:5:Treg|Qaux~q\ $ (((\RAMbus|wC|CONTR:4:Treg|Qaux~q\ & \RAMbus|wC|Taux[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:4:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:5:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[5]~0_combout\,
	combout => \RAMbus|wC|CONTR:5:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N17
\RAMbus|wC|CONTR:5:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:5:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:5:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N2
\RAMbus|wC|CONTR:6:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:6:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:6:Treg|Qaux~q\ $ (((\RAMbus|wC|CONTR:4:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:5:Treg|Qaux~q\ & \RAMbus|wC|Taux[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:4:Treg|Qaux~q\,
	datab => \RAMbus|wC|CONTR:5:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:6:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[5]~0_combout\,
	combout => \RAMbus|wC|CONTR:6:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N3
\RAMbus|wC|CONTR:6:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:6:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:6:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N12
\RAMbus|wC|Taux[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|Taux[7]~1_combout\ = (\RAMbus|wC|Taux[5]~0_combout\ & (\RAMbus|wC|CONTR:6:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:4:Treg|Qaux~q\ & \RAMbus|wC|CONTR:5:Treg|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|Taux[5]~0_combout\,
	datab => \RAMbus|wC|CONTR:6:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:4:Treg|Qaux~q\,
	datad => \RAMbus|wC|CONTR:5:Treg|Qaux~q\,
	combout => \RAMbus|wC|Taux[7]~1_combout\);

-- Location: LCCOMB_X21_Y9_N28
\RAMbus|wC|CONTR:7:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:7:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:7:Treg|Qaux~q\ $ (\RAMbus|wC|Taux[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAMbus|wC|CONTR:7:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[7]~1_combout\,
	combout => \RAMbus|wC|CONTR:7:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N29
\RAMbus|wC|CONTR:7:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:7:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:7:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N30
\RAMbus|wC|CONTR:8:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:8:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:8:Treg|Qaux~q\ $ (((\RAMbus|wC|Taux[7]~1_combout\ & \RAMbus|wC|CONTR:7:Treg|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|Taux[7]~1_combout\,
	datac => \RAMbus|wC|CONTR:8:Treg|Qaux~q\,
	datad => \RAMbus|wC|CONTR:7:Treg|Qaux~q\,
	combout => \RAMbus|wC|CONTR:8:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N31
\RAMbus|wC|CONTR:8:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:8:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:8:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N24
\RAMbus|wC|CONTR:9:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:9:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:9:Treg|Qaux~q\ $ (((\RAMbus|wC|CONTR:8:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:7:Treg|Qaux~q\ & \RAMbus|wC|Taux[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:8:Treg|Qaux~q\,
	datab => \RAMbus|wC|CONTR:7:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:9:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[7]~1_combout\,
	combout => \RAMbus|wC|CONTR:9:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N25
\RAMbus|wC|CONTR:9:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:9:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:9:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N6
\RAMbus|wC|Taux[10]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|Taux[10]~2_combout\ = (\RAMbus|wC|Taux[7]~1_combout\ & (\RAMbus|wC|CONTR:7:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:8:Treg|Qaux~q\ & \RAMbus|wC|CONTR:9:Treg|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|Taux[7]~1_combout\,
	datab => \RAMbus|wC|CONTR:7:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:8:Treg|Qaux~q\,
	datad => \RAMbus|wC|CONTR:9:Treg|Qaux~q\,
	combout => \RAMbus|wC|Taux[10]~2_combout\);

-- Location: LCCOMB_X21_Y9_N8
\RAMbus|wC|CONTR:10:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:10:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:10:Treg|Qaux~q\ $ (\RAMbus|wC|Taux[10]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAMbus|wC|CONTR:10:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[10]~2_combout\,
	combout => \RAMbus|wC|CONTR:10:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N9
\RAMbus|wC|CONTR:10:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:10:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:10:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N18
\RAMbus|wC|CONTR:11:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:11:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:11:Treg|Qaux~q\ $ (((\RAMbus|wC|CONTR:10:Treg|Qaux~q\ & \RAMbus|wC|Taux[10]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMbus|wC|CONTR:10:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:11:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[10]~2_combout\,
	combout => \RAMbus|wC|CONTR:11:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N19
\RAMbus|wC|CONTR:11:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:11:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:11:Treg|Qaux~q\);

-- Location: LCCOMB_X21_Y9_N20
\RAMbus|wC|CONTR:12:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:12:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:12:Treg|Qaux~q\ $ (((\RAMbus|wC|CONTR:11:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:10:Treg|Qaux~q\ & \RAMbus|wC|Taux[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:11:Treg|Qaux~q\,
	datab => \RAMbus|wC|CONTR:10:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:12:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[10]~2_combout\,
	combout => \RAMbus|wC|CONTR:12:Treg|Qaux~0_combout\);

-- Location: FF_X21_Y9_N21
\RAMbus|wC|CONTR:12:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:12:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:12:Treg|Qaux~q\);

-- Location: LCCOMB_X19_Y9_N2
\RAMbus|wC|Taux[13]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|Taux[13]~3_combout\ = (\RAMbus|wC|CONTR:11:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:12:Treg|Qaux~q\ & (\RAMbus|wC|CONTR:10:Treg|Qaux~q\ & \RAMbus|wC|Taux[10]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:11:Treg|Qaux~q\,
	datab => \RAMbus|wC|CONTR:12:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:10:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[10]~2_combout\,
	combout => \RAMbus|wC|Taux[13]~3_combout\);

-- Location: LCCOMB_X19_Y9_N24
\RAMbus|wC|CONTR:13:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:13:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:13:Treg|Qaux~q\ $ (\RAMbus|wC|Taux[13]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAMbus|wC|CONTR:13:Treg|Qaux~q\,
	datad => \RAMbus|wC|Taux[13]~3_combout\,
	combout => \RAMbus|wC|CONTR:13:Treg|Qaux~0_combout\);

-- Location: FF_X19_Y9_N25
\RAMbus|wC|CONTR:13:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:13:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:13:Treg|Qaux~q\);

-- Location: LCCOMB_X19_Y9_N12
\RAMbus|wC|CONTR:14:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:14:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:14:Treg|Qaux~q\ $ (((\RAMbus|wC|Taux[13]~3_combout\ & \RAMbus|wC|CONTR:13:Treg|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAMbus|wC|Taux[13]~3_combout\,
	datac => \RAMbus|wC|CONTR:14:Treg|Qaux~q\,
	datad => \RAMbus|wC|CONTR:13:Treg|Qaux~q\,
	combout => \RAMbus|wC|CONTR:14:Treg|Qaux~0_combout\);

-- Location: FF_X19_Y9_N13
\RAMbus|wC|CONTR:14:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:14:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:14:Treg|Qaux~q\);

-- Location: LCCOMB_X19_Y9_N26
\RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w[3]~0_combout\ = (!\RAMbus|wC|CONTR:11:Treg|Qaux~q\ & (!\RAMbus|wC|CONTR:13:Treg|Qaux~q\ & (!\RAMbus|wC|CONTR:10:Treg|Qaux~q\ & !\RAMbus|wC|CONTR:12:Treg|Qaux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:11:Treg|Qaux~q\,
	datab => \RAMbus|wC|CONTR:13:Treg|Qaux~q\,
	datac => \RAMbus|wC|CONTR:10:Treg|Qaux~q\,
	datad => \RAMbus|wC|CONTR:12:Treg|Qaux~q\,
	combout => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w[3]~0_combout\);

-- Location: LCCOMB_X19_Y9_N6
\RAMbus|wC|CONTR:15:Treg|Qaux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|wC|CONTR:15:Treg|Qaux~0_combout\ = \RAMbus|wC|CONTR:15:Treg|Qaux~q\ $ (((\RAMbus|wC|CONTR:14:Treg|Qaux~q\ & (\RAMbus|wC|Taux[13]~3_combout\ & \RAMbus|wC|CONTR:13:Treg|Qaux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:14:Treg|Qaux~q\,
	datab => \RAMbus|wC|Taux[13]~3_combout\,
	datac => \RAMbus|wC|CONTR:15:Treg|Qaux~q\,
	datad => \RAMbus|wC|CONTR:13:Treg|Qaux~q\,
	combout => \RAMbus|wC|CONTR:15:Treg|Qaux~0_combout\);

-- Location: FF_X19_Y9_N7
\RAMbus|wC|CONTR:15:Treg|Qaux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAMbus|wC|CONTR:15:Treg|Qaux~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMbus|wC|CONTR:15:Treg|Qaux~q\);

-- Location: LCCOMB_X19_Y9_N0
\RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3) = (!\RAMbus|wC|CONTR:14:Treg|Qaux~q\ & (\RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w[3]~0_combout\ & !\RAMbus|wC|CONTR:15:Treg|Qaux~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|wC|CONTR:14:Treg|Qaux~q\,
	datac => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w[3]~0_combout\,
	datad => \RAMbus|wC|CONTR:15:Treg|Qaux~q\,
	combout => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3));

-- Location: LCCOMB_X16_Y10_N24
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

-- Location: M9K_X13_Y11_N0
\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMdrive:RAMbus|RAMdevice:RAMdev|altsyncram:altsyncram_component|altsyncram_c7q3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 524288,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3),
	portbre => \SW[0]~input_o\,
	clk0 => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => GND,
	ena0 => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3),
	ena1 => \SW[0]~input_o\,
	clr1 => \SW[1]~input_o\,
	portadatain => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y12_N20
\VGA_controller|v_count[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~0_combout\ = (\VGA_controller|h_count\(5) & (!\VGA_controller|h_count\(2) & (!\VGA_controller|h_count\(8) & \VGA_controller|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(5),
	datab => \VGA_controller|h_count\(2),
	datac => \VGA_controller|h_count\(8),
	datad => \VGA_controller|h_count\(7),
	combout => \VGA_controller|v_count[9]~0_combout\);

-- Location: LCCOMB_X24_Y12_N10
\VGA_controller|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~3_combout\ = (\VGA_controller|h_count\(9) & (\VGA_controller|Equal0~0_combout\ & !\VGA_controller|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(9),
	datac => \VGA_controller|Equal0~0_combout\,
	datad => \VGA_controller|h_count\(6),
	combout => \VGA_controller|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y12_N6
\VGA_controller|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~9_combout\ = ((!\VGA_controller|h_count\(2) & ((!\VGA_controller|h_count\(0)) # (!\VGA_controller|h_count\(1))))) # (!\VGA_controller|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(1),
	datab => \VGA_controller|h_count\(3),
	datac => \VGA_controller|h_count\(2),
	datad => \VGA_controller|h_count\(0),
	combout => \VGA_controller|process_0~9_combout\);

-- Location: LCCOMB_X26_Y12_N0
\VGA_controller|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~10_combout\ = (\VGA_controller|h_count\(5) & \VGA_controller|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|h_count\(5),
	datad => \VGA_controller|h_count\(4),
	combout => \VGA_controller|process_0~10_combout\);

-- Location: LCCOMB_X26_Y12_N30
\VGA_controller|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~11_combout\ = (!\VGA_controller|h_count\(8) & (!\VGA_controller|h_count\(6) & ((\VGA_controller|process_0~9_combout\) # (!\VGA_controller|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~9_combout\,
	datab => \VGA_controller|h_count\(8),
	datac => \VGA_controller|h_count\(6),
	datad => \VGA_controller|process_0~10_combout\,
	combout => \VGA_controller|process_0~11_combout\);

-- Location: LCCOMB_X38_Y13_N28
\VGA_controller|v_count[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[4]~1_combout\ = (\VGA_controller|v_count[9]~0_combout\ & (\VGA_controller|Equal0~3_combout\ & (\SW[0]~input_o\ & \VGA_controller|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~0_combout\,
	datab => \VGA_controller|Equal0~3_combout\,
	datac => \SW[0]~input_o\,
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|v_count[4]~1_combout\);

-- Location: LCCOMB_X39_Y13_N6
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

-- Location: LCCOMB_X39_Y13_N0
\VGA_controller|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~20_combout\ = (\VGA_controller|process_0~12_combout\ & \VGA_controller|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~12_combout\,
	datad => \VGA_controller|Add1~0_combout\,
	combout => \VGA_controller|Add1~20_combout\);

-- Location: FF_X39_Y13_N1
\VGA_controller|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~20_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(0));

-- Location: LCCOMB_X39_Y13_N8
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

-- Location: LCCOMB_X39_Y13_N2
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

-- Location: FF_X39_Y13_N3
\VGA_controller|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~21_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(1));

-- Location: LCCOMB_X39_Y13_N10
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

-- Location: LCCOMB_X39_Y13_N28
\VGA_controller|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~22_combout\ = (\VGA_controller|process_0~12_combout\ & \VGA_controller|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~12_combout\,
	datad => \VGA_controller|Add1~4_combout\,
	combout => \VGA_controller|Add1~22_combout\);

-- Location: FF_X39_Y13_N29
\VGA_controller|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~22_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(2));

-- Location: LCCOMB_X39_Y13_N12
\VGA_controller|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~6_combout\ = (\VGA_controller|v_count\(3) & (!\VGA_controller|Add1~5\)) # (!\VGA_controller|v_count\(3) & ((\VGA_controller|Add1~5\) # (GND)))
-- \VGA_controller|Add1~7\ = CARRY((!\VGA_controller|Add1~5\) # (!\VGA_controller|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(3),
	datad => VCC,
	cin => \VGA_controller|Add1~5\,
	combout => \VGA_controller|Add1~6_combout\,
	cout => \VGA_controller|Add1~7\);

-- Location: LCCOMB_X39_Y13_N26
\VGA_controller|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~23_combout\ = (\VGA_controller|process_0~12_combout\ & \VGA_controller|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~12_combout\,
	datad => \VGA_controller|Add1~6_combout\,
	combout => \VGA_controller|Add1~23_combout\);

-- Location: FF_X39_Y13_N27
\VGA_controller|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~23_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGA_controller|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(3));

-- Location: LCCOMB_X39_Y13_N14
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

-- Location: LCCOMB_X38_Y13_N6
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

-- Location: FF_X38_Y13_N7
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

-- Location: LCCOMB_X39_Y13_N16
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

-- Location: LCCOMB_X38_Y13_N12
\VGA_controller|v_count[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[5]~4_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|v_count[4]~1_combout\ & ((\VGA_controller|Add1~10_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(5)) # 
-- ((\VGA_controller|v_count[4]~1_combout\ & \VGA_controller|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|v_count[4]~1_combout\,
	datac => \VGA_controller|v_count\(5),
	datad => \VGA_controller|Add1~10_combout\,
	combout => \VGA_controller|v_count[5]~4_combout\);

-- Location: FF_X38_Y13_N13
\VGA_controller|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[5]~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(5));

-- Location: LCCOMB_X39_Y13_N30
\VGA_controller|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~7_combout\ = (!\VGA_controller|v_count\(5) & (!\VGA_controller|v_count\(4) & ((!\VGA_controller|v_count\(2)) # (!\VGA_controller|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(5),
	datab => \VGA_controller|v_count\(4),
	datac => \VGA_controller|v_count\(3),
	datad => \VGA_controller|v_count\(2),
	combout => \VGA_controller|process_0~7_combout\);

-- Location: LCCOMB_X39_Y13_N18
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

-- Location: LCCOMB_X38_Y13_N30
\VGA_controller|v_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[6]~5_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|v_count[4]~1_combout\ & ((\VGA_controller|Add1~12_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(6)) # 
-- ((\VGA_controller|v_count[4]~1_combout\ & \VGA_controller|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|v_count[4]~1_combout\,
	datac => \VGA_controller|v_count\(6),
	datad => \VGA_controller|Add1~12_combout\,
	combout => \VGA_controller|v_count[6]~5_combout\);

-- Location: FF_X38_Y13_N31
\VGA_controller|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[6]~5_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(6));

-- Location: LCCOMB_X39_Y13_N20
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

-- Location: LCCOMB_X38_Y13_N16
\VGA_controller|v_count[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[7]~6_combout\ = (\VGA_controller|Add1~14_combout\ & ((\VGA_controller|v_count[4]~1_combout\) # ((\VGA_controller|v_count\(7) & !\VGA_controller|v_count[9]~2_combout\)))) # (!\VGA_controller|Add1~14_combout\ & 
-- (((\VGA_controller|v_count\(7) & !\VGA_controller|v_count[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~14_combout\,
	datab => \VGA_controller|v_count[4]~1_combout\,
	datac => \VGA_controller|v_count\(7),
	datad => \VGA_controller|v_count[9]~2_combout\,
	combout => \VGA_controller|v_count[7]~6_combout\);

-- Location: FF_X38_Y13_N17
\VGA_controller|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[7]~6_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(7));

-- Location: LCCOMB_X39_Y13_N22
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

-- Location: LCCOMB_X38_Y13_N2
\VGA_controller|v_count[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[8]~7_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|v_count[4]~1_combout\ & ((\VGA_controller|Add1~16_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(8)) # 
-- ((\VGA_controller|v_count[4]~1_combout\ & \VGA_controller|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|v_count[4]~1_combout\,
	datac => \VGA_controller|v_count\(8),
	datad => \VGA_controller|Add1~16_combout\,
	combout => \VGA_controller|v_count[8]~7_combout\);

-- Location: FF_X38_Y13_N3
\VGA_controller|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[8]~7_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(8));

-- Location: LCCOMB_X38_Y13_N0
\VGA_controller|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~8_combout\ = (\VGA_controller|process_0~7_combout\ & (!\VGA_controller|v_count\(7) & (!\VGA_controller|v_count\(6) & !\VGA_controller|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~7_combout\,
	datab => \VGA_controller|v_count\(7),
	datac => \VGA_controller|v_count\(6),
	datad => \VGA_controller|v_count\(8),
	combout => \VGA_controller|process_0~8_combout\);

-- Location: LCCOMB_X38_Y13_N10
\VGA_controller|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~12_combout\ = (\VGA_controller|process_0~11_combout\) # ((\VGA_controller|process_0~8_combout\) # ((\VGA_controller|process_0~0_combout\) # (!\VGA_controller|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~11_combout\,
	datab => \VGA_controller|process_0~8_combout\,
	datac => \VGA_controller|process_0~0_combout\,
	datad => \VGA_controller|v_count\(9),
	combout => \VGA_controller|process_0~12_combout\);

-- Location: LCCOMB_X38_Y13_N22
\VGA_controller|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~2_combout\ = (\SW[0]~input_o\ & (((\VGA_controller|v_count[9]~0_combout\ & \VGA_controller|Equal0~3_combout\)) # (!\VGA_controller|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~0_combout\,
	datab => \VGA_controller|Equal0~3_combout\,
	datac => \SW[0]~input_o\,
	datad => \VGA_controller|process_0~12_combout\,
	combout => \VGA_controller|v_count[9]~2_combout\);

-- Location: LCCOMB_X39_Y13_N24
\VGA_controller|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~18_combout\ = \VGA_controller|v_count\(9) $ (\VGA_controller|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(9),
	cin => \VGA_controller|Add1~17\,
	combout => \VGA_controller|Add1~18_combout\);

-- Location: LCCOMB_X38_Y13_N26
\VGA_controller|v_count[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~3_combout\ = (\VGA_controller|v_count[9]~2_combout\ & (\VGA_controller|v_count[4]~1_combout\ & ((\VGA_controller|Add1~18_combout\)))) # (!\VGA_controller|v_count[9]~2_combout\ & ((\VGA_controller|v_count\(9)) # 
-- ((\VGA_controller|v_count[4]~1_combout\ & \VGA_controller|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count[9]~2_combout\,
	datab => \VGA_controller|v_count[4]~1_combout\,
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|Add1~18_combout\,
	combout => \VGA_controller|v_count[9]~3_combout\);

-- Location: FF_X38_Y13_N27
\VGA_controller|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|v_count[9]~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(9));

-- Location: LCCOMB_X38_Y13_N20
\VGA_controller|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan7~0_combout\ = (\VGA_controller|v_count\(5) & (\VGA_controller|v_count\(7) & (\VGA_controller|v_count\(6) & \VGA_controller|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(5),
	datab => \VGA_controller|v_count\(7),
	datac => \VGA_controller|v_count\(6),
	datad => \VGA_controller|v_count\(8),
	combout => \VGA_controller|LessThan7~0_combout\);

-- Location: LCCOMB_X40_Y20_N2
\VGA_controller|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan7~1_combout\ = (!\VGA_controller|v_count\(9) & !\VGA_controller|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|LessThan7~0_combout\,
	combout => \VGA_controller|LessThan7~1_combout\);

-- Location: FF_X40_Y20_N3
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_v~q\);

-- Location: LCCOMB_X40_Y20_N8
\VGA_controller|red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~0_combout\ = (\VGA_controller|video_on_h~q\ & (\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ & \VGA_controller|video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|video_on_h~q\,
	datac => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|red~0_combout\);

-- Location: FF_X40_Y20_N1
\VGA_controller|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(0));

-- Location: M9K_X13_Y10_N0
\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMdrive:RAMbus|RAMdevice:RAMdev|altsyncram:altsyncram_component|altsyncram_c7q3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 524288,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3),
	portbre => \SW[0]~input_o\,
	clk0 => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => GND,
	ena0 => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3),
	ena1 => \SW[0]~input_o\,
	clr1 => \SW[1]~input_o\,
	portadatain => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X40_Y20_N18
\VGA_controller|red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~1_combout\ = (\VGA_controller|video_on_h~q\ & (\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ & \VGA_controller|video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|video_on_h~q\,
	datac => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a1~portbdataout\,
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|red~1_combout\);

-- Location: LCCOMB_X40_Y20_N10
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

-- Location: FF_X40_Y20_N11
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(1));

-- Location: M9K_X25_Y11_N0
\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMdrive:RAMbus|RAMdevice:RAMdev|altsyncram:altsyncram_component|altsyncram_c7q3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 524288,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3),
	portbre => \SW[0]~input_o\,
	clk0 => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => GND,
	ena0 => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3),
	ena1 => \SW[0]~input_o\,
	clr1 => \SW[1]~input_o\,
	portadatain => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X40_Y20_N28
\VGA_controller|red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~2_combout\ = (\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ & (\VGA_controller|video_on_h~q\ & \VGA_controller|video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a2~portbdataout\,
	datab => \VGA_controller|video_on_h~q\,
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|red~2_combout\);

-- Location: LCCOMB_X40_Y20_N12
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

-- Location: FF_X40_Y20_N13
\VGA_controller|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red[2]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(2));

-- Location: M9K_X25_Y12_N0
\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMdrive:RAMbus|RAMdevice:RAMdev|altsyncram:altsyncram_component|altsyncram_c7q3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 524288,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3),
	portbre => \SW[0]~input_o\,
	clk0 => \CLK24|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => GND,
	ena0 => \RAMbus|RAMdev|altsyncram_component|auto_generated|decode2|w_anode4289w\(3),
	ena1 => \SW[0]~input_o\,
	clr1 => \SW[1]~input_o\,
	portadatain => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X40_Y20_N22
\VGA_controller|red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~3_combout\ = (\RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ & (\VGA_controller|video_on_h~q\ & \VGA_controller|video_on_v~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMbus|RAMdev|altsyncram_component|auto_generated|ram_block1a3~portbdataout\,
	datab => \VGA_controller|video_on_h~q\,
	datad => \VGA_controller|video_on_v~q\,
	combout => \VGA_controller|red~3_combout\);

-- Location: FF_X40_Y20_N31
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(3));

-- Location: FF_X40_Y20_N17
\VGA_controller|green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(0));

-- Location: LCCOMB_X40_Y20_N26
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

-- Location: FF_X40_Y20_N27
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(1));

-- Location: LCCOMB_X40_Y20_N20
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

-- Location: FF_X40_Y20_N21
\VGA_controller|green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|green[2]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(2));

-- Location: FF_X40_Y20_N15
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(3));

-- Location: FF_X40_Y20_N9
\VGA_controller|blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(0));

-- Location: FF_X40_Y20_N19
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(1));

-- Location: FF_X40_Y20_N29
\VGA_controller|blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(2));

-- Location: FF_X40_Y20_N23
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(3));

-- Location: LCCOMB_X26_Y12_N2
\VGA_controller|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~2_combout\ = (\VGA_controller|h_count\(2)) # ((\VGA_controller|h_count\(1) & (!\VGA_controller|h_count\(5) & \VGA_controller|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(1),
	datab => \VGA_controller|h_count\(5),
	datac => \VGA_controller|h_count\(2),
	datad => \VGA_controller|h_count\(0),
	combout => \VGA_controller|process_0~2_combout\);

-- Location: LCCOMB_X24_Y12_N28
\VGA_controller|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~3_combout\ = (\VGA_controller|h_count\(4) & ((\VGA_controller|process_0~2_combout\) # (\VGA_controller|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|process_0~2_combout\,
	datac => \VGA_controller|h_count\(3),
	datad => \VGA_controller|h_count\(4),
	combout => \VGA_controller|process_0~3_combout\);

-- Location: LCCOMB_X24_Y12_N26
\VGA_controller|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~1_combout\ = (\VGA_controller|h_count\(9) & (!\VGA_controller|h_count\(8) & \VGA_controller|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(9),
	datac => \VGA_controller|h_count\(8),
	datad => \VGA_controller|h_count\(7),
	combout => \VGA_controller|process_0~1_combout\);

-- Location: LCCOMB_X24_Y12_N12
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

-- Location: FF_X24_Y12_N13
\VGA_controller|Hsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync_aux~q\);

-- Location: LCCOMB_X24_Y12_N24
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

-- Location: FF_X24_Y12_N25
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync~q\);

-- Location: LCCOMB_X39_Y13_N4
\VGA_controller|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~5_combout\ = ((\VGA_controller|v_count\(1) $ (!\VGA_controller|v_count\(0))) # (!\VGA_controller|v_count\(3))) # (!\VGA_controller|v_count\(2))

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
	combout => \VGA_controller|process_0~5_combout\);

-- Location: LCCOMB_X38_Y13_N24
\VGA_controller|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~6_combout\ = (\VGA_controller|v_count\(4)) # (((\VGA_controller|v_count\(9)) # (\VGA_controller|process_0~5_combout\)) # (!\VGA_controller|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(4),
	datab => \VGA_controller|LessThan7~0_combout\,
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|process_0~5_combout\,
	combout => \VGA_controller|process_0~6_combout\);

-- Location: FF_X38_Y13_N25
\VGA_controller|Vsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~6_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync_aux~q\);

-- Location: LCCOMB_X40_Y20_N24
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

-- Location: FF_X40_Y20_N25
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
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync~q\);

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


