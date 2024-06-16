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

-- DATE "06/16/2024 18:44:37"

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

ENTITY 	procesador IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(10 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(2 DOWNTO 0);
	GPIO0_D : BUFFER std_logic_vector(4 DOWNTO 0);
	GPIO1_D : IN std_logic_vector(10 DOWNTO 0);
	HEX0_D : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1_D : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2_D : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3_D : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2_DP : BUFFER std_logic
	);
END procesador;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[5]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_DP	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[10]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[9]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF procesador IS
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
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_GPIO0_D : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_GPIO1_D : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_DP : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CAP10|CAPclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCCBdriver|clk400data~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAP10|dPCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAP10|outCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO1_D[10]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV800|Qaux[5]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO1_D[9]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO1_D[8]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \DIV800|Qaux[0]~5_combout\ : std_logic;
SIGNAL \DIV800|Qaux[0]~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIV800|Qaux[1]~4_combout\ : std_logic;
SIGNAL \DIV800|Qaux[2]~3_combout\ : std_logic;
SIGNAL \DIV800|Qaux[2]~feeder_combout\ : std_logic;
SIGNAL \DIV800|Qaux[3]~2_combout\ : std_logic;
SIGNAL \DIV800|Qaux[4]~1_combout\ : std_logic;
SIGNAL \DIV800|Qaux[4]~feeder_combout\ : std_logic;
SIGNAL \DIV800|Qaux[5]~0_combout\ : std_logic;
SIGNAL \DIV800|Qaux[5]~clkctrl_outclk\ : std_logic;
SIGNAL \SCCBdriver|EE~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|EE~q\ : std_logic;
SIGNAL \SCCBdriver|D0~0_combout\ : std_logic;
SIGNAL \SCCBdriver|Q0~q\ : std_logic;
SIGNAL \SCCBdriver|D1~0_combout\ : std_logic;
SIGNAL \SCCBdriver|Q1~q\ : std_logic;
SIGNAL \SCCBdriver|clk400D~combout\ : std_logic;
SIGNAL \SCCBdriver|clk400data~feeder_combout\ : std_logic;
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
SIGNAL \SCCBdriver|clkE~combout\ : std_logic;
SIGNAL \SCCBdriver|clk400~q\ : std_logic;
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
SIGNAL \SCCBdriver|LIVE~0_combout\ : std_logic;
SIGNAL \SCCBdriver|LIVE~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|LIVE~q\ : std_logic;
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
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \GPIO1_D[8]~input_o\ : std_logic;
SIGNAL \GPIO1_D[8]~inputclkctrl_outclk\ : std_logic;
SIGNAL \CAP10|DEPHASE|Qt~0_combout\ : std_logic;
SIGNAL \GPIO1_D[9]~input_o\ : std_logic;
SIGNAL \GPIO1_D[9]~inputclkctrl_outclk\ : std_logic;
SIGNAL \CAP10|DEPHASE|Qt~q\ : std_logic;
SIGNAL \CAP10|DEPHASE|Qd[0]~feeder_combout\ : std_logic;
SIGNAL \CAP10|DEPHASE|Qd[1]~feeder_combout\ : std_logic;
SIGNAL \CAP10|CAPclk~0_combout\ : std_logic;
SIGNAL \CAP10|CAPclk~feeder_combout\ : std_logic;
SIGNAL \CAP10|CAPclk~q\ : std_logic;
SIGNAL \CAP10|CAPclk~clkctrl_outclk\ : std_logic;
SIGNAL \CAP10|Add1~0_combout\ : std_logic;
SIGNAL \SW[3]~inputclkctrl_outclk\ : std_logic;
SIGNAL \CAP10|Add0~0_combout\ : std_logic;
SIGNAL \CAP10|Add0~1\ : std_logic;
SIGNAL \CAP10|Add0~2_combout\ : std_logic;
SIGNAL \CAP10|Add0~3\ : std_logic;
SIGNAL \CAP10|Add0~4_combout\ : std_logic;
SIGNAL \CAP10|Add0~5\ : std_logic;
SIGNAL \CAP10|Add0~6_combout\ : std_logic;
SIGNAL \CAP10|Add0~7\ : std_logic;
SIGNAL \CAP10|Add0~8_combout\ : std_logic;
SIGNAL \CAP10|Add0~9\ : std_logic;
SIGNAL \CAP10|Add0~10_combout\ : std_logic;
SIGNAL \CAP10|Add0~11\ : std_logic;
SIGNAL \CAP10|Add0~12_combout\ : std_logic;
SIGNAL \CAP10|h_count~1_combout\ : std_logic;
SIGNAL \CAP10|Add0~13\ : std_logic;
SIGNAL \CAP10|Add0~14_combout\ : std_logic;
SIGNAL \CAP10|h_count[7]~feeder_combout\ : std_logic;
SIGNAL \CAP10|Add0~15\ : std_logic;
SIGNAL \CAP10|Add0~16_combout\ : std_logic;
SIGNAL \CAP10|h_count~0_combout\ : std_logic;
SIGNAL \CAP10|Add0~17\ : std_logic;
SIGNAL \CAP10|Add0~18_combout\ : std_logic;
SIGNAL \Geo_Loc|Equal1~0_combout\ : std_logic;
SIGNAL \Geo_Loc|Equal1~3_combout\ : std_logic;
SIGNAL \CAP10|Equal0~0_combout\ : std_logic;
SIGNAL \CAP10|enawRAMclk~0_combout\ : std_logic;
SIGNAL \CAP10|enawRAMclk~q\ : std_logic;
SIGNAL \CAP10|outCLK~combout\ : std_logic;
SIGNAL \CAP10|outCLK~clkctrl_outclk\ : std_logic;
SIGNAL \CAP10|Add1~15\ : std_logic;
SIGNAL \CAP10|Add1~16_combout\ : std_logic;
SIGNAL \CAP10|v_count~3_combout\ : std_logic;
SIGNAL \CAP10|Add1~17\ : std_logic;
SIGNAL \CAP10|Add1~18_combout\ : std_logic;
SIGNAL \CAP10|Equal1~0_combout\ : std_logic;
SIGNAL \CAP10|Add1~1\ : std_logic;
SIGNAL \CAP10|Add1~2_combout\ : std_logic;
SIGNAL \CAP10|Add1~3\ : std_logic;
SIGNAL \CAP10|Add1~4_combout\ : std_logic;
SIGNAL \CAP10|Add1~5\ : std_logic;
SIGNAL \CAP10|Add1~6_combout\ : std_logic;
SIGNAL \CAP10|Add1~7\ : std_logic;
SIGNAL \CAP10|Add1~8_combout\ : std_logic;
SIGNAL \CAP10|Add1~9\ : std_logic;
SIGNAL \CAP10|Add1~10_combout\ : std_logic;
SIGNAL \CAP10|v_count~2_combout\ : std_logic;
SIGNAL \CAP10|Equal1~1_combout\ : std_logic;
SIGNAL \CAP10|Equal1~2_combout\ : std_logic;
SIGNAL \CAP10|Add1~11\ : std_logic;
SIGNAL \CAP10|Add1~12_combout\ : std_logic;
SIGNAL \CAP10|v_count~1_combout\ : std_logic;
SIGNAL \CAP10|Add1~13\ : std_logic;
SIGNAL \CAP10|Add1~14_combout\ : std_logic;
SIGNAL \CAP10|v_count~0_combout\ : std_logic;
SIGNAL \GPIO1_D[10]~input_o\ : std_logic;
SIGNAL \GPIO1_D[10]~inputclkctrl_outclk\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[0]~6_combout\ : std_logic;
SIGNAL \Geo_Loc|Equal1~1_combout\ : std_logic;
SIGNAL \Geo_Loc|Equal1~2_combout\ : std_logic;
SIGNAL \Geo_Loc|LessThan0~0_combout\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[1]~18_combout\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[1]~19_combout\ : std_logic;
SIGNAL \CAP10|dPCLK~combout\ : std_logic;
SIGNAL \CAP10|dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \GPIO1_D[7]~input_o\ : std_logic;
SIGNAL \CAP10|QinReg[7]~feeder_combout\ : std_logic;
SIGNAL \GPIO1_D[6]~input_o\ : std_logic;
SIGNAL \GPIO1_D[5]~input_o\ : std_logic;
SIGNAL \GPIO1_D[4]~input_o\ : std_logic;
SIGNAL \CAP10|QinReg[4]~feeder_combout\ : std_logic;
SIGNAL \GPIO1_D[0]~input_o\ : std_logic;
SIGNAL \CAP10|QinReg[0]~feeder_combout\ : std_logic;
SIGNAL \CAP10|takeTurn~0_combout\ : std_logic;
SIGNAL \CAP10|takeTurn~q\ : std_logic;
SIGNAL \CAP10|RipCar:0:FA|s~0_combout\ : std_logic;
SIGNAL \CAP10|B[0]~1_combout\ : std_logic;
SIGNAL \CAP10|RipCar:1:FA|s~combout\ : std_logic;
SIGNAL \GPIO1_D[1]~input_o\ : std_logic;
SIGNAL \CAP10|B[1]~2_combout\ : std_logic;
SIGNAL \CAP10|RipCar:1:FA|co~0_combout\ : std_logic;
SIGNAL \CAP10|RipCar:2:FA|s~combout\ : std_logic;
SIGNAL \GPIO1_D[2]~input_o\ : std_logic;
SIGNAL \CAP10|B[2]~0_combout\ : std_logic;
SIGNAL \CAP10|RipCar:2:FA|co~0_combout\ : std_logic;
SIGNAL \CAP10|RipCar:3:FA|s~combout\ : std_logic;
SIGNAL \GPIO1_D[3]~input_o\ : std_logic;
SIGNAL \CAP10|B[3]~4_combout\ : std_logic;
SIGNAL \CAP10|RipCar:4:FA|s~combout\ : std_logic;
SIGNAL \CAP10|B[4]~3_combout\ : std_logic;
SIGNAL \CAP10|RipCar:4:FA|co~0_combout\ : std_logic;
SIGNAL \Geo_Loc|BallTracker~0_combout\ : std_logic;
SIGNAL \Geo_Loc|BallTracker~1_combout\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[1]~20_combout\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[0]~7\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[1]~8_combout\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[1]~9\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[2]~10_combout\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[2]~11\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[3]~12_combout\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[3]~13\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[4]~14_combout\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[4]~15\ : std_logic;
SIGNAL \Geo_Loc|h_match_count[5]~16_combout\ : std_logic;
SIGNAL \Geo_Loc|LessThan2~1_cout\ : std_logic;
SIGNAL \Geo_Loc|LessThan2~3_cout\ : std_logic;
SIGNAL \Geo_Loc|LessThan2~5_cout\ : std_logic;
SIGNAL \Geo_Loc|LessThan2~7_cout\ : std_logic;
SIGNAL \Geo_Loc|LessThan2~9_cout\ : std_logic;
SIGNAL \Geo_Loc|LessThan2~10_combout\ : std_logic;
SIGNAL \Geo_Loc|v_max_match[7]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \deco_centena|Mux6~0_combout\ : std_logic;
SIGNAL \deco_centena|Mux4~0_combout\ : std_logic;
SIGNAL \deco_centena|Mux1~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \deco_decena|Mux6~0_combout\ : std_logic;
SIGNAL \deco_decena|Mux5~0_combout\ : std_logic;
SIGNAL \deco_decena|Mux4~0_combout\ : std_logic;
SIGNAL \deco_decena|Mux3~0_combout\ : std_logic;
SIGNAL \deco_decena|Mux2~0_combout\ : std_logic;
SIGNAL \deco_decena|Mux1~0_combout\ : std_logic;
SIGNAL \deco_decena|Mux0~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \deco_unidad|Mux6~0_combout\ : std_logic;
SIGNAL \deco_unidad|Mux5~0_combout\ : std_logic;
SIGNAL \deco_unidad|Mux4~0_combout\ : std_logic;
SIGNAL \deco_unidad|Mux3~0_combout\ : std_logic;
SIGNAL \deco_unidad|Mux2~0_combout\ : std_logic;
SIGNAL \deco_unidad|Mux1~0_combout\ : std_logic;
SIGNAL \deco_unidad|Mux0~0_combout\ : std_logic;
SIGNAL \CAP10|DEPHASE|Qd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CAP10|QinReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CAP10|QaddReg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Geo_Loc|h_match_count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CAP10|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CAP10|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \SCCBdriver|REGS|Q\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \SCCBdriver|REGS|cQ\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Geo_Loc|Y_loc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DIV800|Qaux\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Geo_Loc|v_max_match\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Geo_Loc|max_match\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CAP10|ALT_INV_CAPclk~q\ : std_logic;
SIGNAL \DIV800|ALT_INV_Qaux\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \deco_unidad|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \deco_decena|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\ : std_logic;
SIGNAL \CAP10|ALT_INV_dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \CAP10|ALT_INV_CAPclk~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
GPIO0_D <= ww_GPIO0_D;
ww_GPIO1_D <= GPIO1_D;
HEX0_D <= ww_HEX0_D;
HEX1_D <= ww_HEX1_D;
HEX2_D <= ww_HEX2_D;
HEX3_D <= ww_HEX3_D;
HEX2_DP <= ww_HEX2_DP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(0) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(0);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(1) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(1);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(2) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(2);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(3) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(3);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(4) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(4);

\CAP10|CAPclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAP10|CAPclk~q\);

\SCCBdriver|clk400data~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCCBdriver|clk400data~q\);

\CAP10|dPCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAP10|dPCLK~combout\);

\CAP10|outCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAP10|outCLK~combout\);

\CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(0));

\GPIO1_D[10]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GPIO1_D[10]~input_o\);

\DIV800|Qaux[5]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV800|Qaux\(5));

\GPIO1_D[9]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GPIO1_D[9]~input_o\);

\GPIO1_D[8]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GPIO1_D[8]~input_o\);

\SW[3]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[3]~input_o\);

\SW[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[0]~input_o\);
\CAP10|ALT_INV_CAPclk~q\ <= NOT \CAP10|CAPclk~q\;
\DIV800|ALT_INV_Qaux\(5) <= NOT \DIV800|Qaux\(5);
\deco_unidad|ALT_INV_Mux0~0_combout\ <= NOT \deco_unidad|Mux0~0_combout\;
\deco_decena|ALT_INV_Mux0~0_combout\ <= NOT \deco_decena|Mux0~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
\DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\ <= NOT \DIV800|Qaux[5]~clkctrl_outclk\;
\ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\ <= NOT \GPIO1_D[10]~inputclkctrl_outclk\;
\CAP10|ALT_INV_dPCLK~clkctrl_outclk\ <= NOT \CAP10|dPCLK~clkctrl_outclk\;
\CAP10|ALT_INV_CAPclk~clkctrl_outclk\ <= NOT \CAP10|CAPclk~clkctrl_outclk\;

-- Location: IOOBUF_X14_Y29_N2
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

-- Location: IOOBUF_X41_Y7_N16
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X14_Y0_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X14_Y29_N9
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X5_Y0_N2
\GPIO0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d_outclk\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(2));

-- Location: IOOBUF_X41_Y7_N2
\GPIO0_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(3));

-- Location: IOOBUF_X19_Y0_N2
\GPIO0_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(4));

-- Location: IOOBUF_X26_Y29_N23
\HEX0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_centena|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0_D(0));

-- Location: IOOBUF_X0_Y2_N16
\HEX0_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0_D(1));

-- Location: IOOBUF_X26_Y29_N9
\HEX0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_centena|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0_D(2));

-- Location: IOOBUF_X23_Y29_N9
\HEX0_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_centena|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0_D(3));

-- Location: IOOBUF_X26_Y29_N2
\HEX0_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devoe => ww_devoe,
	o => ww_HEX0_D(4));

-- Location: IOOBUF_X21_Y29_N9
\HEX0_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_centena|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0_D(5));

-- Location: IOOBUF_X23_Y29_N23
\HEX0_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	devoe => ww_devoe,
	o => ww_HEX0_D(6));

-- Location: IOOBUF_X21_Y29_N2
\HEX1_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_decena|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1_D(0));

-- Location: IOOBUF_X21_Y29_N30
\HEX1_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_decena|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1_D(1));

-- Location: IOOBUF_X21_Y29_N16
\HEX1_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_decena|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1_D(2));

-- Location: IOOBUF_X23_Y29_N16
\HEX1_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_decena|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1_D(3));

-- Location: IOOBUF_X23_Y29_N30
\HEX1_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_decena|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1_D(4));

-- Location: IOOBUF_X23_Y29_N2
\HEX1_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_decena|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1_D(5));

-- Location: IOOBUF_X21_Y29_N23
\HEX1_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_decena|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1_D(6));

-- Location: IOOBUF_X16_Y29_N23
\HEX2_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_unidad|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2_D(0));

-- Location: IOOBUF_X11_Y29_N9
\HEX2_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_unidad|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2_D(1));

-- Location: IOOBUF_X11_Y29_N16
\HEX2_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_unidad|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2_D(2));

-- Location: IOOBUF_X14_Y29_N16
\HEX2_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_unidad|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2_D(3));

-- Location: IOOBUF_X9_Y29_N30
\HEX2_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_unidad|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2_D(4));

-- Location: IOOBUF_X11_Y29_N30
\HEX2_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_unidad|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2_D(5));

-- Location: IOOBUF_X11_Y29_N2
\HEX2_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco_unidad|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2_D(6));

-- Location: IOOBUF_X21_Y0_N30
\HEX3_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(0));

-- Location: IOOBUF_X5_Y0_N30
\HEX3_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(1));

-- Location: IOOBUF_X0_Y13_N16
\HEX3_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(2));

-- Location: IOOBUF_X9_Y29_N9
\HEX3_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(3));

-- Location: IOOBUF_X39_Y29_N2
\HEX3_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(4));

-- Location: IOOBUF_X35_Y0_N9
\HEX3_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(5));

-- Location: IOOBUF_X0_Y10_N16
\HEX3_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3_D(6));

-- Location: IOOBUF_X28_Y0_N2
\HEX2_DP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2_DP);

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

-- Location: LCCOMB_X1_Y14_N28
\DIV800|Qaux[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[0]~5_combout\ = !\DIV800|Qaux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux\(0),
	combout => \DIV800|Qaux[0]~5_combout\);

-- Location: LCCOMB_X1_Y14_N10
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

-- Location: IOIBUF_X21_Y0_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: CLKCTRL_G17
\SW[0]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[0]~inputclkctrl_outclk\);

-- Location: FF_X1_Y14_N11
\DIV800|Qaux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIV800|Qaux[0]~feeder_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(0));

-- Location: LCCOMB_X1_Y14_N26
\DIV800|Qaux[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[1]~4_combout\ = !\DIV800|Qaux\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV800|Qaux\(1),
	combout => \DIV800|Qaux[1]~4_combout\);

-- Location: FF_X1_Y14_N7
\DIV800|Qaux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(0),
	asdata => \DIV800|Qaux[1]~4_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(1));

-- Location: LCCOMB_X2_Y14_N0
\DIV800|Qaux[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[2]~3_combout\ = !\DIV800|Qaux\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV800|Qaux\(2),
	combout => \DIV800|Qaux[2]~3_combout\);

-- Location: LCCOMB_X2_Y14_N12
\DIV800|Qaux[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[2]~feeder_combout\ = \DIV800|Qaux[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux[2]~3_combout\,
	combout => \DIV800|Qaux[2]~feeder_combout\);

-- Location: FF_X2_Y14_N13
\DIV800|Qaux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(1),
	d => \DIV800|Qaux[2]~feeder_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(2));

-- Location: LCCOMB_X2_Y14_N26
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

-- Location: FF_X2_Y14_N23
\DIV800|Qaux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(2),
	asdata => \DIV800|Qaux[3]~2_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(3));

-- Location: LCCOMB_X19_Y22_N30
\DIV800|Qaux[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[4]~1_combout\ = !\DIV800|Qaux\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV800|Qaux\(4),
	combout => \DIV800|Qaux[4]~1_combout\);

-- Location: LCCOMB_X19_Y22_N18
\DIV800|Qaux[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[4]~feeder_combout\ = \DIV800|Qaux[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV800|Qaux[4]~1_combout\,
	combout => \DIV800|Qaux[4]~feeder_combout\);

-- Location: FF_X19_Y22_N19
\DIV800|Qaux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(3),
	d => \DIV800|Qaux[4]~feeder_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV800|Qaux\(4));

-- Location: LCCOMB_X19_Y22_N26
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

-- Location: FF_X19_Y22_N1
\DIV800|Qaux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(4),
	asdata => \DIV800|Qaux[5]~0_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	sload => VCC,
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

-- Location: LCCOMB_X12_Y23_N8
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

-- Location: FF_X12_Y23_N9
\SCCBdriver|EE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\,
	d => \SCCBdriver|EE~feeder_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|EE~q\);

-- Location: LCCOMB_X15_Y23_N16
\SCCBdriver|D0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|D0~0_combout\ = (\SCCBdriver|EE~q\ & ((\SCCBdriver|eInd~q\ & ((\SCCBdriver|Q0~q\) # (!\SCCBdriver|Q1~q\))) # (!\SCCBdriver|eInd~q\ & ((\SCCBdriver|Q1~q\) # (!\SCCBdriver|Q0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|eInd~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|EE~q\,
	combout => \SCCBdriver|D0~0_combout\);

-- Location: FF_X15_Y23_N17
\SCCBdriver|Q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux[5]~clkctrl_outclk\,
	d => \SCCBdriver|D0~0_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|Q0~q\);

-- Location: LCCOMB_X15_Y23_N12
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

-- Location: FF_X15_Y23_N13
\SCCBdriver|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux[5]~clkctrl_outclk\,
	d => \SCCBdriver|D1~0_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|Q1~q\);

-- Location: LCCOMB_X19_Y23_N6
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

-- Location: LCCOMB_X19_Y23_N22
\SCCBdriver|clk400data~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|clk400data~feeder_combout\ = \SCCBdriver|clk400D~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|clk400D~combout\,
	combout => \SCCBdriver|clk400data~feeder_combout\);

-- Location: FF_X19_Y23_N23
\SCCBdriver|clk400data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\,
	d => \SCCBdriver|clk400data~feeder_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|clk400data~q\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X17_Y23_N10
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

-- Location: FF_X17_Y23_N11
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

-- Location: LCCOMB_X16_Y22_N28
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

-- Location: FF_X16_Y22_N29
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

-- Location: LCCOMB_X16_Y22_N22
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

-- Location: FF_X16_Y22_N23
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

-- Location: LCCOMB_X16_Y22_N8
\SCCBdriver|REGS|cD[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[2]~24_combout\ = (\SCCBdriver|REGS|cQ\(1)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(1),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[2]~24_combout\);

-- Location: FF_X16_Y22_N9
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

-- Location: LCCOMB_X16_Y22_N10
\SCCBdriver|REGS|cD[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[3]~23_combout\ = (\SCCBdriver|REGS|cQ\(2)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(2),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[3]~23_combout\);

-- Location: FF_X16_Y22_N11
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

-- Location: LCCOMB_X16_Y22_N24
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

-- Location: FF_X16_Y22_N25
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

-- Location: LCCOMB_X16_Y22_N26
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

-- Location: FF_X16_Y22_N27
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

-- Location: LCCOMB_X16_Y22_N12
\SCCBdriver|REGS|cD[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[6]~20_combout\ = (\SCCBdriver|REGS|cQ\(5)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(5),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[6]~20_combout\);

-- Location: FF_X16_Y22_N13
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

-- Location: LCCOMB_X16_Y22_N2
\SCCBdriver|REGS|cD[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[7]~19_combout\ = (\SCCBdriver|REGS|cQ\(6)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(6),
	combout => \SCCBdriver|REGS|cD[7]~19_combout\);

-- Location: FF_X16_Y22_N3
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

-- Location: LCCOMB_X16_Y22_N20
\SCCBdriver|REGS|cD[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[8]~18_combout\ = (\SCCBdriver|REGS|cQ\(7)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(7),
	combout => \SCCBdriver|REGS|cD[8]~18_combout\);

-- Location: FF_X16_Y22_N21
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

-- Location: LCCOMB_X16_Y22_N18
\SCCBdriver|REGS|cD[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[9]~17_combout\ = (\SCCBdriver|REGS|cQ\(8)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(8),
	combout => \SCCBdriver|REGS|cD[9]~17_combout\);

-- Location: FF_X16_Y22_N19
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

-- Location: LCCOMB_X16_Y22_N0
\SCCBdriver|REGS|cD[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[10]~16_combout\ = (\SCCBdriver|REGS|cQ\(9)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(9),
	combout => \SCCBdriver|REGS|cD[10]~16_combout\);

-- Location: FF_X16_Y22_N1
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

-- Location: LCCOMB_X16_Y23_N4
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

-- Location: FF_X16_Y23_N5
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

-- Location: LCCOMB_X16_Y23_N0
\SCCBdriver|REGS|cD[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[12]~14_combout\ = (\SCCBdriver|REGS|cQ\(11)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|cQ\(11),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[12]~14_combout\);

-- Location: FF_X16_Y23_N1
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

-- Location: LCCOMB_X17_Y23_N4
\SCCBdriver|REGS|cD[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[13]~13_combout\ = (\SCCBdriver|REGS|cQ\(12)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|REGS|cQ\(12),
	combout => \SCCBdriver|REGS|cD[13]~13_combout\);

-- Location: FF_X17_Y23_N5
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

-- Location: LCCOMB_X17_Y23_N30
\SCCBdriver|REGS|cD[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[14]~12_combout\ = (\SCCBdriver|REGS|cQ\(13)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|REGS|cQ\(13),
	combout => \SCCBdriver|REGS|cD[14]~12_combout\);

-- Location: FF_X17_Y23_N31
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

-- Location: LCCOMB_X17_Y23_N22
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

-- Location: FF_X17_Y23_N23
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

-- Location: LCCOMB_X17_Y23_N8
\SCCBdriver|REGS|cD[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[16]~10_combout\ = (\SCCBdriver|REGS|cQ\(15)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|REGS|cQ\(15),
	combout => \SCCBdriver|REGS|cD[16]~10_combout\);

-- Location: FF_X17_Y23_N9
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

-- Location: LCCOMB_X17_Y23_N12
\SCCBdriver|REGS|cD[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[17]~9_combout\ = (\SCCBdriver|REGS|cQ\(16)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|REGS|cQ\(16),
	combout => \SCCBdriver|REGS|cD[17]~9_combout\);

-- Location: FF_X17_Y23_N13
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

-- Location: LCCOMB_X17_Y23_N20
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

-- Location: FF_X17_Y23_N21
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

-- Location: LCCOMB_X17_Y23_N16
\SCCBdriver|REGS|cD[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[19]~7_combout\ = (\SCCBdriver|REGS|cQ\(18)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(18),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[19]~7_combout\);

-- Location: FF_X17_Y23_N17
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

-- Location: LCCOMB_X17_Y23_N14
\SCCBdriver|REGS|cD[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[20]~6_combout\ = (\SCCBdriver|REGS|cQ\(19)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(19),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[20]~6_combout\);

-- Location: FF_X17_Y23_N15
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

-- Location: LCCOMB_X17_Y23_N0
\SCCBdriver|REGS|cD[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[21]~5_combout\ = (\SCCBdriver|REGS|cQ\(20)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|REGS|cQ\(20),
	combout => \SCCBdriver|REGS|cD[21]~5_combout\);

-- Location: FF_X17_Y23_N1
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

-- Location: LCCOMB_X17_Y23_N28
\SCCBdriver|REGS|cD[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[22]~4_combout\ = (\SCCBdriver|REGS|cQ\(21)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(21),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[22]~4_combout\);

-- Location: FF_X17_Y23_N29
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

-- Location: LCCOMB_X17_Y23_N6
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

-- Location: FF_X17_Y23_N7
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

-- Location: LCCOMB_X17_Y23_N24
\SCCBdriver|REGS|cD[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[24]~2_combout\ = (\SCCBdriver|REGS|cQ\(23)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(23),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[24]~2_combout\);

-- Location: FF_X17_Y23_N25
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

-- Location: LCCOMB_X17_Y23_N26
\SCCBdriver|REGS|cD[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[25]~1_combout\ = (\SCCBdriver|REGS|cQ\(24)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(24),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[25]~1_combout\);

-- Location: FF_X17_Y23_N27
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

-- Location: LCCOMB_X17_Y23_N18
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

-- Location: FF_X17_Y23_N19
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

-- Location: LCCOMB_X19_Y23_N28
\SCCBdriver|clkE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|clkE~combout\ = (!\SCCBdriver|eInd~q\) # (!\SCCBdriver|clk400~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|clk400~q\,
	datad => \SCCBdriver|eInd~q\,
	combout => \SCCBdriver|clkE~combout\);

-- Location: FF_X19_Y23_N29
\SCCBdriver|clk400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux\(5),
	d => \SCCBdriver|clkE~combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|clk400~q\);

-- Location: LCCOMB_X19_Y23_N18
\SCCBdriver|dataEedge\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|dataEedge~combout\ = LCELL((((\SCCBdriver|REGS|cQ\(26) & \SCCBdriver|mssgGO~q\)) # (!\SCCBdriver|clk400~q\)) # (!\SCCBdriver|clk400data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(26),
	datab => \SCCBdriver|mssgGO~q\,
	datac => \SCCBdriver|clk400data~q\,
	datad => \SCCBdriver|clk400~q\,
	combout => \SCCBdriver|dataEedge~combout\);

-- Location: LCCOMB_X16_Y23_N6
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

-- Location: FF_X16_Y23_N7
\SCCBdriver|mssgGO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|dataEedge~combout\,
	d => \SCCBdriver|mssgGO~0_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|mssgGO~q\);

-- Location: LCCOMB_X14_Y23_N16
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

-- Location: LCCOMB_X14_Y23_N8
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

-- Location: FF_X14_Y23_N17
\SCCBdriver|C_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|C_Eedge~combout\,
	asdata => \SCCBdriver|C_E~0_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|C_E~q\);

-- Location: FF_X15_Y23_N27
\SCCBdriver|C_Esync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux[5]~clkctrl_outclk\,
	asdata => \SCCBdriver|C_E~q\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|C_Esync~q\);

-- Location: LCCOMB_X15_Y23_N24
\SCCBdriver|DeInd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|DeInd~0_combout\ = (\SCCBdriver|Q1~q\ & (!\SCCBdriver|Q0~q\ & (\SCCBdriver|eInd~q\ $ (!\SCCBdriver|C_Esync~q\)))) # (!\SCCBdriver|Q1~q\ & (\SCCBdriver|eInd~q\ $ ((!\SCCBdriver|C_Esync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q1~q\,
	datab => \SCCBdriver|eInd~q\,
	datac => \SCCBdriver|C_Esync~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|DeInd~0_combout\);

-- Location: LCCOMB_X15_Y23_N28
\SCCBdriver|DeInd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|DeInd~1_combout\ = (\SCCBdriver|EE~q\ & \SCCBdriver|DeInd~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|EE~q\,
	datad => \SCCBdriver|DeInd~0_combout\,
	combout => \SCCBdriver|DeInd~1_combout\);

-- Location: FF_X15_Y23_N29
\SCCBdriver|eInd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|ALT_INV_Qaux\(5),
	d => \SCCBdriver|DeInd~1_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|eInd~q\);

-- Location: LCCOMB_X15_Y23_N30
\SCCBdriver|LIVE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|LIVE~0_combout\ = (\SCCBdriver|eInd~q\) # (\SCCBdriver|Q1~q\ $ (\SCCBdriver|Q0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|eInd~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|LIVE~0_combout\);

-- Location: LCCOMB_X15_Y23_N18
\SCCBdriver|LIVE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|LIVE~feeder_combout\ = \SCCBdriver|LIVE~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|LIVE~0_combout\,
	combout => \SCCBdriver|LIVE~feeder_combout\);

-- Location: FF_X15_Y23_N19
\SCCBdriver|LIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|Qaux[5]~clkctrl_outclk\,
	d => \SCCBdriver|LIVE~feeder_combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|LIVE~q\);

-- Location: LCCOMB_X15_Y23_N26
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

-- Location: FF_X16_Y23_N3
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

-- Location: LCCOMB_X16_Y23_N30
\SCCBdriver|REGS|D[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[2]~24_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(1))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q0~q\ & \SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(1),
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|REGS|D[2]~24_combout\);

-- Location: FF_X16_Y23_N31
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

-- Location: LCCOMB_X16_Y23_N8
\SCCBdriver|REGS|D[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[3]~23_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(2))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q0~q\ & !\SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(2),
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|REGS|D[3]~23_combout\);

-- Location: FF_X16_Y23_N9
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

-- Location: LCCOMB_X16_Y23_N16
\SCCBdriver|REGS|D[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[4]~22_combout\ = (\SCCBdriver|REGS|Q\(3) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(3),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[4]~22_combout\);

-- Location: FF_X16_Y23_N17
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

-- Location: LCCOMB_X16_Y23_N12
\SCCBdriver|REGS|D[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[5]~21_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(4))) # (!\SCCBdriver|REGS|Esync~q\ & (((!\SCCBdriver|Q0~q\ & \SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(4),
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|REGS|D[5]~21_combout\);

-- Location: FF_X16_Y23_N13
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

-- Location: LCCOMB_X16_Y23_N28
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

-- Location: FF_X16_Y23_N29
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

-- Location: LCCOMB_X16_Y23_N20
\SCCBdriver|REGS|D[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[7]~19_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(6))) # (!\SCCBdriver|REGS|Esync~q\ & (((!\SCCBdriver|Q0~q\ & \SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(6),
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|REGS|D[7]~19_combout\);

-- Location: FF_X16_Y23_N21
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

-- Location: LCCOMB_X16_Y23_N22
\SCCBdriver|REGS|D[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[8]~18_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(7))) # (!\SCCBdriver|REGS|Esync~q\ & (((!\SCCBdriver|Q0~q\ & \SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(7),
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|REGS|D[8]~18_combout\);

-- Location: FF_X16_Y23_N23
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

-- Location: LCCOMB_X16_Y23_N26
\SCCBdriver|REGS|D[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[9]~17_combout\ = (\SCCBdriver|REGS|Q\(8) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(8),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[9]~17_combout\);

-- Location: FF_X16_Y23_N27
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

-- Location: LCCOMB_X16_Y23_N18
\SCCBdriver|REGS|D[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[10]~16_combout\ = (\SCCBdriver|REGS|Q\(9) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(9),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[10]~16_combout\);

-- Location: FF_X16_Y23_N19
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

-- Location: LCCOMB_X16_Y23_N10
\SCCBdriver|REGS|D[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[11]~15_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(10))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q0~q\ & !\SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(10),
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|REGS|D[11]~15_combout\);

-- Location: FF_X16_Y23_N11
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

-- Location: LCCOMB_X16_Y23_N14
\SCCBdriver|REGS|D[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[12]~14_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(11))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q0~q\ & \SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(11),
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|REGS|D[12]~14_combout\);

-- Location: FF_X16_Y23_N15
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

-- Location: LCCOMB_X16_Y23_N24
\SCCBdriver|REGS|D[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[13]~13_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(12))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q0~q\ & \SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(12),
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|REGS|D[13]~13_combout\);

-- Location: FF_X16_Y23_N25
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

-- Location: LCCOMB_X14_Y23_N18
\SCCBdriver|REGS|D[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[14]~12_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(13))) # (!\SCCBdriver|REGS|Esync~q\ & (((!\SCCBdriver|Q1~q\ & \SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(13),
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[14]~12_combout\);

-- Location: FF_X14_Y23_N19
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

-- Location: LCCOMB_X14_Y23_N12
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

-- Location: FF_X14_Y23_N13
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

-- Location: LCCOMB_X14_Y23_N22
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

-- Location: FF_X14_Y23_N23
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

-- Location: LCCOMB_X14_Y23_N10
\SCCBdriver|REGS|D[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[17]~9_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(16))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q1~q\ & \SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|REGS|Q\(16),
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[17]~9_combout\);

-- Location: FF_X14_Y23_N11
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

-- Location: LCCOMB_X14_Y23_N28
\SCCBdriver|REGS|D[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[18]~8_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(17),
	combout => \SCCBdriver|REGS|D[18]~8_combout\);

-- Location: FF_X14_Y23_N29
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

-- Location: LCCOMB_X14_Y23_N26
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

-- Location: FF_X14_Y23_N27
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

-- Location: LCCOMB_X14_Y23_N6
\SCCBdriver|REGS|D[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[20]~6_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(19))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q1~q\) # (\SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(19),
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[20]~6_combout\);

-- Location: FF_X14_Y23_N7
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

-- Location: LCCOMB_X14_Y23_N24
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

-- Location: FF_X14_Y23_N25
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

-- Location: LCCOMB_X14_Y23_N2
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

-- Location: FF_X14_Y23_N3
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

-- Location: LCCOMB_X14_Y23_N14
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

-- Location: FF_X14_Y23_N15
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

-- Location: LCCOMB_X14_Y23_N30
\SCCBdriver|REGS|D[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[24]~2_combout\ = (\SCCBdriver|REGS|Q\(23) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Q\(23),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[24]~2_combout\);

-- Location: FF_X14_Y23_N31
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

-- Location: LCCOMB_X14_Y23_N0
\SCCBdriver|REGS|D[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[25]~1_combout\ = (\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|REGS|Q\(24))) # (!\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|Q1~q\) # (\SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(24),
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|REGS|D[25]~1_combout\);

-- Location: FF_X14_Y23_N1
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

-- Location: LCCOMB_X14_Y23_N20
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

-- Location: FF_X14_Y23_N21
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

-- Location: LCCOMB_X14_Y23_N4
\SCCBdriver|SIO_D\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|SIO_D~combout\ = (\SCCBdriver|REGS|Q\(26)) # (!\SCCBdriver|mssgGO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|mssgGO~q\,
	datad => \SCCBdriver|REGS|Q\(26),
	combout => \SCCBdriver|SIO_D~combout\);

-- Location: IOIBUF_X0_Y2_N22
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: PLL_1
\CLK_24M|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 5,
	c0_initial => 1,
	c0_low => 5,
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
	clk0_divide_by => 25,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 12,
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
	loop_filter_r_bits => 24,
	m => 24,
	m_initial => 1,
	m_ph => 0,
	n => 5,
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
	vco_phase_shift_step => 260,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \SW[1]~input_o\,
	fbin => \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_PLL1E0
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d_outclk\);

-- Location: IOIBUF_X41_Y7_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\GPIO1_D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(8),
	o => \GPIO1_D[8]~input_o\);

-- Location: CLKCTRL_G19
\GPIO1_D[8]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GPIO1_D[8]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GPIO1_D[8]~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y27_N18
\CAP10|DEPHASE|Qt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|DEPHASE|Qt~0_combout\ = !\CAP10|DEPHASE|Qt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|DEPHASE|Qt~q\,
	combout => \CAP10|DEPHASE|Qt~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\GPIO1_D[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(9),
	o => \GPIO1_D[9]~input_o\);

-- Location: CLKCTRL_G16
\GPIO1_D[9]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GPIO1_D[9]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GPIO1_D[9]~inputclkctrl_outclk\);

-- Location: FF_X20_Y27_N19
\CAP10|DEPHASE|Qt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO1_D[8]~inputclkctrl_outclk\,
	d => \CAP10|DEPHASE|Qt~0_combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|DEPHASE|Qt~q\);

-- Location: LCCOMB_X20_Y27_N6
\CAP10|DEPHASE|Qd[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|DEPHASE|Qd[0]~feeder_combout\ = \CAP10|DEPHASE|Qt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAP10|DEPHASE|Qt~q\,
	combout => \CAP10|DEPHASE|Qd[0]~feeder_combout\);

-- Location: FF_X20_Y27_N7
\CAP10|DEPHASE|Qd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO1_D[8]~inputclkctrl_outclk\,
	d => \CAP10|DEPHASE|Qd[0]~feeder_combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|DEPHASE|Qd\(0));

-- Location: LCCOMB_X20_Y27_N8
\CAP10|DEPHASE|Qd[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|DEPHASE|Qd[1]~feeder_combout\ = \CAP10|DEPHASE|Qd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAP10|DEPHASE|Qd\(0),
	combout => \CAP10|DEPHASE|Qd[1]~feeder_combout\);

-- Location: FF_X20_Y27_N9
\CAP10|DEPHASE|Qd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO1_D[8]~inputclkctrl_outclk\,
	d => \CAP10|DEPHASE|Qd[1]~feeder_combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|DEPHASE|Qd\(1));

-- Location: LCCOMB_X19_Y27_N20
\CAP10|CAPclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|CAPclk~0_combout\ = !\CAP10|CAPclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|CAPclk~q\,
	combout => \CAP10|CAPclk~0_combout\);

-- Location: LCCOMB_X19_Y27_N2
\CAP10|CAPclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|CAPclk~feeder_combout\ = \CAP10|CAPclk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|CAPclk~0_combout\,
	combout => \CAP10|CAPclk~feeder_combout\);

-- Location: FF_X19_Y27_N3
\CAP10|CAPclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|DEPHASE|Qd\(1),
	d => \CAP10|CAPclk~feeder_combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|CAPclk~q\);

-- Location: CLKCTRL_G13
\CAP10|CAPclk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAP10|CAPclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAP10|CAPclk~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y28_N0
\CAP10|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~0_combout\ = \CAP10|v_count\(0) $ (VCC)
-- \CAP10|Add1~1\ = CARRY(\CAP10|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|v_count\(0),
	datad => VCC,
	combout => \CAP10|Add1~0_combout\,
	cout => \CAP10|Add1~1\);

-- Location: CLKCTRL_G18
\SW[3]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[3]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[3]~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y28_N0
\CAP10|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~0_combout\ = \CAP10|h_count\(0) $ (VCC)
-- \CAP10|Add0~1\ = CARRY(\CAP10|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(0),
	datad => VCC,
	combout => \CAP10|Add0~0_combout\,
	cout => \CAP10|Add0~1\);

-- Location: FF_X21_Y28_N1
\CAP10|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add0~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(0));

-- Location: LCCOMB_X21_Y28_N2
\CAP10|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~2_combout\ = (\CAP10|h_count\(1) & (!\CAP10|Add0~1\)) # (!\CAP10|h_count\(1) & ((\CAP10|Add0~1\) # (GND)))
-- \CAP10|Add0~3\ = CARRY((!\CAP10|Add0~1\) # (!\CAP10|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|h_count\(1),
	datad => VCC,
	cin => \CAP10|Add0~1\,
	combout => \CAP10|Add0~2_combout\,
	cout => \CAP10|Add0~3\);

-- Location: FF_X21_Y28_N3
\CAP10|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add0~2_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(1));

-- Location: LCCOMB_X21_Y28_N4
\CAP10|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~4_combout\ = (\CAP10|h_count\(2) & (\CAP10|Add0~3\ $ (GND))) # (!\CAP10|h_count\(2) & (!\CAP10|Add0~3\ & VCC))
-- \CAP10|Add0~5\ = CARRY((\CAP10|h_count\(2) & !\CAP10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|h_count\(2),
	datad => VCC,
	cin => \CAP10|Add0~3\,
	combout => \CAP10|Add0~4_combout\,
	cout => \CAP10|Add0~5\);

-- Location: FF_X21_Y28_N5
\CAP10|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add0~4_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(2));

-- Location: LCCOMB_X21_Y28_N6
\CAP10|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~6_combout\ = (\CAP10|h_count\(3) & (!\CAP10|Add0~5\)) # (!\CAP10|h_count\(3) & ((\CAP10|Add0~5\) # (GND)))
-- \CAP10|Add0~7\ = CARRY((!\CAP10|Add0~5\) # (!\CAP10|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|h_count\(3),
	datad => VCC,
	cin => \CAP10|Add0~5\,
	combout => \CAP10|Add0~6_combout\,
	cout => \CAP10|Add0~7\);

-- Location: FF_X21_Y28_N7
\CAP10|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add0~6_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(3));

-- Location: LCCOMB_X21_Y28_N8
\CAP10|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~8_combout\ = (\CAP10|h_count\(4) & (\CAP10|Add0~7\ $ (GND))) # (!\CAP10|h_count\(4) & (!\CAP10|Add0~7\ & VCC))
-- \CAP10|Add0~9\ = CARRY((\CAP10|h_count\(4) & !\CAP10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|h_count\(4),
	datad => VCC,
	cin => \CAP10|Add0~7\,
	combout => \CAP10|Add0~8_combout\,
	cout => \CAP10|Add0~9\);

-- Location: FF_X21_Y28_N9
\CAP10|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add0~8_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(4));

-- Location: LCCOMB_X21_Y28_N10
\CAP10|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~10_combout\ = (\CAP10|h_count\(5) & (!\CAP10|Add0~9\)) # (!\CAP10|h_count\(5) & ((\CAP10|Add0~9\) # (GND)))
-- \CAP10|Add0~11\ = CARRY((!\CAP10|Add0~9\) # (!\CAP10|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|h_count\(5),
	datad => VCC,
	cin => \CAP10|Add0~9\,
	combout => \CAP10|Add0~10_combout\,
	cout => \CAP10|Add0~11\);

-- Location: FF_X21_Y28_N11
\CAP10|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add0~10_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(5));

-- Location: LCCOMB_X21_Y28_N12
\CAP10|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~12_combout\ = (\CAP10|h_count\(6) & (\CAP10|Add0~11\ $ (GND))) # (!\CAP10|h_count\(6) & (!\CAP10|Add0~11\ & VCC))
-- \CAP10|Add0~13\ = CARRY((\CAP10|h_count\(6) & !\CAP10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(6),
	datad => VCC,
	cin => \CAP10|Add0~11\,
	combout => \CAP10|Add0~12_combout\,
	cout => \CAP10|Add0~13\);

-- Location: LCCOMB_X20_Y28_N12
\CAP10|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|h_count~1_combout\ = (\CAP10|Add0~12_combout\ & !\CAP10|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|Add0~12_combout\,
	datad => \CAP10|Equal0~0_combout\,
	combout => \CAP10|h_count~1_combout\);

-- Location: FF_X20_Y28_N13
\CAP10|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|h_count~1_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(6));

-- Location: LCCOMB_X21_Y28_N14
\CAP10|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~14_combout\ = (\CAP10|h_count\(7) & (!\CAP10|Add0~13\)) # (!\CAP10|h_count\(7) & ((\CAP10|Add0~13\) # (GND)))
-- \CAP10|Add0~15\ = CARRY((!\CAP10|Add0~13\) # (!\CAP10|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|h_count\(7),
	datad => VCC,
	cin => \CAP10|Add0~13\,
	combout => \CAP10|Add0~14_combout\,
	cout => \CAP10|Add0~15\);

-- Location: LCCOMB_X20_Y28_N30
\CAP10|h_count[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|h_count[7]~feeder_combout\ = \CAP10|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|Add0~14_combout\,
	combout => \CAP10|h_count[7]~feeder_combout\);

-- Location: FF_X20_Y28_N31
\CAP10|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|h_count[7]~feeder_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(7));

-- Location: LCCOMB_X21_Y28_N16
\CAP10|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~16_combout\ = (\CAP10|h_count\(8) & (\CAP10|Add0~15\ $ (GND))) # (!\CAP10|h_count\(8) & (!\CAP10|Add0~15\ & VCC))
-- \CAP10|Add0~17\ = CARRY((\CAP10|h_count\(8) & !\CAP10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(8),
	datad => VCC,
	cin => \CAP10|Add0~15\,
	combout => \CAP10|Add0~16_combout\,
	cout => \CAP10|Add0~17\);

-- Location: LCCOMB_X20_Y28_N16
\CAP10|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|h_count~0_combout\ = (\CAP10|Add0~16_combout\ & !\CAP10|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|Add0~16_combout\,
	datad => \CAP10|Equal0~0_combout\,
	combout => \CAP10|h_count~0_combout\);

-- Location: FF_X20_Y28_N17
\CAP10|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|h_count~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(8));

-- Location: LCCOMB_X21_Y28_N18
\CAP10|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~18_combout\ = \CAP10|h_count\(9) $ (\CAP10|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(9),
	cin => \CAP10|Add0~17\,
	combout => \CAP10|Add0~18_combout\);

-- Location: FF_X21_Y28_N19
\CAP10|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add0~18_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(9));

-- Location: LCCOMB_X20_Y28_N14
\Geo_Loc|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Equal1~0_combout\ = (!\CAP10|h_count\(6) & (\CAP10|h_count\(8) & (!\CAP10|h_count\(7) & !\CAP10|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(6),
	datab => \CAP10|h_count\(8),
	datac => \CAP10|h_count\(7),
	datad => \CAP10|h_count\(9),
	combout => \Geo_Loc|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y28_N22
\Geo_Loc|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Equal1~3_combout\ = (\CAP10|h_count\(0) & (\CAP10|h_count\(3) & (\CAP10|h_count\(4) & \Geo_Loc|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(0),
	datab => \CAP10|h_count\(3),
	datac => \CAP10|h_count\(4),
	datad => \Geo_Loc|Equal1~0_combout\,
	combout => \Geo_Loc|Equal1~3_combout\);

-- Location: LCCOMB_X21_Y28_N24
\CAP10|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal0~0_combout\ = (\CAP10|h_count\(2) & (\CAP10|h_count\(1) & (\Geo_Loc|Equal1~3_combout\ & \CAP10|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(2),
	datab => \CAP10|h_count\(1),
	datac => \Geo_Loc|Equal1~3_combout\,
	datad => \CAP10|h_count\(5),
	combout => \CAP10|Equal0~0_combout\);

-- Location: FF_X22_Y28_N1
\CAP10|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add1~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(0));

-- Location: LCCOMB_X19_Y27_N26
\CAP10|enawRAMclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|enawRAMclk~0_combout\ = !\CAP10|v_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAP10|v_count\(0),
	combout => \CAP10|enawRAMclk~0_combout\);

-- Location: FF_X19_Y27_N27
\CAP10|enawRAMclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~q\,
	d => \CAP10|enawRAMclk~0_combout\,
	ena => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|enawRAMclk~q\);

-- Location: LCCOMB_X19_Y27_N22
\CAP10|outCLK\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|outCLK~combout\ = LCELL((\CAP10|enawRAMclk~q\ & \CAP10|CAPclk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|enawRAMclk~q\,
	datad => \CAP10|CAPclk~q\,
	combout => \CAP10|outCLK~combout\);

-- Location: CLKCTRL_G10
\CAP10|outCLK~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAP10|outCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAP10|outCLK~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y28_N14
\CAP10|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~14_combout\ = (\CAP10|v_count\(7) & (!\CAP10|Add1~13\)) # (!\CAP10|v_count\(7) & ((\CAP10|Add1~13\) # (GND)))
-- \CAP10|Add1~15\ = CARRY((!\CAP10|Add1~13\) # (!\CAP10|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|v_count\(7),
	datad => VCC,
	cin => \CAP10|Add1~13\,
	combout => \CAP10|Add1~14_combout\,
	cout => \CAP10|Add1~15\);

-- Location: LCCOMB_X22_Y28_N16
\CAP10|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~16_combout\ = (\CAP10|v_count\(8) & (\CAP10|Add1~15\ $ (GND))) # (!\CAP10|v_count\(8) & (!\CAP10|Add1~15\ & VCC))
-- \CAP10|Add1~17\ = CARRY((\CAP10|v_count\(8) & !\CAP10|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|v_count\(8),
	datad => VCC,
	cin => \CAP10|Add1~15\,
	combout => \CAP10|Add1~16_combout\,
	cout => \CAP10|Add1~17\);

-- Location: LCCOMB_X22_Y28_N22
\CAP10|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|v_count~3_combout\ = (!\CAP10|Equal1~2_combout\ & \CAP10|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|Equal1~2_combout\,
	datad => \CAP10|Add1~16_combout\,
	combout => \CAP10|v_count~3_combout\);

-- Location: FF_X22_Y28_N23
\CAP10|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|v_count~3_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(8));

-- Location: LCCOMB_X22_Y28_N18
\CAP10|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~18_combout\ = \CAP10|Add1~17\ $ (\CAP10|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CAP10|v_count\(9),
	cin => \CAP10|Add1~17\,
	combout => \CAP10|Add1~18_combout\);

-- Location: FF_X22_Y28_N19
\CAP10|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add1~18_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(9));

-- Location: LCCOMB_X22_Y28_N24
\CAP10|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal1~0_combout\ = (\CAP10|v_count\(6) & (!\CAP10|v_count\(9) & (\CAP10|v_count\(8) & \CAP10|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|v_count\(6),
	datab => \CAP10|v_count\(9),
	datac => \CAP10|v_count\(8),
	datad => \CAP10|v_count\(7),
	combout => \CAP10|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y28_N2
\CAP10|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~2_combout\ = (\CAP10|v_count\(1) & (!\CAP10|Add1~1\)) # (!\CAP10|v_count\(1) & ((\CAP10|Add1~1\) # (GND)))
-- \CAP10|Add1~3\ = CARRY((!\CAP10|Add1~1\) # (!\CAP10|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|v_count\(1),
	datad => VCC,
	cin => \CAP10|Add1~1\,
	combout => \CAP10|Add1~2_combout\,
	cout => \CAP10|Add1~3\);

-- Location: FF_X22_Y28_N3
\CAP10|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add1~2_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(1));

-- Location: LCCOMB_X22_Y28_N4
\CAP10|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~4_combout\ = (\CAP10|v_count\(2) & (\CAP10|Add1~3\ $ (GND))) # (!\CAP10|v_count\(2) & (!\CAP10|Add1~3\ & VCC))
-- \CAP10|Add1~5\ = CARRY((\CAP10|v_count\(2) & !\CAP10|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|v_count\(2),
	datad => VCC,
	cin => \CAP10|Add1~3\,
	combout => \CAP10|Add1~4_combout\,
	cout => \CAP10|Add1~5\);

-- Location: FF_X22_Y28_N5
\CAP10|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add1~4_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(2));

-- Location: LCCOMB_X22_Y28_N6
\CAP10|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~6_combout\ = (\CAP10|v_count\(3) & (!\CAP10|Add1~5\)) # (!\CAP10|v_count\(3) & ((\CAP10|Add1~5\) # (GND)))
-- \CAP10|Add1~7\ = CARRY((!\CAP10|Add1~5\) # (!\CAP10|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|v_count\(3),
	datad => VCC,
	cin => \CAP10|Add1~5\,
	combout => \CAP10|Add1~6_combout\,
	cout => \CAP10|Add1~7\);

-- Location: FF_X22_Y28_N7
\CAP10|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add1~6_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(3));

-- Location: LCCOMB_X22_Y28_N8
\CAP10|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~8_combout\ = (\CAP10|v_count\(4) & (\CAP10|Add1~7\ $ (GND))) # (!\CAP10|v_count\(4) & (!\CAP10|Add1~7\ & VCC))
-- \CAP10|Add1~9\ = CARRY((\CAP10|v_count\(4) & !\CAP10|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|v_count\(4),
	datad => VCC,
	cin => \CAP10|Add1~7\,
	combout => \CAP10|Add1~8_combout\,
	cout => \CAP10|Add1~9\);

-- Location: FF_X22_Y28_N9
\CAP10|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add1~8_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(4));

-- Location: LCCOMB_X22_Y28_N10
\CAP10|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~10_combout\ = (\CAP10|v_count\(5) & (!\CAP10|Add1~9\)) # (!\CAP10|v_count\(5) & ((\CAP10|Add1~9\) # (GND)))
-- \CAP10|Add1~11\ = CARRY((!\CAP10|Add1~9\) # (!\CAP10|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|v_count\(5),
	datad => VCC,
	cin => \CAP10|Add1~9\,
	combout => \CAP10|Add1~10_combout\,
	cout => \CAP10|Add1~11\);

-- Location: LCCOMB_X22_Y28_N20
\CAP10|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|v_count~2_combout\ = (!\CAP10|Equal1~2_combout\ & \CAP10|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|Equal1~2_combout\,
	datad => \CAP10|Add1~10_combout\,
	combout => \CAP10|v_count~2_combout\);

-- Location: FF_X22_Y28_N21
\CAP10|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|v_count~2_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(5));

-- Location: LCCOMB_X19_Y28_N26
\CAP10|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal1~1_combout\ = (\CAP10|v_count\(4) & (!\CAP10|v_count\(5) & (\CAP10|v_count\(2) & \CAP10|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|v_count\(4),
	datab => \CAP10|v_count\(5),
	datac => \CAP10|v_count\(2),
	datad => \CAP10|v_count\(3),
	combout => \CAP10|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y28_N30
\CAP10|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal1~2_combout\ = (\CAP10|Equal1~0_combout\ & (\CAP10|v_count\(0) & (\CAP10|Equal1~1_combout\ & \CAP10|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|Equal1~0_combout\,
	datab => \CAP10|v_count\(0),
	datac => \CAP10|Equal1~1_combout\,
	datad => \CAP10|v_count\(1),
	combout => \CAP10|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y28_N12
\CAP10|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~12_combout\ = (\CAP10|v_count\(6) & (\CAP10|Add1~11\ $ (GND))) # (!\CAP10|v_count\(6) & (!\CAP10|Add1~11\ & VCC))
-- \CAP10|Add1~13\ = CARRY((\CAP10|v_count\(6) & !\CAP10|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|v_count\(6),
	datad => VCC,
	cin => \CAP10|Add1~11\,
	combout => \CAP10|Add1~12_combout\,
	cout => \CAP10|Add1~13\);

-- Location: LCCOMB_X22_Y28_N26
\CAP10|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|v_count~1_combout\ = (!\CAP10|Equal1~2_combout\ & \CAP10|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|Equal1~2_combout\,
	datad => \CAP10|Add1~12_combout\,
	combout => \CAP10|v_count~1_combout\);

-- Location: FF_X22_Y28_N27
\CAP10|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|v_count~1_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(6));

-- Location: LCCOMB_X22_Y28_N28
\CAP10|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|v_count~0_combout\ = (\CAP10|Add1~14_combout\ & !\CAP10|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|Add1~14_combout\,
	datac => \CAP10|Equal1~2_combout\,
	combout => \CAP10|v_count~0_combout\);

-- Location: FF_X22_Y28_N29
\CAP10|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|v_count~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(7));

-- Location: IOIBUF_X0_Y14_N8
\GPIO1_D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(10),
	o => \GPIO1_D[10]~input_o\);

-- Location: CLKCTRL_G2
\GPIO1_D[10]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GPIO1_D[10]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GPIO1_D[10]~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y28_N0
\Geo_Loc|h_match_count[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|h_match_count[0]~6_combout\ = \Geo_Loc|h_match_count\(0) $ (VCC)
-- \Geo_Loc|h_match_count[0]~7\ = CARRY(\Geo_Loc|h_match_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|h_match_count\(0),
	datad => VCC,
	combout => \Geo_Loc|h_match_count[0]~6_combout\,
	cout => \Geo_Loc|h_match_count[0]~7\);

-- Location: LCCOMB_X21_Y28_N28
\Geo_Loc|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Equal1~1_combout\ = (\CAP10|h_count\(0) & (!\CAP10|h_count\(1) & (\CAP10|h_count\(4) & \CAP10|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(0),
	datab => \CAP10|h_count\(1),
	datac => \CAP10|h_count\(4),
	datad => \CAP10|h_count\(3),
	combout => \Geo_Loc|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y28_N28
\Geo_Loc|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Equal1~2_combout\ = (!\CAP10|h_count\(2) & (!\CAP10|h_count\(5) & (\Geo_Loc|Equal1~0_combout\ & \Geo_Loc|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(2),
	datab => \CAP10|h_count\(5),
	datac => \Geo_Loc|Equal1~0_combout\,
	datad => \Geo_Loc|Equal1~1_combout\,
	combout => \Geo_Loc|Equal1~2_combout\);

-- Location: LCCOMB_X21_Y28_N26
\Geo_Loc|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|LessThan0~0_combout\ = (\CAP10|h_count\(3) & ((\CAP10|h_count\(1)) # ((\CAP10|h_count\(2)) # (\CAP10|h_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(3),
	datab => \CAP10|h_count\(1),
	datac => \CAP10|h_count\(2),
	datad => \CAP10|h_count\(0),
	combout => \Geo_Loc|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y28_N18
\Geo_Loc|h_match_count[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|h_match_count[1]~18_combout\ = (\CAP10|h_count\(4) & ((\CAP10|h_count\(5)) # ((\CAP10|h_count\(8) & \Geo_Loc|LessThan0~0_combout\)))) # (!\CAP10|h_count\(4) & (\CAP10|h_count\(5) & ((\CAP10|h_count\(8)) # (\Geo_Loc|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(4),
	datab => \CAP10|h_count\(8),
	datac => \CAP10|h_count\(5),
	datad => \Geo_Loc|LessThan0~0_combout\,
	combout => \Geo_Loc|h_match_count[1]~18_combout\);

-- Location: LCCOMB_X20_Y28_N24
\Geo_Loc|h_match_count[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|h_match_count[1]~19_combout\ = (\CAP10|h_count\(6)) # ((\CAP10|h_count\(7)) # (\Geo_Loc|h_match_count[1]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(6),
	datac => \CAP10|h_count\(7),
	datad => \Geo_Loc|h_match_count[1]~18_combout\,
	combout => \Geo_Loc|h_match_count[1]~19_combout\);

-- Location: LCCOMB_X21_Y1_N28
\CAP10|dPCLK\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|dPCLK~combout\ = LCELL((\GPIO1_D[9]~input_o\ & !\GPIO1_D[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPIO1_D[9]~input_o\,
	datad => \GPIO1_D[8]~input_o\,
	combout => \CAP10|dPCLK~combout\);

-- Location: CLKCTRL_G15
\CAP10|dPCLK~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAP10|dPCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAP10|dPCLK~clkctrl_outclk\);

-- Location: IOIBUF_X14_Y29_N22
\GPIO1_D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(7),
	o => \GPIO1_D[7]~input_o\);

-- Location: LCCOMB_X14_Y28_N16
\CAP10|QinReg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|QinReg[7]~feeder_combout\ = \GPIO1_D[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO1_D[7]~input_o\,
	combout => \CAP10|QinReg[7]~feeder_combout\);

-- Location: FF_X14_Y28_N17
\CAP10|QinReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAP10|QinReg[7]~feeder_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(7));

-- Location: IOIBUF_X16_Y29_N8
\GPIO1_D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(6),
	o => \GPIO1_D[6]~input_o\);

-- Location: FF_X17_Y28_N5
\CAP10|QinReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[6]~input_o\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(6));

-- Location: IOIBUF_X14_Y29_N29
\GPIO1_D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(5),
	o => \GPIO1_D[5]~input_o\);

-- Location: FF_X17_Y28_N9
\CAP10|QinReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[5]~input_o\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(5));

-- Location: IOIBUF_X16_Y29_N15
\GPIO1_D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(4),
	o => \GPIO1_D[4]~input_o\);

-- Location: LCCOMB_X17_Y28_N14
\CAP10|QinReg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|QinReg[4]~feeder_combout\ = \GPIO1_D[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO1_D[4]~input_o\,
	combout => \CAP10|QinReg[4]~feeder_combout\);

-- Location: FF_X17_Y28_N15
\CAP10|QinReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAP10|QinReg[4]~feeder_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(4));

-- Location: IOIBUF_X16_Y29_N29
\GPIO1_D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(0),
	o => \GPIO1_D[0]~input_o\);

-- Location: LCCOMB_X17_Y28_N22
\CAP10|QinReg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|QinReg[0]~feeder_combout\ = \GPIO1_D[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO1_D[0]~input_o\,
	combout => \CAP10|QinReg[0]~feeder_combout\);

-- Location: FF_X17_Y28_N23
\CAP10|QinReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAP10|QinReg[0]~feeder_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(0));

-- Location: LCCOMB_X17_Y28_N24
\CAP10|takeTurn~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|takeTurn~0_combout\ = !\CAP10|takeTurn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|takeTurn~q\,
	combout => \CAP10|takeTurn~0_combout\);

-- Location: FF_X17_Y28_N25
\CAP10|takeTurn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAP10|takeTurn~0_combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|takeTurn~q\);

-- Location: LCCOMB_X17_Y28_N16
\CAP10|RipCar:0:FA|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:0:FA|s~0_combout\ = \CAP10|QinReg\(4) $ (((\CAP10|takeTurn~q\ & (\CAP10|QinReg\(0))) # (!\CAP10|takeTurn~q\ & ((\CAP10|QaddReg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(0),
	datab => \CAP10|QinReg\(4),
	datac => \CAP10|QaddReg\(0),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|RipCar:0:FA|s~0_combout\);

-- Location: FF_X17_Y28_N17
\CAP10|QaddReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|dPCLK~clkctrl_outclk\,
	d => \CAP10|RipCar:0:FA|s~0_combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QaddReg\(0));

-- Location: LCCOMB_X17_Y28_N4
\CAP10|B[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[0]~1_combout\ = (\CAP10|takeTurn~q\ & (\CAP10|QinReg\(0))) # (!\CAP10|takeTurn~q\ & ((\CAP10|QaddReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(0),
	datab => \CAP10|QaddReg\(0),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|B[0]~1_combout\);

-- Location: LCCOMB_X17_Y28_N30
\CAP10|RipCar:1:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:1:FA|s~combout\ = \CAP10|QinReg\(5) $ (\CAP10|B[1]~2_combout\ $ (((\CAP10|B[0]~1_combout\ & \CAP10|QinReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|B[0]~1_combout\,
	datab => \CAP10|QinReg\(5),
	datac => \CAP10|QinReg\(4),
	datad => \CAP10|B[1]~2_combout\,
	combout => \CAP10|RipCar:1:FA|s~combout\);

-- Location: FF_X17_Y28_N31
\CAP10|QaddReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|dPCLK~clkctrl_outclk\,
	d => \CAP10|RipCar:1:FA|s~combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QaddReg\(1));

-- Location: IOIBUF_X19_Y29_N29
\GPIO1_D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(1),
	o => \GPIO1_D[1]~input_o\);

-- Location: FF_X17_Y28_N29
\CAP10|QinReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[1]~input_o\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(1));

-- Location: LCCOMB_X17_Y28_N28
\CAP10|B[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[1]~2_combout\ = (\CAP10|takeTurn~q\ & ((\CAP10|QinReg\(1)))) # (!\CAP10|takeTurn~q\ & (\CAP10|QaddReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QaddReg\(1),
	datac => \CAP10|QinReg\(1),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|B[1]~2_combout\);

-- Location: LCCOMB_X17_Y28_N10
\CAP10|RipCar:1:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:1:FA|co~0_combout\ = (\CAP10|QinReg\(5) & ((\CAP10|B[1]~2_combout\) # ((\CAP10|QinReg\(4) & \CAP10|B[0]~1_combout\)))) # (!\CAP10|QinReg\(5) & (\CAP10|QinReg\(4) & (\CAP10|B[0]~1_combout\ & \CAP10|B[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(5),
	datab => \CAP10|QinReg\(4),
	datac => \CAP10|B[0]~1_combout\,
	datad => \CAP10|B[1]~2_combout\,
	combout => \CAP10|RipCar:1:FA|co~0_combout\);

-- Location: LCCOMB_X17_Y28_N0
\CAP10|RipCar:2:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:2:FA|s~combout\ = \CAP10|QinReg\(6) $ (\CAP10|B[2]~0_combout\ $ (\CAP10|RipCar:1:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|QinReg\(6),
	datac => \CAP10|B[2]~0_combout\,
	datad => \CAP10|RipCar:1:FA|co~0_combout\,
	combout => \CAP10|RipCar:2:FA|s~combout\);

-- Location: FF_X17_Y28_N1
\CAP10|QaddReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|dPCLK~clkctrl_outclk\,
	d => \CAP10|RipCar:2:FA|s~combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QaddReg\(2));

-- Location: IOIBUF_X11_Y29_N22
\GPIO1_D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(2),
	o => \GPIO1_D[2]~input_o\);

-- Location: FF_X17_Y28_N27
\CAP10|QinReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[2]~input_o\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(2));

-- Location: LCCOMB_X17_Y28_N26
\CAP10|B[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[2]~0_combout\ = (\CAP10|takeTurn~q\ & ((\CAP10|QinReg\(2)))) # (!\CAP10|takeTurn~q\ & (\CAP10|QaddReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|QaddReg\(2),
	datac => \CAP10|QinReg\(2),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|B[2]~0_combout\);

-- Location: LCCOMB_X17_Y28_N18
\CAP10|RipCar:2:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:2:FA|co~0_combout\ = (\CAP10|QinReg\(6) & ((\CAP10|B[2]~0_combout\) # (\CAP10|RipCar:1:FA|co~0_combout\))) # (!\CAP10|QinReg\(6) & (\CAP10|B[2]~0_combout\ & \CAP10|RipCar:1:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|QinReg\(6),
	datac => \CAP10|B[2]~0_combout\,
	datad => \CAP10|RipCar:1:FA|co~0_combout\,
	combout => \CAP10|RipCar:2:FA|co~0_combout\);

-- Location: LCCOMB_X17_Y28_N6
\CAP10|RipCar:3:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:3:FA|s~combout\ = \CAP10|QinReg\(7) $ (\CAP10|B[3]~4_combout\ $ (\CAP10|RipCar:2:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(7),
	datac => \CAP10|B[3]~4_combout\,
	datad => \CAP10|RipCar:2:FA|co~0_combout\,
	combout => \CAP10|RipCar:3:FA|s~combout\);

-- Location: FF_X17_Y28_N7
\CAP10|QaddReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|dPCLK~clkctrl_outclk\,
	d => \CAP10|RipCar:3:FA|s~combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QaddReg\(3));

-- Location: IOIBUF_X16_Y29_N1
\GPIO1_D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(3),
	o => \GPIO1_D[3]~input_o\);

-- Location: FF_X17_Y28_N21
\CAP10|QinReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[3]~input_o\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(3));

-- Location: LCCOMB_X17_Y28_N20
\CAP10|B[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[3]~4_combout\ = (\CAP10|takeTurn~q\ & ((\CAP10|QinReg\(3)))) # (!\CAP10|takeTurn~q\ & (\CAP10|QaddReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QaddReg\(3),
	datac => \CAP10|QinReg\(3),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|B[3]~4_combout\);

-- Location: LCCOMB_X17_Y28_N12
\CAP10|RipCar:4:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:4:FA|s~combout\ = \CAP10|B[4]~3_combout\ $ (((\CAP10|QinReg\(7) & ((\CAP10|B[3]~4_combout\) # (\CAP10|RipCar:2:FA|co~0_combout\))) # (!\CAP10|QinReg\(7) & (\CAP10|B[3]~4_combout\ & \CAP10|RipCar:2:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|B[4]~3_combout\,
	datab => \CAP10|QinReg\(7),
	datac => \CAP10|B[3]~4_combout\,
	datad => \CAP10|RipCar:2:FA|co~0_combout\,
	combout => \CAP10|RipCar:4:FA|s~combout\);

-- Location: FF_X17_Y28_N13
\CAP10|QaddReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|dPCLK~clkctrl_outclk\,
	d => \CAP10|RipCar:4:FA|s~combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QaddReg\(4));

-- Location: LCCOMB_X17_Y28_N8
\CAP10|B[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[4]~3_combout\ = (\CAP10|QaddReg\(4) & !\CAP10|takeTurn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QaddReg\(4),
	datab => \CAP10|takeTurn~q\,
	combout => \CAP10|B[4]~3_combout\);

-- Location: LCCOMB_X17_Y28_N2
\CAP10|RipCar:4:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:4:FA|co~0_combout\ = (\CAP10|B[4]~3_combout\ & ((\CAP10|QinReg\(7) & ((\CAP10|B[3]~4_combout\) # (\CAP10|RipCar:2:FA|co~0_combout\))) # (!\CAP10|QinReg\(7) & (\CAP10|B[3]~4_combout\ & \CAP10|RipCar:2:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|B[4]~3_combout\,
	datab => \CAP10|QinReg\(7),
	datac => \CAP10|B[3]~4_combout\,
	datad => \CAP10|RipCar:2:FA|co~0_combout\,
	combout => \CAP10|RipCar:4:FA|co~0_combout\);

-- Location: FF_X17_Y28_N3
\CAP10|QaddReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|dPCLK~clkctrl_outclk\,
	d => \CAP10|RipCar:4:FA|co~0_combout\,
	clrn => \GPIO1_D[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QaddReg\(5));

-- Location: LCCOMB_X20_Y28_N26
\Geo_Loc|BallTracker~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|BallTracker~0_combout\ = (\CAP10|h_count\(9)) # (\CAP10|QaddReg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|h_count\(9),
	datad => \CAP10|QaddReg\(3),
	combout => \Geo_Loc|BallTracker~0_combout\);

-- Location: LCCOMB_X20_Y28_N20
\Geo_Loc|BallTracker~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|BallTracker~1_combout\ = (\CAP10|QaddReg\(5)) # (((\Geo_Loc|BallTracker~0_combout\) # (!\CAP10|QaddReg\(4))) # (!\CAP10|QaddReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QaddReg\(5),
	datab => \CAP10|QaddReg\(2),
	datac => \Geo_Loc|BallTracker~0_combout\,
	datad => \CAP10|QaddReg\(4),
	combout => \Geo_Loc|BallTracker~1_combout\);

-- Location: LCCOMB_X20_Y28_N22
\Geo_Loc|h_match_count[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|h_match_count[1]~20_combout\ = (\Geo_Loc|Equal1~2_combout\) # ((!\Geo_Loc|BallTracker~1_combout\ & (\CAP10|h_count\(8) $ (\Geo_Loc|h_match_count[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(8),
	datab => \Geo_Loc|Equal1~2_combout\,
	datac => \Geo_Loc|h_match_count[1]~19_combout\,
	datad => \Geo_Loc|BallTracker~1_combout\,
	combout => \Geo_Loc|h_match_count[1]~20_combout\);

-- Location: FF_X20_Y28_N1
\Geo_Loc|h_match_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	d => \Geo_Loc|h_match_count[0]~6_combout\,
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sclr => \Geo_Loc|Equal1~2_combout\,
	ena => \Geo_Loc|h_match_count[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|h_match_count\(0));

-- Location: LCCOMB_X20_Y28_N2
\Geo_Loc|h_match_count[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|h_match_count[1]~8_combout\ = (\Geo_Loc|h_match_count\(1) & (!\Geo_Loc|h_match_count[0]~7\)) # (!\Geo_Loc|h_match_count\(1) & ((\Geo_Loc|h_match_count[0]~7\) # (GND)))
-- \Geo_Loc|h_match_count[1]~9\ = CARRY((!\Geo_Loc|h_match_count[0]~7\) # (!\Geo_Loc|h_match_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|h_match_count\(1),
	datad => VCC,
	cin => \Geo_Loc|h_match_count[0]~7\,
	combout => \Geo_Loc|h_match_count[1]~8_combout\,
	cout => \Geo_Loc|h_match_count[1]~9\);

-- Location: FF_X20_Y28_N3
\Geo_Loc|h_match_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	d => \Geo_Loc|h_match_count[1]~8_combout\,
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sclr => \Geo_Loc|Equal1~2_combout\,
	ena => \Geo_Loc|h_match_count[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|h_match_count\(1));

-- Location: LCCOMB_X20_Y28_N4
\Geo_Loc|h_match_count[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|h_match_count[2]~10_combout\ = (\Geo_Loc|h_match_count\(2) & (\Geo_Loc|h_match_count[1]~9\ $ (GND))) # (!\Geo_Loc|h_match_count\(2) & (!\Geo_Loc|h_match_count[1]~9\ & VCC))
-- \Geo_Loc|h_match_count[2]~11\ = CARRY((\Geo_Loc|h_match_count\(2) & !\Geo_Loc|h_match_count[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|h_match_count\(2),
	datad => VCC,
	cin => \Geo_Loc|h_match_count[1]~9\,
	combout => \Geo_Loc|h_match_count[2]~10_combout\,
	cout => \Geo_Loc|h_match_count[2]~11\);

-- Location: FF_X20_Y28_N5
\Geo_Loc|h_match_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	d => \Geo_Loc|h_match_count[2]~10_combout\,
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sclr => \Geo_Loc|Equal1~2_combout\,
	ena => \Geo_Loc|h_match_count[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|h_match_count\(2));

-- Location: LCCOMB_X20_Y28_N6
\Geo_Loc|h_match_count[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|h_match_count[3]~12_combout\ = (\Geo_Loc|h_match_count\(3) & (!\Geo_Loc|h_match_count[2]~11\)) # (!\Geo_Loc|h_match_count\(3) & ((\Geo_Loc|h_match_count[2]~11\) # (GND)))
-- \Geo_Loc|h_match_count[3]~13\ = CARRY((!\Geo_Loc|h_match_count[2]~11\) # (!\Geo_Loc|h_match_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|h_match_count\(3),
	datad => VCC,
	cin => \Geo_Loc|h_match_count[2]~11\,
	combout => \Geo_Loc|h_match_count[3]~12_combout\,
	cout => \Geo_Loc|h_match_count[3]~13\);

-- Location: FF_X20_Y28_N7
\Geo_Loc|h_match_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	d => \Geo_Loc|h_match_count[3]~12_combout\,
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sclr => \Geo_Loc|Equal1~2_combout\,
	ena => \Geo_Loc|h_match_count[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|h_match_count\(3));

-- Location: LCCOMB_X20_Y28_N8
\Geo_Loc|h_match_count[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|h_match_count[4]~14_combout\ = (\Geo_Loc|h_match_count\(4) & (\Geo_Loc|h_match_count[3]~13\ $ (GND))) # (!\Geo_Loc|h_match_count\(4) & (!\Geo_Loc|h_match_count[3]~13\ & VCC))
-- \Geo_Loc|h_match_count[4]~15\ = CARRY((\Geo_Loc|h_match_count\(4) & !\Geo_Loc|h_match_count[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|h_match_count\(4),
	datad => VCC,
	cin => \Geo_Loc|h_match_count[3]~13\,
	combout => \Geo_Loc|h_match_count[4]~14_combout\,
	cout => \Geo_Loc|h_match_count[4]~15\);

-- Location: FF_X20_Y28_N9
\Geo_Loc|h_match_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	d => \Geo_Loc|h_match_count[4]~14_combout\,
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sclr => \Geo_Loc|Equal1~2_combout\,
	ena => \Geo_Loc|h_match_count[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|h_match_count\(4));

-- Location: LCCOMB_X20_Y28_N10
\Geo_Loc|h_match_count[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|h_match_count[5]~16_combout\ = \Geo_Loc|h_match_count\(5) $ (\Geo_Loc|h_match_count[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|h_match_count\(5),
	cin => \Geo_Loc|h_match_count[4]~15\,
	combout => \Geo_Loc|h_match_count[5]~16_combout\);

-- Location: FF_X20_Y28_N11
\Geo_Loc|h_match_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	d => \Geo_Loc|h_match_count[5]~16_combout\,
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sclr => \Geo_Loc|Equal1~2_combout\,
	ena => \Geo_Loc|h_match_count[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|h_match_count\(5));

-- Location: FF_X19_Y28_N21
\Geo_Loc|max_match[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \Geo_Loc|h_match_count\(5),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|max_match\(5));

-- Location: FF_X19_Y28_N19
\Geo_Loc|max_match[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \Geo_Loc|h_match_count\(4),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|max_match\(4));

-- Location: FF_X19_Y28_N17
\Geo_Loc|max_match[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \Geo_Loc|h_match_count\(3),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|max_match\(3));

-- Location: FF_X19_Y28_N15
\Geo_Loc|max_match[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \Geo_Loc|h_match_count\(2),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|max_match\(2));

-- Location: FF_X19_Y28_N13
\Geo_Loc|max_match[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \Geo_Loc|h_match_count\(1),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|max_match\(1));

-- Location: FF_X19_Y28_N11
\Geo_Loc|max_match[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \Geo_Loc|h_match_count\(0),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|max_match\(0));

-- Location: LCCOMB_X19_Y28_N10
\Geo_Loc|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|LessThan2~1_cout\ = CARRY((!\Geo_Loc|max_match\(0) & \Geo_Loc|h_match_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|max_match\(0),
	datab => \Geo_Loc|h_match_count\(0),
	datad => VCC,
	cout => \Geo_Loc|LessThan2~1_cout\);

-- Location: LCCOMB_X19_Y28_N12
\Geo_Loc|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|LessThan2~3_cout\ = CARRY((\Geo_Loc|max_match\(1) & ((!\Geo_Loc|LessThan2~1_cout\) # (!\Geo_Loc|h_match_count\(1)))) # (!\Geo_Loc|max_match\(1) & (!\Geo_Loc|h_match_count\(1) & !\Geo_Loc|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|max_match\(1),
	datab => \Geo_Loc|h_match_count\(1),
	datad => VCC,
	cin => \Geo_Loc|LessThan2~1_cout\,
	cout => \Geo_Loc|LessThan2~3_cout\);

-- Location: LCCOMB_X19_Y28_N14
\Geo_Loc|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|LessThan2~5_cout\ = CARRY((\Geo_Loc|max_match\(2) & (\Geo_Loc|h_match_count\(2) & !\Geo_Loc|LessThan2~3_cout\)) # (!\Geo_Loc|max_match\(2) & ((\Geo_Loc|h_match_count\(2)) # (!\Geo_Loc|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|max_match\(2),
	datab => \Geo_Loc|h_match_count\(2),
	datad => VCC,
	cin => \Geo_Loc|LessThan2~3_cout\,
	cout => \Geo_Loc|LessThan2~5_cout\);

-- Location: LCCOMB_X19_Y28_N16
\Geo_Loc|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|LessThan2~7_cout\ = CARRY((\Geo_Loc|max_match\(3) & ((!\Geo_Loc|LessThan2~5_cout\) # (!\Geo_Loc|h_match_count\(3)))) # (!\Geo_Loc|max_match\(3) & (!\Geo_Loc|h_match_count\(3) & !\Geo_Loc|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|max_match\(3),
	datab => \Geo_Loc|h_match_count\(3),
	datad => VCC,
	cin => \Geo_Loc|LessThan2~5_cout\,
	cout => \Geo_Loc|LessThan2~7_cout\);

-- Location: LCCOMB_X19_Y28_N18
\Geo_Loc|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|LessThan2~9_cout\ = CARRY((\Geo_Loc|max_match\(4) & (\Geo_Loc|h_match_count\(4) & !\Geo_Loc|LessThan2~7_cout\)) # (!\Geo_Loc|max_match\(4) & ((\Geo_Loc|h_match_count\(4)) # (!\Geo_Loc|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|max_match\(4),
	datab => \Geo_Loc|h_match_count\(4),
	datad => VCC,
	cin => \Geo_Loc|LessThan2~7_cout\,
	cout => \Geo_Loc|LessThan2~9_cout\);

-- Location: LCCOMB_X19_Y28_N20
\Geo_Loc|LessThan2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|LessThan2~10_combout\ = (\Geo_Loc|max_match\(5) & (\Geo_Loc|h_match_count\(5) & \Geo_Loc|LessThan2~9_cout\)) # (!\Geo_Loc|max_match\(5) & ((\Geo_Loc|h_match_count\(5)) # (\Geo_Loc|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|max_match\(5),
	datab => \Geo_Loc|h_match_count\(5),
	cin => \Geo_Loc|LessThan2~9_cout\,
	combout => \Geo_Loc|LessThan2~10_combout\);

-- Location: LCCOMB_X19_Y28_N4
\Geo_Loc|v_max_match[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|v_max_match[7]~0_combout\ = (\Geo_Loc|LessThan2~10_combout\ & \Geo_Loc|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|LessThan2~10_combout\,
	datad => \Geo_Loc|Equal1~2_combout\,
	combout => \Geo_Loc|v_max_match[7]~0_combout\);

-- Location: FF_X19_Y28_N29
\Geo_Loc|v_max_match[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \CAP10|v_count\(7),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|v_max_match\(7));

-- Location: LCCOMB_X19_Y28_N28
\Geo_Loc|Y_loc[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Y_loc\(7) = (GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & ((\Geo_Loc|v_max_match\(7)))) # (!GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & (\Geo_Loc|Y_loc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(7),
	datac => \Geo_Loc|v_max_match\(7),
	datad => \GPIO1_D[10]~inputclkctrl_outclk\,
	combout => \Geo_Loc|Y_loc\(7));

-- Location: FF_X19_Y28_N31
\Geo_Loc|v_max_match[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \CAP10|v_count\(6),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|v_max_match\(6));

-- Location: LCCOMB_X19_Y28_N30
\Geo_Loc|Y_loc[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Y_loc\(6) = (GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & ((\Geo_Loc|v_max_match\(6)))) # (!GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & (\Geo_Loc|Y_loc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(6),
	datac => \Geo_Loc|v_max_match\(6),
	datad => \GPIO1_D[10]~inputclkctrl_outclk\,
	combout => \Geo_Loc|Y_loc\(6));

-- Location: FF_X19_Y28_N9
\Geo_Loc|v_max_match[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \CAP10|v_count\(5),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|v_max_match\(5));

-- Location: LCCOMB_X19_Y28_N8
\Geo_Loc|Y_loc[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Y_loc\(5) = (GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & ((\Geo_Loc|v_max_match\(5)))) # (!GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & (\Geo_Loc|Y_loc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(5),
	datac => \Geo_Loc|v_max_match\(5),
	datad => \GPIO1_D[10]~inputclkctrl_outclk\,
	combout => \Geo_Loc|Y_loc\(5));

-- Location: FF_X19_Y28_N23
\Geo_Loc|v_max_match[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \CAP10|v_count\(4),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|v_max_match\(4));

-- Location: LCCOMB_X19_Y28_N22
\Geo_Loc|Y_loc[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Y_loc\(4) = (GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & ((\Geo_Loc|v_max_match\(4)))) # (!GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & (\Geo_Loc|Y_loc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(4),
	datac => \Geo_Loc|v_max_match\(4),
	datad => \GPIO1_D[10]~inputclkctrl_outclk\,
	combout => \Geo_Loc|Y_loc\(4));

-- Location: FF_X19_Y28_N25
\Geo_Loc|v_max_match[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \CAP10|v_count\(3),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|v_max_match\(3));

-- Location: LCCOMB_X19_Y28_N24
\Geo_Loc|Y_loc[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Y_loc\(3) = (GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & ((\Geo_Loc|v_max_match\(3)))) # (!GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & (\Geo_Loc|Y_loc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(3),
	datac => \Geo_Loc|v_max_match\(3),
	datad => \GPIO1_D[10]~inputclkctrl_outclk\,
	combout => \Geo_Loc|Y_loc\(3));

-- Location: LCCOMB_X22_Y27_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \Geo_Loc|Y_loc\(3) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\Geo_Loc|Y_loc\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(3),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X22_Y27_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Geo_Loc|Y_loc\(4) & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\Geo_Loc|Y_loc\(4) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\Geo_Loc|Y_loc\(4) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X22_Y27_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Geo_Loc|Y_loc\(5) & ((GND) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\Geo_Loc|Y_loc\(5) & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\Geo_Loc|Y_loc\(5)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X22_Y27_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Geo_Loc|Y_loc\(6) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\Geo_Loc|Y_loc\(6) & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) 
-- # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\Geo_Loc|Y_loc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X22_Y27_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Geo_Loc|Y_loc\(7) & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\Geo_Loc|Y_loc\(7) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\Geo_Loc|Y_loc\(7) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(7),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X22_Y27_N26
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X22_Y27_N12
\Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\Geo_Loc|Y_loc\(7) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(7),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X22_Y27_N6
\Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X23_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X23_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\Geo_Loc|Y_loc\(6) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(6),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X22_Y27_N8
\Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\Geo_Loc|Y_loc\(5) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X23_Y27_N28
\Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X23_Y27_N6
\Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X22_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\Geo_Loc|Y_loc\(4) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X22_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\Geo_Loc|Y_loc\(3) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(3),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X23_Y27_N24
\Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: FF_X19_Y28_N3
\Geo_Loc|v_max_match[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \CAP10|v_count\(2),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|v_max_match\(2));

-- Location: LCCOMB_X19_Y28_N2
\Geo_Loc|Y_loc[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Y_loc\(2) = (GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & ((\Geo_Loc|v_max_match\(2)))) # (!GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & (\Geo_Loc|Y_loc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(2),
	datac => \Geo_Loc|v_max_match\(2),
	datad => \GPIO1_D[10]~inputclkctrl_outclk\,
	combout => \Geo_Loc|Y_loc\(2));

-- Location: LCCOMB_X23_Y27_N26
\Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Geo_Loc|Y_loc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Geo_Loc|Y_loc\(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X23_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Geo_Loc|Y_loc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Geo_Loc|Y_loc\(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X23_Y27_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X23_Y27_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X23_Y27_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X23_Y27_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ & !\Div0|auto_generated|divider|divider|StageOut[52]~5_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X23_Y27_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~3_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X23_Y27_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X23_Y27_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X23_Y27_N8
\deco_centena|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_centena|Mux6~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \deco_centena|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\deco_centena|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_centena|Mux4~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \deco_centena|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y28_N6
\deco_centena|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_centena|Mux1~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \deco_centena|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y24_N2
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \Geo_Loc|Y_loc\(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\Geo_Loc|Y_loc\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X22_Y24_N4
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Geo_Loc|Y_loc\(4) & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\Geo_Loc|Y_loc\(4) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\Geo_Loc|Y_loc\(4) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X22_Y24_N6
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Geo_Loc|Y_loc\(5) & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\Geo_Loc|Y_loc\(5) & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\Geo_Loc|Y_loc\(5)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X22_Y24_N8
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Geo_Loc|Y_loc\(6) & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\Geo_Loc|Y_loc\(6) & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) 
-- # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\Geo_Loc|Y_loc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(6),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X22_Y24_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Geo_Loc|Y_loc\(7) & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\Geo_Loc|Y_loc\(7) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\Geo_Loc|Y_loc\(7) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(7),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X22_Y24_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X23_Y24_N22
\Mod0|auto_generated|divider|divider|StageOut[54]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\);

-- Location: LCCOMB_X23_Y24_N4
\Mod0|auto_generated|divider|divider|StageOut[54]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ = (\Geo_Loc|Y_loc\(7) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\);

-- Location: LCCOMB_X22_Y24_N16
\Mod0|auto_generated|divider|divider|StageOut[53]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\);

-- Location: LCCOMB_X23_Y24_N24
\Mod0|auto_generated|divider|divider|StageOut[53]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ = (\Geo_Loc|Y_loc\(6) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\);

-- Location: LCCOMB_X22_Y24_N14
\Mod0|auto_generated|divider|divider|StageOut[52]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ = (\Geo_Loc|Y_loc\(5) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\);

-- Location: LCCOMB_X22_Y24_N28
\Mod0|auto_generated|divider|divider|StageOut[52]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X23_Y24_N30
\Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\Geo_Loc|Y_loc\(4) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X23_Y24_N2
\Mod0|auto_generated|divider|divider|StageOut[51]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\);

-- Location: LCCOMB_X22_Y24_N26
\Mod0|auto_generated|divider|divider|StageOut[50]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\Geo_Loc|Y_loc\(3) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: LCCOMB_X22_Y24_N20
\Mod0|auto_generated|divider|divider|StageOut[50]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\);

-- Location: LCCOMB_X23_Y24_N26
\Mod0|auto_generated|divider|divider|StageOut[49]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ = (\Geo_Loc|Y_loc\(2) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\);

-- Location: LCCOMB_X23_Y24_N28
\Mod0|auto_generated|divider|divider|StageOut[49]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ = (\Geo_Loc|Y_loc\(2) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\);

-- Location: LCCOMB_X23_Y24_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X23_Y24_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X23_Y24_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X23_Y24_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X23_Y24_N16
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X23_Y24_N18
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X23_Y24_N20
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X22_Y24_N0
\Mod0|auto_generated|divider|divider|StageOut[62]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Geo_Loc|Y_loc\(6))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Geo_Loc|Y_loc\(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\);

-- Location: LCCOMB_X23_Y23_N18
\Mod0|auto_generated|divider|divider|StageOut[62]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\);

-- Location: LCCOMB_X22_Y24_N22
\Mod0|auto_generated|divider|divider|StageOut[61]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Geo_Loc|Y_loc\(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Geo_Loc|Y_loc\(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\);

-- Location: LCCOMB_X23_Y23_N16
\Mod0|auto_generated|divider|divider|StageOut[61]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\);

-- Location: LCCOMB_X23_Y23_N8
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y23_N10
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y24_N0
\Mod0|auto_generated|divider|divider|StageOut[63]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Geo_Loc|Y_loc\(7)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Geo_Loc|Y_loc\(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\);

-- Location: LCCOMB_X23_Y23_N28
\Mod0|auto_generated|divider|divider|StageOut[63]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\);

-- Location: LCCOMB_X23_Y23_N12
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y23_N14
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X21_Y25_N6
\Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X23_Y23_N22
\Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X20_Y25_N10
\Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X20_Y25_N4
\Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X23_Y23_N20
\Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X20_Y25_N8
\Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X22_Y24_N24
\Mod0|auto_generated|divider|divider|StageOut[60]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Geo_Loc|Y_loc\(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\);

-- Location: LCCOMB_X20_Y25_N30
\Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X20_Y25_N26
\Mod0|auto_generated|divider|divider|StageOut[60]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\);

-- Location: LCCOMB_X20_Y25_N0
\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X20_Y25_N28
\Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X20_Y25_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~47_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X20_Y25_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X20_Y25_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X20_Y25_N22
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y25_N24
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y25_N14
\Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X20_Y25_N6
\Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X21_Y25_N12
\Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X21_Y25_N14
\Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X20_Y25_N12
\Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X21_Y25_N28
\Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X22_Y24_N18
\Mod0|auto_generated|divider|divider|StageOut[59]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Geo_Loc|Y_loc\(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \Geo_Loc|Y_loc\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\);

-- Location: LCCOMB_X22_Y24_N30
\Mod0|auto_generated|divider|divider|StageOut[59]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\);

-- Location: LCCOMB_X21_Y25_N0
\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X21_Y25_N30
\Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X21_Y25_N2
\Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X21_Y25_N18
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~67_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X21_Y25_N20
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X21_Y25_N22
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X21_Y25_N24
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y25_N26
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y25_N16
\Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X21_Y25_N4
\Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X21_Y25_N8
\Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X22_Y25_N0
\Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X21_Y25_N10
\Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X22_Y25_N18
\Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X23_Y25_N22
\Mod0|auto_generated|divider|divider|StageOut[58]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Geo_Loc|Y_loc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Geo_Loc|Y_loc\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\);

-- Location: LCCOMB_X23_Y25_N24
\Mod0|auto_generated|divider|divider|StageOut[58]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\);

-- Location: LCCOMB_X23_Y25_N4
\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X23_Y25_N6
\Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X23_Y25_N28
\Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Geo_Loc|Y_loc\(2))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Geo_Loc|Y_loc\(2),
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X22_Y25_N6
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~74_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X22_Y25_N8
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X22_Y25_N10
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X22_Y25_N12
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y25_N14
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y25_N26
\Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X22_Y25_N30
\Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X22_Y25_N16
\Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X23_Y25_N20
\Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X22_Y25_N26
\Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X22_Y25_N20
\Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: FF_X19_Y28_N1
\Geo_Loc|v_max_match[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \CAP10|v_count\(1),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|v_max_match\(1));

-- Location: LCCOMB_X19_Y28_N0
\Geo_Loc|Y_loc[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Y_loc\(1) = (GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & ((\Geo_Loc|v_max_match\(1)))) # (!GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & (\Geo_Loc|Y_loc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(1),
	datac => \Geo_Loc|v_max_match\(1),
	datad => \GPIO1_D[10]~inputclkctrl_outclk\,
	combout => \Geo_Loc|Y_loc\(1));

-- Location: LCCOMB_X23_Y23_N4
\Mod0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\Geo_Loc|Y_loc\(1) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X23_Y23_N6
\Mod0|auto_generated|divider|divider|StageOut[48]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ = (\Geo_Loc|Y_loc\(1) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\);

-- Location: LCCOMB_X23_Y23_N24
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X23_Y25_N30
\Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Geo_Loc|Y_loc\(1))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Geo_Loc|Y_loc\(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X23_Y23_N26
\Mod0|auto_generated|divider|divider|StageOut[57]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\);

-- Location: LCCOMB_X23_Y23_N0
\Mod0|auto_generated|divider|divider|StageOut[57]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Geo_Loc|Y_loc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Geo_Loc|Y_loc\(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\);

-- Location: LCCOMB_X23_Y23_N2
\Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X22_Y25_N28
\Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X23_Y25_N8
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~75_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X23_Y25_N10
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X23_Y25_N12
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~72_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X23_Y25_N14
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y25_N16
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y25_N2
\deco_decena|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_decena|Mux6~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \deco_decena|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y25_N4
\deco_decena|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_decena|Mux5~0_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \deco_decena|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y25_N22
\deco_decena|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_decena|Mux4~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \deco_decena|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y25_N2
\deco_decena|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_decena|Mux3~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ 
-- & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \deco_decena|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y25_N0
\deco_decena|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_decena|Mux2~0_combout\ = ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \deco_decena|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y25_N18
\deco_decena|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_decena|Mux1~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \deco_decena|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y25_N24
\deco_decena|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_decena|Mux0~0_combout\ = ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \deco_decena|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y24_N0
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Geo_Loc|Y_loc\(5) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Geo_Loc|Y_loc\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(5),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X20_Y24_N2
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Geo_Loc|Y_loc\(6) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\Geo_Loc|Y_loc\(6) & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Geo_Loc|Y_loc\(6) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(6),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X20_Y24_N4
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Geo_Loc|Y_loc\(7) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\Geo_Loc|Y_loc\(7) & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Geo_Loc|Y_loc\(7) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(7),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X20_Y24_N6
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X20_Y24_N10
\Mod1|auto_generated|divider|divider|StageOut[27]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X20_Y24_N16
\Mod1|auto_generated|divider|divider|StageOut[27]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\Geo_Loc|Y_loc\(7) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(7),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X21_Y24_N20
\Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X20_Y24_N20
\Mod1|auto_generated|divider|divider|StageOut[26]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\Geo_Loc|Y_loc\(6) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(6),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X21_Y24_N6
\Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\Geo_Loc|Y_loc\(5) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(5),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X20_Y24_N18
\Mod1|auto_generated|divider|divider|StageOut[25]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X20_Y24_N12
\Mod1|auto_generated|divider|divider|StageOut[24]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\Geo_Loc|Y_loc\(4) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X20_Y24_N14
\Mod1|auto_generated|divider|divider|StageOut[24]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\Geo_Loc|Y_loc\(4) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X20_Y24_N22
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X20_Y24_N24
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X20_Y24_N26
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X20_Y24_N28
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X20_Y24_N30
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y24_N22
\Mod1|auto_generated|divider|divider|StageOut[36]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Geo_Loc|Y_loc\(7))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(7),
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X20_Y24_N8
\Mod1|auto_generated|divider|divider|StageOut[36]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X21_Y24_N16
\Mod1|auto_generated|divider|divider|StageOut[35]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X21_Y24_N0
\Mod1|auto_generated|divider|divider|StageOut[35]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Geo_Loc|Y_loc\(6))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(6),
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X21_Y24_N30
\Mod1|auto_generated|divider|divider|StageOut[34]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Geo_Loc|Y_loc\(5)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Geo_Loc|Y_loc\(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X21_Y24_N10
\Mod1|auto_generated|divider|divider|StageOut[34]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X21_Y23_N10
\Mod1|auto_generated|divider|divider|StageOut[33]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X21_Y23_N4
\Mod1|auto_generated|divider|divider|StageOut[33]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\Geo_Loc|Y_loc\(4) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X21_Y23_N18
\Mod1|auto_generated|divider|divider|StageOut[32]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\Geo_Loc|Y_loc\(3) & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X21_Y23_N0
\Mod1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Geo_Loc|Y_loc\(3) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X21_Y23_N20
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X21_Y23_N22
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X21_Y23_N24
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X21_Y23_N26
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X21_Y23_N28
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X21_Y23_N30
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X21_Y23_N2
\Mod1|auto_generated|divider|divider|StageOut[41]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\Geo_Loc|Y_loc\(3) & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(3),
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X22_Y23_N20
\Mod1|auto_generated|divider|divider|StageOut[41]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X22_Y23_N22
\Mod1|auto_generated|divider|divider|StageOut[40]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\Geo_Loc|Y_loc\(2) & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X22_Y23_N4
\Mod1|auto_generated|divider|divider|StageOut[40]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\Geo_Loc|Y_loc\(2) & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X22_Y23_N6
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X22_Y23_N8
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y24_N12
\Mod1|auto_generated|divider|divider|StageOut[45]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X22_Y23_N0
\Mod1|auto_generated|divider|divider|StageOut[45]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X21_Y24_N26
\Mod1|auto_generated|divider|divider|StageOut[44]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X22_Y23_N2
\Mod1|auto_generated|divider|divider|StageOut[44]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X21_Y24_N4
\Mod1|auto_generated|divider|divider|StageOut[43]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X22_Y23_N24
\Mod1|auto_generated|divider|divider|StageOut[43]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X21_Y23_N16
\Mod1|auto_generated|divider|divider|StageOut[42]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X21_Y23_N6
\Mod1|auto_generated|divider|divider|StageOut[42]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Geo_Loc|Y_loc\(4))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Geo_Loc|Y_loc\(4),
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X22_Y23_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X22_Y23_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X22_Y23_N14
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X22_Y23_N16
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X22_Y23_N18
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X22_Y22_N12
\Mod1|auto_generated|divider|divider|StageOut[50]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X21_Y23_N8
\Mod1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Geo_Loc|Y_loc\(3))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(3),
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X22_Y22_N6
\Mod1|auto_generated|divider|divider|StageOut[49]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X21_Y22_N28
\Mod1|auto_generated|divider|divider|StageOut[49]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\Geo_Loc|Y_loc\(2) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X21_Y22_N30
\Mod1|auto_generated|divider|divider|StageOut[48]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ = (\Geo_Loc|Y_loc\(1) & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X21_Y22_N16
\Mod1|auto_generated|divider|divider|StageOut[48]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\Geo_Loc|Y_loc\(1) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Geo_Loc|Y_loc\(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X21_Y22_N0
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X21_Y22_N2
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X21_Y22_N4
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X22_Y22_N20
\Mod1|auto_generated|divider|divider|StageOut[54]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X22_Y23_N30
\Mod1|auto_generated|divider|divider|StageOut[54]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X22_Y23_N28
\Mod1|auto_generated|divider|divider|StageOut[53]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X22_Y22_N10
\Mod1|auto_generated|divider|divider|StageOut[53]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X22_Y22_N8
\Mod1|auto_generated|divider|divider|StageOut[52]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X22_Y23_N26
\Mod1|auto_generated|divider|divider|StageOut[52]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X22_Y22_N30
\Mod1|auto_generated|divider|divider|StageOut[51]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X21_Y23_N12
\Mod1|auto_generated|divider|divider|StageOut[51]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X21_Y22_N6
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y22_N8
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X21_Y22_N10
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X21_Y22_N12
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X21_Y22_N14
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X21_Y22_N22
\Mod1|auto_generated|divider|divider|StageOut[59]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X21_Y22_N24
\Mod1|auto_generated|divider|divider|StageOut[58]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X21_Y22_N26
\Mod1|auto_generated|divider|divider|StageOut[57]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Geo_Loc|Y_loc\(1))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Geo_Loc|Y_loc\(1),
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: FF_X19_Y28_N7
\Geo_Loc|v_max_match[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|outCLK~clkctrl_outclk\,
	asdata => \CAP10|v_count\(0),
	clrn => \ALT_INV_GPIO1_D[10]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Geo_Loc|v_max_match[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Geo_Loc|v_max_match\(0));

-- Location: LCCOMB_X19_Y28_N6
\Geo_Loc|Y_loc[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Geo_Loc|Y_loc\(0) = (GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & ((\Geo_Loc|v_max_match\(0)))) # (!GLOBAL(\GPIO1_D[10]~inputclkctrl_outclk\) & (\Geo_Loc|Y_loc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Geo_Loc|Y_loc\(0),
	datac => \Geo_Loc|v_max_match\(0),
	datad => \GPIO1_D[10]~inputclkctrl_outclk\,
	combout => \Geo_Loc|Y_loc\(0));

-- Location: LCCOMB_X16_Y26_N12
\deco_unidad|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_unidad|Mux6~0_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (\Geo_Loc|Y_loc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \Geo_Loc|Y_loc\(0),
	combout => \deco_unidad|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y26_N6
\deco_unidad|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_unidad|Mux5~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (\Geo_Loc|Y_loc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datad => \Geo_Loc|Y_loc\(0),
	combout => \deco_unidad|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y26_N20
\deco_unidad|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_unidad|Mux4~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & !\Geo_Loc|Y_loc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datad => \Geo_Loc|Y_loc\(0),
	combout => \deco_unidad|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y26_N14
\deco_unidad|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_unidad|Mux3~0_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (!\Geo_Loc|Y_loc\(0)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & \Geo_Loc|Y_loc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \Geo_Loc|Y_loc\(0),
	combout => \deco_unidad|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y26_N0
\deco_unidad|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_unidad|Mux2~0_combout\ = (\Geo_Loc|Y_loc\(0)) # ((!\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datad => \Geo_Loc|Y_loc\(0),
	combout => \deco_unidad|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y26_N30
\deco_unidad|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_unidad|Mux1~0_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & \Geo_Loc|Y_loc\(0))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\Geo_Loc|Y_loc\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \Geo_Loc|Y_loc\(0),
	combout => \deco_unidad|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y26_N4
\deco_unidad|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \deco_unidad|Mux0~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((!\Geo_Loc|Y_loc\(0)) # (!\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\))) 
-- # (!\Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \Geo_Loc|Y_loc\(0),
	combout => \deco_unidad|Mux0~0_combout\);

-- Location: IOIBUF_X23_Y0_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X41_Y25_N8
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X41_Y13_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X37_Y29_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X5_Y29_N8
\SW[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);
END structure;


