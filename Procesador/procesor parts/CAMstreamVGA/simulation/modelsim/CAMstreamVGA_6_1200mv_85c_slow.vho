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

-- DATE "05/25/2024 10:46:19"

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

ENTITY 	CAMstreamVGA IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(5 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	GPIO0_D : OUT std_logic_vector(3 DOWNTO 0);
	GPIO1_D : IN std_logic_vector(10 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic
	);
END CAMstreamVGA;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[0]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[1]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[2]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[3]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
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
-- GPIO1_D[9]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1_D[10]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[8]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1_D[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1_D[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1_D[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1_D[5]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1_D[6]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1_D[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1_D[7]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1_D[3]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF CAMstreamVGA IS
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
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_GPIO0_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GPIO1_D : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CAPdriver|dPCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCCBdriver|clk400data~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAPdriver|DEPHASE|Qd[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV800|Qaux[5]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAPdriver|takeTurn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \DIV800|Qaux[0]~5_combout\ : std_logic;
SIGNAL \DIV800|Qaux[0]~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \DIV800|Qaux[1]~4_combout\ : std_logic;
SIGNAL \DIV800|Qaux[1]~feeder_combout\ : std_logic;
SIGNAL \DIV800|Qaux[2]~3_combout\ : std_logic;
SIGNAL \DIV800|Qaux[3]~2_combout\ : std_logic;
SIGNAL \DIV800|Qaux[3]~feeder_combout\ : std_logic;
SIGNAL \DIV800|Qaux[4]~1_combout\ : std_logic;
SIGNAL \DIV800|Qaux[5]~0_combout\ : std_logic;
SIGNAL \DIV800|Qaux[5]~feeder_combout\ : std_logic;
SIGNAL \DIV800|Qaux[5]~clkctrl_outclk\ : std_logic;
SIGNAL \SCCBdriver|EE~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|EE~q\ : std_logic;
SIGNAL \SCCBdriver|clkE~combout\ : std_logic;
SIGNAL \SCCBdriver|clk400~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|clk400~q\ : std_logic;
SIGNAL \SCCBdriver|clk400D~combout\ : std_logic;
SIGNAL \SCCBdriver|clk400data~q\ : std_logic;
SIGNAL \SCCBdriver|clk400data~clkctrl_outclk\ : std_logic;
SIGNAL \SCCBdriver|REGS|Esync~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|Esync~q\ : std_logic;
SIGNAL \SCCBdriver|REGS|cQ[0]~0_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[1]~25_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[2]~24_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[3]~23_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[4]~22_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[5]~21_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[6]~20_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[7]~19_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[8]~18_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[9]~17_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[10]~16_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[11]~15_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[12]~14_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[13]~13_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[14]~12_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[15]~11_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[16]~10_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[17]~9_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[18]~8_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[19]~7_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[20]~6_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[21]~5_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[22]~4_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[23]~3_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[24]~2_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[25]~1_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|cD[26]~0_combout\ : std_logic;
SIGNAL \SCCBdriver|dataEedge~combout\ : std_logic;
SIGNAL \SCCBdriver|mssgGO~0_combout\ : std_logic;
SIGNAL \SCCBdriver|mssgGO~q\ : std_logic;
SIGNAL \SCCBdriver|C_Eedge~combout\ : std_logic;
SIGNAL \SCCBdriver|C_E~0_combout\ : std_logic;
SIGNAL \SCCBdriver|C_E~q\ : std_logic;
SIGNAL \SCCBdriver|C_Esync~q\ : std_logic;
SIGNAL \SCCBdriver|DeInd~0_combout\ : std_logic;
SIGNAL \SCCBdriver|DeInd~1_combout\ : std_logic;
SIGNAL \SCCBdriver|eInd~q\ : std_logic;
SIGNAL \SCCBdriver|D1~0_combout\ : std_logic;
SIGNAL \SCCBdriver|Q1~q\ : std_logic;
SIGNAL \SCCBdriver|D0~0_combout\ : std_logic;
SIGNAL \SCCBdriver|Q0~q\ : std_logic;
SIGNAL \SCCBdriver|LIVE~0_combout\ : std_logic;
SIGNAL \SCCBdriver|LIVE~q\ : std_logic;
SIGNAL \GPIO1_D[9]~input_o\ : std_logic;
SIGNAL \GPIO1_D[10]~input_o\ : std_logic;
SIGNAL \SCCBdriver|SIO_C~combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[2]~24_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[3]~23_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[4]~22_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[5]~21_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[6]~20_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[7]~19_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[8]~18_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[9]~17_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[10]~16_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[11]~15_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[12]~14_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[13]~13_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[14]~12_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[15]~11_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[16]~10_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[17]~9_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[18]~8_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[19]~7_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[20]~6_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[21]~5_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[22]~4_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[23]~3_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[24]~2_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[25]~1_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[26]~0_combout\ : std_logic;
SIGNAL \SCCBdriver|SIO_D~combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \GPIO0_D~0_combout\ : std_logic;
SIGNAL \GPIO1_D[8]~input_o\ : std_logic;
SIGNAL \CAPdriver|dPCLK~combout\ : std_logic;
SIGNAL \CAPdriver|dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \CAPdriver|takeTurn~0_combout\ : std_logic;
SIGNAL \CAPdriver|takeTurn~feeder_combout\ : std_logic;
SIGNAL \CAPdriver|takeTurn~q\ : std_logic;
SIGNAL \CAPdriver|takeTurn~clkctrl_outclk\ : std_logic;
SIGNAL \CAPdriver|DEPHASE|Qt~0_combout\ : std_logic;
SIGNAL \CAPdriver|DEPHASE|Qt~q\ : std_logic;
SIGNAL \CAPdriver|DEPHASE|Qd[0]~feeder_combout\ : std_logic;
SIGNAL \CAPdriver|DEPHASE|Qd[1]~feeder_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CAPdriver|DEPHASE|Qd[1]~clkctrl_outclk\ : std_logic;
SIGNAL \GPIO1_D[2]~input_o\ : std_logic;
SIGNAL \CAPdriver|B[2]~2_combout\ : std_logic;
SIGNAL \GPIO1_D[4]~input_o\ : std_logic;
SIGNAL \GPIO1_D[5]~input_o\ : std_logic;
SIGNAL \GPIO1_D[1]~input_o\ : std_logic;
SIGNAL \GPIO1_D[0]~input_o\ : std_logic;
SIGNAL \CAPdriver|QinReg[0]~feeder_combout\ : std_logic;
SIGNAL \CAPdriver|RipCar:0:FA|s~0_combout\ : std_logic;
SIGNAL \CAPdriver|B[0]~0_combout\ : std_logic;
SIGNAL \CAPdriver|RipCar:1:FA|s~combout\ : std_logic;
SIGNAL \CAPdriver|B[1]~1_combout\ : std_logic;
SIGNAL \CAPdriver|RipCar:1:FA|co~0_combout\ : std_logic;
SIGNAL \GPIO1_D[6]~input_o\ : std_logic;
SIGNAL \CAPdriver|RipCar:2:FA|s~combout\ : std_logic;
SIGNAL \CAPdriver|Chewed[0]~feeder_combout\ : std_logic;
SIGNAL \GPIO1_D[3]~input_o\ : std_logic;
SIGNAL \CAPdriver|B[3]~3_combout\ : std_logic;
SIGNAL \GPIO1_D[7]~input_o\ : std_logic;
SIGNAL \CAPdriver|RipCar:2:FA|co~0_combout\ : std_logic;
SIGNAL \CAPdriver|RipCar:3:FA|s~combout\ : std_logic;
SIGNAL \CAPdriver|Chewed[1]~feeder_combout\ : std_logic;
SIGNAL \CAPdriver|B[4]~4_combout\ : std_logic;
SIGNAL \CAPdriver|RipCar:4:FA|s~combout\ : std_logic;
SIGNAL \CAPdriver|Chewed[2]~feeder_combout\ : std_logic;
SIGNAL \CAPdriver|RipCar:4:FA|co~0_combout\ : std_logic;
SIGNAL \CAPdriver|RipCar:4:FA|co~1_combout\ : std_logic;
SIGNAL \CAPdriver|Chewed[3]~feeder_combout\ : std_logic;
SIGNAL \CAPdriver|Chewed\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAPdriver|QaddReg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CAPdriver|QinReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CAPdriver|DEPHASE|Qd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DIV800|Qaux\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \SCCBdriver|REGS|cQ\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \SCCBdriver|REGS|Q\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \CAPdriver|ALT_INV_takeTurn~clkctrl_outclk\ : std_logic;
SIGNAL \DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\ : std_logic;
SIGNAL \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \DIV800|ALT_INV_Qaux\ : std_logic_vector(5 DOWNTO 5);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
GPIO0_D <= ww_GPIO0_D;
ww_GPIO1_D <= GPIO1_D;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(0) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(0);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(1) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(1);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(2) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(2);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(3) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(3);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(4) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(4);

\CAPdriver|dPCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAPdriver|dPCLK~combout\);

\SCCBdriver|clk400data~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCCBdriver|clk400data~q\);

\CAPdriver|DEPHASE|Qd[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAPdriver|DEPHASE|Qd\(1));

\DIV800|Qaux[5]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV800|Qaux\(5));

\CAPdriver|takeTurn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAPdriver|takeTurn~q\);

\CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(0));
\CAPdriver|ALT_INV_takeTurn~clkctrl_outclk\ <= NOT \CAPdriver|takeTurn~clkctrl_outclk\;
\DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\ <= NOT \DIV800|Qaux[5]~clkctrl_outclk\;
\CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\ <= NOT \CAPdriver|dPCLK~clkctrl_outclk\;
\DIV800|ALT_INV_Qaux\(5) <= NOT \DIV800|Qaux\(5);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SCCBdriver|LIVE~q\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO1_D[9]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO1_D[10]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X28_Y0_N16
\GPIO0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SCCBdriver|SIO_C~combout\,
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
	i => \SCCBdriver|SIO_D~combout\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(1));

-- Location: IOOBUF_X26_Y0_N16
\GPIO0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO0_D~0_combout\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(2));

-- Location: IOOBUF_X26_Y0_N9
\GPIO0_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CAPdriver|DEPHASE|Qd\(1),
	devoe => ww_devoe,
	o => ww_GPIO0_D(3));

-- Location: IOOBUF_X41_Y23_N23
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
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
	i => \SW[3]~input_o\,
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
	i => \SW[4]~input_o\,
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
	i => \SW[5]~input_o\,
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
	i => \CAPdriver|Chewed\(0),
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
	i => \CAPdriver|Chewed\(1),
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
	i => \CAPdriver|Chewed\(2),
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
	i => \CAPdriver|Chewed\(3),
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
	i => \CAPdriver|Chewed\(0),
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
	i => \CAPdriver|Chewed\(1),
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
	i => \CAPdriver|Chewed\(2),
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
	i => \CAPdriver|Chewed\(3),
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
	i => \GPIO1_D[9]~input_o\,
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
	i => \GPIO1_D[10]~input_o\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

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

-- Location: LCCOMB_X27_Y18_N0
\DIV800|Qaux[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[0]~5_combout\ = !\DIV800|Qaux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV800|Qaux\(0),
	combout => \DIV800|Qaux[0]~5_combout\);

-- Location: LCCOMB_X27_Y18_N30
\DIV800|Qaux[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[0]~feeder_combout\ = \DIV800|Qaux[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux[0]~5_combout\,
	combout => \DIV800|Qaux[0]~feeder_combout\);

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

-- Location: FF_X27_Y18_N31
\DIV800|Qaux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIV800|Qaux[0]~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(0));

-- Location: LCCOMB_X26_Y18_N12
\DIV800|Qaux[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[1]~4_combout\ = !\DIV800|Qaux\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux\(1),
	combout => \DIV800|Qaux[1]~4_combout\);

-- Location: LCCOMB_X26_Y18_N24
\DIV800|Qaux[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[1]~feeder_combout\ = \DIV800|Qaux[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV800|Qaux[1]~4_combout\,
	combout => \DIV800|Qaux[1]~feeder_combout\);

-- Location: FF_X26_Y18_N25
\DIV800|Qaux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(0),
	d => \DIV800|Qaux[1]~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(1));

-- Location: LCCOMB_X26_Y18_N26
\DIV800|Qaux[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[2]~3_combout\ = !\DIV800|Qaux\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux\(2),
	combout => \DIV800|Qaux[2]~3_combout\);

-- Location: FF_X26_Y18_N21
\DIV800|Qaux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(1),
	asdata => \DIV800|Qaux[2]~3_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(2));

-- Location: LCCOMB_X21_Y18_N10
\DIV800|Qaux[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[3]~2_combout\ = !\DIV800|Qaux\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV800|Qaux\(3),
	combout => \DIV800|Qaux[3]~2_combout\);

-- Location: LCCOMB_X21_Y18_N4
\DIV800|Qaux[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[3]~feeder_combout\ = \DIV800|Qaux[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux[3]~2_combout\,
	combout => \DIV800|Qaux[3]~feeder_combout\);

-- Location: FF_X21_Y18_N5
\DIV800|Qaux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(2),
	d => \DIV800|Qaux[3]~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(3));

-- Location: LCCOMB_X21_Y18_N30
\DIV800|Qaux[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[4]~1_combout\ = !\DIV800|Qaux\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux\(4),
	combout => \DIV800|Qaux[4]~1_combout\);

-- Location: FF_X21_Y18_N17
\DIV800|Qaux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(3),
	asdata => \DIV800|Qaux[4]~1_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(4));

-- Location: LCCOMB_X20_Y21_N22
\DIV800|Qaux[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[5]~0_combout\ = !\DIV800|Qaux\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux\(5),
	combout => \DIV800|Qaux[5]~0_combout\);

-- Location: LCCOMB_X20_Y21_N26
\DIV800|Qaux[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[5]~feeder_combout\ = \DIV800|Qaux[5]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux[5]~0_combout\,
	combout => \DIV800|Qaux[5]~feeder_combout\);

-- Location: FF_X20_Y21_N27
\DIV800|Qaux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(4),
	d => \DIV800|Qaux[5]~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(5));

-- Location: CLKCTRL_G14
\DIV800|Qaux[5]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DIV800|Qaux[5]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DIV800|Qaux[5]~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y21_N30
\SCCBdriver|EE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|EE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \SCCBdriver|EE~feeder_combout\);

-- Location: FF_X21_Y21_N31
\SCCBdriver|EE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\,
	d => \SCCBdriver|EE~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|EE~q\);

-- Location: LCCOMB_X20_Y21_N6
\SCCBdriver|clkE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|clkE~combout\ = (!\SCCBdriver|clk400~q\) # (!\SCCBdriver|eInd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|eInd~q\,
	datad => \SCCBdriver|clk400~q\,
	combout => \SCCBdriver|clkE~combout\);

-- Location: LCCOMB_X20_Y21_N10
\SCCBdriver|clk400~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|clk400~feeder_combout\ = \SCCBdriver|clkE~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCCBdriver|clkE~combout\,
	combout => \SCCBdriver|clk400~feeder_combout\);

-- Location: FF_X20_Y21_N11
\SCCBdriver|clk400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(5),
	d => \SCCBdriver|clk400~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|clk400~q\);

-- Location: LCCOMB_X21_Y21_N0
\SCCBdriver|clk400D\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|clk400D~combout\ = (!\SCCBdriver|clk400data~q\ & \SCCBdriver|C_Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|clk400data~q\,
	datad => \SCCBdriver|C_Esync~q\,
	combout => \SCCBdriver|clk400D~combout\);

-- Location: FF_X21_Y21_N25
\SCCBdriver|clk400data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\,
	asdata => \SCCBdriver|clk400D~combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|clk400data~q\);

-- Location: CLKCTRL_G12
\SCCBdriver|clk400data~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCCBdriver|clk400data~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCCBdriver|clk400data~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y21_N12
\SCCBdriver|REGS|Esync~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|Esync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \SCCBdriver|REGS|Esync~feeder_combout\);

-- Location: FF_X24_Y21_N13
\SCCBdriver|REGS|Esync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|Esync~feeder_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Esync~q\);

-- Location: LCCOMB_X23_Y22_N10
\SCCBdriver|REGS|cQ[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cQ[0]~0_combout\ = !\SCCBdriver|REGS|Esync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cQ[0]~0_combout\);

-- Location: FF_X23_Y22_N11
\SCCBdriver|REGS|cQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cQ[0]~0_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(0));

-- Location: LCCOMB_X23_Y22_N24
\SCCBdriver|REGS|cD[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[1]~25_combout\ = (\SCCBdriver|REGS|cQ\(0)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(0),
	combout => \SCCBdriver|REGS|cD[1]~25_combout\);

-- Location: FF_X23_Y22_N25
\SCCBdriver|REGS|cQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[1]~25_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(1));

-- Location: LCCOMB_X23_Y22_N6
\SCCBdriver|REGS|cD[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[2]~24_combout\ = (\SCCBdriver|REGS|cQ\(1)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(1),
	combout => \SCCBdriver|REGS|cD[2]~24_combout\);

-- Location: FF_X23_Y22_N7
\SCCBdriver|REGS|cQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[2]~24_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(2));

-- Location: LCCOMB_X23_Y22_N28
\SCCBdriver|REGS|cD[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[3]~23_combout\ = (\SCCBdriver|REGS|cQ\(2)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(2),
	combout => \SCCBdriver|REGS|cD[3]~23_combout\);

-- Location: FF_X23_Y22_N29
\SCCBdriver|REGS|cQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[3]~23_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(3));

-- Location: LCCOMB_X23_Y22_N18
\SCCBdriver|REGS|cD[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[4]~22_combout\ = (\SCCBdriver|REGS|cQ\(3)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(3),
	combout => \SCCBdriver|REGS|cD[4]~22_combout\);

-- Location: FF_X23_Y22_N19
\SCCBdriver|REGS|cQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[4]~22_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(4));

-- Location: LCCOMB_X23_Y22_N12
\SCCBdriver|REGS|cD[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[5]~21_combout\ = (\SCCBdriver|REGS|cQ\(4)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(4),
	combout => \SCCBdriver|REGS|cD[5]~21_combout\);

-- Location: FF_X23_Y22_N13
\SCCBdriver|REGS|cQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[5]~21_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(5));

-- Location: LCCOMB_X23_Y22_N22
\SCCBdriver|REGS|cD[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[6]~20_combout\ = (\SCCBdriver|REGS|cQ\(5)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(5),
	combout => \SCCBdriver|REGS|cD[6]~20_combout\);

-- Location: FF_X23_Y22_N23
\SCCBdriver|REGS|cQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[6]~20_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(6));

-- Location: LCCOMB_X23_Y22_N4
\SCCBdriver|REGS|cD[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[7]~19_combout\ = (\SCCBdriver|REGS|cQ\(6)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(6),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[7]~19_combout\);

-- Location: FF_X23_Y22_N5
\SCCBdriver|REGS|cQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[7]~19_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(7));

-- Location: LCCOMB_X23_Y22_N26
\SCCBdriver|REGS|cD[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[8]~18_combout\ = (\SCCBdriver|REGS|cQ\(7)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(7),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[8]~18_combout\);

-- Location: FF_X23_Y22_N27
\SCCBdriver|REGS|cQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[8]~18_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(8));

-- Location: LCCOMB_X23_Y22_N8
\SCCBdriver|REGS|cD[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[9]~17_combout\ = (\SCCBdriver|REGS|cQ\(8)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(8),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[9]~17_combout\);

-- Location: FF_X23_Y22_N9
\SCCBdriver|REGS|cQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[9]~17_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(9));

-- Location: LCCOMB_X23_Y22_N2
\SCCBdriver|REGS|cD[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[10]~16_combout\ = (\SCCBdriver|REGS|cQ\(9)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(9),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[10]~16_combout\);

-- Location: FF_X23_Y22_N3
\SCCBdriver|REGS|cQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[10]~16_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(10));

-- Location: LCCOMB_X23_Y22_N0
\SCCBdriver|REGS|cD[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[11]~15_combout\ = (\SCCBdriver|REGS|cQ\(10)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(10),
	combout => \SCCBdriver|REGS|cD[11]~15_combout\);

-- Location: FF_X23_Y22_N1
\SCCBdriver|REGS|cQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[11]~15_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(11));

-- Location: LCCOMB_X23_Y22_N14
\SCCBdriver|REGS|cD[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[12]~14_combout\ = (\SCCBdriver|REGS|cQ\(11)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(11),
	combout => \SCCBdriver|REGS|cD[12]~14_combout\);

-- Location: FF_X23_Y22_N15
\SCCBdriver|REGS|cQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[12]~14_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(12));

-- Location: LCCOMB_X23_Y22_N20
\SCCBdriver|REGS|cD[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[13]~13_combout\ = (\SCCBdriver|REGS|cQ\(12)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(12),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[13]~13_combout\);

-- Location: FF_X23_Y22_N21
\SCCBdriver|REGS|cQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[13]~13_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(13));

-- Location: LCCOMB_X23_Y22_N30
\SCCBdriver|REGS|cD[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[14]~12_combout\ = (\SCCBdriver|REGS|cQ\(13)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(13),
	combout => \SCCBdriver|REGS|cD[14]~12_combout\);

-- Location: FF_X23_Y22_N31
\SCCBdriver|REGS|cQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[14]~12_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(14));

-- Location: LCCOMB_X23_Y21_N4
\SCCBdriver|REGS|cD[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[15]~11_combout\ = (\SCCBdriver|REGS|cQ\(14)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|REGS|cQ\(14),
	combout => \SCCBdriver|REGS|cD[15]~11_combout\);

-- Location: FF_X23_Y21_N5
\SCCBdriver|REGS|cQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[15]~11_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(15));

-- Location: LCCOMB_X23_Y21_N2
\SCCBdriver|REGS|cD[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[16]~10_combout\ = (\SCCBdriver|REGS|cQ\(15)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(15),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[16]~10_combout\);

-- Location: FF_X23_Y21_N3
\SCCBdriver|REGS|cQ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[16]~10_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(16));

-- Location: LCCOMB_X23_Y21_N20
\SCCBdriver|REGS|cD[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[17]~9_combout\ = (\SCCBdriver|REGS|cQ\(16)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(16),
	combout => \SCCBdriver|REGS|cD[17]~9_combout\);

-- Location: FF_X23_Y21_N21
\SCCBdriver|REGS|cQ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[17]~9_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(17));

-- Location: LCCOMB_X23_Y21_N0
\SCCBdriver|REGS|cD[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[18]~8_combout\ = (\SCCBdriver|REGS|cQ\(17)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(17),
	combout => \SCCBdriver|REGS|cD[18]~8_combout\);

-- Location: FF_X23_Y21_N1
\SCCBdriver|REGS|cQ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[18]~8_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(18));

-- Location: LCCOMB_X23_Y21_N14
\SCCBdriver|REGS|cD[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[19]~7_combout\ = (\SCCBdriver|REGS|cQ\(18)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(18),
	combout => \SCCBdriver|REGS|cD[19]~7_combout\);

-- Location: FF_X23_Y21_N15
\SCCBdriver|REGS|cQ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[19]~7_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(19));

-- Location: LCCOMB_X24_Y21_N18
\SCCBdriver|REGS|cD[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[20]~6_combout\ = (\SCCBdriver|REGS|cQ\(19)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(19),
	combout => \SCCBdriver|REGS|cD[20]~6_combout\);

-- Location: FF_X24_Y21_N19
\SCCBdriver|REGS|cQ[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[20]~6_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(20));

-- Location: LCCOMB_X24_Y21_N22
\SCCBdriver|REGS|cD[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[21]~5_combout\ = (\SCCBdriver|REGS|cQ\(20)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(20),
	combout => \SCCBdriver|REGS|cD[21]~5_combout\);

-- Location: FF_X24_Y21_N23
\SCCBdriver|REGS|cQ[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[21]~5_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(21));

-- Location: LCCOMB_X24_Y21_N8
\SCCBdriver|REGS|cD[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[22]~4_combout\ = (\SCCBdriver|REGS|cQ\(21)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(21),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[22]~4_combout\);

-- Location: FF_X24_Y21_N9
\SCCBdriver|REGS|cQ[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[22]~4_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(22));

-- Location: LCCOMB_X24_Y21_N4
\SCCBdriver|REGS|cD[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[23]~3_combout\ = (\SCCBdriver|REGS|cQ\(22)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(22),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[23]~3_combout\);

-- Location: FF_X24_Y21_N5
\SCCBdriver|REGS|cQ[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[23]~3_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(23));

-- Location: LCCOMB_X24_Y21_N0
\SCCBdriver|REGS|cD[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[24]~2_combout\ = (\SCCBdriver|REGS|cQ\(23)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(23),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[24]~2_combout\);

-- Location: FF_X24_Y21_N1
\SCCBdriver|REGS|cQ[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[24]~2_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(24));

-- Location: LCCOMB_X24_Y21_N26
\SCCBdriver|REGS|cD[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[25]~1_combout\ = (\SCCBdriver|REGS|cQ\(24)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(24),
	combout => \SCCBdriver|REGS|cD[25]~1_combout\);

-- Location: FF_X24_Y21_N27
\SCCBdriver|REGS|cQ[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|cD[25]~1_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(25));

-- Location: LCCOMB_X24_Y21_N20
\SCCBdriver|REGS|cD[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[26]~0_combout\ = (\SCCBdriver|REGS|cQ\(25)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|cQ\(25),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[26]~0_combout\);

-- Location: FF_X24_Y21_N21
\SCCBdriver|REGS|cQ[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~q\,
	d => \SCCBdriver|REGS|cD[26]~0_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|cQ\(26));

-- Location: LCCOMB_X21_Y21_N28
\SCCBdriver|dataEedge\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|dataEedge~combout\ = LCELL((((\SCCBdriver|mssgGO~q\ & \SCCBdriver|REGS|cQ\(26))) # (!\SCCBdriver|clk400data~q\)) # (!\SCCBdriver|clk400~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|clk400~q\,
	datab => \SCCBdriver|mssgGO~q\,
	datac => \SCCBdriver|REGS|cQ\(26),
	datad => \SCCBdriver|clk400data~q\,
	combout => \SCCBdriver|dataEedge~combout\);

-- Location: LCCOMB_X23_Y21_N6
\SCCBdriver|mssgGO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|mssgGO~0_combout\ = !\SCCBdriver|mssgGO~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|mssgGO~q\,
	combout => \SCCBdriver|mssgGO~0_combout\);

-- Location: FF_X23_Y21_N7
\SCCBdriver|mssgGO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|dataEedge~combout\,
	d => \SCCBdriver|mssgGO~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|mssgGO~q\);

-- Location: LCCOMB_X22_Y22_N6
\SCCBdriver|C_Eedge\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|C_Eedge~combout\ = LCELL((\SCCBdriver|C_E~q\ & ((!\SCCBdriver|mssgGO~q\))) # (!\SCCBdriver|C_E~q\ & (\SCCBdriver|eInd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|eInd~q\,
	datac => \SCCBdriver|C_E~q\,
	datad => \SCCBdriver|mssgGO~q\,
	combout => \SCCBdriver|C_Eedge~combout\);

-- Location: LCCOMB_X22_Y22_N26
\SCCBdriver|C_E~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|C_E~0_combout\ = !\SCCBdriver|C_E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|C_E~q\,
	combout => \SCCBdriver|C_E~0_combout\);

-- Location: FF_X22_Y22_N7
\SCCBdriver|C_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|C_Eedge~combout\,
	asdata => \SCCBdriver|C_E~0_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|C_E~q\);

-- Location: FF_X22_Y21_N3
\SCCBdriver|C_Esync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux[5]~clkctrl_outclk\,
	asdata => \SCCBdriver|C_E~q\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|C_Esync~q\);

-- Location: LCCOMB_X22_Y21_N4
\SCCBdriver|DeInd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|DeInd~0_combout\ = \SCCBdriver|eInd~q\ $ (!\SCCBdriver|C_Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|eInd~q\,
	datad => \SCCBdriver|C_Esync~q\,
	combout => \SCCBdriver|DeInd~0_combout\);

-- Location: LCCOMB_X21_Y21_N10
\SCCBdriver|DeInd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|DeInd~1_combout\ = (\SCCBdriver|EE~q\ & (\SCCBdriver|DeInd~0_combout\ & ((!\SCCBdriver|Q1~q\) # (!\SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|EE~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|DeInd~0_combout\,
	combout => \SCCBdriver|DeInd~1_combout\);

-- Location: FF_X21_Y21_N11
\SCCBdriver|eInd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|ALT_INV_Qaux\(5),
	d => \SCCBdriver|DeInd~1_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|eInd~q\);

-- Location: LCCOMB_X22_Y21_N30
\SCCBdriver|D1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|D1~0_combout\ = (\SCCBdriver|EE~q\ & ((\SCCBdriver|Q1~q\) # ((!\SCCBdriver|eInd~q\ & \SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|eInd~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|EE~q\,
	combout => \SCCBdriver|D1~0_combout\);

-- Location: FF_X22_Y21_N31
\SCCBdriver|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux[5]~clkctrl_outclk\,
	d => \SCCBdriver|D1~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|Q1~q\);

-- Location: LCCOMB_X22_Y21_N16
\SCCBdriver|D0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|D0~0_combout\ = (\SCCBdriver|EE~q\ & ((\SCCBdriver|Q1~q\ & ((\SCCBdriver|Q0~q\) # (!\SCCBdriver|eInd~q\))) # (!\SCCBdriver|Q1~q\ & ((\SCCBdriver|eInd~q\) # (!\SCCBdriver|Q0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q1~q\,
	datab => \SCCBdriver|eInd~q\,
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|EE~q\,
	combout => \SCCBdriver|D0~0_combout\);

-- Location: FF_X22_Y21_N17
\SCCBdriver|Q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux[5]~clkctrl_outclk\,
	d => \SCCBdriver|D0~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|Q0~q\);

-- Location: LCCOMB_X23_Y21_N8
\SCCBdriver|LIVE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|LIVE~0_combout\ = (\SCCBdriver|eInd~q\) # (\SCCBdriver|Q0~q\ $ (\SCCBdriver|Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|eInd~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|LIVE~0_combout\);

-- Location: FF_X22_Y21_N5
\SCCBdriver|LIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux[5]~clkctrl_outclk\,
	asdata => \SCCBdriver|LIVE~0_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|LIVE~q\);

-- Location: IOIBUF_X35_Y0_N8
\GPIO1_D[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(9),
	o => \GPIO1_D[9]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\GPIO1_D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(10),
	o => \GPIO1_D[10]~input_o\);

-- Location: LCCOMB_X22_Y21_N2
\SCCBdriver|SIO_C\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|SIO_C~combout\ = (\SCCBdriver|clk400~q\) # (!\SCCBdriver|C_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|C_E~q\,
	datad => \SCCBdriver|clk400~q\,
	combout => \SCCBdriver|SIO_C~combout\);

-- Location: FF_X23_Y21_N29
\SCCBdriver|REGS|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|Q0~q\,
	clrn => \SCCBdriver|mssgGO~q\,
	sclr => \SCCBdriver|REGS|Esync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(1));

-- Location: LCCOMB_X22_Y21_N26
\SCCBdriver|REGS|D[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[2]~24_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(1))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q1~q\ & \SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(1),
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[2]~24_combout\);

-- Location: FF_X22_Y21_N27
\SCCBdriver|REGS|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[2]~24_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(2));

-- Location: LCCOMB_X22_Y21_N20
\SCCBdriver|REGS|D[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[3]~23_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(2))) # (!\SCCBdriver|REGS|Esync~q\ & (((!\SCCBdriver|Q1~q\ & \SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(2),
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[3]~23_combout\);

-- Location: FF_X22_Y21_N21
\SCCBdriver|REGS|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[3]~23_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(3));

-- Location: LCCOMB_X23_Y21_N24
\SCCBdriver|REGS|D[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[4]~22_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(3),
	combout => \SCCBdriver|REGS|D[4]~22_combout\);

-- Location: FF_X23_Y21_N25
\SCCBdriver|REGS|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[4]~22_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(4));

-- Location: LCCOMB_X22_Y21_N14
\SCCBdriver|REGS|D[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[5]~21_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(4))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q1~q\ & !\SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(4),
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[5]~21_combout\);

-- Location: FF_X22_Y21_N15
\SCCBdriver|REGS|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[5]~21_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(5));

-- Location: LCCOMB_X23_Y21_N22
\SCCBdriver|REGS|D[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[6]~20_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(5),
	combout => \SCCBdriver|REGS|D[6]~20_combout\);

-- Location: FF_X23_Y21_N23
\SCCBdriver|REGS|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[6]~20_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(6));

-- Location: LCCOMB_X22_Y21_N8
\SCCBdriver|REGS|D[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[7]~19_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(6))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q1~q\ & !\SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(6),
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[7]~19_combout\);

-- Location: FF_X22_Y21_N9
\SCCBdriver|REGS|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[7]~19_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(7));

-- Location: LCCOMB_X22_Y21_N10
\SCCBdriver|REGS|D[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[8]~18_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(7))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q1~q\ & !\SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(7),
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[8]~18_combout\);

-- Location: FF_X22_Y21_N11
\SCCBdriver|REGS|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[8]~18_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(8));

-- Location: LCCOMB_X23_Y21_N16
\SCCBdriver|REGS|D[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[9]~17_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(8),
	combout => \SCCBdriver|REGS|D[9]~17_combout\);

-- Location: FF_X23_Y21_N17
\SCCBdriver|REGS|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[9]~17_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(9));

-- Location: LCCOMB_X23_Y21_N18
\SCCBdriver|REGS|D[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[10]~16_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(9),
	combout => \SCCBdriver|REGS|D[10]~16_combout\);

-- Location: FF_X23_Y21_N19
\SCCBdriver|REGS|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[10]~16_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(10));

-- Location: LCCOMB_X22_Y21_N12
\SCCBdriver|REGS|D[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[11]~15_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(10))) # (!\SCCBdriver|REGS|Esync~q\ & (((!\SCCBdriver|Q1~q\ & \SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(10),
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[11]~15_combout\);

-- Location: FF_X22_Y21_N13
\SCCBdriver|REGS|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[11]~15_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(11));

-- Location: LCCOMB_X22_Y21_N6
\SCCBdriver|REGS|D[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[12]~14_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(11))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q0~q\ & \SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(11),
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[12]~14_combout\);

-- Location: FF_X22_Y21_N7
\SCCBdriver|REGS|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[12]~14_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(12));

-- Location: LCCOMB_X22_Y21_N28
\SCCBdriver|REGS|D[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[13]~13_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(12))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q1~q\ & \SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(12),
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[13]~13_combout\);

-- Location: FF_X22_Y21_N29
\SCCBdriver|REGS|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[13]~13_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(13));

-- Location: LCCOMB_X22_Y21_N22
\SCCBdriver|REGS|D[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[14]~12_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(13))) # (!\SCCBdriver|REGS|Esync~q\ & (((!\SCCBdriver|Q1~q\ & \SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(13),
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[14]~12_combout\);

-- Location: FF_X22_Y21_N23
\SCCBdriver|REGS|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[14]~12_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(14));

-- Location: LCCOMB_X22_Y21_N24
\SCCBdriver|REGS|D[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[15]~11_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(14))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q1~q\ & !\SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(14),
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[15]~11_combout\);

-- Location: FF_X22_Y21_N25
\SCCBdriver|REGS|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[15]~11_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(15));

-- Location: LCCOMB_X23_Y21_N26
\SCCBdriver|REGS|D[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[16]~10_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(15),
	combout => \SCCBdriver|REGS|D[16]~10_combout\);

-- Location: FF_X23_Y21_N27
\SCCBdriver|REGS|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[16]~10_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(16));

-- Location: LCCOMB_X23_Y21_N30
\SCCBdriver|REGS|D[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[17]~9_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(16))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q0~q\ & \SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(16),
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|REGS|D[17]~9_combout\);

-- Location: FF_X23_Y21_N31
\SCCBdriver|REGS|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[17]~9_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(17));

-- Location: LCCOMB_X23_Y21_N12
\SCCBdriver|REGS|D[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[18]~8_combout\ = (\SCCBdriver|REGS|Q\(17) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(17),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[18]~8_combout\);

-- Location: FF_X23_Y21_N13
\SCCBdriver|REGS|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[18]~8_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(18));

-- Location: LCCOMB_X23_Y21_N10
\SCCBdriver|REGS|D[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[19]~7_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(18),
	combout => \SCCBdriver|REGS|D[19]~7_combout\);

-- Location: FF_X23_Y21_N11
\SCCBdriver|REGS|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[19]~7_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(19));

-- Location: LCCOMB_X22_Y21_N18
\SCCBdriver|REGS|D[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[20]~6_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(19))))) # (!\SCCBdriver|REGS|Esync~q\ & ((\SCCBdriver|Q0~q\) # ((\SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(19),
	combout => \SCCBdriver|REGS|D[20]~6_combout\);

-- Location: FF_X22_Y21_N19
\SCCBdriver|REGS|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[20]~6_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(20));

-- Location: LCCOMB_X22_Y22_N24
\SCCBdriver|REGS|D[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[21]~5_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(20),
	combout => \SCCBdriver|REGS|D[21]~5_combout\);

-- Location: FF_X22_Y22_N25
\SCCBdriver|REGS|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[21]~5_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(21));

-- Location: LCCOMB_X22_Y22_N20
\SCCBdriver|REGS|D[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[22]~4_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(21),
	combout => \SCCBdriver|REGS|D[22]~4_combout\);

-- Location: FF_X22_Y22_N21
\SCCBdriver|REGS|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[22]~4_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(22));

-- Location: LCCOMB_X22_Y22_N22
\SCCBdriver|REGS|D[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[23]~3_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(22),
	combout => \SCCBdriver|REGS|D[23]~3_combout\);

-- Location: FF_X22_Y22_N23
\SCCBdriver|REGS|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[23]~3_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(23));

-- Location: LCCOMB_X22_Y22_N30
\SCCBdriver|REGS|D[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[24]~2_combout\ = (\SCCBdriver|REGS|Q\(23) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(23),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[24]~2_combout\);

-- Location: FF_X22_Y22_N31
\SCCBdriver|REGS|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[24]~2_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(24));

-- Location: LCCOMB_X22_Y21_N0
\SCCBdriver|REGS|D[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[25]~1_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(24))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q0~q\) # (\SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(24),
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[25]~1_combout\);

-- Location: FF_X22_Y21_N1
\SCCBdriver|REGS|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[25]~1_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(25));

-- Location: LCCOMB_X22_Y22_N14
\SCCBdriver|REGS|D[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[26]~0_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(25),
	combout => \SCCBdriver|REGS|D[26]~0_combout\);

-- Location: FF_X22_Y22_N15
\SCCBdriver|REGS|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|D[26]~0_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(26));

-- Location: LCCOMB_X23_Y22_N16
\SCCBdriver|SIO_D\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|SIO_D~combout\ = (\SCCBdriver|REGS|Q\(26)) # (!\SCCBdriver|mssgGO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|mssgGO~q\,
	datad => \SCCBdriver|REGS|Q\(26),
	combout => \SCCBdriver|SIO_D~combout\);

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

-- Location: PLL_2
\CLK_24M|altpll_component|auto_generated|pll1\ : cycloneiii_pll
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
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N28
\GPIO0_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GPIO0_D~0_combout\ = (\SW[1]~input_o\ & GLOBAL(\CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	combout => \GPIO0_D~0_combout\);

-- Location: IOIBUF_X35_Y0_N1
\GPIO1_D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(8),
	o => \GPIO1_D[8]~input_o\);

-- Location: LCCOMB_X36_Y1_N28
\CAPdriver|dPCLK\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|dPCLK~combout\ = LCELL((\GPIO1_D[9]~input_o\ & !\GPIO1_D[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPIO1_D[9]~input_o\,
	datad => \GPIO1_D[8]~input_o\,
	combout => \CAPdriver|dPCLK~combout\);

-- Location: CLKCTRL_G7
\CAPdriver|dPCLK~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAPdriver|dPCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAPdriver|dPCLK~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y1_N18
\CAPdriver|takeTurn~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|takeTurn~0_combout\ = !\CAPdriver|takeTurn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAPdriver|takeTurn~q\,
	combout => \CAPdriver|takeTurn~0_combout\);

-- Location: LCCOMB_X35_Y1_N2
\CAPdriver|takeTurn~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|takeTurn~feeder_combout\ = \CAPdriver|takeTurn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAPdriver|takeTurn~0_combout\,
	combout => \CAPdriver|takeTurn~feeder_combout\);

-- Location: FF_X35_Y1_N3
\CAPdriver|takeTurn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAPdriver|takeTurn~feeder_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|takeTurn~q\);

-- Location: CLKCTRL_G6
\CAPdriver|takeTurn~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAPdriver|takeTurn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAPdriver|takeTurn~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y8_N10
\CAPdriver|DEPHASE|Qt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|DEPHASE|Qt~0_combout\ = !\CAPdriver|DEPHASE|Qt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAPdriver|DEPHASE|Qt~q\,
	combout => \CAPdriver|DEPHASE|Qt~0_combout\);

-- Location: FF_X26_Y8_N11
\CAPdriver|DEPHASE|Qt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_takeTurn~clkctrl_outclk\,
	d => \CAPdriver|DEPHASE|Qt~0_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|DEPHASE|Qt~q\);

-- Location: LCCOMB_X26_Y8_N0
\CAPdriver|DEPHASE|Qd[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|DEPHASE|Qd[0]~feeder_combout\ = \CAPdriver|DEPHASE|Qt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAPdriver|DEPHASE|Qt~q\,
	combout => \CAPdriver|DEPHASE|Qd[0]~feeder_combout\);

-- Location: FF_X26_Y8_N1
\CAPdriver|DEPHASE|Qd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|takeTurn~clkctrl_outclk\,
	d => \CAPdriver|DEPHASE|Qd[0]~feeder_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|DEPHASE|Qd\(0));

-- Location: LCCOMB_X26_Y8_N4
\CAPdriver|DEPHASE|Qd[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|DEPHASE|Qd[1]~feeder_combout\ = \CAPdriver|DEPHASE|Qd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAPdriver|DEPHASE|Qd\(0),
	combout => \CAPdriver|DEPHASE|Qd[1]~feeder_combout\);

-- Location: FF_X26_Y8_N5
\CAPdriver|DEPHASE|Qd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|takeTurn~clkctrl_outclk\,
	d => \CAPdriver|DEPHASE|Qd[1]~feeder_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|DEPHASE|Qd\(1));

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

-- Location: CLKCTRL_G18
\CAPdriver|DEPHASE|Qd[1]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAPdriver|DEPHASE|Qd[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAPdriver|DEPHASE|Qd[1]~clkctrl_outclk\);

-- Location: IOIBUF_X35_Y0_N22
\GPIO1_D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(2),
	o => \GPIO1_D[2]~input_o\);

-- Location: FF_X35_Y1_N15
\CAPdriver|QinReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[2]~input_o\,
	clrn => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QinReg\(2));

-- Location: LCCOMB_X35_Y1_N14
\CAPdriver|B[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|B[2]~2_combout\ = (\CAPdriver|takeTurn~q\ & (\CAPdriver|QinReg\(2))) # (!\CAPdriver|takeTurn~q\ & ((\CAPdriver|QaddReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|takeTurn~q\,
	datac => \CAPdriver|QinReg\(2),
	datad => \CAPdriver|QaddReg\(2),
	combout => \CAPdriver|B[2]~2_combout\);

-- Location: IOIBUF_X32_Y0_N1
\GPIO1_D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(4),
	o => \GPIO1_D[4]~input_o\);

-- Location: FF_X35_Y1_N19
\CAPdriver|QinReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[4]~input_o\,
	clrn => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QinReg\(4));

-- Location: IOIBUF_X35_Y0_N29
\GPIO1_D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(5),
	o => \GPIO1_D[5]~input_o\);

-- Location: FF_X35_Y1_N21
\CAPdriver|QinReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[5]~input_o\,
	clrn => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QinReg\(5));

-- Location: IOIBUF_X37_Y0_N15
\GPIO1_D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(1),
	o => \GPIO1_D[1]~input_o\);

-- Location: FF_X35_Y1_N23
\CAPdriver|QinReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[1]~input_o\,
	clrn => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QinReg\(1));

-- Location: IOIBUF_X37_Y0_N22
\GPIO1_D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(0),
	o => \GPIO1_D[0]~input_o\);

-- Location: LCCOMB_X35_Y1_N10
\CAPdriver|QinReg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|QinReg[0]~feeder_combout\ = \GPIO1_D[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO1_D[0]~input_o\,
	combout => \CAPdriver|QinReg[0]~feeder_combout\);

-- Location: FF_X35_Y1_N11
\CAPdriver|QinReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAPdriver|QinReg[0]~feeder_combout\,
	clrn => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QinReg\(0));

-- Location: LCCOMB_X35_Y1_N4
\CAPdriver|RipCar:0:FA|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|RipCar:0:FA|s~0_combout\ = \CAPdriver|QinReg\(4) $ (((\CAPdriver|takeTurn~q\ & ((\CAPdriver|QinReg\(0)))) # (!\CAPdriver|takeTurn~q\ & (\CAPdriver|QaddReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|QaddReg\(0),
	datab => \CAPdriver|QinReg\(0),
	datac => \CAPdriver|takeTurn~q\,
	datad => \CAPdriver|QinReg\(4),
	combout => \CAPdriver|RipCar:0:FA|s~0_combout\);

-- Location: FF_X35_Y1_N29
\CAPdriver|QaddReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|dPCLK~clkctrl_outclk\,
	asdata => \CAPdriver|RipCar:0:FA|s~0_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QaddReg\(0));

-- Location: LCCOMB_X35_Y1_N28
\CAPdriver|B[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|B[0]~0_combout\ = (\CAPdriver|takeTurn~q\ & ((\CAPdriver|QinReg\(0)))) # (!\CAPdriver|takeTurn~q\ & (\CAPdriver|QaddReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|takeTurn~q\,
	datac => \CAPdriver|QaddReg\(0),
	datad => \CAPdriver|QinReg\(0),
	combout => \CAPdriver|B[0]~0_combout\);

-- Location: LCCOMB_X35_Y1_N12
\CAPdriver|RipCar:1:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|RipCar:1:FA|s~combout\ = \CAPdriver|B[1]~1_combout\ $ (\CAPdriver|QinReg\(5) $ (((\CAPdriver|B[0]~0_combout\ & \CAPdriver|QinReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|B[1]~1_combout\,
	datab => \CAPdriver|B[0]~0_combout\,
	datac => \CAPdriver|QinReg\(5),
	datad => \CAPdriver|QinReg\(4),
	combout => \CAPdriver|RipCar:1:FA|s~combout\);

-- Location: FF_X35_Y1_N13
\CAPdriver|QaddReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|dPCLK~clkctrl_outclk\,
	d => \CAPdriver|RipCar:1:FA|s~combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QaddReg\(1));

-- Location: LCCOMB_X35_Y1_N22
\CAPdriver|B[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|B[1]~1_combout\ = (\CAPdriver|takeTurn~q\ & (\CAPdriver|QinReg\(1))) # (!\CAPdriver|takeTurn~q\ & ((\CAPdriver|QaddReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|takeTurn~q\,
	datac => \CAPdriver|QinReg\(1),
	datad => \CAPdriver|QaddReg\(1),
	combout => \CAPdriver|B[1]~1_combout\);

-- Location: LCCOMB_X35_Y1_N24
\CAPdriver|RipCar:1:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|RipCar:1:FA|co~0_combout\ = (\CAPdriver|QinReg\(5) & ((\CAPdriver|B[1]~1_combout\) # ((\CAPdriver|QinReg\(4) & \CAPdriver|B[0]~0_combout\)))) # (!\CAPdriver|QinReg\(5) & (\CAPdriver|QinReg\(4) & (\CAPdriver|B[1]~1_combout\ & 
-- \CAPdriver|B[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|QinReg\(4),
	datab => \CAPdriver|QinReg\(5),
	datac => \CAPdriver|B[1]~1_combout\,
	datad => \CAPdriver|B[0]~0_combout\,
	combout => \CAPdriver|RipCar:1:FA|co~0_combout\);

-- Location: IOIBUF_X28_Y0_N8
\GPIO1_D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(6),
	o => \GPIO1_D[6]~input_o\);

-- Location: FF_X35_Y1_N27
\CAPdriver|QinReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[6]~input_o\,
	clrn => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QinReg\(6));

-- Location: LCCOMB_X36_Y1_N24
\CAPdriver|RipCar:2:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|RipCar:2:FA|s~combout\ = \CAPdriver|B[2]~2_combout\ $ (\CAPdriver|RipCar:1:FA|co~0_combout\ $ (\CAPdriver|QinReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|B[2]~2_combout\,
	datab => \CAPdriver|RipCar:1:FA|co~0_combout\,
	datac => \CAPdriver|QinReg\(6),
	combout => \CAPdriver|RipCar:2:FA|s~combout\);

-- Location: FF_X36_Y1_N25
\CAPdriver|QaddReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|dPCLK~clkctrl_outclk\,
	d => \CAPdriver|RipCar:2:FA|s~combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QaddReg\(2));

-- Location: LCCOMB_X36_Y1_N26
\CAPdriver|Chewed[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|Chewed[0]~feeder_combout\ = \CAPdriver|QaddReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAPdriver|QaddReg\(2),
	combout => \CAPdriver|Chewed[0]~feeder_combout\);

-- Location: FF_X36_Y1_N27
\CAPdriver|Chewed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|DEPHASE|Qd[1]~clkctrl_outclk\,
	d => \CAPdriver|Chewed[0]~feeder_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|Chewed\(0));

-- Location: IOIBUF_X35_Y0_N15
\GPIO1_D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(3),
	o => \GPIO1_D[3]~input_o\);

-- Location: FF_X35_Y1_N17
\CAPdriver|QinReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[3]~input_o\,
	clrn => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QinReg\(3));

-- Location: LCCOMB_X35_Y1_N16
\CAPdriver|B[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|B[3]~3_combout\ = (\CAPdriver|takeTurn~q\ & (\CAPdriver|QinReg\(3))) # (!\CAPdriver|takeTurn~q\ & ((\CAPdriver|QaddReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|takeTurn~q\,
	datac => \CAPdriver|QinReg\(3),
	datad => \CAPdriver|QaddReg\(3),
	combout => \CAPdriver|B[3]~3_combout\);

-- Location: IOIBUF_X28_Y0_N1
\GPIO1_D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(7),
	o => \GPIO1_D[7]~input_o\);

-- Location: FF_X35_Y1_N31
\CAPdriver|QinReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[7]~input_o\,
	clrn => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QinReg\(7));

-- Location: LCCOMB_X35_Y1_N30
\CAPdriver|RipCar:2:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|RipCar:2:FA|co~0_combout\ = (\CAPdriver|QinReg\(6) & ((\CAPdriver|B[2]~2_combout\) # (\CAPdriver|RipCar:1:FA|co~0_combout\))) # (!\CAPdriver|QinReg\(6) & (\CAPdriver|B[2]~2_combout\ & \CAPdriver|RipCar:1:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|QinReg\(6),
	datab => \CAPdriver|B[2]~2_combout\,
	datad => \CAPdriver|RipCar:1:FA|co~0_combout\,
	combout => \CAPdriver|RipCar:2:FA|co~0_combout\);

-- Location: LCCOMB_X36_Y1_N18
\CAPdriver|RipCar:3:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|RipCar:3:FA|s~combout\ = \CAPdriver|B[3]~3_combout\ $ (\CAPdriver|QinReg\(7) $ (\CAPdriver|RipCar:2:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|B[3]~3_combout\,
	datac => \CAPdriver|QinReg\(7),
	datad => \CAPdriver|RipCar:2:FA|co~0_combout\,
	combout => \CAPdriver|RipCar:3:FA|s~combout\);

-- Location: FF_X36_Y1_N19
\CAPdriver|QaddReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|dPCLK~clkctrl_outclk\,
	d => \CAPdriver|RipCar:3:FA|s~combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QaddReg\(3));

-- Location: LCCOMB_X36_Y1_N14
\CAPdriver|Chewed[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|Chewed[1]~feeder_combout\ = \CAPdriver|QaddReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAPdriver|QaddReg\(3),
	combout => \CAPdriver|Chewed[1]~feeder_combout\);

-- Location: FF_X36_Y1_N15
\CAPdriver|Chewed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|DEPHASE|Qd[1]~clkctrl_outclk\,
	d => \CAPdriver|Chewed[1]~feeder_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|Chewed\(1));

-- Location: LCCOMB_X35_Y1_N20
\CAPdriver|B[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|B[4]~4_combout\ = (!\CAPdriver|takeTurn~q\ & \CAPdriver|QaddReg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|takeTurn~q\,
	datad => \CAPdriver|QaddReg\(4),
	combout => \CAPdriver|B[4]~4_combout\);

-- Location: LCCOMB_X36_Y1_N16
\CAPdriver|RipCar:4:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|RipCar:4:FA|s~combout\ = \CAPdriver|B[4]~4_combout\ $ (((\CAPdriver|B[3]~3_combout\ & ((\CAPdriver|QinReg\(7)) # (\CAPdriver|RipCar:2:FA|co~0_combout\))) # (!\CAPdriver|B[3]~3_combout\ & (\CAPdriver|QinReg\(7) & 
-- \CAPdriver|RipCar:2:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|B[3]~3_combout\,
	datab => \CAPdriver|B[4]~4_combout\,
	datac => \CAPdriver|QinReg\(7),
	datad => \CAPdriver|RipCar:2:FA|co~0_combout\,
	combout => \CAPdriver|RipCar:4:FA|s~combout\);

-- Location: FF_X36_Y1_N17
\CAPdriver|QaddReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|dPCLK~clkctrl_outclk\,
	d => \CAPdriver|RipCar:4:FA|s~combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QaddReg\(4));

-- Location: LCCOMB_X36_Y1_N4
\CAPdriver|Chewed[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|Chewed[2]~feeder_combout\ = \CAPdriver|QaddReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAPdriver|QaddReg\(4),
	combout => \CAPdriver|Chewed[2]~feeder_combout\);

-- Location: FF_X36_Y1_N5
\CAPdriver|Chewed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|DEPHASE|Qd[1]~clkctrl_outclk\,
	d => \CAPdriver|Chewed[2]~feeder_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|Chewed\(2));

-- Location: LCCOMB_X36_Y1_N20
\CAPdriver|RipCar:4:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|RipCar:4:FA|co~0_combout\ = (\CAPdriver|QinReg\(6) & ((\CAPdriver|B[2]~2_combout\) # (\CAPdriver|RipCar:1:FA|co~0_combout\))) # (!\CAPdriver|QinReg\(6) & (\CAPdriver|B[2]~2_combout\ & \CAPdriver|RipCar:1:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|QinReg\(6),
	datac => \CAPdriver|B[2]~2_combout\,
	datad => \CAPdriver|RipCar:1:FA|co~0_combout\,
	combout => \CAPdriver|RipCar:4:FA|co~0_combout\);

-- Location: LCCOMB_X36_Y1_N12
\CAPdriver|RipCar:4:FA|co~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|RipCar:4:FA|co~1_combout\ = (\CAPdriver|B[4]~4_combout\ & ((\CAPdriver|B[3]~3_combout\ & ((\CAPdriver|QinReg\(7)) # (\CAPdriver|RipCar:4:FA|co~0_combout\))) # (!\CAPdriver|B[3]~3_combout\ & (\CAPdriver|QinReg\(7) & 
-- \CAPdriver|RipCar:4:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAPdriver|B[3]~3_combout\,
	datab => \CAPdriver|B[4]~4_combout\,
	datac => \CAPdriver|QinReg\(7),
	datad => \CAPdriver|RipCar:4:FA|co~0_combout\,
	combout => \CAPdriver|RipCar:4:FA|co~1_combout\);

-- Location: FF_X36_Y1_N13
\CAPdriver|QaddReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|dPCLK~clkctrl_outclk\,
	d => \CAPdriver|RipCar:4:FA|co~1_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|QaddReg\(5));

-- Location: LCCOMB_X36_Y1_N22
\CAPdriver|Chewed[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAPdriver|Chewed[3]~feeder_combout\ = \CAPdriver|QaddReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAPdriver|QaddReg\(5),
	combout => \CAPdriver|Chewed[3]~feeder_combout\);

-- Location: FF_X36_Y1_N23
\CAPdriver|Chewed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAPdriver|DEPHASE|Qd[1]~clkctrl_outclk\,
	d => \CAPdriver|Chewed[3]~feeder_combout\,
	clrn => \GPIO1_D[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAPdriver|Chewed\(3));
END structure;


