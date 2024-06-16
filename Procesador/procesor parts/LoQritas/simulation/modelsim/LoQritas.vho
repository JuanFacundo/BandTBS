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

-- DATE "06/13/2024 12:12:30"

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

ENTITY 	LoQritas IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	GPIO0_D : OUT std_logic_vector(4 DOWNTO 0);
	GPIO1_D : IN std_logic_vector(10 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic
	);
END LoQritas;

-- Design Ports Information
-- SW[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[10]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[9]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[8]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1_D[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LoQritas IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_GPIO0_D : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_GPIO1_D : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLK_25M|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rRAMclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCCBdriver|clk400data~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAP10|CAPclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAP10|outCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO1_D[8]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV800|Qaux[5]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAP10|dPCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO1_D[9]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \GPIO1_D[10]~input_o\ : std_logic;
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
SIGNAL \SCCBdriver|clkE~combout\ : std_logic;
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
SIGNAL \SCCBdriver|D0~0_combout\ : std_logic;
SIGNAL \SCCBdriver|Q0~q\ : std_logic;
SIGNAL \SCCBdriver|DeInd~0_combout\ : std_logic;
SIGNAL \SCCBdriver|DeInd~1_combout\ : std_logic;
SIGNAL \SCCBdriver|eInd~q\ : std_logic;
SIGNAL \SCCBdriver|D1~0_combout\ : std_logic;
SIGNAL \SCCBdriver|Q1~q\ : std_logic;
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
SIGNAL \SW[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CLK_25M|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGApart|Add0~0_combout\ : std_logic;
SIGNAL \VGApart|h_count~3_combout\ : std_logic;
SIGNAL \VGApart|Add0~1\ : std_logic;
SIGNAL \VGApart|Add0~2_combout\ : std_logic;
SIGNAL \VGApart|Add0~3\ : std_logic;
SIGNAL \VGApart|Add0~4_combout\ : std_logic;
SIGNAL \VGApart|Add0~5\ : std_logic;
SIGNAL \VGApart|Add0~6_combout\ : std_logic;
SIGNAL \VGApart|Add0~7\ : std_logic;
SIGNAL \VGApart|Add0~8_combout\ : std_logic;
SIGNAL \VGApart|Add0~9\ : std_logic;
SIGNAL \VGApart|Add0~10_combout\ : std_logic;
SIGNAL \VGApart|h_count~2_combout\ : std_logic;
SIGNAL \VGApart|Add0~11\ : std_logic;
SIGNAL \VGApart|Add0~12_combout\ : std_logic;
SIGNAL \VGApart|Add0~13\ : std_logic;
SIGNAL \VGApart|Add0~14_combout\ : std_logic;
SIGNAL \VGApart|Add0~15\ : std_logic;
SIGNAL \VGApart|Add0~17\ : std_logic;
SIGNAL \VGApart|Add0~18_combout\ : std_logic;
SIGNAL \VGApart|h_count~1_combout\ : std_logic;
SIGNAL \VGApart|Equal0~1_combout\ : std_logic;
SIGNAL \VGApart|Equal0~0_combout\ : std_logic;
SIGNAL \VGApart|Equal0~2_combout\ : std_logic;
SIGNAL \VGApart|Add0~16_combout\ : std_logic;
SIGNAL \VGApart|h_count~0_combout\ : std_logic;
SIGNAL \VGApart|LessThan10~0_combout\ : std_logic;
SIGNAL \VGApart|Add1~0_combout\ : std_logic;
SIGNAL \VGApart|Add1~1\ : std_logic;
SIGNAL \VGApart|Add1~2_combout\ : std_logic;
SIGNAL \VGApart|v_count~0_combout\ : std_logic;
SIGNAL \VGApart|Add1~3\ : std_logic;
SIGNAL \VGApart|Add1~4_combout\ : std_logic;
SIGNAL \VGApart|v_count~1_combout\ : std_logic;
SIGNAL \VGApart|Add1~5\ : std_logic;
SIGNAL \VGApart|Add1~6_combout\ : std_logic;
SIGNAL \VGApart|v_count~2_combout\ : std_logic;
SIGNAL \VGApart|Add1~7\ : std_logic;
SIGNAL \VGApart|Add1~8_combout\ : std_logic;
SIGNAL \VGApart|Add1~9\ : std_logic;
SIGNAL \VGApart|Add1~10_combout\ : std_logic;
SIGNAL \VGApart|Equal1~1_combout\ : std_logic;
SIGNAL \VGApart|Add1~11\ : std_logic;
SIGNAL \VGApart|Add1~12_combout\ : std_logic;
SIGNAL \VGApart|Add1~13\ : std_logic;
SIGNAL \VGApart|Add1~14_combout\ : std_logic;
SIGNAL \VGApart|Equal1~0_combout\ : std_logic;
SIGNAL \VGApart|Add1~15\ : std_logic;
SIGNAL \VGApart|Add1~16_combout\ : std_logic;
SIGNAL \VGApart|Equal1~2_combout\ : std_logic;
SIGNAL \VGApart|Add1~17\ : std_logic;
SIGNAL \VGApart|Add1~18_combout\ : std_logic;
SIGNAL \VGApart|v_count~3_combout\ : std_logic;
SIGNAL \VGApart|LessThan5~0_combout\ : std_logic;
SIGNAL \VGApart|process_0~8_combout\ : std_logic;
SIGNAL \VGApart|video_on~q\ : std_logic;
SIGNAL \VGApart|process_0~6_combout\ : std_logic;
SIGNAL \VGApart|LessThan6~0_combout\ : std_logic;
SIGNAL \VGApart|process_0~7_combout\ : std_logic;
SIGNAL \VGApart|isColor~feeder_combout\ : std_logic;
SIGNAL \VGApart|isColor~q\ : std_logic;
SIGNAL \VGApart|set_color~8_combout\ : std_logic;
SIGNAL \VGApart|set_color~9_combout\ : std_logic;
SIGNAL \VGApart|set_color~10_combout\ : std_logic;
SIGNAL \VGApart|set_color~11_combout\ : std_logic;
SIGNAL \VGApart|Add5~1\ : std_logic;
SIGNAL \VGApart|Add5~3\ : std_logic;
SIGNAL \VGApart|Add5~5\ : std_logic;
SIGNAL \VGApart|Add5~7\ : std_logic;
SIGNAL \VGApart|Add5~9\ : std_logic;
SIGNAL \VGApart|Add5~11\ : std_logic;
SIGNAL \VGApart|Add5~13\ : std_logic;
SIGNAL \VGApart|Add5~15\ : std_logic;
SIGNAL \VGApart|Add5~16_combout\ : std_logic;
SIGNAL \VGApart|Add5~8_combout\ : std_logic;
SIGNAL \VGApart|Add5~14_combout\ : std_logic;
SIGNAL \VGApart|Add5~10_combout\ : std_logic;
SIGNAL \VGApart|Add5~12_combout\ : std_logic;
SIGNAL \VGApart|set_color~6_combout\ : std_logic;
SIGNAL \VGApart|Add5~17\ : std_logic;
SIGNAL \VGApart|Add5~18_combout\ : std_logic;
SIGNAL \VGApart|Add5~6_combout\ : std_logic;
SIGNAL \VGApart|Add5~4_combout\ : std_logic;
SIGNAL \VGApart|Add5~0_combout\ : std_logic;
SIGNAL \VGApart|Add5~2_combout\ : std_logic;
SIGNAL \VGApart|set_color~5_combout\ : std_logic;
SIGNAL \VGApart|set_color~7_combout\ : std_logic;
SIGNAL \VGApart|Add4~1\ : std_logic;
SIGNAL \VGApart|Add4~3\ : std_logic;
SIGNAL \VGApart|Add4~4_combout\ : std_logic;
SIGNAL \VGApart|Add4~5\ : std_logic;
SIGNAL \VGApart|Add4~6_combout\ : std_logic;
SIGNAL \VGApart|Add4~2_combout\ : std_logic;
SIGNAL \VGApart|Add4~0_combout\ : std_logic;
SIGNAL \VGApart|set_color~2_combout\ : std_logic;
SIGNAL \VGApart|Add4~7\ : std_logic;
SIGNAL \VGApart|Add4~9\ : std_logic;
SIGNAL \VGApart|Add4~11\ : std_logic;
SIGNAL \VGApart|Add4~13\ : std_logic;
SIGNAL \VGApart|Add4~15\ : std_logic;
SIGNAL \VGApart|Add4~17\ : std_logic;
SIGNAL \VGApart|Add4~18_combout\ : std_logic;
SIGNAL \VGApart|Add4~16_combout\ : std_logic;
SIGNAL \VGApart|Add4~14_combout\ : std_logic;
SIGNAL \VGApart|Add4~10_combout\ : std_logic;
SIGNAL \VGApart|Add4~8_combout\ : std_logic;
SIGNAL \VGApart|Add4~12_combout\ : std_logic;
SIGNAL \VGApart|set_color~3_combout\ : std_logic;
SIGNAL \VGApart|set_color~4_combout\ : std_logic;
SIGNAL \VGApart|set_color~12_combout\ : std_logic;
SIGNAL \VGApart|LessThan9~0_combout\ : std_logic;
SIGNAL \VGApart|set_color~0_combout\ : std_logic;
SIGNAL \VGApart|set_color~1_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \VGApart|set_color~13_combout\ : std_logic;
SIGNAL \VGApart|set_color~q\ : std_logic;
SIGNAL \VGApart|red~0_combout\ : std_logic;
SIGNAL \VGApart|green~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \VGApart|process_0~11_combout\ : std_logic;
SIGNAL \VGApart|LessThan9~1_combout\ : std_logic;
SIGNAL \VGApart|LessThan5~1_combout\ : std_logic;
SIGNAL \VGApart|process_0~10_combout\ : std_logic;
SIGNAL \VGApart|process_0~12_combout\ : std_logic;
SIGNAL \VGApart|enarRAMclk~q\ : std_logic;
SIGNAL \rRAMclk~combout\ : std_logic;
SIGNAL \rRAMclk~clkctrl_outclk\ : std_logic;
SIGNAL \VGApart|process_0~9_combout\ : std_logic;
SIGNAL \VGApart|Add3~0_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr1[15]~1_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr1[15]~2_combout\ : std_logic;
SIGNAL \VGApart|Add3~1\ : std_logic;
SIGNAL \VGApart|Add3~2_combout\ : std_logic;
SIGNAL \VGApart|Add3~3\ : std_logic;
SIGNAL \VGApart|Add3~4_combout\ : std_logic;
SIGNAL \VGApart|Add3~5\ : std_logic;
SIGNAL \VGApart|Add3~6_combout\ : std_logic;
SIGNAL \VGApart|Add3~7\ : std_logic;
SIGNAL \VGApart|Add3~8_combout\ : std_logic;
SIGNAL \VGApart|Add3~9\ : std_logic;
SIGNAL \VGApart|Add3~10_combout\ : std_logic;
SIGNAL \VGApart|Add3~11\ : std_logic;
SIGNAL \VGApart|Add3~12_combout\ : std_logic;
SIGNAL \VGApart|Add3~13\ : std_logic;
SIGNAL \VGApart|Add3~14_combout\ : std_logic;
SIGNAL \VGApart|Add3~15\ : std_logic;
SIGNAL \VGApart|Add3~16_combout\ : std_logic;
SIGNAL \VGApart|Equal3~2_combout\ : std_logic;
SIGNAL \VGApart|Equal3~0_combout\ : std_logic;
SIGNAL \VGApart|Equal3~1_combout\ : std_logic;
SIGNAL \VGApart|Equal3~3_combout\ : std_logic;
SIGNAL \VGApart|Equal3~4_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr1~5_combout\ : std_logic;
SIGNAL \VGApart|Add3~17\ : std_logic;
SIGNAL \VGApart|Add3~18_combout\ : std_logic;
SIGNAL \VGApart|Add3~19\ : std_logic;
SIGNAL \VGApart|Add3~20_combout\ : std_logic;
SIGNAL \VGApart|Add3~21\ : std_logic;
SIGNAL \VGApart|Add3~22_combout\ : std_logic;
SIGNAL \VGApart|Add3~23\ : std_logic;
SIGNAL \VGApart|Add3~24_combout\ : std_logic;
SIGNAL \VGApart|Add3~25\ : std_logic;
SIGNAL \VGApart|Add3~26_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr1~4_combout\ : std_logic;
SIGNAL \VGApart|Add3~27\ : std_logic;
SIGNAL \VGApart|Add3~28_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr1~3_combout\ : std_logic;
SIGNAL \VGApart|Add3~29\ : std_logic;
SIGNAL \VGApart|Add3~30_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr1~0_combout\ : std_logic;
SIGNAL \VGApart|Add2~0_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr0[15]~6_combout\ : std_logic;
SIGNAL \VGApart|Add2~1\ : std_logic;
SIGNAL \VGApart|Add2~2_combout\ : std_logic;
SIGNAL \VGApart|Add2~3\ : std_logic;
SIGNAL \VGApart|Add2~4_combout\ : std_logic;
SIGNAL \VGApart|Add2~5\ : std_logic;
SIGNAL \VGApart|Add2~6_combout\ : std_logic;
SIGNAL \VGApart|Add2~7\ : std_logic;
SIGNAL \VGApart|Add2~8_combout\ : std_logic;
SIGNAL \VGApart|Add2~9\ : std_logic;
SIGNAL \VGApart|Add2~10_combout\ : std_logic;
SIGNAL \VGApart|Add2~11\ : std_logic;
SIGNAL \VGApart|Add2~12_combout\ : std_logic;
SIGNAL \VGApart|Add2~13\ : std_logic;
SIGNAL \VGApart|Add2~14_combout\ : std_logic;
SIGNAL \VGApart|Add2~15\ : std_logic;
SIGNAL \VGApart|Add2~16_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr0~5_combout\ : std_logic;
SIGNAL \VGApart|Add2~17\ : std_logic;
SIGNAL \VGApart|Add2~18_combout\ : std_logic;
SIGNAL \VGApart|Add2~19\ : std_logic;
SIGNAL \VGApart|Add2~20_combout\ : std_logic;
SIGNAL \VGApart|Add2~21\ : std_logic;
SIGNAL \VGApart|Add2~22_combout\ : std_logic;
SIGNAL \VGApart|Equal2~2_combout\ : std_logic;
SIGNAL \VGApart|Add2~23\ : std_logic;
SIGNAL \VGApart|Add2~24_combout\ : std_logic;
SIGNAL \VGApart|Add2~25\ : std_logic;
SIGNAL \VGApart|Add2~26_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr0~4_combout\ : std_logic;
SIGNAL \VGApart|Equal2~3_combout\ : std_logic;
SIGNAL \VGApart|Equal2~0_combout\ : std_logic;
SIGNAL \VGApart|Equal2~1_combout\ : std_logic;
SIGNAL \VGApart|Equal2~4_combout\ : std_logic;
SIGNAL \VGApart|Add2~27\ : std_logic;
SIGNAL \VGApart|Add2~28_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr0~3_combout\ : std_logic;
SIGNAL \VGApart|Add2~29\ : std_logic;
SIGNAL \VGApart|Add2~30_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr0~2_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~0_combout\ : std_logic;
SIGNAL \VGApart|RAMadr[2]~1_combout\ : std_logic;
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
SIGNAL \CAP10|Add2~0_combout\ : std_logic;
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
SIGNAL \CAP10|Equal0~0_combout\ : std_logic;
SIGNAL \CAP10|Equal0~1_combout\ : std_logic;
SIGNAL \CAP10|Equal0~2_combout\ : std_logic;
SIGNAL \CAP10|Add0~15\ : std_logic;
SIGNAL \CAP10|Add0~16_combout\ : std_logic;
SIGNAL \CAP10|h_count~0_combout\ : std_logic;
SIGNAL \CAP10|Add0~17\ : std_logic;
SIGNAL \CAP10|Add0~18_combout\ : std_logic;
SIGNAL \CAP10|Add1~0_combout\ : std_logic;
SIGNAL \CAP10|v_count[0]~0_combout\ : std_logic;
SIGNAL \CAP10|RAM_adr[15]~1_combout\ : std_logic;
SIGNAL \CAP10|RAM_adr[15]~2_combout\ : std_logic;
SIGNAL \CAP10|RAM_adr[15]~3_combout\ : std_logic;
SIGNAL \CAP10|RAM_adr[15]~4_combout\ : std_logic;
SIGNAL \CAP10|Add2~1\ : std_logic;
SIGNAL \CAP10|Add2~2_combout\ : std_logic;
SIGNAL \CAP10|Add2~3\ : std_logic;
SIGNAL \CAP10|Add2~4_combout\ : std_logic;
SIGNAL \CAP10|Add2~5\ : std_logic;
SIGNAL \CAP10|Add2~6_combout\ : std_logic;
SIGNAL \CAP10|Add2~7\ : std_logic;
SIGNAL \CAP10|Add2~8_combout\ : std_logic;
SIGNAL \CAP10|Add2~9\ : std_logic;
SIGNAL \CAP10|Add2~10_combout\ : std_logic;
SIGNAL \CAP10|Add2~11\ : std_logic;
SIGNAL \CAP10|Add2~12_combout\ : std_logic;
SIGNAL \CAP10|Add2~13\ : std_logic;
SIGNAL \CAP10|Add2~14_combout\ : std_logic;
SIGNAL \CAP10|Equal2~3_combout\ : std_logic;
SIGNAL \CAP10|Add2~15\ : std_logic;
SIGNAL \CAP10|Add2~16_combout\ : std_logic;
SIGNAL \CAP10|Add2~29\ : std_logic;
SIGNAL \CAP10|Add2~30_combout\ : std_logic;
SIGNAL \CAP10|Equal2~4_combout\ : std_logic;
SIGNAL \CAP10|RAM_adr~0_combout\ : std_logic;
SIGNAL \CAP10|Equal2~0_combout\ : std_logic;
SIGNAL \CAP10|Equal2~1_combout\ : std_logic;
SIGNAL \CAP10|Equal2~2_combout\ : std_logic;
SIGNAL \CAP10|RAM_adr~7_combout\ : std_logic;
SIGNAL \CAP10|Add2~17\ : std_logic;
SIGNAL \CAP10|Add2~18_combout\ : std_logic;
SIGNAL \CAP10|Add2~19\ : std_logic;
SIGNAL \CAP10|Add2~20_combout\ : std_logic;
SIGNAL \CAP10|Add2~21\ : std_logic;
SIGNAL \CAP10|Add2~22_combout\ : std_logic;
SIGNAL \CAP10|Add2~23\ : std_logic;
SIGNAL \CAP10|Add2~24_combout\ : std_logic;
SIGNAL \CAP10|Add2~25\ : std_logic;
SIGNAL \CAP10|Add2~26_combout\ : std_logic;
SIGNAL \CAP10|RAM_adr~6_combout\ : std_logic;
SIGNAL \CAP10|Add2~27\ : std_logic;
SIGNAL \CAP10|Add2~28_combout\ : std_logic;
SIGNAL \CAP10|RAM_adr~5_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\ : std_logic;
SIGNAL \CAP10|enawRAMclk~0_combout\ : std_logic;
SIGNAL \CAP10|enawRAMclk~q\ : std_logic;
SIGNAL \CAP10|outCLK~combout\ : std_logic;
SIGNAL \CAP10|outCLK~clkctrl_outclk\ : std_logic;
SIGNAL \VGApart|RAMadr~3_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~2_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]~0_combout\ : std_logic;
SIGNAL \CAP10|dPCLK~combout\ : std_logic;
SIGNAL \CAP10|dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \GPIO1_D[6]~input_o\ : std_logic;
SIGNAL \GPIO1_D[2]~input_o\ : std_logic;
SIGNAL \CAP10|takeTurn~0_combout\ : std_logic;
SIGNAL \CAP10|takeTurn~q\ : std_logic;
SIGNAL \CAP10|B[2]~2_combout\ : std_logic;
SIGNAL \GPIO1_D[4]~input_o\ : std_logic;
SIGNAL \GPIO1_D[5]~input_o\ : std_logic;
SIGNAL \CAP10|QinReg[5]~feeder_combout\ : std_logic;
SIGNAL \GPIO1_D[0]~input_o\ : std_logic;
SIGNAL \CAP10|QinReg[0]~feeder_combout\ : std_logic;
SIGNAL \CAP10|RipCar:0:FA|s~0_combout\ : std_logic;
SIGNAL \CAP10|B[0]~0_combout\ : std_logic;
SIGNAL \CAP10|RipCar:1:FA|s~combout\ : std_logic;
SIGNAL \GPIO1_D[1]~input_o\ : std_logic;
SIGNAL \CAP10|B[1]~1_combout\ : std_logic;
SIGNAL \CAP10|RipCar:1:FA|co~0_combout\ : std_logic;
SIGNAL \CAP10|RipCar:2:FA|s~combout\ : std_logic;
SIGNAL \VGApart|RAMadr~4_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~5_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~6_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~7_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~8_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~9_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~10_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~11_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~12_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~13_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~14_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~15_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~16_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\ : std_logic;
SIGNAL \VGApart|red~1_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \GPIO1_D[7]~input_o\ : std_logic;
SIGNAL \GPIO1_D[3]~input_o\ : std_logic;
SIGNAL \CAP10|B[3]~3_combout\ : std_logic;
SIGNAL \CAP10|RipCar:2:FA|co~0_combout\ : std_logic;
SIGNAL \CAP10|RipCar:3:FA|s~combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\ : std_logic;
SIGNAL \VGApart|red~2_combout\ : std_logic;
SIGNAL \VGApart|red[1]~feeder_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \CAP10|B[4]~4_combout\ : std_logic;
SIGNAL \CAP10|RipCar:4:FA|s~combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\ : std_logic;
SIGNAL \VGApart|red~3_combout\ : std_logic;
SIGNAL \VGApart|red[2]~feeder_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CAP10|RipCar:4:FA|co~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\ : std_logic;
SIGNAL \VGApart|red~4_combout\ : std_logic;
SIGNAL \VGApart|red[3]~feeder_combout\ : std_logic;
SIGNAL \VGApart|green~1_combout\ : std_logic;
SIGNAL \VGApart|green~2_combout\ : std_logic;
SIGNAL \VGApart|green~3_combout\ : std_logic;
SIGNAL \VGApart|green~4_combout\ : std_logic;
SIGNAL \VGApart|green~5_combout\ : std_logic;
SIGNAL \VGApart|green~6_combout\ : std_logic;
SIGNAL \VGApart|green~7_combout\ : std_logic;
SIGNAL \VGApart|green~8_combout\ : std_logic;
SIGNAL \VGApart|process_0~0_combout\ : std_logic;
SIGNAL \VGApart|process_0~1_combout\ : std_logic;
SIGNAL \VGApart|process_0~2_combout\ : std_logic;
SIGNAL \VGApart|process_0~3_combout\ : std_logic;
SIGNAL \VGApart|Hsync_aux~q\ : std_logic;
SIGNAL \VGApart|process_0~4_combout\ : std_logic;
SIGNAL \VGApart|process_0~5_combout\ : std_logic;
SIGNAL \VGApart|Vsync_aux~q\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGApart|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGApart|red\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGApart|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGApart|green\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGApart|blue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGApart|RAMadr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \VGApart|RAM_adr1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \VGApart|RAM_adr0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK_25M|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DIV800|Qaux\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CAP10|QaddReg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CAP10|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CAP10|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCCBdriver|REGS|cQ\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CAP10|QinReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CAP10|DEPHASE|Qd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CAP10|RAM_adr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SCCBdriver|REGS|Q\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \CAP10|ALT_INV_dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\ : std_logic;
SIGNAL \CAP10|ALT_INV_CAPclk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \CAP10|ALT_INV_CAPclk~q\ : std_logic;
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

\RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\CLK_25M|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(0) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(0);
\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(1) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(1);
\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(2) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(2);
\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(3) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(3);
\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(4) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(5);

\RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(5);

\RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(5);

\RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(5);

\RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(5);

\RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(5);

\RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(5);

\RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \CAP10|QaddReg\(5);

\RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\CAP10|RAM_adr\(12) & \CAP10|RAM_adr\(11) & \CAP10|RAM_adr\(10) & \CAP10|RAM_adr\(9) & \CAP10|RAM_adr\(8) & \CAP10|RAM_adr\(7) & \CAP10|RAM_adr\(6) & 
\CAP10|RAM_adr\(5) & \CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(3) & \CAP10|RAM_adr\(2) & \CAP10|RAM_adr\(1) & \CAP10|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\rRAMclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rRAMclk~combout\);

\SCCBdriver|clk400data~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCCBdriver|clk400data~q\);

\CAP10|CAPclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAP10|CAPclk~q\);

\CAP10|outCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAP10|outCLK~combout\);

\CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_GPIO0_D_5b_2_5d_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(0));

\GPIO1_D[8]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GPIO1_D[8]~input_o\);

\CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(0));

\DIV800|Qaux[5]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV800|Qaux\(5));

\CAP10|dPCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAP10|dPCLK~combout\);

\GPIO1_D[9]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GPIO1_D[9]~input_o\);

\SW[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[1]~input_o\);

\SW[3]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[3]~input_o\);

\SW[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[0]~input_o\);
\ALT_INV_SW[1]~inputclkctrl_outclk\ <= NOT \SW[1]~inputclkctrl_outclk\;
\CAP10|ALT_INV_dPCLK~clkctrl_outclk\ <= NOT \CAP10|dPCLK~clkctrl_outclk\;
\DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\ <= NOT \DIV800|Qaux[5]~clkctrl_outclk\;
\CAP10|ALT_INV_CAPclk~clkctrl_outclk\ <= NOT \CAP10|CAPclk~clkctrl_outclk\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\CAP10|ALT_INV_CAPclk~q\ <= NOT \CAP10|CAPclk~q\;
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

-- Location: IOOBUF_X39_Y0_N23
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

-- Location: IOOBUF_X37_Y29_N23
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

-- Location: IOOBUF_X0_Y21_N2
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

-- Location: IOOBUF_X0_Y20_N2
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

-- Location: IOOBUF_X30_Y29_N30
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

-- Location: IOOBUF_X19_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N9
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|red\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X0_Y13_N16
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|red\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X11_Y29_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|red\(2),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X23_Y0_N16
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|red\(3),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X26_Y0_N16
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|green\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X0_Y13_N9
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|green\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X0_Y13_N23
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|green\(2),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X23_Y0_N2
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|green\(3),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X23_Y29_N23
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|blue\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X11_Y29_N16
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|blue\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X0_Y13_N2
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|blue\(2),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X26_Y0_N23
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|blue\(3),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X19_Y29_N30
\VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|Hsync_aux~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X21_Y29_N23
\VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGApart|Vsync_aux~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

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

-- Location: LCCOMB_X5_Y14_N30
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

-- Location: LCCOMB_X5_Y14_N14
\DIV800|Qaux[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[0]~feeder_combout\ = \DIV800|Qaux[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV800|Qaux[0]~5_combout\,
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

-- Location: FF_X5_Y14_N15
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

-- Location: LCCOMB_X5_Y14_N26
\DIV800|Qaux[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[1]~4_combout\ = !\DIV800|Qaux\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV800|Qaux\(1),
	combout => \DIV800|Qaux[1]~4_combout\);

-- Location: FF_X5_Y14_N23
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

-- Location: LCCOMB_X6_Y14_N14
\DIV800|Qaux[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[2]~3_combout\ = !\DIV800|Qaux\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIV800|Qaux\(2),
	combout => \DIV800|Qaux[2]~3_combout\);

-- Location: LCCOMB_X6_Y14_N28
\DIV800|Qaux[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[2]~feeder_combout\ = \DIV800|Qaux[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIV800|Qaux[2]~3_combout\,
	combout => \DIV800|Qaux[2]~feeder_combout\);

-- Location: FF_X6_Y14_N29
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

-- Location: LCCOMB_X6_Y14_N26
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

-- Location: FF_X6_Y14_N31
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

-- Location: LCCOMB_X9_Y14_N28
\DIV800|Qaux[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[4]~1_combout\ = !\DIV800|Qaux\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIV800|Qaux\(4),
	combout => \DIV800|Qaux[4]~1_combout\);

-- Location: LCCOMB_X9_Y14_N26
\DIV800|Qaux[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[4]~feeder_combout\ = \DIV800|Qaux[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV800|Qaux[4]~1_combout\,
	combout => \DIV800|Qaux[4]~feeder_combout\);

-- Location: FF_X9_Y14_N27
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

-- Location: LCCOMB_X9_Y14_N30
\DIV800|Qaux[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIV800|Qaux[5]~0_combout\ = !\DIV800|Qaux\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIV800|Qaux\(5),
	combout => \DIV800|Qaux[5]~0_combout\);

-- Location: FF_X9_Y14_N23
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X10_Y18_N14
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

-- Location: FF_X10_Y18_N15
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

-- Location: LCCOMB_X8_Y20_N6
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

-- Location: FF_X8_Y20_N7
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

-- Location: LCCOMB_X10_Y20_N6
\SCCBdriver|clk400D\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|clk400D~combout\ = (!\SCCBdriver|clk400data~q\ & \SCCBdriver|C_Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|clk400data~q\,
	datad => \SCCBdriver|C_Esync~q\,
	combout => \SCCBdriver|clk400D~combout\);

-- Location: FF_X9_Y20_N7
\SCCBdriver|clk400data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|ALT_INV_Qaux[5]~clkctrl_outclk\,
	asdata => \SCCBdriver|clk400D~combout\,
	clrn => \SW[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|clk400data~q\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X11_Y20_N0
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

-- Location: FF_X11_Y20_N1
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

-- Location: LCCOMB_X11_Y20_N22
\SCCBdriver|REGS|cQ[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cQ[0]~0_combout\ = !\SCCBdriver|REGS|Esync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cQ[0]~0_combout\);

-- Location: FF_X11_Y20_N23
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

-- Location: LCCOMB_X11_Y20_N16
\SCCBdriver|REGS|cD[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[1]~25_combout\ = (\SCCBdriver|REGS|cQ\(0)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(0),
	combout => \SCCBdriver|REGS|cD[1]~25_combout\);

-- Location: FF_X11_Y20_N17
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

-- Location: LCCOMB_X11_Y20_N12
\SCCBdriver|REGS|cD[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[2]~24_combout\ = (\SCCBdriver|REGS|cQ\(1)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(1),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[2]~24_combout\);

-- Location: FF_X11_Y20_N13
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

-- Location: LCCOMB_X11_Y20_N10
\SCCBdriver|REGS|cD[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[3]~23_combout\ = (\SCCBdriver|REGS|cQ\(2)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(2),
	combout => \SCCBdriver|REGS|cD[3]~23_combout\);

-- Location: FF_X11_Y20_N11
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

-- Location: LCCOMB_X11_Y20_N18
\SCCBdriver|REGS|cD[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[4]~22_combout\ = (\SCCBdriver|REGS|cQ\(3)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(3),
	combout => \SCCBdriver|REGS|cD[4]~22_combout\);

-- Location: FF_X11_Y20_N19
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

-- Location: LCCOMB_X11_Y20_N8
\SCCBdriver|REGS|cD[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[5]~21_combout\ = (\SCCBdriver|REGS|cQ\(4)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(4),
	combout => \SCCBdriver|REGS|cD[5]~21_combout\);

-- Location: FF_X11_Y20_N9
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

-- Location: LCCOMB_X11_Y20_N4
\SCCBdriver|REGS|cD[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[6]~20_combout\ = (\SCCBdriver|REGS|cQ\(5)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(5),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[6]~20_combout\);

-- Location: FF_X11_Y20_N5
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

-- Location: LCCOMB_X11_Y20_N2
\SCCBdriver|REGS|cD[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[7]~19_combout\ = (\SCCBdriver|REGS|cQ\(6)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(6),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[7]~19_combout\);

-- Location: FF_X11_Y20_N3
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

-- Location: LCCOMB_X11_Y20_N24
\SCCBdriver|REGS|cD[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[8]~18_combout\ = (\SCCBdriver|REGS|cQ\(7)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(7),
	combout => \SCCBdriver|REGS|cD[8]~18_combout\);

-- Location: FF_X11_Y20_N25
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

-- Location: LCCOMB_X11_Y20_N6
\SCCBdriver|REGS|cD[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[9]~17_combout\ = (\SCCBdriver|REGS|cQ\(8)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(8),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[9]~17_combout\);

-- Location: FF_X11_Y20_N7
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

-- Location: LCCOMB_X11_Y20_N26
\SCCBdriver|REGS|cD[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[10]~16_combout\ = (\SCCBdriver|REGS|cQ\(9)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(9),
	combout => \SCCBdriver|REGS|cD[10]~16_combout\);

-- Location: FF_X11_Y20_N27
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

-- Location: LCCOMB_X9_Y20_N10
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

-- Location: FF_X9_Y20_N11
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

-- Location: LCCOMB_X9_Y20_N30
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

-- Location: FF_X9_Y20_N31
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

-- Location: LCCOMB_X9_Y20_N0
\SCCBdriver|REGS|cD[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[13]~13_combout\ = (\SCCBdriver|REGS|cQ\(12)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(12),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[13]~13_combout\);

-- Location: FF_X9_Y20_N1
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

-- Location: LCCOMB_X9_Y20_N2
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

-- Location: FF_X9_Y20_N3
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

-- Location: LCCOMB_X9_Y20_N24
\SCCBdriver|REGS|cD[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[15]~11_combout\ = (\SCCBdriver|REGS|cQ\(14)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(14),
	combout => \SCCBdriver|REGS|cD[15]~11_combout\);

-- Location: FF_X9_Y20_N25
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

-- Location: LCCOMB_X9_Y20_N20
\SCCBdriver|REGS|cD[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[16]~10_combout\ = (\SCCBdriver|REGS|cQ\(15)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(15),
	combout => \SCCBdriver|REGS|cD[16]~10_combout\);

-- Location: FF_X9_Y20_N21
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

-- Location: LCCOMB_X9_Y20_N8
\SCCBdriver|REGS|cD[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[17]~9_combout\ = (\SCCBdriver|REGS|cQ\(16)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(16),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[17]~9_combout\);

-- Location: FF_X9_Y20_N9
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

-- Location: LCCOMB_X9_Y20_N22
\SCCBdriver|REGS|cD[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[18]~8_combout\ = (\SCCBdriver|REGS|cQ\(17)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(17),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[18]~8_combout\);

-- Location: FF_X9_Y20_N23
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

-- Location: LCCOMB_X9_Y20_N4
\SCCBdriver|REGS|cD[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[19]~7_combout\ = (\SCCBdriver|REGS|cQ\(18)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(18),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[19]~7_combout\);

-- Location: FF_X9_Y20_N5
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

-- Location: LCCOMB_X9_Y20_N12
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

-- Location: FF_X9_Y20_N13
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

-- Location: LCCOMB_X9_Y20_N16
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

-- Location: FF_X9_Y20_N17
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

-- Location: LCCOMB_X9_Y20_N28
\SCCBdriver|REGS|cD[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[22]~4_combout\ = (\SCCBdriver|REGS|cQ\(21)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(21),
	combout => \SCCBdriver|REGS|cD[22]~4_combout\);

-- Location: FF_X9_Y20_N29
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

-- Location: LCCOMB_X9_Y20_N18
\SCCBdriver|REGS|cD[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[23]~3_combout\ = (\SCCBdriver|REGS|cQ\(22)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(22),
	combout => \SCCBdriver|REGS|cD[23]~3_combout\);

-- Location: FF_X9_Y20_N19
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

-- Location: LCCOMB_X9_Y20_N26
\SCCBdriver|REGS|cD[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[24]~2_combout\ = (\SCCBdriver|REGS|cQ\(23)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(23),
	combout => \SCCBdriver|REGS|cD[24]~2_combout\);

-- Location: FF_X9_Y20_N27
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

-- Location: LCCOMB_X9_Y20_N14
\SCCBdriver|REGS|cD[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[25]~1_combout\ = (\SCCBdriver|REGS|cQ\(24)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(24),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[25]~1_combout\);

-- Location: FF_X9_Y20_N15
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

-- Location: LCCOMB_X10_Y20_N18
\SCCBdriver|REGS|cD[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[26]~0_combout\ = (\SCCBdriver|REGS|cQ\(25)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(25),
	combout => \SCCBdriver|REGS|cD[26]~0_combout\);

-- Location: FF_X10_Y20_N19
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

-- Location: LCCOMB_X9_Y20_N6
\SCCBdriver|dataEedge\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|dataEedge~combout\ = LCELL((((\SCCBdriver|mssgGO~q\ & \SCCBdriver|REGS|cQ\(26))) # (!\SCCBdriver|clk400data~q\)) # (!\SCCBdriver|clk400~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|mssgGO~q\,
	datab => \SCCBdriver|clk400~q\,
	datac => \SCCBdriver|clk400data~q\,
	datad => \SCCBdriver|REGS|cQ\(26),
	combout => \SCCBdriver|dataEedge~combout\);

-- Location: LCCOMB_X10_Y20_N14
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

-- Location: FF_X10_Y20_N15
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

-- Location: LCCOMB_X11_Y20_N28
\SCCBdriver|C_Eedge\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|C_Eedge~combout\ = LCELL((\SCCBdriver|C_E~q\ & (!\SCCBdriver|mssgGO~q\)) # (!\SCCBdriver|C_E~q\ & ((\SCCBdriver|eInd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|mssgGO~q\,
	datac => \SCCBdriver|C_E~q\,
	datad => \SCCBdriver|eInd~q\,
	combout => \SCCBdriver|C_Eedge~combout\);

-- Location: LCCOMB_X11_Y20_N14
\SCCBdriver|C_E~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|C_E~0_combout\ = !\SCCBdriver|C_E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCCBdriver|C_E~q\,
	combout => \SCCBdriver|C_E~0_combout\);

-- Location: FF_X11_Y20_N29
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

-- Location: FF_X11_Y18_N19
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

-- Location: LCCOMB_X11_Y18_N28
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

-- Location: FF_X11_Y18_N29
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

-- Location: LCCOMB_X11_Y18_N18
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

-- Location: LCCOMB_X10_Y18_N16
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

-- Location: FF_X10_Y18_N17
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

-- Location: LCCOMB_X11_Y18_N6
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

-- Location: FF_X11_Y18_N7
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

-- Location: LCCOMB_X12_Y18_N10
\SCCBdriver|LIVE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|LIVE~0_combout\ = (\SCCBdriver|eInd~q\) # (\SCCBdriver|Q1~q\ $ (\SCCBdriver|Q0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|eInd~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|LIVE~0_combout\);

-- Location: LCCOMB_X12_Y20_N16
\SCCBdriver|LIVE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|LIVE~feeder_combout\ = \SCCBdriver|LIVE~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCCBdriver|LIVE~0_combout\,
	combout => \SCCBdriver|LIVE~feeder_combout\);

-- Location: FF_X12_Y20_N17
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

-- Location: LCCOMB_X8_Y20_N24
\SCCBdriver|SIO_C\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|SIO_C~combout\ = (\SCCBdriver|clk400~q\) # (!\SCCBdriver|C_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|C_E~q\,
	datad => \SCCBdriver|clk400~q\,
	combout => \SCCBdriver|SIO_C~combout\);

-- Location: FF_X12_Y18_N17
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

-- Location: LCCOMB_X11_Y18_N2
\SCCBdriver|REGS|D[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[2]~24_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(1))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(1),
	combout => \SCCBdriver|REGS|D[2]~24_combout\);

-- Location: FF_X11_Y18_N3
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

-- Location: LCCOMB_X11_Y18_N12
\SCCBdriver|REGS|D[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[3]~23_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(2))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (!\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(2),
	combout => \SCCBdriver|REGS|D[3]~23_combout\);

-- Location: FF_X11_Y18_N13
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

-- Location: LCCOMB_X12_Y18_N4
\SCCBdriver|REGS|D[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[4]~22_combout\ = (\SCCBdriver|REGS|Q\(3) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(3),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[4]~22_combout\);

-- Location: FF_X12_Y18_N5
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

-- Location: LCCOMB_X11_Y18_N26
\SCCBdriver|REGS|D[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[5]~21_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(4))))) # (!\SCCBdriver|REGS|Esync~q\ & (!\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(4),
	combout => \SCCBdriver|REGS|D[5]~21_combout\);

-- Location: FF_X11_Y18_N27
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

-- Location: LCCOMB_X12_Y18_N2
\SCCBdriver|REGS|D[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[6]~20_combout\ = (\SCCBdriver|REGS|Q\(5) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(5),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[6]~20_combout\);

-- Location: FF_X12_Y18_N3
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

-- Location: LCCOMB_X11_Y18_N8
\SCCBdriver|REGS|D[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[7]~19_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(6))))) # (!\SCCBdriver|REGS|Esync~q\ & (!\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(6),
	combout => \SCCBdriver|REGS|D[7]~19_combout\);

-- Location: FF_X11_Y18_N9
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

-- Location: LCCOMB_X11_Y18_N30
\SCCBdriver|REGS|D[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[8]~18_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(7))))) # (!\SCCBdriver|REGS|Esync~q\ & (!\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(7),
	combout => \SCCBdriver|REGS|D[8]~18_combout\);

-- Location: FF_X11_Y18_N31
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

-- Location: LCCOMB_X12_Y18_N20
\SCCBdriver|REGS|D[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[9]~17_combout\ = (\SCCBdriver|REGS|Q\(8) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Q\(8),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[9]~17_combout\);

-- Location: FF_X12_Y18_N21
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

-- Location: LCCOMB_X12_Y18_N6
\SCCBdriver|REGS|D[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[10]~16_combout\ = (\SCCBdriver|REGS|Q\(9) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Q\(9),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[10]~16_combout\);

-- Location: FF_X12_Y18_N7
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

-- Location: LCCOMB_X11_Y18_N20
\SCCBdriver|REGS|D[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[11]~15_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(10))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (!\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(10),
	combout => \SCCBdriver|REGS|D[11]~15_combout\);

-- Location: FF_X11_Y18_N21
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

-- Location: LCCOMB_X11_Y18_N10
\SCCBdriver|REGS|D[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[12]~14_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(11))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(11),
	combout => \SCCBdriver|REGS|D[12]~14_combout\);

-- Location: FF_X11_Y18_N11
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

-- Location: LCCOMB_X11_Y18_N24
\SCCBdriver|REGS|D[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[13]~13_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(12))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(12),
	combout => \SCCBdriver|REGS|D[13]~13_combout\);

-- Location: FF_X11_Y18_N25
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

-- Location: LCCOMB_X11_Y18_N14
\SCCBdriver|REGS|D[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[14]~12_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(13))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (!\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(13),
	combout => \SCCBdriver|REGS|D[14]~12_combout\);

-- Location: FF_X11_Y18_N15
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

-- Location: LCCOMB_X11_Y18_N4
\SCCBdriver|REGS|D[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[15]~11_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(14))))) # (!\SCCBdriver|REGS|Esync~q\ & (!\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Esync~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(14),
	combout => \SCCBdriver|REGS|D[15]~11_combout\);

-- Location: FF_X11_Y18_N5
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

-- Location: LCCOMB_X12_Y18_N28
\SCCBdriver|REGS|D[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[16]~10_combout\ = (\SCCBdriver|REGS|Q\(15) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(15),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[16]~10_combout\);

-- Location: FF_X12_Y18_N29
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

-- Location: LCCOMB_X11_Y18_N22
\SCCBdriver|REGS|D[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[17]~9_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(16))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(16),
	combout => \SCCBdriver|REGS|D[17]~9_combout\);

-- Location: FF_X11_Y18_N23
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

-- Location: LCCOMB_X12_Y18_N22
\SCCBdriver|REGS|D[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[18]~8_combout\ = (\SCCBdriver|REGS|Q\(17) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Q\(17),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[18]~8_combout\);

-- Location: FF_X12_Y18_N23
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

-- Location: LCCOMB_X12_Y18_N24
\SCCBdriver|REGS|D[19]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[19]~7_combout\ = (\SCCBdriver|REGS|Q\(18) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(18),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[19]~7_combout\);

-- Location: FF_X12_Y18_N25
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

-- Location: LCCOMB_X11_Y18_N16
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

-- Location: FF_X11_Y18_N17
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

-- Location: LCCOMB_X12_Y18_N30
\SCCBdriver|REGS|D[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[21]~5_combout\ = (\SCCBdriver|REGS|Q\(20) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(20),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[21]~5_combout\);

-- Location: FF_X12_Y18_N31
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

-- Location: LCCOMB_X12_Y18_N12
\SCCBdriver|REGS|D[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[22]~4_combout\ = (\SCCBdriver|REGS|Q\(21) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(21),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[22]~4_combout\);

-- Location: FF_X12_Y18_N13
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

-- Location: LCCOMB_X12_Y18_N26
\SCCBdriver|REGS|D[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[23]~3_combout\ = (\SCCBdriver|REGS|Q\(22) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(22),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[23]~3_combout\);

-- Location: FF_X12_Y18_N27
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

-- Location: LCCOMB_X12_Y18_N8
\SCCBdriver|REGS|D[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[24]~2_combout\ = (\SCCBdriver|REGS|Q\(23) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(23),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[24]~2_combout\);

-- Location: FF_X12_Y18_N9
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

-- Location: LCCOMB_X11_Y18_N0
\SCCBdriver|REGS|D[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[25]~1_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(24))))) # (!\SCCBdriver|REGS|Esync~q\ & ((\SCCBdriver|Q0~q\) # ((\SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|REGS|Esync~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Q\(24),
	combout => \SCCBdriver|REGS|D[25]~1_combout\);

-- Location: FF_X11_Y18_N1
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

-- Location: LCCOMB_X11_Y20_N30
\SCCBdriver|REGS|D[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[26]~0_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(25),
	combout => \SCCBdriver|REGS|D[26]~0_combout\);

-- Location: FF_X11_Y20_N31
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

-- Location: LCCOMB_X11_Y20_N20
\SCCBdriver|SIO_D\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|SIO_D~combout\ = (\SCCBdriver|REGS|Q\(26)) # (!\SCCBdriver|mssgGO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|mssgGO~q\,
	datac => \SCCBdriver|REGS|Q\(26),
	combout => \SCCBdriver|SIO_D~combout\);

-- Location: IOIBUF_X21_Y0_N15
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: CLKCTRL_G19
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
	areset => \SW[1]~inputclkctrl_outclk\,
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

-- Location: IOIBUF_X30_Y29_N15
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

-- Location: PLL_3
\CLK_25M|altpll_component|auto_generated|pll1\ : cycloneiii_pll
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
	areset => \SW[1]~inputclkctrl_outclk\,
	fbin => \CLK_25M|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \CLK_25M|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \CLK_25M|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G13
\CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y24_N8
\VGApart|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~0_combout\ = \VGApart|h_count\(0) $ (VCC)
-- \VGApart|Add0~1\ = CARRY(\VGApart|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(0),
	datad => VCC,
	combout => \VGApart|Add0~0_combout\,
	cout => \VGApart|Add0~1\);

-- Location: LCCOMB_X19_Y24_N30
\VGApart|h_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|h_count~3_combout\ = (\VGApart|Add0~0_combout\ & !\VGApart|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add0~0_combout\,
	datad => \VGApart|Equal0~2_combout\,
	combout => \VGApart|h_count~3_combout\);

-- Location: FF_X19_Y24_N31
\VGApart|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|h_count~3_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(0));

-- Location: LCCOMB_X19_Y24_N10
\VGApart|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~2_combout\ = (\VGApart|h_count\(1) & (!\VGApart|Add0~1\)) # (!\VGApart|h_count\(1) & ((\VGApart|Add0~1\) # (GND)))
-- \VGApart|Add0~3\ = CARRY((!\VGApart|Add0~1\) # (!\VGApart|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(1),
	datad => VCC,
	cin => \VGApart|Add0~1\,
	combout => \VGApart|Add0~2_combout\,
	cout => \VGApart|Add0~3\);

-- Location: FF_X19_Y24_N11
\VGApart|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~2_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(1));

-- Location: LCCOMB_X19_Y24_N12
\VGApart|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~4_combout\ = (\VGApart|h_count\(2) & (\VGApart|Add0~3\ $ (GND))) # (!\VGApart|h_count\(2) & (!\VGApart|Add0~3\ & VCC))
-- \VGApart|Add0~5\ = CARRY((\VGApart|h_count\(2) & !\VGApart|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(2),
	datad => VCC,
	cin => \VGApart|Add0~3\,
	combout => \VGApart|Add0~4_combout\,
	cout => \VGApart|Add0~5\);

-- Location: FF_X19_Y24_N13
\VGApart|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~4_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(2));

-- Location: LCCOMB_X19_Y24_N14
\VGApart|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~6_combout\ = (\VGApart|h_count\(3) & (!\VGApart|Add0~5\)) # (!\VGApart|h_count\(3) & ((\VGApart|Add0~5\) # (GND)))
-- \VGApart|Add0~7\ = CARRY((!\VGApart|Add0~5\) # (!\VGApart|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(3),
	datad => VCC,
	cin => \VGApart|Add0~5\,
	combout => \VGApart|Add0~6_combout\,
	cout => \VGApart|Add0~7\);

-- Location: FF_X19_Y24_N15
\VGApart|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~6_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(3));

-- Location: LCCOMB_X19_Y24_N16
\VGApart|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~8_combout\ = (\VGApart|h_count\(4) & (\VGApart|Add0~7\ $ (GND))) # (!\VGApart|h_count\(4) & (!\VGApart|Add0~7\ & VCC))
-- \VGApart|Add0~9\ = CARRY((\VGApart|h_count\(4) & !\VGApart|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(4),
	datad => VCC,
	cin => \VGApart|Add0~7\,
	combout => \VGApart|Add0~8_combout\,
	cout => \VGApart|Add0~9\);

-- Location: FF_X19_Y24_N17
\VGApart|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~8_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(4));

-- Location: LCCOMB_X19_Y24_N18
\VGApart|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~10_combout\ = (\VGApart|h_count\(5) & (!\VGApart|Add0~9\)) # (!\VGApart|h_count\(5) & ((\VGApart|Add0~9\) # (GND)))
-- \VGApart|Add0~11\ = CARRY((!\VGApart|Add0~9\) # (!\VGApart|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(5),
	datad => VCC,
	cin => \VGApart|Add0~9\,
	combout => \VGApart|Add0~10_combout\,
	cout => \VGApart|Add0~11\);

-- Location: LCCOMB_X19_Y24_N0
\VGApart|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|h_count~2_combout\ = (!\VGApart|Equal0~2_combout\ & \VGApart|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal0~2_combout\,
	datad => \VGApart|Add0~10_combout\,
	combout => \VGApart|h_count~2_combout\);

-- Location: FF_X19_Y24_N1
\VGApart|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|h_count~2_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(5));

-- Location: LCCOMB_X19_Y24_N20
\VGApart|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~12_combout\ = (\VGApart|h_count\(6) & (\VGApart|Add0~11\ $ (GND))) # (!\VGApart|h_count\(6) & (!\VGApart|Add0~11\ & VCC))
-- \VGApart|Add0~13\ = CARRY((\VGApart|h_count\(6) & !\VGApart|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(6),
	datad => VCC,
	cin => \VGApart|Add0~11\,
	combout => \VGApart|Add0~12_combout\,
	cout => \VGApart|Add0~13\);

-- Location: FF_X19_Y24_N21
\VGApart|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~12_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(6));

-- Location: LCCOMB_X19_Y24_N22
\VGApart|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~14_combout\ = (\VGApart|h_count\(7) & (!\VGApart|Add0~13\)) # (!\VGApart|h_count\(7) & ((\VGApart|Add0~13\) # (GND)))
-- \VGApart|Add0~15\ = CARRY((!\VGApart|Add0~13\) # (!\VGApart|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(7),
	datad => VCC,
	cin => \VGApart|Add0~13\,
	combout => \VGApart|Add0~14_combout\,
	cout => \VGApart|Add0~15\);

-- Location: FF_X19_Y24_N23
\VGApart|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~14_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(7));

-- Location: LCCOMB_X19_Y24_N24
\VGApart|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~16_combout\ = (\VGApart|h_count\(8) & (\VGApart|Add0~15\ $ (GND))) # (!\VGApart|h_count\(8) & (!\VGApart|Add0~15\ & VCC))
-- \VGApart|Add0~17\ = CARRY((\VGApart|h_count\(8) & !\VGApart|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(8),
	datad => VCC,
	cin => \VGApart|Add0~15\,
	combout => \VGApart|Add0~16_combout\,
	cout => \VGApart|Add0~17\);

-- Location: LCCOMB_X19_Y24_N26
\VGApart|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~18_combout\ = \VGApart|h_count\(9) $ (\VGApart|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(9),
	cin => \VGApart|Add0~17\,
	combout => \VGApart|Add0~18_combout\);

-- Location: LCCOMB_X19_Y24_N4
\VGApart|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|h_count~1_combout\ = (\VGApart|Add0~18_combout\ & !\VGApart|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add0~18_combout\,
	datad => \VGApart|Equal0~2_combout\,
	combout => \VGApart|h_count~1_combout\);

-- Location: FF_X19_Y24_N5
\VGApart|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|h_count~1_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(9));

-- Location: LCCOMB_X19_Y23_N12
\VGApart|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal0~1_combout\ = (\VGApart|h_count\(5) & (!\VGApart|h_count\(6) & (\VGApart|h_count\(9) & !\VGApart|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|h_count\(6),
	datac => \VGApart|h_count\(9),
	datad => \VGApart|h_count\(4),
	combout => \VGApart|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y24_N0
\VGApart|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal0~0_combout\ = (!\VGApart|h_count\(2) & (!\VGApart|h_count\(0) & (!\VGApart|h_count\(3) & !\VGApart|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(2),
	datab => \VGApart|h_count\(0),
	datac => \VGApart|h_count\(3),
	datad => \VGApart|h_count\(1),
	combout => \VGApart|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y23_N4
\VGApart|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal0~2_combout\ = (\VGApart|Equal0~1_combout\ & (!\VGApart|h_count\(7) & (\VGApart|h_count\(8) & \VGApart|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal0~1_combout\,
	datab => \VGApart|h_count\(7),
	datac => \VGApart|h_count\(8),
	datad => \VGApart|Equal0~0_combout\,
	combout => \VGApart|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y24_N6
\VGApart|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|h_count~0_combout\ = (!\VGApart|Equal0~2_combout\ & \VGApart|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal0~2_combout\,
	datad => \VGApart|Add0~16_combout\,
	combout => \VGApart|h_count~0_combout\);

-- Location: FF_X19_Y24_N7
\VGApart|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|h_count~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(8));

-- Location: LCCOMB_X19_Y23_N14
\VGApart|LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|LessThan10~0_combout\ = (!\VGApart|h_count\(8) & !\VGApart|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|h_count\(8),
	datad => \VGApart|h_count\(7),
	combout => \VGApart|LessThan10~0_combout\);

-- Location: LCCOMB_X21_Y23_N10
\VGApart|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~0_combout\ = \VGApart|v_count\(0) $ (VCC)
-- \VGApart|Add1~1\ = CARRY(\VGApart|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(0),
	datad => VCC,
	combout => \VGApart|Add1~0_combout\,
	cout => \VGApart|Add1~1\);

-- Location: FF_X21_Y23_N11
\VGApart|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(0));

-- Location: LCCOMB_X21_Y23_N12
\VGApart|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~2_combout\ = (\VGApart|v_count\(1) & (!\VGApart|Add1~1\)) # (!\VGApart|v_count\(1) & ((\VGApart|Add1~1\) # (GND)))
-- \VGApart|Add1~3\ = CARRY((!\VGApart|Add1~1\) # (!\VGApart|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(1),
	datad => VCC,
	cin => \VGApart|Add1~1\,
	combout => \VGApart|Add1~2_combout\,
	cout => \VGApart|Add1~3\);

-- Location: LCCOMB_X20_Y23_N10
\VGApart|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|v_count~0_combout\ = (\VGApart|Add1~2_combout\ & !\VGApart|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add1~2_combout\,
	datad => \VGApart|Equal1~2_combout\,
	combout => \VGApart|v_count~0_combout\);

-- Location: FF_X20_Y23_N11
\VGApart|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|v_count~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(1));

-- Location: LCCOMB_X21_Y23_N14
\VGApart|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~4_combout\ = (\VGApart|v_count\(2) & (\VGApart|Add1~3\ $ (GND))) # (!\VGApart|v_count\(2) & (!\VGApart|Add1~3\ & VCC))
-- \VGApart|Add1~5\ = CARRY((\VGApart|v_count\(2) & !\VGApart|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(2),
	datad => VCC,
	cin => \VGApart|Add1~3\,
	combout => \VGApart|Add1~4_combout\,
	cout => \VGApart|Add1~5\);

-- Location: LCCOMB_X20_Y23_N4
\VGApart|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|v_count~1_combout\ = (\VGApart|Add1~4_combout\ & !\VGApart|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add1~4_combout\,
	datad => \VGApart|Equal1~2_combout\,
	combout => \VGApart|v_count~1_combout\);

-- Location: FF_X20_Y23_N5
\VGApart|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|v_count~1_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(2));

-- Location: LCCOMB_X21_Y23_N16
\VGApart|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~6_combout\ = (\VGApart|v_count\(3) & (!\VGApart|Add1~5\)) # (!\VGApart|v_count\(3) & ((\VGApart|Add1~5\) # (GND)))
-- \VGApart|Add1~7\ = CARRY((!\VGApart|Add1~5\) # (!\VGApart|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(3),
	datad => VCC,
	cin => \VGApart|Add1~5\,
	combout => \VGApart|Add1~6_combout\,
	cout => \VGApart|Add1~7\);

-- Location: LCCOMB_X20_Y23_N30
\VGApart|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|v_count~2_combout\ = (!\VGApart|Equal1~2_combout\ & \VGApart|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Equal1~2_combout\,
	datad => \VGApart|Add1~6_combout\,
	combout => \VGApart|v_count~2_combout\);

-- Location: FF_X20_Y23_N31
\VGApart|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|v_count~2_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(3));

-- Location: LCCOMB_X21_Y23_N18
\VGApart|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~8_combout\ = (\VGApart|v_count\(4) & (\VGApart|Add1~7\ $ (GND))) # (!\VGApart|v_count\(4) & (!\VGApart|Add1~7\ & VCC))
-- \VGApart|Add1~9\ = CARRY((\VGApart|v_count\(4) & !\VGApart|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(4),
	datad => VCC,
	cin => \VGApart|Add1~7\,
	combout => \VGApart|Add1~8_combout\,
	cout => \VGApart|Add1~9\);

-- Location: FF_X21_Y23_N19
\VGApart|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~8_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(4));

-- Location: LCCOMB_X21_Y23_N20
\VGApart|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~10_combout\ = (\VGApart|v_count\(5) & (!\VGApart|Add1~9\)) # (!\VGApart|v_count\(5) & ((\VGApart|Add1~9\) # (GND)))
-- \VGApart|Add1~11\ = CARRY((!\VGApart|Add1~9\) # (!\VGApart|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(5),
	datad => VCC,
	cin => \VGApart|Add1~9\,
	combout => \VGApart|Add1~10_combout\,
	cout => \VGApart|Add1~11\);

-- Location: FF_X21_Y23_N21
\VGApart|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~10_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(5));

-- Location: LCCOMB_X22_Y23_N12
\VGApart|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal1~1_combout\ = (\VGApart|v_count\(3) & (!\VGApart|v_count\(5) & (\VGApart|v_count\(2) & \VGApart|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(3),
	datab => \VGApart|v_count\(5),
	datac => \VGApart|v_count\(2),
	datad => \VGApart|v_count\(0),
	combout => \VGApart|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y23_N22
\VGApart|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~12_combout\ = (\VGApart|v_count\(6) & (\VGApart|Add1~11\ $ (GND))) # (!\VGApart|v_count\(6) & (!\VGApart|Add1~11\ & VCC))
-- \VGApart|Add1~13\ = CARRY((\VGApart|v_count\(6) & !\VGApart|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(6),
	datad => VCC,
	cin => \VGApart|Add1~11\,
	combout => \VGApart|Add1~12_combout\,
	cout => \VGApart|Add1~13\);

-- Location: FF_X21_Y23_N23
\VGApart|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~12_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(6));

-- Location: LCCOMB_X21_Y23_N24
\VGApart|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~14_combout\ = (\VGApart|v_count\(7) & (!\VGApart|Add1~13\)) # (!\VGApart|v_count\(7) & ((\VGApart|Add1~13\) # (GND)))
-- \VGApart|Add1~15\ = CARRY((!\VGApart|Add1~13\) # (!\VGApart|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(7),
	datad => VCC,
	cin => \VGApart|Add1~13\,
	combout => \VGApart|Add1~14_combout\,
	cout => \VGApart|Add1~15\);

-- Location: FF_X21_Y23_N25
\VGApart|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~14_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(7));

-- Location: LCCOMB_X21_Y23_N8
\VGApart|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal1~0_combout\ = (!\VGApart|v_count\(1) & (!\VGApart|v_count\(7) & (!\VGApart|v_count\(6) & !\VGApart|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(1),
	datab => \VGApart|v_count\(7),
	datac => \VGApart|v_count\(6),
	datad => \VGApart|v_count\(4),
	combout => \VGApart|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y23_N26
\VGApart|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~16_combout\ = (\VGApart|v_count\(8) & (\VGApart|Add1~15\ $ (GND))) # (!\VGApart|v_count\(8) & (!\VGApart|Add1~15\ & VCC))
-- \VGApart|Add1~17\ = CARRY((\VGApart|v_count\(8) & !\VGApart|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(8),
	datad => VCC,
	cin => \VGApart|Add1~15\,
	combout => \VGApart|Add1~16_combout\,
	cout => \VGApart|Add1~17\);

-- Location: FF_X21_Y23_N27
\VGApart|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~16_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(8));

-- Location: LCCOMB_X20_Y23_N16
\VGApart|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal1~2_combout\ = (\VGApart|Equal1~1_combout\ & (\VGApart|v_count\(9) & (\VGApart|Equal1~0_combout\ & !\VGApart|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal1~1_combout\,
	datab => \VGApart|v_count\(9),
	datac => \VGApart|Equal1~0_combout\,
	datad => \VGApart|v_count\(8),
	combout => \VGApart|Equal1~2_combout\);

-- Location: LCCOMB_X21_Y23_N28
\VGApart|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~18_combout\ = \VGApart|Add1~17\ $ (\VGApart|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGApart|v_count\(9),
	cin => \VGApart|Add1~17\,
	combout => \VGApart|Add1~18_combout\);

-- Location: LCCOMB_X21_Y23_N0
\VGApart|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|v_count~3_combout\ = (!\VGApart|Equal1~2_combout\ & \VGApart|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Equal1~2_combout\,
	datad => \VGApart|Add1~18_combout\,
	combout => \VGApart|v_count~3_combout\);

-- Location: FF_X21_Y23_N1
\VGApart|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|v_count~3_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(9));

-- Location: LCCOMB_X21_Y23_N6
\VGApart|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|LessThan5~0_combout\ = (\VGApart|v_count\(8) & (\VGApart|v_count\(7) & (\VGApart|v_count\(6) & \VGApart|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(8),
	datab => \VGApart|v_count\(7),
	datac => \VGApart|v_count\(6),
	datad => \VGApart|v_count\(5),
	combout => \VGApart|LessThan5~0_combout\);

-- Location: LCCOMB_X20_Y23_N24
\VGApart|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~8_combout\ = (!\VGApart|v_count\(9) & (!\VGApart|LessThan5~0_combout\ & ((\VGApart|LessThan10~0_combout\) # (!\VGApart|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|LessThan10~0_combout\,
	datab => \VGApart|v_count\(9),
	datac => \VGApart|h_count\(9),
	datad => \VGApart|LessThan5~0_combout\,
	combout => \VGApart|process_0~8_combout\);

-- Location: FF_X20_Y23_N25
\VGApart|video_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|process_0~8_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|video_on~q\);

-- Location: LCCOMB_X19_Y23_N8
\VGApart|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~6_combout\ = (!\VGApart|h_count\(6) & (\VGApart|LessThan10~0_combout\ & ((!\VGApart|h_count\(4)) # (!\VGApart|h_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|h_count\(6),
	datac => \VGApart|LessThan10~0_combout\,
	datad => \VGApart|h_count\(4),
	combout => \VGApart|process_0~6_combout\);

-- Location: LCCOMB_X19_Y23_N28
\VGApart|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|LessThan6~0_combout\ = (\VGApart|h_count\(6) & ((\VGApart|h_count\(5)) # (\VGApart|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datac => \VGApart|h_count\(6),
	datad => \VGApart|h_count\(4),
	combout => \VGApart|LessThan6~0_combout\);

-- Location: LCCOMB_X19_Y23_N16
\VGApart|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~7_combout\ = (\VGApart|h_count\(9) & (!\VGApart|process_0~6_combout\)) # (!\VGApart|h_count\(9) & (((\VGApart|LessThan10~0_combout\ & !\VGApart|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(9),
	datab => \VGApart|process_0~6_combout\,
	datac => \VGApart|LessThan10~0_combout\,
	datad => \VGApart|LessThan6~0_combout\,
	combout => \VGApart|process_0~7_combout\);

-- Location: LCCOMB_X19_Y23_N22
\VGApart|isColor~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|isColor~feeder_combout\ = \VGApart|process_0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGApart|process_0~7_combout\,
	combout => \VGApart|isColor~feeder_combout\);

-- Location: FF_X19_Y23_N23
\VGApart|isColor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|isColor~feeder_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|isColor~q\);

-- Location: LCCOMB_X21_Y23_N2
\VGApart|set_color~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~8_combout\ = (\VGApart|v_count\(1) & (\VGApart|v_count\(7) & (\VGApart|v_count\(6) & \VGApart|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(1),
	datab => \VGApart|v_count\(7),
	datac => \VGApart|v_count\(6),
	datad => \VGApart|v_count\(4),
	combout => \VGApart|set_color~8_combout\);

-- Location: LCCOMB_X20_Y23_N20
\VGApart|set_color~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~9_combout\ = (\VGApart|v_count\(3) & (((\VGApart|v_count\(2) & \VGApart|v_count\(0))) # (!\VGApart|v_count\(8)))) # (!\VGApart|v_count\(3) & (!\VGApart|v_count\(8) & ((\VGApart|v_count\(2)) # (\VGApart|v_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(3),
	datab => \VGApart|v_count\(2),
	datac => \VGApart|v_count\(0),
	datad => \VGApart|v_count\(8),
	combout => \VGApart|set_color~9_combout\);

-- Location: LCCOMB_X20_Y23_N26
\VGApart|set_color~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~10_combout\ = (\VGApart|v_count\(8) & (\VGApart|set_color~8_combout\ & ((\VGApart|set_color~9_combout\)))) # (!\VGApart|v_count\(8) & (((\VGApart|Equal1~0_combout\ & !\VGApart|set_color~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|set_color~8_combout\,
	datab => \VGApart|v_count\(8),
	datac => \VGApart|Equal1~0_combout\,
	datad => \VGApart|set_color~9_combout\,
	combout => \VGApart|set_color~10_combout\);

-- Location: LCCOMB_X20_Y23_N28
\VGApart|set_color~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~11_combout\ = (\VGApart|set_color~10_combout\ & (!\VGApart|v_count\(9) & !\VGApart|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|set_color~10_combout\,
	datab => \VGApart|v_count\(9),
	datac => \VGApart|v_count\(5),
	combout => \VGApart|set_color~11_combout\);

-- Location: LCCOMB_X20_Y24_N4
\VGApart|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~0_combout\ = (\VGApart|v_count\(0) & (\VGApart|h_count\(0) $ (VCC))) # (!\VGApart|v_count\(0) & (\VGApart|h_count\(0) & VCC))
-- \VGApart|Add5~1\ = CARRY((\VGApart|v_count\(0) & \VGApart|h_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(0),
	datab => \VGApart|h_count\(0),
	datad => VCC,
	combout => \VGApart|Add5~0_combout\,
	cout => \VGApart|Add5~1\);

-- Location: LCCOMB_X20_Y24_N6
\VGApart|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~2_combout\ = (\VGApart|h_count\(1) & ((\VGApart|v_count\(1) & (\VGApart|Add5~1\ & VCC)) # (!\VGApart|v_count\(1) & (!\VGApart|Add5~1\)))) # (!\VGApart|h_count\(1) & ((\VGApart|v_count\(1) & (!\VGApart|Add5~1\)) # (!\VGApart|v_count\(1) & 
-- ((\VGApart|Add5~1\) # (GND)))))
-- \VGApart|Add5~3\ = CARRY((\VGApart|h_count\(1) & (!\VGApart|v_count\(1) & !\VGApart|Add5~1\)) # (!\VGApart|h_count\(1) & ((!\VGApart|Add5~1\) # (!\VGApart|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(1),
	datab => \VGApart|v_count\(1),
	datad => VCC,
	cin => \VGApart|Add5~1\,
	combout => \VGApart|Add5~2_combout\,
	cout => \VGApart|Add5~3\);

-- Location: LCCOMB_X20_Y24_N8
\VGApart|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~4_combout\ = ((\VGApart|h_count\(2) $ (\VGApart|v_count\(2) $ (!\VGApart|Add5~3\)))) # (GND)
-- \VGApart|Add5~5\ = CARRY((\VGApart|h_count\(2) & ((\VGApart|v_count\(2)) # (!\VGApart|Add5~3\))) # (!\VGApart|h_count\(2) & (\VGApart|v_count\(2) & !\VGApart|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(2),
	datab => \VGApart|v_count\(2),
	datad => VCC,
	cin => \VGApart|Add5~3\,
	combout => \VGApart|Add5~4_combout\,
	cout => \VGApart|Add5~5\);

-- Location: LCCOMB_X20_Y24_N10
\VGApart|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~6_combout\ = (\VGApart|v_count\(3) & ((\VGApart|h_count\(3) & (\VGApart|Add5~5\ & VCC)) # (!\VGApart|h_count\(3) & (!\VGApart|Add5~5\)))) # (!\VGApart|v_count\(3) & ((\VGApart|h_count\(3) & (!\VGApart|Add5~5\)) # (!\VGApart|h_count\(3) & 
-- ((\VGApart|Add5~5\) # (GND)))))
-- \VGApart|Add5~7\ = CARRY((\VGApart|v_count\(3) & (!\VGApart|h_count\(3) & !\VGApart|Add5~5\)) # (!\VGApart|v_count\(3) & ((!\VGApart|Add5~5\) # (!\VGApart|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(3),
	datab => \VGApart|h_count\(3),
	datad => VCC,
	cin => \VGApart|Add5~5\,
	combout => \VGApart|Add5~6_combout\,
	cout => \VGApart|Add5~7\);

-- Location: LCCOMB_X20_Y24_N12
\VGApart|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~8_combout\ = ((\VGApart|h_count\(4) $ (\VGApart|v_count\(4) $ (!\VGApart|Add5~7\)))) # (GND)
-- \VGApart|Add5~9\ = CARRY((\VGApart|h_count\(4) & ((\VGApart|v_count\(4)) # (!\VGApart|Add5~7\))) # (!\VGApart|h_count\(4) & (\VGApart|v_count\(4) & !\VGApart|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(4),
	datab => \VGApart|v_count\(4),
	datad => VCC,
	cin => \VGApart|Add5~7\,
	combout => \VGApart|Add5~8_combout\,
	cout => \VGApart|Add5~9\);

-- Location: LCCOMB_X20_Y24_N14
\VGApart|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~10_combout\ = (\VGApart|v_count\(5) & ((\VGApart|h_count\(5) & (\VGApart|Add5~9\ & VCC)) # (!\VGApart|h_count\(5) & (!\VGApart|Add5~9\)))) # (!\VGApart|v_count\(5) & ((\VGApart|h_count\(5) & (!\VGApart|Add5~9\)) # (!\VGApart|h_count\(5) & 
-- ((\VGApart|Add5~9\) # (GND)))))
-- \VGApart|Add5~11\ = CARRY((\VGApart|v_count\(5) & (!\VGApart|h_count\(5) & !\VGApart|Add5~9\)) # (!\VGApart|v_count\(5) & ((!\VGApart|Add5~9\) # (!\VGApart|h_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(5),
	datab => \VGApart|h_count\(5),
	datad => VCC,
	cin => \VGApart|Add5~9\,
	combout => \VGApart|Add5~10_combout\,
	cout => \VGApart|Add5~11\);

-- Location: LCCOMB_X20_Y24_N16
\VGApart|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~12_combout\ = ((\VGApart|h_count\(6) $ (\VGApart|v_count\(6) $ (!\VGApart|Add5~11\)))) # (GND)
-- \VGApart|Add5~13\ = CARRY((\VGApart|h_count\(6) & ((\VGApart|v_count\(6)) # (!\VGApart|Add5~11\))) # (!\VGApart|h_count\(6) & (\VGApart|v_count\(6) & !\VGApart|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(6),
	datab => \VGApart|v_count\(6),
	datad => VCC,
	cin => \VGApart|Add5~11\,
	combout => \VGApart|Add5~12_combout\,
	cout => \VGApart|Add5~13\);

-- Location: LCCOMB_X20_Y24_N18
\VGApart|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~14_combout\ = (\VGApart|h_count\(7) & ((\VGApart|v_count\(7) & (\VGApart|Add5~13\ & VCC)) # (!\VGApart|v_count\(7) & (!\VGApart|Add5~13\)))) # (!\VGApart|h_count\(7) & ((\VGApart|v_count\(7) & (!\VGApart|Add5~13\)) # (!\VGApart|v_count\(7) & 
-- ((\VGApart|Add5~13\) # (GND)))))
-- \VGApart|Add5~15\ = CARRY((\VGApart|h_count\(7) & (!\VGApart|v_count\(7) & !\VGApart|Add5~13\)) # (!\VGApart|h_count\(7) & ((!\VGApart|Add5~13\) # (!\VGApart|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(7),
	datab => \VGApart|v_count\(7),
	datad => VCC,
	cin => \VGApart|Add5~13\,
	combout => \VGApart|Add5~14_combout\,
	cout => \VGApart|Add5~15\);

-- Location: LCCOMB_X20_Y24_N20
\VGApart|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~16_combout\ = ((\VGApart|v_count\(8) $ (\VGApart|h_count\(8) $ (!\VGApart|Add5~15\)))) # (GND)
-- \VGApart|Add5~17\ = CARRY((\VGApart|v_count\(8) & ((\VGApart|h_count\(8)) # (!\VGApart|Add5~15\))) # (!\VGApart|v_count\(8) & (\VGApart|h_count\(8) & !\VGApart|Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(8),
	datab => \VGApart|h_count\(8),
	datad => VCC,
	cin => \VGApart|Add5~15\,
	combout => \VGApart|Add5~16_combout\,
	cout => \VGApart|Add5~17\);

-- Location: LCCOMB_X20_Y24_N28
\VGApart|set_color~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~6_combout\ = (!\VGApart|Add5~8_combout\ & (!\VGApart|Add5~14_combout\ & (\VGApart|Add5~10_combout\ & !\VGApart|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Add5~8_combout\,
	datab => \VGApart|Add5~14_combout\,
	datac => \VGApart|Add5~10_combout\,
	datad => \VGApart|Add5~12_combout\,
	combout => \VGApart|set_color~6_combout\);

-- Location: LCCOMB_X20_Y24_N22
\VGApart|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~18_combout\ = \VGApart|h_count\(9) $ (\VGApart|Add5~17\ $ (\VGApart|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(9),
	datad => \VGApart|v_count\(9),
	cin => \VGApart|Add5~17\,
	combout => \VGApart|Add5~18_combout\);

-- Location: LCCOMB_X20_Y24_N2
\VGApart|set_color~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~5_combout\ = (\VGApart|Add5~6_combout\ & (\VGApart|Add5~4_combout\ & (\VGApart|Add5~0_combout\ & \VGApart|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Add5~6_combout\,
	datab => \VGApart|Add5~4_combout\,
	datac => \VGApart|Add5~0_combout\,
	datad => \VGApart|Add5~2_combout\,
	combout => \VGApart|set_color~5_combout\);

-- Location: LCCOMB_X20_Y24_N30
\VGApart|set_color~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~7_combout\ = (!\VGApart|Add5~16_combout\ & (\VGApart|set_color~6_combout\ & (\VGApart|Add5~18_combout\ & \VGApart|set_color~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Add5~16_combout\,
	datab => \VGApart|set_color~6_combout\,
	datac => \VGApart|Add5~18_combout\,
	datad => \VGApart|set_color~5_combout\,
	combout => \VGApart|set_color~7_combout\);

-- Location: LCCOMB_X21_Y24_N6
\VGApart|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~0_combout\ = (\VGApart|h_count\(0) & ((GND) # (!\VGApart|v_count\(0)))) # (!\VGApart|h_count\(0) & (\VGApart|v_count\(0) $ (GND)))
-- \VGApart|Add4~1\ = CARRY((\VGApart|h_count\(0)) # (!\VGApart|v_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(0),
	datab => \VGApart|v_count\(0),
	datad => VCC,
	combout => \VGApart|Add4~0_combout\,
	cout => \VGApart|Add4~1\);

-- Location: LCCOMB_X21_Y24_N8
\VGApart|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~2_combout\ = (\VGApart|h_count\(1) & ((\VGApart|v_count\(1) & (!\VGApart|Add4~1\)) # (!\VGApart|v_count\(1) & (\VGApart|Add4~1\ & VCC)))) # (!\VGApart|h_count\(1) & ((\VGApart|v_count\(1) & ((\VGApart|Add4~1\) # (GND))) # 
-- (!\VGApart|v_count\(1) & (!\VGApart|Add4~1\))))
-- \VGApart|Add4~3\ = CARRY((\VGApart|h_count\(1) & (\VGApart|v_count\(1) & !\VGApart|Add4~1\)) # (!\VGApart|h_count\(1) & ((\VGApart|v_count\(1)) # (!\VGApart|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(1),
	datab => \VGApart|v_count\(1),
	datad => VCC,
	cin => \VGApart|Add4~1\,
	combout => \VGApart|Add4~2_combout\,
	cout => \VGApart|Add4~3\);

-- Location: LCCOMB_X21_Y24_N10
\VGApart|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~4_combout\ = ((\VGApart|v_count\(2) $ (\VGApart|h_count\(2) $ (\VGApart|Add4~3\)))) # (GND)
-- \VGApart|Add4~5\ = CARRY((\VGApart|v_count\(2) & (\VGApart|h_count\(2) & !\VGApart|Add4~3\)) # (!\VGApart|v_count\(2) & ((\VGApart|h_count\(2)) # (!\VGApart|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(2),
	datab => \VGApart|h_count\(2),
	datad => VCC,
	cin => \VGApart|Add4~3\,
	combout => \VGApart|Add4~4_combout\,
	cout => \VGApart|Add4~5\);

-- Location: LCCOMB_X21_Y24_N12
\VGApart|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~6_combout\ = (\VGApart|h_count\(3) & ((\VGApart|v_count\(3) & (!\VGApart|Add4~5\)) # (!\VGApart|v_count\(3) & (\VGApart|Add4~5\ & VCC)))) # (!\VGApart|h_count\(3) & ((\VGApart|v_count\(3) & ((\VGApart|Add4~5\) # (GND))) # 
-- (!\VGApart|v_count\(3) & (!\VGApart|Add4~5\))))
-- \VGApart|Add4~7\ = CARRY((\VGApart|h_count\(3) & (\VGApart|v_count\(3) & !\VGApart|Add4~5\)) # (!\VGApart|h_count\(3) & ((\VGApart|v_count\(3)) # (!\VGApart|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(3),
	datab => \VGApart|v_count\(3),
	datad => VCC,
	cin => \VGApart|Add4~5\,
	combout => \VGApart|Add4~6_combout\,
	cout => \VGApart|Add4~7\);

-- Location: LCCOMB_X21_Y24_N26
\VGApart|set_color~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~2_combout\ = (!\VGApart|Add4~4_combout\ & (!\VGApart|Add4~6_combout\ & (!\VGApart|Add4~2_combout\ & !\VGApart|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Add4~4_combout\,
	datab => \VGApart|Add4~6_combout\,
	datac => \VGApart|Add4~2_combout\,
	datad => \VGApart|Add4~0_combout\,
	combout => \VGApart|set_color~2_combout\);

-- Location: LCCOMB_X21_Y24_N14
\VGApart|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~8_combout\ = ((\VGApart|v_count\(4) $ (\VGApart|h_count\(4) $ (\VGApart|Add4~7\)))) # (GND)
-- \VGApart|Add4~9\ = CARRY((\VGApart|v_count\(4) & (\VGApart|h_count\(4) & !\VGApart|Add4~7\)) # (!\VGApart|v_count\(4) & ((\VGApart|h_count\(4)) # (!\VGApart|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(4),
	datab => \VGApart|h_count\(4),
	datad => VCC,
	cin => \VGApart|Add4~7\,
	combout => \VGApart|Add4~8_combout\,
	cout => \VGApart|Add4~9\);

-- Location: LCCOMB_X21_Y24_N16
\VGApart|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~10_combout\ = (\VGApart|h_count\(5) & ((\VGApart|v_count\(5) & (!\VGApart|Add4~9\)) # (!\VGApart|v_count\(5) & (\VGApart|Add4~9\ & VCC)))) # (!\VGApart|h_count\(5) & ((\VGApart|v_count\(5) & ((\VGApart|Add4~9\) # (GND))) # 
-- (!\VGApart|v_count\(5) & (!\VGApart|Add4~9\))))
-- \VGApart|Add4~11\ = CARRY((\VGApart|h_count\(5) & (\VGApart|v_count\(5) & !\VGApart|Add4~9\)) # (!\VGApart|h_count\(5) & ((\VGApart|v_count\(5)) # (!\VGApart|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|v_count\(5),
	datad => VCC,
	cin => \VGApart|Add4~9\,
	combout => \VGApart|Add4~10_combout\,
	cout => \VGApart|Add4~11\);

-- Location: LCCOMB_X21_Y24_N18
\VGApart|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~12_combout\ = ((\VGApart|h_count\(6) $ (\VGApart|v_count\(6) $ (\VGApart|Add4~11\)))) # (GND)
-- \VGApart|Add4~13\ = CARRY((\VGApart|h_count\(6) & ((!\VGApart|Add4~11\) # (!\VGApart|v_count\(6)))) # (!\VGApart|h_count\(6) & (!\VGApart|v_count\(6) & !\VGApart|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(6),
	datab => \VGApart|v_count\(6),
	datad => VCC,
	cin => \VGApart|Add4~11\,
	combout => \VGApart|Add4~12_combout\,
	cout => \VGApart|Add4~13\);

-- Location: LCCOMB_X21_Y24_N20
\VGApart|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~14_combout\ = (\VGApart|v_count\(7) & ((\VGApart|h_count\(7) & (!\VGApart|Add4~13\)) # (!\VGApart|h_count\(7) & ((\VGApart|Add4~13\) # (GND))))) # (!\VGApart|v_count\(7) & ((\VGApart|h_count\(7) & (\VGApart|Add4~13\ & VCC)) # 
-- (!\VGApart|h_count\(7) & (!\VGApart|Add4~13\))))
-- \VGApart|Add4~15\ = CARRY((\VGApart|v_count\(7) & ((!\VGApart|Add4~13\) # (!\VGApart|h_count\(7)))) # (!\VGApart|v_count\(7) & (!\VGApart|h_count\(7) & !\VGApart|Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(7),
	datab => \VGApart|h_count\(7),
	datad => VCC,
	cin => \VGApart|Add4~13\,
	combout => \VGApart|Add4~14_combout\,
	cout => \VGApart|Add4~15\);

-- Location: LCCOMB_X21_Y24_N22
\VGApart|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~16_combout\ = ((\VGApart|v_count\(8) $ (\VGApart|h_count\(8) $ (\VGApart|Add4~15\)))) # (GND)
-- \VGApart|Add4~17\ = CARRY((\VGApart|v_count\(8) & (\VGApart|h_count\(8) & !\VGApart|Add4~15\)) # (!\VGApart|v_count\(8) & ((\VGApart|h_count\(8)) # (!\VGApart|Add4~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(8),
	datab => \VGApart|h_count\(8),
	datad => VCC,
	cin => \VGApart|Add4~15\,
	combout => \VGApart|Add4~16_combout\,
	cout => \VGApart|Add4~17\);

-- Location: LCCOMB_X21_Y24_N24
\VGApart|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~18_combout\ = \VGApart|h_count\(9) $ (\VGApart|Add4~17\ $ (!\VGApart|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(9),
	datad => \VGApart|v_count\(9),
	cin => \VGApart|Add4~17\,
	combout => \VGApart|Add4~18_combout\);

-- Location: LCCOMB_X21_Y24_N0
\VGApart|set_color~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~3_combout\ = (!\VGApart|Add4~14_combout\ & (!\VGApart|Add4~10_combout\ & (\VGApart|Add4~8_combout\ & \VGApart|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Add4~14_combout\,
	datab => \VGApart|Add4~10_combout\,
	datac => \VGApart|Add4~8_combout\,
	datad => \VGApart|Add4~12_combout\,
	combout => \VGApart|set_color~3_combout\);

-- Location: LCCOMB_X21_Y24_N30
\VGApart|set_color~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~4_combout\ = (\VGApart|set_color~2_combout\ & (!\VGApart|Add4~18_combout\ & (!\VGApart|Add4~16_combout\ & \VGApart|set_color~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|set_color~2_combout\,
	datab => \VGApart|Add4~18_combout\,
	datac => \VGApart|Add4~16_combout\,
	datad => \VGApart|set_color~3_combout\,
	combout => \VGApart|set_color~4_combout\);

-- Location: LCCOMB_X20_Y23_N2
\VGApart|set_color~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~12_combout\ = (!\VGApart|process_0~7_combout\ & ((\VGApart|set_color~11_combout\) # ((\VGApart|set_color~7_combout\) # (\VGApart|set_color~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~7_combout\,
	datab => \VGApart|set_color~11_combout\,
	datac => \VGApart|set_color~7_combout\,
	datad => \VGApart|set_color~4_combout\,
	combout => \VGApart|set_color~12_combout\);

-- Location: LCCOMB_X20_Y24_N26
\VGApart|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|LessThan9~0_combout\ = (\VGApart|h_count\(2) & (\VGApart|h_count\(0) & (\VGApart|h_count\(3) & \VGApart|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(2),
	datab => \VGApart|h_count\(0),
	datac => \VGApart|h_count\(3),
	datad => \VGApart|h_count\(1),
	combout => \VGApart|LessThan9~0_combout\);

-- Location: LCCOMB_X19_Y23_N26
\VGApart|set_color~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~0_combout\ = (!\VGApart|h_count\(5) & (\VGApart|h_count\(6) & (!\VGApart|h_count\(9) & \VGApart|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|h_count\(6),
	datac => \VGApart|h_count\(9),
	datad => \VGApart|h_count\(4),
	combout => \VGApart|set_color~0_combout\);

-- Location: LCCOMB_X19_Y23_N30
\VGApart|set_color~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~1_combout\ = (\VGApart|Equal0~1_combout\ & ((\VGApart|LessThan9~0_combout\) # ((\VGApart|set_color~0_combout\ & \VGApart|Equal0~0_combout\)))) # (!\VGApart|Equal0~1_combout\ & (((\VGApart|set_color~0_combout\ & 
-- \VGApart|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal0~1_combout\,
	datab => \VGApart|LessThan9~0_combout\,
	datac => \VGApart|set_color~0_combout\,
	datad => \VGApart|Equal0~0_combout\,
	combout => \VGApart|set_color~1_combout\);

-- Location: IOIBUF_X21_Y29_N8
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X19_Y23_N20
\VGApart|set_color~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~13_combout\ = (\SW[4]~input_o\ & ((\VGApart|set_color~12_combout\) # ((\VGApart|LessThan10~0_combout\ & \VGApart|set_color~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|set_color~12_combout\,
	datab => \VGApart|LessThan10~0_combout\,
	datac => \VGApart|set_color~1_combout\,
	datad => \SW[4]~input_o\,
	combout => \VGApart|set_color~13_combout\);

-- Location: FF_X19_Y23_N21
\VGApart|set_color\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|set_color~13_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|set_color~q\);

-- Location: LCCOMB_X12_Y13_N20
\VGApart|red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~0_combout\ = (\VGApart|video_on~q\ & (!\VGApart|isColor~q\ & !\VGApart|set_color~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|video_on~q\,
	datab => \VGApart|isColor~q\,
	datad => \VGApart|set_color~q\,
	combout => \VGApart|red~0_combout\);

-- Location: LCCOMB_X23_Y13_N20
\VGApart|green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~0_combout\ = (\VGApart|isColor~q\ & \VGApart|video_on~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|isColor~q\,
	datad => \VGApart|video_on~q\,
	combout => \VGApart|green~0_combout\);

-- Location: IOIBUF_X23_Y0_N22
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X19_Y23_N10
\VGApart|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~11_combout\ = (!\VGApart|h_count\(9) & (!\VGApart|h_count\(8) & !\VGApart|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(9),
	datac => \VGApart|h_count\(8),
	datad => \VGApart|h_count\(7),
	combout => \VGApart|process_0~11_combout\);

-- Location: LCCOMB_X19_Y23_N18
\VGApart|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|LessThan9~1_combout\ = (\VGApart|h_count\(9) & (((\VGApart|h_count\(5) & \VGApart|LessThan9~0_combout\)) # (!\VGApart|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|process_0~6_combout\,
	datac => \VGApart|h_count\(9),
	datad => \VGApart|LessThan9~0_combout\,
	combout => \VGApart|LessThan9~1_combout\);

-- Location: LCCOMB_X20_Y23_N12
\VGApart|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|LessThan5~1_combout\ = (\VGApart|v_count\(9)) # (\VGApart|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|v_count\(9),
	datad => \VGApart|LessThan5~0_combout\,
	combout => \VGApart|LessThan5~1_combout\);

-- Location: LCCOMB_X20_Y23_N6
\VGApart|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~10_combout\ = (\VGApart|h_count\(6) & ((\VGApart|h_count\(4)) # ((\VGApart|LessThan9~0_combout\) # (\VGApart|h_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(6),
	datab => \VGApart|h_count\(4),
	datac => \VGApart|LessThan9~0_combout\,
	datad => \VGApart|h_count\(5),
	combout => \VGApart|process_0~10_combout\);

-- Location: LCCOMB_X19_Y23_N6
\VGApart|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~12_combout\ = (!\VGApart|LessThan9~1_combout\ & (!\VGApart|LessThan5~1_combout\ & ((\VGApart|process_0~10_combout\) # (!\VGApart|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~11_combout\,
	datab => \VGApart|LessThan9~1_combout\,
	datac => \VGApart|LessThan5~1_combout\,
	datad => \VGApart|process_0~10_combout\,
	combout => \VGApart|process_0~12_combout\);

-- Location: FF_X19_Y23_N7
\VGApart|enarRAMclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|process_0~12_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|enarRAMclk~q\);

-- Location: LCCOMB_X19_Y23_N24
rRAMclk : cycloneiii_lcell_comb
-- Equation(s):
-- \rRAMclk~combout\ = LCELL((!GLOBAL(\CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\) & \VGApart|enarRAMclk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datad => \VGApart|enarRAMclk~q\,
	combout => \rRAMclk~combout\);

-- Location: CLKCTRL_G11
\rRAMclk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rRAMclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rRAMclk~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y23_N18
\VGApart|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~9_combout\ = (\VGApart|v_count\(9)) # ((\VGApart|v_count\(0)) # (\VGApart|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(9),
	datac => \VGApart|v_count\(0),
	datad => \VGApart|LessThan5~0_combout\,
	combout => \VGApart|process_0~9_combout\);

-- Location: LCCOMB_X20_Y21_N0
\VGApart|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~0_combout\ = \VGApart|RAM_adr1\(0) $ (VCC)
-- \VGApart|Add3~1\ = CARRY(\VGApart|RAM_adr1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(0),
	datad => VCC,
	combout => \VGApart|Add3~0_combout\,
	cout => \VGApart|Add3~1\);

-- Location: LCCOMB_X20_Y23_N14
\VGApart|RAM_adr1[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1[15]~1_combout\ = (\VGApart|h_count\(0) & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|h_count\(0),
	datad => \SW[1]~input_o\,
	combout => \VGApart|RAM_adr1[15]~1_combout\);

-- Location: LCCOMB_X20_Y23_N0
\VGApart|RAM_adr1[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1[15]~2_combout\ = (!\VGApart|process_0~7_combout\ & (\VGApart|RAM_adr1[15]~1_combout\ & (\VGApart|v_count\(0) & !\VGApart|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~7_combout\,
	datab => \VGApart|RAM_adr1[15]~1_combout\,
	datac => \VGApart|v_count\(0),
	datad => \VGApart|LessThan5~1_combout\,
	combout => \VGApart|RAM_adr1[15]~2_combout\);

-- Location: FF_X20_Y21_N1
\VGApart|RAM_adr1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~0_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(0));

-- Location: LCCOMB_X20_Y21_N2
\VGApart|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~2_combout\ = (\VGApart|RAM_adr1\(1) & (!\VGApart|Add3~1\)) # (!\VGApart|RAM_adr1\(1) & ((\VGApart|Add3~1\) # (GND)))
-- \VGApart|Add3~3\ = CARRY((!\VGApart|Add3~1\) # (!\VGApart|RAM_adr1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(1),
	datad => VCC,
	cin => \VGApart|Add3~1\,
	combout => \VGApart|Add3~2_combout\,
	cout => \VGApart|Add3~3\);

-- Location: FF_X20_Y21_N3
\VGApart|RAM_adr1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~2_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(1));

-- Location: LCCOMB_X20_Y21_N4
\VGApart|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~4_combout\ = (\VGApart|RAM_adr1\(2) & (\VGApart|Add3~3\ $ (GND))) # (!\VGApart|RAM_adr1\(2) & (!\VGApart|Add3~3\ & VCC))
-- \VGApart|Add3~5\ = CARRY((\VGApart|RAM_adr1\(2) & !\VGApart|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(2),
	datad => VCC,
	cin => \VGApart|Add3~3\,
	combout => \VGApart|Add3~4_combout\,
	cout => \VGApart|Add3~5\);

-- Location: FF_X20_Y21_N5
\VGApart|RAM_adr1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~4_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(2));

-- Location: LCCOMB_X20_Y21_N6
\VGApart|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~6_combout\ = (\VGApart|RAM_adr1\(3) & (!\VGApart|Add3~5\)) # (!\VGApart|RAM_adr1\(3) & ((\VGApart|Add3~5\) # (GND)))
-- \VGApart|Add3~7\ = CARRY((!\VGApart|Add3~5\) # (!\VGApart|RAM_adr1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(3),
	datad => VCC,
	cin => \VGApart|Add3~5\,
	combout => \VGApart|Add3~6_combout\,
	cout => \VGApart|Add3~7\);

-- Location: FF_X20_Y21_N7
\VGApart|RAM_adr1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~6_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(3));

-- Location: LCCOMB_X20_Y21_N8
\VGApart|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~8_combout\ = (\VGApart|RAM_adr1\(4) & (\VGApart|Add3~7\ $ (GND))) # (!\VGApart|RAM_adr1\(4) & (!\VGApart|Add3~7\ & VCC))
-- \VGApart|Add3~9\ = CARRY((\VGApart|RAM_adr1\(4) & !\VGApart|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(4),
	datad => VCC,
	cin => \VGApart|Add3~7\,
	combout => \VGApart|Add3~8_combout\,
	cout => \VGApart|Add3~9\);

-- Location: FF_X20_Y21_N9
\VGApart|RAM_adr1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~8_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(4));

-- Location: LCCOMB_X20_Y21_N10
\VGApart|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~10_combout\ = (\VGApart|RAM_adr1\(5) & (!\VGApart|Add3~9\)) # (!\VGApart|RAM_adr1\(5) & ((\VGApart|Add3~9\) # (GND)))
-- \VGApart|Add3~11\ = CARRY((!\VGApart|Add3~9\) # (!\VGApart|RAM_adr1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(5),
	datad => VCC,
	cin => \VGApart|Add3~9\,
	combout => \VGApart|Add3~10_combout\,
	cout => \VGApart|Add3~11\);

-- Location: FF_X20_Y21_N11
\VGApart|RAM_adr1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~10_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(5));

-- Location: LCCOMB_X20_Y21_N12
\VGApart|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~12_combout\ = (\VGApart|RAM_adr1\(6) & (\VGApart|Add3~11\ $ (GND))) # (!\VGApart|RAM_adr1\(6) & (!\VGApart|Add3~11\ & VCC))
-- \VGApart|Add3~13\ = CARRY((\VGApart|RAM_adr1\(6) & !\VGApart|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(6),
	datad => VCC,
	cin => \VGApart|Add3~11\,
	combout => \VGApart|Add3~12_combout\,
	cout => \VGApart|Add3~13\);

-- Location: FF_X20_Y21_N13
\VGApart|RAM_adr1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~12_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(6));

-- Location: LCCOMB_X20_Y21_N14
\VGApart|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~14_combout\ = (\VGApart|RAM_adr1\(7) & (!\VGApart|Add3~13\)) # (!\VGApart|RAM_adr1\(7) & ((\VGApart|Add3~13\) # (GND)))
-- \VGApart|Add3~15\ = CARRY((!\VGApart|Add3~13\) # (!\VGApart|RAM_adr1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(7),
	datad => VCC,
	cin => \VGApart|Add3~13\,
	combout => \VGApart|Add3~14_combout\,
	cout => \VGApart|Add3~15\);

-- Location: FF_X20_Y21_N15
\VGApart|RAM_adr1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~14_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(7));

-- Location: LCCOMB_X20_Y21_N16
\VGApart|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~16_combout\ = (\VGApart|RAM_adr1\(8) & (\VGApart|Add3~15\ $ (GND))) # (!\VGApart|RAM_adr1\(8) & (!\VGApart|Add3~15\ & VCC))
-- \VGApart|Add3~17\ = CARRY((\VGApart|RAM_adr1\(8) & !\VGApart|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(8),
	datad => VCC,
	cin => \VGApart|Add3~15\,
	combout => \VGApart|Add3~16_combout\,
	cout => \VGApart|Add3~17\);

-- Location: LCCOMB_X21_Y21_N12
\VGApart|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~2_combout\ = (!\VGApart|RAM_adr1\(8) & (!\VGApart|RAM_adr1\(10) & (!\VGApart|RAM_adr1\(9) & !\VGApart|RAM_adr1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(8),
	datab => \VGApart|RAM_adr1\(10),
	datac => \VGApart|RAM_adr1\(9),
	datad => \VGApart|RAM_adr1\(11),
	combout => \VGApart|Equal3~2_combout\);

-- Location: LCCOMB_X21_Y21_N2
\VGApart|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~0_combout\ = (\VGApart|RAM_adr1\(0) & (\VGApart|RAM_adr1\(3) & (\VGApart|RAM_adr1\(2) & \VGApart|RAM_adr1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(0),
	datab => \VGApart|RAM_adr1\(3),
	datac => \VGApart|RAM_adr1\(2),
	datad => \VGApart|RAM_adr1\(1),
	combout => \VGApart|Equal3~0_combout\);

-- Location: LCCOMB_X20_Y20_N26
\VGApart|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~1_combout\ = (\VGApart|RAM_adr1\(5) & (\VGApart|RAM_adr1\(7) & (\VGApart|RAM_adr1\(4) & \VGApart|RAM_adr1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(5),
	datab => \VGApart|RAM_adr1\(7),
	datac => \VGApart|RAM_adr1\(4),
	datad => \VGApart|RAM_adr1\(6),
	combout => \VGApart|Equal3~1_combout\);

-- Location: LCCOMB_X21_Y21_N10
\VGApart|Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~3_combout\ = (\VGApart|RAM_adr1\(13) & (!\VGApart|RAM_adr1\(12) & (\VGApart|RAM_adr1\(15) & \VGApart|RAM_adr1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(13),
	datab => \VGApart|RAM_adr1\(12),
	datac => \VGApart|RAM_adr1\(15),
	datad => \VGApart|RAM_adr1\(14),
	combout => \VGApart|Equal3~3_combout\);

-- Location: LCCOMB_X21_Y21_N0
\VGApart|Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~4_combout\ = (\VGApart|Equal3~2_combout\ & (\VGApart|Equal3~0_combout\ & (\VGApart|Equal3~1_combout\ & \VGApart|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal3~2_combout\,
	datab => \VGApart|Equal3~0_combout\,
	datac => \VGApart|Equal3~1_combout\,
	datad => \VGApart|Equal3~3_combout\,
	combout => \VGApart|Equal3~4_combout\);

-- Location: LCCOMB_X21_Y21_N16
\VGApart|RAM_adr1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1~5_combout\ = (\VGApart|Add3~16_combout\ & !\VGApart|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add3~16_combout\,
	datad => \VGApart|Equal3~4_combout\,
	combout => \VGApart|RAM_adr1~5_combout\);

-- Location: FF_X21_Y21_N17
\VGApart|RAM_adr1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAM_adr1~5_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(8));

-- Location: LCCOMB_X20_Y21_N18
\VGApart|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~18_combout\ = (\VGApart|RAM_adr1\(9) & (!\VGApart|Add3~17\)) # (!\VGApart|RAM_adr1\(9) & ((\VGApart|Add3~17\) # (GND)))
-- \VGApart|Add3~19\ = CARRY((!\VGApart|Add3~17\) # (!\VGApart|RAM_adr1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(9),
	datad => VCC,
	cin => \VGApart|Add3~17\,
	combout => \VGApart|Add3~18_combout\,
	cout => \VGApart|Add3~19\);

-- Location: FF_X20_Y21_N19
\VGApart|RAM_adr1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~18_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(9));

-- Location: LCCOMB_X20_Y21_N20
\VGApart|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~20_combout\ = (\VGApart|RAM_adr1\(10) & (\VGApart|Add3~19\ $ (GND))) # (!\VGApart|RAM_adr1\(10) & (!\VGApart|Add3~19\ & VCC))
-- \VGApart|Add3~21\ = CARRY((\VGApart|RAM_adr1\(10) & !\VGApart|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(10),
	datad => VCC,
	cin => \VGApart|Add3~19\,
	combout => \VGApart|Add3~20_combout\,
	cout => \VGApart|Add3~21\);

-- Location: FF_X20_Y21_N21
\VGApart|RAM_adr1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~20_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(10));

-- Location: LCCOMB_X20_Y21_N22
\VGApart|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~22_combout\ = (\VGApart|RAM_adr1\(11) & (!\VGApart|Add3~21\)) # (!\VGApart|RAM_adr1\(11) & ((\VGApart|Add3~21\) # (GND)))
-- \VGApart|Add3~23\ = CARRY((!\VGApart|Add3~21\) # (!\VGApart|RAM_adr1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(11),
	datad => VCC,
	cin => \VGApart|Add3~21\,
	combout => \VGApart|Add3~22_combout\,
	cout => \VGApart|Add3~23\);

-- Location: FF_X20_Y21_N23
\VGApart|RAM_adr1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~22_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(11));

-- Location: LCCOMB_X20_Y21_N24
\VGApart|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~24_combout\ = (\VGApart|RAM_adr1\(12) & (\VGApart|Add3~23\ $ (GND))) # (!\VGApart|RAM_adr1\(12) & (!\VGApart|Add3~23\ & VCC))
-- \VGApart|Add3~25\ = CARRY((\VGApart|RAM_adr1\(12) & !\VGApart|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(12),
	datad => VCC,
	cin => \VGApart|Add3~23\,
	combout => \VGApart|Add3~24_combout\,
	cout => \VGApart|Add3~25\);

-- Location: FF_X20_Y21_N25
\VGApart|RAM_adr1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add3~24_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(12));

-- Location: LCCOMB_X20_Y21_N26
\VGApart|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~26_combout\ = (\VGApart|RAM_adr1\(13) & (!\VGApart|Add3~25\)) # (!\VGApart|RAM_adr1\(13) & ((\VGApart|Add3~25\) # (GND)))
-- \VGApart|Add3~27\ = CARRY((!\VGApart|Add3~25\) # (!\VGApart|RAM_adr1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(13),
	datad => VCC,
	cin => \VGApart|Add3~25\,
	combout => \VGApart|Add3~26_combout\,
	cout => \VGApart|Add3~27\);

-- Location: LCCOMB_X21_Y21_N6
\VGApart|RAM_adr1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1~4_combout\ = (\VGApart|Add3~26_combout\ & !\VGApart|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add3~26_combout\,
	datad => \VGApart|Equal3~4_combout\,
	combout => \VGApart|RAM_adr1~4_combout\);

-- Location: FF_X21_Y21_N7
\VGApart|RAM_adr1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAM_adr1~4_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(13));

-- Location: LCCOMB_X20_Y21_N28
\VGApart|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~28_combout\ = (\VGApart|RAM_adr1\(14) & (\VGApart|Add3~27\ $ (GND))) # (!\VGApart|RAM_adr1\(14) & (!\VGApart|Add3~27\ & VCC))
-- \VGApart|Add3~29\ = CARRY((\VGApart|RAM_adr1\(14) & !\VGApart|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(14),
	datad => VCC,
	cin => \VGApart|Add3~27\,
	combout => \VGApart|Add3~28_combout\,
	cout => \VGApart|Add3~29\);

-- Location: LCCOMB_X21_Y21_N20
\VGApart|RAM_adr1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1~3_combout\ = (\VGApart|Add3~28_combout\ & !\VGApart|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Add3~28_combout\,
	datad => \VGApart|Equal3~4_combout\,
	combout => \VGApart|RAM_adr1~3_combout\);

-- Location: FF_X21_Y21_N21
\VGApart|RAM_adr1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAM_adr1~3_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(14));

-- Location: LCCOMB_X20_Y21_N30
\VGApart|Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~30_combout\ = \VGApart|Add3~29\ $ (\VGApart|RAM_adr1\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGApart|RAM_adr1\(15),
	cin => \VGApart|Add3~29\,
	combout => \VGApart|Add3~30_combout\);

-- Location: LCCOMB_X21_Y21_N22
\VGApart|RAM_adr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1~0_combout\ = (\VGApart|Add3~30_combout\ & !\VGApart|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add3~30_combout\,
	datad => \VGApart|Equal3~4_combout\,
	combout => \VGApart|RAM_adr1~0_combout\);

-- Location: FF_X21_Y21_N23
\VGApart|RAM_adr1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAM_adr1~0_combout\,
	ena => \VGApart|RAM_adr1[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr1\(15));

-- Location: LCCOMB_X21_Y20_N0
\VGApart|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~0_combout\ = \VGApart|RAM_adr0\(0) $ (VCC)
-- \VGApart|Add2~1\ = CARRY(\VGApart|RAM_adr0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(0),
	datad => VCC,
	combout => \VGApart|Add2~0_combout\,
	cout => \VGApart|Add2~1\);

-- Location: LCCOMB_X20_Y23_N22
\VGApart|RAM_adr0[15]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0[15]~6_combout\ = (!\VGApart|process_0~7_combout\ & (!\VGApart|process_0~9_combout\ & (\VGApart|h_count\(0) & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~7_combout\,
	datab => \VGApart|process_0~9_combout\,
	datac => \VGApart|h_count\(0),
	datad => \SW[1]~input_o\,
	combout => \VGApart|RAM_adr0[15]~6_combout\);

-- Location: FF_X21_Y20_N1
\VGApart|RAM_adr0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~0_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(0));

-- Location: LCCOMB_X21_Y20_N2
\VGApart|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~2_combout\ = (\VGApart|RAM_adr0\(1) & (!\VGApart|Add2~1\)) # (!\VGApart|RAM_adr0\(1) & ((\VGApart|Add2~1\) # (GND)))
-- \VGApart|Add2~3\ = CARRY((!\VGApart|Add2~1\) # (!\VGApart|RAM_adr0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(1),
	datad => VCC,
	cin => \VGApart|Add2~1\,
	combout => \VGApart|Add2~2_combout\,
	cout => \VGApart|Add2~3\);

-- Location: FF_X21_Y20_N3
\VGApart|RAM_adr0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~2_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(1));

-- Location: LCCOMB_X21_Y20_N4
\VGApart|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~4_combout\ = (\VGApart|RAM_adr0\(2) & (\VGApart|Add2~3\ $ (GND))) # (!\VGApart|RAM_adr0\(2) & (!\VGApart|Add2~3\ & VCC))
-- \VGApart|Add2~5\ = CARRY((\VGApart|RAM_adr0\(2) & !\VGApart|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(2),
	datad => VCC,
	cin => \VGApart|Add2~3\,
	combout => \VGApart|Add2~4_combout\,
	cout => \VGApart|Add2~5\);

-- Location: FF_X21_Y20_N5
\VGApart|RAM_adr0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~4_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(2));

-- Location: LCCOMB_X21_Y20_N6
\VGApart|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~6_combout\ = (\VGApart|RAM_adr0\(3) & (!\VGApart|Add2~5\)) # (!\VGApart|RAM_adr0\(3) & ((\VGApart|Add2~5\) # (GND)))
-- \VGApart|Add2~7\ = CARRY((!\VGApart|Add2~5\) # (!\VGApart|RAM_adr0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(3),
	datad => VCC,
	cin => \VGApart|Add2~5\,
	combout => \VGApart|Add2~6_combout\,
	cout => \VGApart|Add2~7\);

-- Location: FF_X21_Y20_N7
\VGApart|RAM_adr0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~6_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(3));

-- Location: LCCOMB_X21_Y20_N8
\VGApart|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~8_combout\ = (\VGApart|RAM_adr0\(4) & (\VGApart|Add2~7\ $ (GND))) # (!\VGApart|RAM_adr0\(4) & (!\VGApart|Add2~7\ & VCC))
-- \VGApart|Add2~9\ = CARRY((\VGApart|RAM_adr0\(4) & !\VGApart|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(4),
	datad => VCC,
	cin => \VGApart|Add2~7\,
	combout => \VGApart|Add2~8_combout\,
	cout => \VGApart|Add2~9\);

-- Location: FF_X21_Y20_N9
\VGApart|RAM_adr0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~8_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(4));

-- Location: LCCOMB_X21_Y20_N10
\VGApart|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~10_combout\ = (\VGApart|RAM_adr0\(5) & (!\VGApart|Add2~9\)) # (!\VGApart|RAM_adr0\(5) & ((\VGApart|Add2~9\) # (GND)))
-- \VGApart|Add2~11\ = CARRY((!\VGApart|Add2~9\) # (!\VGApart|RAM_adr0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(5),
	datad => VCC,
	cin => \VGApart|Add2~9\,
	combout => \VGApart|Add2~10_combout\,
	cout => \VGApart|Add2~11\);

-- Location: FF_X21_Y20_N11
\VGApart|RAM_adr0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~10_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(5));

-- Location: LCCOMB_X21_Y20_N12
\VGApart|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~12_combout\ = (\VGApart|RAM_adr0\(6) & (\VGApart|Add2~11\ $ (GND))) # (!\VGApart|RAM_adr0\(6) & (!\VGApart|Add2~11\ & VCC))
-- \VGApart|Add2~13\ = CARRY((\VGApart|RAM_adr0\(6) & !\VGApart|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(6),
	datad => VCC,
	cin => \VGApart|Add2~11\,
	combout => \VGApart|Add2~12_combout\,
	cout => \VGApart|Add2~13\);

-- Location: FF_X21_Y20_N13
\VGApart|RAM_adr0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~12_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(6));

-- Location: LCCOMB_X21_Y20_N14
\VGApart|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~14_combout\ = (\VGApart|RAM_adr0\(7) & (!\VGApart|Add2~13\)) # (!\VGApart|RAM_adr0\(7) & ((\VGApart|Add2~13\) # (GND)))
-- \VGApart|Add2~15\ = CARRY((!\VGApart|Add2~13\) # (!\VGApart|RAM_adr0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(7),
	datad => VCC,
	cin => \VGApart|Add2~13\,
	combout => \VGApart|Add2~14_combout\,
	cout => \VGApart|Add2~15\);

-- Location: FF_X21_Y20_N15
\VGApart|RAM_adr0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~14_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(7));

-- Location: LCCOMB_X21_Y20_N16
\VGApart|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~16_combout\ = (\VGApart|RAM_adr0\(8) & (\VGApart|Add2~15\ $ (GND))) # (!\VGApart|RAM_adr0\(8) & (!\VGApart|Add2~15\ & VCC))
-- \VGApart|Add2~17\ = CARRY((\VGApart|RAM_adr0\(8) & !\VGApart|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(8),
	datad => VCC,
	cin => \VGApart|Add2~15\,
	combout => \VGApart|Add2~16_combout\,
	cout => \VGApart|Add2~17\);

-- Location: LCCOMB_X20_Y20_N12
\VGApart|RAM_adr0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0~5_combout\ = (!\VGApart|Equal2~4_combout\ & \VGApart|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Equal2~4_combout\,
	datad => \VGApart|Add2~16_combout\,
	combout => \VGApart|RAM_adr0~5_combout\);

-- Location: FF_X20_Y20_N13
\VGApart|RAM_adr0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAM_adr0~5_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(8));

-- Location: LCCOMB_X21_Y20_N18
\VGApart|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~18_combout\ = (\VGApart|RAM_adr0\(9) & (!\VGApart|Add2~17\)) # (!\VGApart|RAM_adr0\(9) & ((\VGApart|Add2~17\) # (GND)))
-- \VGApart|Add2~19\ = CARRY((!\VGApart|Add2~17\) # (!\VGApart|RAM_adr0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(9),
	datad => VCC,
	cin => \VGApart|Add2~17\,
	combout => \VGApart|Add2~18_combout\,
	cout => \VGApart|Add2~19\);

-- Location: FF_X21_Y20_N19
\VGApart|RAM_adr0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~18_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(9));

-- Location: LCCOMB_X21_Y20_N20
\VGApart|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~20_combout\ = (\VGApart|RAM_adr0\(10) & (\VGApart|Add2~19\ $ (GND))) # (!\VGApart|RAM_adr0\(10) & (!\VGApart|Add2~19\ & VCC))
-- \VGApart|Add2~21\ = CARRY((\VGApart|RAM_adr0\(10) & !\VGApart|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(10),
	datad => VCC,
	cin => \VGApart|Add2~19\,
	combout => \VGApart|Add2~20_combout\,
	cout => \VGApart|Add2~21\);

-- Location: FF_X21_Y20_N21
\VGApart|RAM_adr0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~20_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(10));

-- Location: LCCOMB_X21_Y20_N22
\VGApart|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~22_combout\ = (\VGApart|RAM_adr0\(11) & (!\VGApart|Add2~21\)) # (!\VGApart|RAM_adr0\(11) & ((\VGApart|Add2~21\) # (GND)))
-- \VGApart|Add2~23\ = CARRY((!\VGApart|Add2~21\) # (!\VGApart|RAM_adr0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(11),
	datad => VCC,
	cin => \VGApart|Add2~21\,
	combout => \VGApart|Add2~22_combout\,
	cout => \VGApart|Add2~23\);

-- Location: FF_X21_Y20_N23
\VGApart|RAM_adr0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~22_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(11));

-- Location: LCCOMB_X20_Y20_N10
\VGApart|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~2_combout\ = (!\VGApart|RAM_adr0\(8) & (!\VGApart|RAM_adr0\(11) & (!\VGApart|RAM_adr0\(10) & !\VGApart|RAM_adr0\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(8),
	datab => \VGApart|RAM_adr0\(11),
	datac => \VGApart|RAM_adr0\(10),
	datad => \VGApart|RAM_adr0\(9),
	combout => \VGApart|Equal2~2_combout\);

-- Location: LCCOMB_X21_Y20_N24
\VGApart|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~24_combout\ = (\VGApart|RAM_adr0\(12) & (\VGApart|Add2~23\ $ (GND))) # (!\VGApart|RAM_adr0\(12) & (!\VGApart|Add2~23\ & VCC))
-- \VGApart|Add2~25\ = CARRY((\VGApart|RAM_adr0\(12) & !\VGApart|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(12),
	datad => VCC,
	cin => \VGApart|Add2~23\,
	combout => \VGApart|Add2~24_combout\,
	cout => \VGApart|Add2~25\);

-- Location: FF_X21_Y20_N25
\VGApart|RAM_adr0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add2~24_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(12));

-- Location: LCCOMB_X21_Y20_N26
\VGApart|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~26_combout\ = (\VGApart|RAM_adr0\(13) & (!\VGApart|Add2~25\)) # (!\VGApart|RAM_adr0\(13) & ((\VGApart|Add2~25\) # (GND)))
-- \VGApart|Add2~27\ = CARRY((!\VGApart|Add2~25\) # (!\VGApart|RAM_adr0\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(13),
	datad => VCC,
	cin => \VGApart|Add2~25\,
	combout => \VGApart|Add2~26_combout\,
	cout => \VGApart|Add2~27\);

-- Location: LCCOMB_X20_Y20_N6
\VGApart|RAM_adr0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0~4_combout\ = (!\VGApart|Equal2~4_combout\ & \VGApart|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Equal2~4_combout\,
	datad => \VGApart|Add2~26_combout\,
	combout => \VGApart|RAM_adr0~4_combout\);

-- Location: FF_X20_Y20_N7
\VGApart|RAM_adr0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAM_adr0~4_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(13));

-- Location: LCCOMB_X20_Y20_N0
\VGApart|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~3_combout\ = (\VGApart|RAM_adr0\(13) & (\VGApart|RAM_adr0\(14) & (\VGApart|RAM_adr0\(15) & !\VGApart|RAM_adr0\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(13),
	datab => \VGApart|RAM_adr0\(14),
	datac => \VGApart|RAM_adr0\(15),
	datad => \VGApart|RAM_adr0\(12),
	combout => \VGApart|Equal2~3_combout\);

-- Location: LCCOMB_X21_Y21_N30
\VGApart|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~0_combout\ = (\VGApart|RAM_adr0\(3) & (\VGApart|RAM_adr0\(1) & (\VGApart|RAM_adr0\(2) & \VGApart|RAM_adr0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(3),
	datab => \VGApart|RAM_adr0\(1),
	datac => \VGApart|RAM_adr0\(2),
	datad => \VGApart|RAM_adr0\(0),
	combout => \VGApart|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y20_N20
\VGApart|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~1_combout\ = (\VGApart|RAM_adr0\(6) & (\VGApart|RAM_adr0\(5) & (\VGApart|RAM_adr0\(4) & \VGApart|RAM_adr0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(6),
	datab => \VGApart|RAM_adr0\(5),
	datac => \VGApart|RAM_adr0\(4),
	datad => \VGApart|RAM_adr0\(7),
	combout => \VGApart|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y20_N2
\VGApart|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~4_combout\ = (\VGApart|Equal2~2_combout\ & (\VGApart|Equal2~3_combout\ & (\VGApart|Equal2~0_combout\ & \VGApart|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal2~2_combout\,
	datab => \VGApart|Equal2~3_combout\,
	datac => \VGApart|Equal2~0_combout\,
	datad => \VGApart|Equal2~1_combout\,
	combout => \VGApart|Equal2~4_combout\);

-- Location: LCCOMB_X21_Y20_N28
\VGApart|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~28_combout\ = (\VGApart|RAM_adr0\(14) & (\VGApart|Add2~27\ $ (GND))) # (!\VGApart|RAM_adr0\(14) & (!\VGApart|Add2~27\ & VCC))
-- \VGApart|Add2~29\ = CARRY((\VGApart|RAM_adr0\(14) & !\VGApart|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(14),
	datad => VCC,
	cin => \VGApart|Add2~27\,
	combout => \VGApart|Add2~28_combout\,
	cout => \VGApart|Add2~29\);

-- Location: LCCOMB_X20_Y20_N24
\VGApart|RAM_adr0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0~3_combout\ = (!\VGApart|Equal2~4_combout\ & \VGApart|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Equal2~4_combout\,
	datad => \VGApart|Add2~28_combout\,
	combout => \VGApart|RAM_adr0~3_combout\);

-- Location: FF_X20_Y20_N25
\VGApart|RAM_adr0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAM_adr0~3_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(14));

-- Location: LCCOMB_X21_Y20_N30
\VGApart|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~30_combout\ = \VGApart|Add2~29\ $ (\VGApart|RAM_adr0\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGApart|RAM_adr0\(15),
	cin => \VGApart|Add2~29\,
	combout => \VGApart|Add2~30_combout\);

-- Location: LCCOMB_X20_Y20_N22
\VGApart|RAM_adr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0~2_combout\ = (\VGApart|Add2~30_combout\ & !\VGApart|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add2~30_combout\,
	datad => \VGApart|Equal2~4_combout\,
	combout => \VGApart|RAM_adr0~2_combout\);

-- Location: FF_X20_Y20_N23
\VGApart|RAM_adr0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAM_adr0~2_combout\,
	ena => \VGApart|RAM_adr0[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAM_adr0\(15));

-- Location: LCCOMB_X21_Y21_N24
\VGApart|RAMadr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~0_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(15))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~9_combout\,
	datac => \VGApart|RAM_adr1\(15),
	datad => \VGApart|RAM_adr0\(15),
	combout => \VGApart|RAMadr~0_combout\);

-- Location: LCCOMB_X20_Y23_N8
\VGApart|RAMadr[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr[2]~1_combout\ = (!\SW[1]~input_o\ & (!\VGApart|v_count\(9) & !\VGApart|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \VGApart|v_count\(9),
	datad => \VGApart|LessThan5~0_combout\,
	combout => \VGApart|RAMadr[2]~1_combout\);

-- Location: FF_X21_Y21_N25
\VGApart|RAMadr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~0_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(15));

-- Location: FF_X24_Y13_N31
\RAM32|altsyncram_component|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rRAMclk~clkctrl_outclk\,
	asdata => \VGApart|RAMadr\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM32|altsyncram_component|auto_generated|address_reg_b\(2));

-- Location: IOIBUF_X0_Y14_N8
\GPIO1_D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(8),
	o => \GPIO1_D[8]~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X19_Y3_N18
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

-- Location: FF_X19_Y3_N19
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

-- Location: LCCOMB_X19_Y3_N0
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

-- Location: FF_X19_Y3_N1
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

-- Location: LCCOMB_X19_Y3_N6
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

-- Location: FF_X19_Y3_N7
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

-- Location: LCCOMB_X20_Y3_N6
\CAP10|CAPclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|CAPclk~0_combout\ = !\CAP10|CAPclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|CAPclk~q\,
	combout => \CAP10|CAPclk~0_combout\);

-- Location: LCCOMB_X20_Y3_N18
\CAP10|CAPclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|CAPclk~feeder_combout\ = \CAP10|CAPclk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|CAPclk~0_combout\,
	combout => \CAP10|CAPclk~feeder_combout\);

-- Location: FF_X20_Y3_N19
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

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X22_Y13_N0
\CAP10|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~0_combout\ = \CAP10|RAM_adr\(0) $ (VCC)
-- \CAP10|Add2~1\ = CARRY(\CAP10|RAM_adr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(0),
	datad => VCC,
	combout => \CAP10|Add2~0_combout\,
	cout => \CAP10|Add2~1\);

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

-- Location: LCCOMB_X22_Y10_N2
\CAP10|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~0_combout\ = \CAP10|h_count\(0) $ (VCC)
-- \CAP10|Add0~1\ = CARRY(\CAP10|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|h_count\(0),
	datad => VCC,
	combout => \CAP10|Add0~0_combout\,
	cout => \CAP10|Add0~1\);

-- Location: FF_X22_Y10_N3
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

-- Location: LCCOMB_X22_Y10_N4
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

-- Location: FF_X22_Y10_N5
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

-- Location: LCCOMB_X22_Y10_N6
\CAP10|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~4_combout\ = (\CAP10|h_count\(2) & (\CAP10|Add0~3\ $ (GND))) # (!\CAP10|h_count\(2) & (!\CAP10|Add0~3\ & VCC))
-- \CAP10|Add0~5\ = CARRY((\CAP10|h_count\(2) & !\CAP10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(2),
	datad => VCC,
	cin => \CAP10|Add0~3\,
	combout => \CAP10|Add0~4_combout\,
	cout => \CAP10|Add0~5\);

-- Location: FF_X22_Y10_N7
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

-- Location: LCCOMB_X22_Y10_N8
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

-- Location: FF_X22_Y10_N9
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

-- Location: LCCOMB_X22_Y10_N10
\CAP10|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~8_combout\ = (\CAP10|h_count\(4) & (\CAP10|Add0~7\ $ (GND))) # (!\CAP10|h_count\(4) & (!\CAP10|Add0~7\ & VCC))
-- \CAP10|Add0~9\ = CARRY((\CAP10|h_count\(4) & !\CAP10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(4),
	datad => VCC,
	cin => \CAP10|Add0~7\,
	combout => \CAP10|Add0~8_combout\,
	cout => \CAP10|Add0~9\);

-- Location: FF_X22_Y10_N11
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

-- Location: LCCOMB_X22_Y10_N12
\CAP10|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~10_combout\ = (\CAP10|h_count\(5) & (!\CAP10|Add0~9\)) # (!\CAP10|h_count\(5) & ((\CAP10|Add0~9\) # (GND)))
-- \CAP10|Add0~11\ = CARRY((!\CAP10|Add0~9\) # (!\CAP10|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(5),
	datad => VCC,
	cin => \CAP10|Add0~9\,
	combout => \CAP10|Add0~10_combout\,
	cout => \CAP10|Add0~11\);

-- Location: FF_X22_Y10_N13
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

-- Location: LCCOMB_X22_Y10_N14
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

-- Location: LCCOMB_X22_Y10_N30
\CAP10|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|h_count~1_combout\ = (\CAP10|Add0~12_combout\ & !\CAP10|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|Add0~12_combout\,
	datac => \CAP10|Equal0~2_combout\,
	combout => \CAP10|h_count~1_combout\);

-- Location: FF_X22_Y10_N31
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

-- Location: LCCOMB_X22_Y10_N16
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

-- Location: FF_X22_Y10_N17
\CAP10|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add0~14_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|h_count\(7));

-- Location: LCCOMB_X21_Y10_N0
\CAP10|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal0~0_combout\ = (!\CAP10|h_count\(6) & (\CAP10|h_count\(8) & (!\CAP10|h_count\(9) & !\CAP10|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(6),
	datab => \CAP10|h_count\(8),
	datac => \CAP10|h_count\(9),
	datad => \CAP10|h_count\(7),
	combout => \CAP10|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y10_N0
\CAP10|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal0~1_combout\ = (\CAP10|h_count\(5) & (\CAP10|h_count\(2) & (\CAP10|h_count\(3) & \CAP10|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(5),
	datab => \CAP10|h_count\(2),
	datac => \CAP10|h_count\(3),
	datad => \CAP10|h_count\(4),
	combout => \CAP10|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y10_N22
\CAP10|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal0~2_combout\ = (\CAP10|Equal0~0_combout\ & (\CAP10|h_count\(0) & (\CAP10|h_count\(1) & \CAP10|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|Equal0~0_combout\,
	datab => \CAP10|h_count\(0),
	datac => \CAP10|h_count\(1),
	datad => \CAP10|Equal0~1_combout\,
	combout => \CAP10|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y10_N18
\CAP10|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~16_combout\ = (\CAP10|h_count\(8) & (\CAP10|Add0~15\ $ (GND))) # (!\CAP10|h_count\(8) & (!\CAP10|Add0~15\ & VCC))
-- \CAP10|Add0~17\ = CARRY((\CAP10|h_count\(8) & !\CAP10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|h_count\(8),
	datad => VCC,
	cin => \CAP10|Add0~15\,
	combout => \CAP10|Add0~16_combout\,
	cout => \CAP10|Add0~17\);

-- Location: LCCOMB_X22_Y10_N28
\CAP10|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|h_count~0_combout\ = (!\CAP10|Equal0~2_combout\ & \CAP10|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|Equal0~2_combout\,
	datad => \CAP10|Add0~16_combout\,
	combout => \CAP10|h_count~0_combout\);

-- Location: FF_X22_Y10_N29
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

-- Location: LCCOMB_X22_Y10_N20
\CAP10|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add0~18_combout\ = \CAP10|Add0~17\ $ (\CAP10|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CAP10|h_count\(9),
	cin => \CAP10|Add0~17\,
	combout => \CAP10|Add0~18_combout\);

-- Location: FF_X22_Y10_N21
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

-- Location: LCCOMB_X21_Y10_N24
\CAP10|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add1~0_combout\ = !\CAP10|v_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP10|v_count\(0),
	combout => \CAP10|Add1~0_combout\);

-- Location: LCCOMB_X21_Y10_N14
\CAP10|v_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|v_count[0]~0_combout\ = (\CAP10|Equal0~2_combout\ & (\CAP10|Add1~0_combout\)) # (!\CAP10|Equal0~2_combout\ & ((\CAP10|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|Add1~0_combout\,
	datac => \CAP10|v_count\(0),
	datad => \CAP10|Equal0~2_combout\,
	combout => \CAP10|v_count[0]~0_combout\);

-- Location: FF_X21_Y10_N15
\CAP10|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|v_count[0]~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|v_count\(0));

-- Location: LCCOMB_X22_Y10_N24
\CAP10|RAM_adr[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RAM_adr[15]~1_combout\ = (\CAP10|h_count\(3) & ((\CAP10|h_count\(2)) # ((\CAP10|h_count\(1)) # (\CAP10|h_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(2),
	datab => \CAP10|h_count\(1),
	datac => \CAP10|h_count\(3),
	datad => \CAP10|h_count\(0),
	combout => \CAP10|RAM_adr[15]~1_combout\);

-- Location: LCCOMB_X22_Y10_N26
\CAP10|RAM_adr[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RAM_adr[15]~2_combout\ = (\CAP10|h_count\(4) & ((\CAP10|h_count\(5)) # ((\CAP10|h_count\(8) & \CAP10|RAM_adr[15]~1_combout\)))) # (!\CAP10|h_count\(4) & (\CAP10|h_count\(5) & ((\CAP10|h_count\(8)) # (\CAP10|RAM_adr[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(4),
	datab => \CAP10|h_count\(8),
	datac => \CAP10|h_count\(5),
	datad => \CAP10|RAM_adr[15]~1_combout\,
	combout => \CAP10|RAM_adr[15]~2_combout\);

-- Location: LCCOMB_X21_Y10_N28
\CAP10|RAM_adr[15]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RAM_adr[15]~3_combout\ = (\CAP10|h_count\(7)) # ((\CAP10|h_count\(6)) # (\CAP10|RAM_adr[15]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|h_count\(7),
	datac => \CAP10|h_count\(6),
	datad => \CAP10|RAM_adr[15]~2_combout\,
	combout => \CAP10|RAM_adr[15]~3_combout\);

-- Location: LCCOMB_X21_Y10_N2
\CAP10|RAM_adr[15]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RAM_adr[15]~4_combout\ = (!\CAP10|h_count\(9) & (!\CAP10|v_count\(0) & (\CAP10|h_count\(8) $ (\CAP10|RAM_adr[15]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|h_count\(9),
	datab => \CAP10|h_count\(8),
	datac => \CAP10|v_count\(0),
	datad => \CAP10|RAM_adr[15]~3_combout\,
	combout => \CAP10|RAM_adr[15]~4_combout\);

-- Location: FF_X22_Y13_N1
\CAP10|RAM_adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(0));

-- Location: LCCOMB_X22_Y13_N2
\CAP10|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~2_combout\ = (\CAP10|RAM_adr\(1) & (!\CAP10|Add2~1\)) # (!\CAP10|RAM_adr\(1) & ((\CAP10|Add2~1\) # (GND)))
-- \CAP10|Add2~3\ = CARRY((!\CAP10|Add2~1\) # (!\CAP10|RAM_adr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(1),
	datad => VCC,
	cin => \CAP10|Add2~1\,
	combout => \CAP10|Add2~2_combout\,
	cout => \CAP10|Add2~3\);

-- Location: FF_X22_Y13_N3
\CAP10|RAM_adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~2_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(1));

-- Location: LCCOMB_X22_Y13_N4
\CAP10|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~4_combout\ = (\CAP10|RAM_adr\(2) & (\CAP10|Add2~3\ $ (GND))) # (!\CAP10|RAM_adr\(2) & (!\CAP10|Add2~3\ & VCC))
-- \CAP10|Add2~5\ = CARRY((\CAP10|RAM_adr\(2) & !\CAP10|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(2),
	datad => VCC,
	cin => \CAP10|Add2~3\,
	combout => \CAP10|Add2~4_combout\,
	cout => \CAP10|Add2~5\);

-- Location: FF_X22_Y13_N5
\CAP10|RAM_adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~4_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(2));

-- Location: LCCOMB_X22_Y13_N6
\CAP10|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~6_combout\ = (\CAP10|RAM_adr\(3) & (!\CAP10|Add2~5\)) # (!\CAP10|RAM_adr\(3) & ((\CAP10|Add2~5\) # (GND)))
-- \CAP10|Add2~7\ = CARRY((!\CAP10|Add2~5\) # (!\CAP10|RAM_adr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(3),
	datad => VCC,
	cin => \CAP10|Add2~5\,
	combout => \CAP10|Add2~6_combout\,
	cout => \CAP10|Add2~7\);

-- Location: FF_X22_Y13_N7
\CAP10|RAM_adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~6_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(3));

-- Location: LCCOMB_X22_Y13_N8
\CAP10|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~8_combout\ = (\CAP10|RAM_adr\(4) & (\CAP10|Add2~7\ $ (GND))) # (!\CAP10|RAM_adr\(4) & (!\CAP10|Add2~7\ & VCC))
-- \CAP10|Add2~9\ = CARRY((\CAP10|RAM_adr\(4) & !\CAP10|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(4),
	datad => VCC,
	cin => \CAP10|Add2~7\,
	combout => \CAP10|Add2~8_combout\,
	cout => \CAP10|Add2~9\);

-- Location: FF_X22_Y13_N9
\CAP10|RAM_adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~8_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(4));

-- Location: LCCOMB_X22_Y13_N10
\CAP10|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~10_combout\ = (\CAP10|RAM_adr\(5) & (!\CAP10|Add2~9\)) # (!\CAP10|RAM_adr\(5) & ((\CAP10|Add2~9\) # (GND)))
-- \CAP10|Add2~11\ = CARRY((!\CAP10|Add2~9\) # (!\CAP10|RAM_adr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(5),
	datad => VCC,
	cin => \CAP10|Add2~9\,
	combout => \CAP10|Add2~10_combout\,
	cout => \CAP10|Add2~11\);

-- Location: FF_X22_Y13_N11
\CAP10|RAM_adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~10_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(5));

-- Location: LCCOMB_X22_Y13_N12
\CAP10|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~12_combout\ = (\CAP10|RAM_adr\(6) & (\CAP10|Add2~11\ $ (GND))) # (!\CAP10|RAM_adr\(6) & (!\CAP10|Add2~11\ & VCC))
-- \CAP10|Add2~13\ = CARRY((\CAP10|RAM_adr\(6) & !\CAP10|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(6),
	datad => VCC,
	cin => \CAP10|Add2~11\,
	combout => \CAP10|Add2~12_combout\,
	cout => \CAP10|Add2~13\);

-- Location: FF_X22_Y13_N13
\CAP10|RAM_adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~12_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(6));

-- Location: LCCOMB_X22_Y13_N14
\CAP10|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~14_combout\ = (\CAP10|RAM_adr\(7) & (!\CAP10|Add2~13\)) # (!\CAP10|RAM_adr\(7) & ((\CAP10|Add2~13\) # (GND)))
-- \CAP10|Add2~15\ = CARRY((!\CAP10|Add2~13\) # (!\CAP10|RAM_adr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(7),
	datad => VCC,
	cin => \CAP10|Add2~13\,
	combout => \CAP10|Add2~14_combout\,
	cout => \CAP10|Add2~15\);

-- Location: FF_X22_Y13_N15
\CAP10|RAM_adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~14_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(7));

-- Location: LCCOMB_X21_Y13_N12
\CAP10|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal2~3_combout\ = (\CAP10|RAM_adr\(6) & (\CAP10|RAM_adr\(5) & (\CAP10|RAM_adr\(4) & \CAP10|RAM_adr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(6),
	datab => \CAP10|RAM_adr\(5),
	datac => \CAP10|RAM_adr\(4),
	datad => \CAP10|RAM_adr\(7),
	combout => \CAP10|Equal2~3_combout\);

-- Location: LCCOMB_X22_Y13_N16
\CAP10|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~16_combout\ = (\CAP10|RAM_adr\(8) & (\CAP10|Add2~15\ $ (GND))) # (!\CAP10|RAM_adr\(8) & (!\CAP10|Add2~15\ & VCC))
-- \CAP10|Add2~17\ = CARRY((\CAP10|RAM_adr\(8) & !\CAP10|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(8),
	datad => VCC,
	cin => \CAP10|Add2~15\,
	combout => \CAP10|Add2~16_combout\,
	cout => \CAP10|Add2~17\);

-- Location: LCCOMB_X22_Y13_N28
\CAP10|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~28_combout\ = (\CAP10|RAM_adr\(14) & (\CAP10|Add2~27\ $ (GND))) # (!\CAP10|RAM_adr\(14) & (!\CAP10|Add2~27\ & VCC))
-- \CAP10|Add2~29\ = CARRY((\CAP10|RAM_adr\(14) & !\CAP10|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(14),
	datad => VCC,
	cin => \CAP10|Add2~27\,
	combout => \CAP10|Add2~28_combout\,
	cout => \CAP10|Add2~29\);

-- Location: LCCOMB_X22_Y13_N30
\CAP10|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~30_combout\ = \CAP10|Add2~29\ $ (\CAP10|RAM_adr\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CAP10|RAM_adr\(15),
	cin => \CAP10|Add2~29\,
	combout => \CAP10|Add2~30_combout\);

-- Location: LCCOMB_X21_Y13_N6
\CAP10|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal2~4_combout\ = (\CAP10|RAM_adr\(2) & (\CAP10|RAM_adr\(1) & (\CAP10|RAM_adr\(0) & \CAP10|RAM_adr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(2),
	datab => \CAP10|RAM_adr\(1),
	datac => \CAP10|RAM_adr\(0),
	datad => \CAP10|RAM_adr\(3),
	combout => \CAP10|Equal2~4_combout\);

-- Location: LCCOMB_X21_Y13_N0
\CAP10|RAM_adr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RAM_adr~0_combout\ = (\CAP10|Add2~30_combout\ & (((!\CAP10|Equal2~4_combout\) # (!\CAP10|Equal2~3_combout\)) # (!\CAP10|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|Equal2~2_combout\,
	datab => \CAP10|Equal2~3_combout\,
	datac => \CAP10|Add2~30_combout\,
	datad => \CAP10|Equal2~4_combout\,
	combout => \CAP10|RAM_adr~0_combout\);

-- Location: FF_X21_Y13_N1
\CAP10|RAM_adr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|RAM_adr~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(15));

-- Location: LCCOMB_X21_Y13_N10
\CAP10|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal2~0_combout\ = (\CAP10|RAM_adr\(13) & (\CAP10|RAM_adr\(14) & \CAP10|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(13),
	datac => \CAP10|RAM_adr\(14),
	datad => \CAP10|RAM_adr\(15),
	combout => \CAP10|Equal2~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
\CAP10|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal2~1_combout\ = (!\CAP10|RAM_adr\(8) & (!\CAP10|RAM_adr\(11) & (!\CAP10|RAM_adr\(10) & !\CAP10|RAM_adr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(8),
	datab => \CAP10|RAM_adr\(11),
	datac => \CAP10|RAM_adr\(10),
	datad => \CAP10|RAM_adr\(9),
	combout => \CAP10|Equal2~1_combout\);

-- Location: LCCOMB_X21_Y13_N18
\CAP10|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Equal2~2_combout\ = (!\CAP10|RAM_adr\(12) & (\CAP10|Equal2~0_combout\ & \CAP10|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(12),
	datac => \CAP10|Equal2~0_combout\,
	datad => \CAP10|Equal2~1_combout\,
	combout => \CAP10|Equal2~2_combout\);

-- Location: LCCOMB_X21_Y13_N8
\CAP10|RAM_adr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RAM_adr~7_combout\ = (\CAP10|Add2~16_combout\ & (((!\CAP10|Equal2~4_combout\) # (!\CAP10|Equal2~2_combout\)) # (!\CAP10|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|Equal2~3_combout\,
	datab => \CAP10|Add2~16_combout\,
	datac => \CAP10|Equal2~2_combout\,
	datad => \CAP10|Equal2~4_combout\,
	combout => \CAP10|RAM_adr~7_combout\);

-- Location: FF_X21_Y13_N9
\CAP10|RAM_adr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|RAM_adr~7_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(8));

-- Location: LCCOMB_X22_Y13_N18
\CAP10|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~18_combout\ = (\CAP10|RAM_adr\(9) & (!\CAP10|Add2~17\)) # (!\CAP10|RAM_adr\(9) & ((\CAP10|Add2~17\) # (GND)))
-- \CAP10|Add2~19\ = CARRY((!\CAP10|Add2~17\) # (!\CAP10|RAM_adr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(9),
	datad => VCC,
	cin => \CAP10|Add2~17\,
	combout => \CAP10|Add2~18_combout\,
	cout => \CAP10|Add2~19\);

-- Location: FF_X22_Y13_N19
\CAP10|RAM_adr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~18_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(9));

-- Location: LCCOMB_X22_Y13_N20
\CAP10|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~20_combout\ = (\CAP10|RAM_adr\(10) & (\CAP10|Add2~19\ $ (GND))) # (!\CAP10|RAM_adr\(10) & (!\CAP10|Add2~19\ & VCC))
-- \CAP10|Add2~21\ = CARRY((\CAP10|RAM_adr\(10) & !\CAP10|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(10),
	datad => VCC,
	cin => \CAP10|Add2~19\,
	combout => \CAP10|Add2~20_combout\,
	cout => \CAP10|Add2~21\);

-- Location: FF_X22_Y13_N21
\CAP10|RAM_adr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~20_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(10));

-- Location: LCCOMB_X22_Y13_N22
\CAP10|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~22_combout\ = (\CAP10|RAM_adr\(11) & (!\CAP10|Add2~21\)) # (!\CAP10|RAM_adr\(11) & ((\CAP10|Add2~21\) # (GND)))
-- \CAP10|Add2~23\ = CARRY((!\CAP10|Add2~21\) # (!\CAP10|RAM_adr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(11),
	datad => VCC,
	cin => \CAP10|Add2~21\,
	combout => \CAP10|Add2~22_combout\,
	cout => \CAP10|Add2~23\);

-- Location: FF_X22_Y13_N23
\CAP10|RAM_adr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~22_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(11));

-- Location: LCCOMB_X22_Y13_N24
\CAP10|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~24_combout\ = (\CAP10|RAM_adr\(12) & (\CAP10|Add2~23\ $ (GND))) # (!\CAP10|RAM_adr\(12) & (!\CAP10|Add2~23\ & VCC))
-- \CAP10|Add2~25\ = CARRY((\CAP10|RAM_adr\(12) & !\CAP10|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(12),
	datad => VCC,
	cin => \CAP10|Add2~23\,
	combout => \CAP10|Add2~24_combout\,
	cout => \CAP10|Add2~25\);

-- Location: FF_X22_Y13_N25
\CAP10|RAM_adr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|Add2~24_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(12));

-- Location: LCCOMB_X22_Y13_N26
\CAP10|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|Add2~26_combout\ = (\CAP10|RAM_adr\(13) & (!\CAP10|Add2~25\)) # (!\CAP10|RAM_adr\(13) & ((\CAP10|Add2~25\) # (GND)))
-- \CAP10|Add2~27\ = CARRY((!\CAP10|Add2~25\) # (!\CAP10|RAM_adr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(13),
	datad => VCC,
	cin => \CAP10|Add2~25\,
	combout => \CAP10|Add2~26_combout\,
	cout => \CAP10|Add2~27\);

-- Location: LCCOMB_X21_Y13_N24
\CAP10|RAM_adr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RAM_adr~6_combout\ = (\CAP10|Add2~26_combout\ & (((!\CAP10|Equal2~4_combout\) # (!\CAP10|Equal2~2_combout\)) # (!\CAP10|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|Equal2~3_combout\,
	datab => \CAP10|Add2~26_combout\,
	datac => \CAP10|Equal2~2_combout\,
	datad => \CAP10|Equal2~4_combout\,
	combout => \CAP10|RAM_adr~6_combout\);

-- Location: FF_X21_Y13_N25
\CAP10|RAM_adr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|RAM_adr~6_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(13));

-- Location: LCCOMB_X21_Y13_N22
\CAP10|RAM_adr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RAM_adr~5_combout\ = (\CAP10|Add2~28_combout\ & (((!\CAP10|Equal2~4_combout\) # (!\CAP10|Equal2~2_combout\)) # (!\CAP10|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|Equal2~3_combout\,
	datab => \CAP10|Add2~28_combout\,
	datac => \CAP10|Equal2~2_combout\,
	datad => \CAP10|Equal2~4_combout\,
	combout => \CAP10|RAM_adr~5_combout\);

-- Location: FF_X21_Y13_N23
\CAP10|RAM_adr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP10|RAM_adr~5_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	ena => \CAP10|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|RAM_adr\(14));

-- Location: LCCOMB_X21_Y13_N4
\RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\ = (!\CAP10|RAM_adr\(14) & (\CAP10|RAM_adr\(13) & !\CAP10|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(14),
	datab => \CAP10|RAM_adr\(13),
	datad => \CAP10|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\);

-- Location: LCCOMB_X20_Y3_N26
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

-- Location: FF_X20_Y3_N27
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

-- Location: LCCOMB_X20_Y3_N8
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

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X21_Y17_N4
\VGApart|RAMadr~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~3_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(13))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(13),
	datac => \VGApart|RAM_adr0\(13),
	datad => \VGApart|process_0~9_combout\,
	combout => \VGApart|RAMadr~3_combout\);

-- Location: FF_X21_Y17_N5
\VGApart|RAMadr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~3_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(13));

-- Location: LCCOMB_X19_Y20_N4
\VGApart|RAMadr~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~2_combout\ = (\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr1\(14)))) # (!\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr0\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(14),
	datac => \VGApart|process_0~9_combout\,
	datad => \VGApart|RAM_adr1\(14),
	combout => \VGApart|RAMadr~2_combout\);

-- Location: FF_X19_Y20_N5
\VGApart|RAMadr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~2_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(14));

-- Location: LCCOMB_X14_Y13_N30
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]~0_combout\ = (\VGApart|RAMadr\(13) & (!\VGApart|RAMadr\(14) & !\VGApart|RAMadr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAMadr\(13),
	datac => \VGApart|RAMadr\(14),
	datad => \VGApart|RAMadr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
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

-- Location: CLKCTRL_G1
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

-- Location: IOIBUF_X19_Y0_N29
\GPIO1_D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(6),
	o => \GPIO1_D[6]~input_o\);

-- Location: FF_X22_Y8_N19
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

-- Location: IOIBUF_X19_Y0_N1
\GPIO1_D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(2),
	o => \GPIO1_D[2]~input_o\);

-- Location: FF_X22_Y8_N3
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

-- Location: LCCOMB_X22_Y8_N16
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

-- Location: FF_X22_Y8_N17
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

-- Location: LCCOMB_X22_Y8_N2
\CAP10|B[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[2]~2_combout\ = (\CAP10|takeTurn~q\ & ((\CAP10|QinReg\(2)))) # (!\CAP10|takeTurn~q\ & (\CAP10|QaddReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|QaddReg\(2),
	datac => \CAP10|QinReg\(2),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|B[2]~2_combout\);

-- Location: IOIBUF_X0_Y8_N1
\GPIO1_D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(4),
	o => \GPIO1_D[4]~input_o\);

-- Location: FF_X22_Y8_N9
\CAP10|QinReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[4]~input_o\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(4));

-- Location: IOIBUF_X21_Y29_N15
\GPIO1_D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(5),
	o => \GPIO1_D[5]~input_o\);

-- Location: LCCOMB_X22_Y8_N10
\CAP10|QinReg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|QinReg[5]~feeder_combout\ = \GPIO1_D[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO1_D[5]~input_o\,
	combout => \CAP10|QinReg[5]~feeder_combout\);

-- Location: FF_X22_Y8_N11
\CAP10|QinReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAP10|QinReg[5]~feeder_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(5));

-- Location: IOIBUF_X21_Y0_N29
\GPIO1_D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(0),
	o => \GPIO1_D[0]~input_o\);

-- Location: LCCOMB_X22_Y8_N12
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

-- Location: FF_X22_Y8_N13
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

-- Location: LCCOMB_X22_Y8_N26
\CAP10|RipCar:0:FA|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:0:FA|s~0_combout\ = \CAP10|QinReg\(4) $ (((\CAP10|takeTurn~q\ & (\CAP10|QinReg\(0))) # (!\CAP10|takeTurn~q\ & ((\CAP10|QaddReg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(4),
	datab => \CAP10|QinReg\(0),
	datac => \CAP10|QaddReg\(0),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|RipCar:0:FA|s~0_combout\);

-- Location: FF_X22_Y8_N27
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

-- Location: LCCOMB_X22_Y8_N18
\CAP10|B[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[0]~0_combout\ = (\CAP10|takeTurn~q\ & ((\CAP10|QinReg\(0)))) # (!\CAP10|takeTurn~q\ & (\CAP10|QaddReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QaddReg\(0),
	datab => \CAP10|takeTurn~q\,
	datad => \CAP10|QinReg\(0),
	combout => \CAP10|B[0]~0_combout\);

-- Location: LCCOMB_X22_Y8_N24
\CAP10|RipCar:1:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:1:FA|s~combout\ = \CAP10|QinReg\(5) $ (\CAP10|B[1]~1_combout\ $ (((\CAP10|QinReg\(4) & \CAP10|B[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(4),
	datab => \CAP10|QinReg\(5),
	datac => \CAP10|B[0]~0_combout\,
	datad => \CAP10|B[1]~1_combout\,
	combout => \CAP10|RipCar:1:FA|s~combout\);

-- Location: FF_X22_Y8_N25
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

-- Location: IOIBUF_X19_Y0_N22
\GPIO1_D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(1),
	o => \GPIO1_D[1]~input_o\);

-- Location: FF_X22_Y8_N15
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

-- Location: LCCOMB_X22_Y8_N14
\CAP10|B[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[1]~1_combout\ = (\CAP10|takeTurn~q\ & ((\CAP10|QinReg\(1)))) # (!\CAP10|takeTurn~q\ & (\CAP10|QaddReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|QaddReg\(1),
	datac => \CAP10|QinReg\(1),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|B[1]~1_combout\);

-- Location: LCCOMB_X22_Y8_N28
\CAP10|RipCar:1:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:1:FA|co~0_combout\ = (\CAP10|QinReg\(5) & ((\CAP10|B[1]~1_combout\) # ((\CAP10|QinReg\(4) & \CAP10|B[0]~0_combout\)))) # (!\CAP10|QinReg\(5) & (\CAP10|QinReg\(4) & (\CAP10|B[1]~1_combout\ & \CAP10|B[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(4),
	datab => \CAP10|QinReg\(5),
	datac => \CAP10|B[1]~1_combout\,
	datad => \CAP10|B[0]~0_combout\,
	combout => \CAP10|RipCar:1:FA|co~0_combout\);

-- Location: LCCOMB_X22_Y8_N0
\CAP10|RipCar:2:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:2:FA|s~combout\ = \CAP10|QinReg\(6) $ (\CAP10|B[2]~2_combout\ $ (\CAP10|RipCar:1:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(6),
	datab => \CAP10|B[2]~2_combout\,
	datad => \CAP10|RipCar:1:FA|co~0_combout\,
	combout => \CAP10|RipCar:2:FA|s~combout\);

-- Location: FF_X22_Y8_N1
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

-- Location: LCCOMB_X21_Y21_N14
\VGApart|RAMadr~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~4_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(0))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~9_combout\,
	datac => \VGApart|RAM_adr1\(0),
	datad => \VGApart|RAM_adr0\(0),
	combout => \VGApart|RAMadr~4_combout\);

-- Location: FF_X21_Y21_N15
\VGApart|RAMadr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~4_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(0));

-- Location: LCCOMB_X21_Y21_N8
\VGApart|RAMadr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~5_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(1))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(1),
	datac => \VGApart|process_0~9_combout\,
	datad => \VGApart|RAM_adr0\(1),
	combout => \VGApart|RAMadr~5_combout\);

-- Location: FF_X21_Y21_N9
\VGApart|RAMadr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~5_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(1));

-- Location: LCCOMB_X21_Y21_N26
\VGApart|RAMadr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~6_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(2))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~9_combout\,
	datab => \VGApart|RAM_adr1\(2),
	datac => \VGApart|RAM_adr0\(2),
	combout => \VGApart|RAMadr~6_combout\);

-- Location: FF_X21_Y21_N27
\VGApart|RAMadr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~6_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(2));

-- Location: LCCOMB_X21_Y21_N28
\VGApart|RAMadr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~7_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(3))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~9_combout\,
	datac => \VGApart|RAM_adr1\(3),
	datad => \VGApart|RAM_adr0\(3),
	combout => \VGApart|RAMadr~7_combout\);

-- Location: FF_X21_Y21_N29
\VGApart|RAMadr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~7_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(3));

-- Location: LCCOMB_X20_Y20_N28
\VGApart|RAMadr~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~8_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(4))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(4),
	datab => \VGApart|RAM_adr0\(4),
	datac => \VGApart|process_0~9_combout\,
	combout => \VGApart|RAMadr~8_combout\);

-- Location: FF_X20_Y20_N29
\VGApart|RAMadr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~8_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(4));

-- Location: LCCOMB_X20_Y20_N14
\VGApart|RAMadr~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~9_combout\ = (\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr1\(5)))) # (!\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~9_combout\,
	datab => \VGApart|RAM_adr0\(5),
	datac => \VGApart|RAM_adr1\(5),
	combout => \VGApart|RAMadr~9_combout\);

-- Location: FF_X20_Y20_N15
\VGApart|RAMadr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~9_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(5));

-- Location: LCCOMB_X20_Y20_N8
\VGApart|RAMadr~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~10_combout\ = (\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr1\(6)))) # (!\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr0\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~9_combout\,
	datac => \VGApart|RAM_adr0\(6),
	datad => \VGApart|RAM_adr1\(6),
	combout => \VGApart|RAMadr~10_combout\);

-- Location: FF_X20_Y20_N9
\VGApart|RAMadr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~10_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(6));

-- Location: LCCOMB_X20_Y20_N18
\VGApart|RAMadr~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~11_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(7))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(7),
	datac => \VGApart|process_0~9_combout\,
	datad => \VGApart|RAM_adr0\(7),
	combout => \VGApart|RAMadr~11_combout\);

-- Location: FF_X20_Y20_N19
\VGApart|RAMadr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~11_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(7));

-- Location: LCCOMB_X20_Y20_N16
\VGApart|RAMadr~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~12_combout\ = (\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr1\(8)))) # (!\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr0\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(8),
	datac => \VGApart|process_0~9_combout\,
	datad => \VGApart|RAM_adr1\(8),
	combout => \VGApart|RAMadr~12_combout\);

-- Location: FF_X20_Y20_N17
\VGApart|RAMadr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~12_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(8));

-- Location: LCCOMB_X20_Y20_N30
\VGApart|RAMadr~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~13_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(9))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(9),
	datac => \VGApart|process_0~9_combout\,
	datad => \VGApart|RAM_adr0\(9),
	combout => \VGApart|RAMadr~13_combout\);

-- Location: FF_X20_Y20_N31
\VGApart|RAMadr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~13_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(9));

-- Location: LCCOMB_X21_Y21_N18
\VGApart|RAMadr~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~14_combout\ = (\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr1\(10)))) # (!\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr0\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(10),
	datab => \VGApart|RAM_adr1\(10),
	datac => \VGApart|process_0~9_combout\,
	combout => \VGApart|RAMadr~14_combout\);

-- Location: FF_X21_Y21_N19
\VGApart|RAMadr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~14_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(10));

-- Location: LCCOMB_X20_Y20_N4
\VGApart|RAMadr~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~15_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(11))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(11),
	datac => \VGApart|process_0~9_combout\,
	datad => \VGApart|RAM_adr0\(11),
	combout => \VGApart|RAMadr~15_combout\);

-- Location: FF_X20_Y20_N5
\VGApart|RAMadr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~15_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(11));

-- Location: LCCOMB_X21_Y21_N4
\VGApart|RAMadr~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~16_combout\ = (\VGApart|process_0~9_combout\ & (\VGApart|RAM_adr1\(12))) # (!\VGApart|process_0~9_combout\ & ((\VGApart|RAM_adr0\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr1\(12),
	datac => \VGApart|process_0~9_combout\,
	datad => \VGApart|RAM_adr0\(12),
	combout => \VGApart|RAMadr~16_combout\);

-- Location: FF_X21_Y21_N5
\VGApart|RAMadr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~16_combout\,
	ena => \VGApart|RAMadr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(12));

-- Location: M9K_X25_Y8_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: FF_X12_Y13_N21
\RAM32|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rRAMclk~clkctrl_outclk\,
	asdata => \VGApart|RAMadr\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X21_Y13_N2
\RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\ = (!\CAP10|RAM_adr\(15) & (\CAP10|RAM_adr\(14) & \CAP10|RAM_adr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(15),
	datac => \CAP10|RAM_adr\(14),
	datad => \CAP10|RAM_adr\(13),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\);

-- Location: LCCOMB_X14_Y13_N12
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\ = (\VGApart|RAMadr\(13) & (\VGApart|RAMadr\(14) & !\VGApart|RAMadr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAMadr\(13),
	datac => \VGApart|RAMadr\(14),
	datad => \VGApart|RAMadr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\);

-- Location: M9K_X25_Y19_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: FF_X24_Y13_N13
\RAM32|altsyncram_component|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rRAMclk~clkctrl_outclk\,
	asdata => \VGApart|RAMadr\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1));

-- Location: LCCOMB_X21_Y13_N28
\RAM32|altsyncram_component|auto_generated|decode2|w_anode322w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3) = (!\CAP10|RAM_adr\(14) & (!\CAP10|RAM_adr\(13) & !\CAP10|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(14),
	datab => \CAP10|RAM_adr\(13),
	datad => \CAP10|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3));

-- Location: LCCOMB_X14_Y13_N14
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3) = (!\VGApart|RAMadr\(13) & (!\VGApart|RAMadr\(14) & !\VGApart|RAMadr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAMadr\(13),
	datac => \VGApart|RAMadr\(14),
	datad => \VGApart|RAMadr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3));

-- Location: M9K_X25_Y7_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3),
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y13_N26
\RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\ = (\CAP10|RAM_adr\(14) & (!\CAP10|RAM_adr\(13) & !\CAP10|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|RAM_adr\(14),
	datab => \CAP10|RAM_adr\(13),
	datad => \CAP10|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\);

-- Location: LCCOMB_X14_Y13_N20
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\ = (!\VGApart|RAMadr\(13) & (\VGApart|RAMadr\(14) & !\VGApart|RAMadr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAMadr\(13),
	datac => \VGApart|RAMadr\(14),
	datad => \VGApart|RAMadr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\);

-- Location: M9K_X25_Y12_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N2
\RAM32|altsyncram_component|auto_generated|mux3|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(0)) # 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\)))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\);

-- Location: LCCOMB_X24_Y13_N4
\RAM32|altsyncram_component|auto_generated|mux3|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\ & (\RAM32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\)))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\);

-- Location: LCCOMB_X21_Y13_N14
\RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\ = (\CAP10|RAM_adr\(15) & (\CAP10|RAM_adr\(14) & !\CAP10|RAM_adr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(15),
	datac => \CAP10|RAM_adr\(14),
	datad => \CAP10|RAM_adr\(13),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\);

-- Location: LCCOMB_X14_Y13_N22
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\ = (!\VGApart|RAMadr\(13) & (\VGApart|RAMadr\(14) & \VGApart|RAMadr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAMadr\(13),
	datac => \VGApart|RAMadr\(14),
	datad => \VGApart|RAMadr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\);

-- Location: M9K_X25_Y6_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a24\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y13_N30
\RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\ = (\CAP10|RAM_adr\(13) & (!\CAP10|RAM_adr\(14) & \CAP10|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(13),
	datac => \CAP10|RAM_adr\(14),
	datad => \CAP10|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\);

-- Location: LCCOMB_X14_Y13_N4
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\ = (\VGApart|RAMadr\(13) & (!\VGApart|RAMadr\(14) & \VGApart|RAMadr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAMadr\(13),
	datac => \VGApart|RAMadr\(14),
	datad => \VGApart|RAMadr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\);

-- Location: M9K_X25_Y11_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a20\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y13_N16
\RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\ = (!\CAP10|RAM_adr\(13) & (!\CAP10|RAM_adr\(14) & \CAP10|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|RAM_adr\(13),
	datac => \CAP10|RAM_adr\(14),
	datad => \CAP10|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\);

-- Location: LCCOMB_X14_Y13_N10
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\ = (!\VGApart|RAMadr\(13) & (!\VGApart|RAMadr\(14) & \VGApart|RAMadr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAMadr\(13),
	datac => \VGApart|RAMadr\(14),
	datad => \VGApart|RAMadr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\);

-- Location: M9K_X25_Y10_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a16\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N22
\RAM32|altsyncram_component|auto_generated|mux3|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) 
-- & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (\RAM32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\)) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\);

-- Location: LCCOMB_X14_Y13_N0
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\ = (\VGApart|RAMadr\(13) & (\VGApart|RAMadr\(14) & \VGApart|RAMadr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAMadr\(13),
	datac => \VGApart|RAMadr\(14),
	datad => \VGApart|RAMadr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\);

-- Location: M9K_X25_Y9_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a28\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CAP10|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \CAP10|Equal2~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N28
\RAM32|altsyncram_component|auto_generated|mux3|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\ & (\RAM32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\)))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\,
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\);

-- Location: LCCOMB_X24_Y13_N20
\RAM32|altsyncram_component|auto_generated|mux3|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & (\RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(2),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\);

-- Location: LCCOMB_X24_Y13_N8
\VGApart|red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~1_combout\ = (\VGApart|red~0_combout\ & ((\RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\) # ((\VGApart|green~0_combout\ & \SW[6]~input_o\)))) # (!\VGApart|red~0_combout\ & (\VGApart|green~0_combout\ & (\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|red~0_combout\,
	datab => \VGApart|green~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\,
	combout => \VGApart|red~1_combout\);

-- Location: FF_X24_Y13_N17
\VGApart|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGApart|red~1_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|red\(0));

-- Location: IOIBUF_X14_Y29_N15
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\GPIO1_D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(7),
	o => \GPIO1_D[7]~input_o\);

-- Location: FF_X22_Y8_N21
\CAP10|QinReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP10|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1_D[7]~input_o\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP10|QinReg\(7));

-- Location: IOIBUF_X19_Y0_N8
\GPIO1_D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(3),
	o => \GPIO1_D[3]~input_o\);

-- Location: FF_X22_Y8_N23
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

-- Location: LCCOMB_X22_Y8_N22
\CAP10|B[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[3]~3_combout\ = (\CAP10|takeTurn~q\ & ((\CAP10|QinReg\(3)))) # (!\CAP10|takeTurn~q\ & (\CAP10|QaddReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QaddReg\(3),
	datac => \CAP10|QinReg\(3),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|B[3]~3_combout\);

-- Location: LCCOMB_X22_Y8_N20
\CAP10|RipCar:2:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:2:FA|co~0_combout\ = (\CAP10|QinReg\(6) & ((\CAP10|B[2]~2_combout\) # (\CAP10|RipCar:1:FA|co~0_combout\))) # (!\CAP10|QinReg\(6) & (\CAP10|B[2]~2_combout\ & \CAP10|RipCar:1:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(6),
	datab => \CAP10|B[2]~2_combout\,
	datad => \CAP10|RipCar:1:FA|co~0_combout\,
	combout => \CAP10|RipCar:2:FA|co~0_combout\);

-- Location: LCCOMB_X22_Y8_N30
\CAP10|RipCar:3:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:3:FA|s~combout\ = \CAP10|QinReg\(7) $ (\CAP10|B[3]~3_combout\ $ (\CAP10|RipCar:2:FA|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(7),
	datac => \CAP10|B[3]~3_combout\,
	datad => \CAP10|RipCar:2:FA|co~0_combout\,
	combout => \CAP10|RipCar:3:FA|s~combout\);

-- Location: FF_X22_Y8_N31
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

-- Location: M9K_X13_Y21_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a25\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y17_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a29\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CAP10|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \CAP10|Equal2~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y18_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a21\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y7_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a17\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y13_N28
\RAM32|altsyncram_component|auto_generated|mux3|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) 
-- & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (\RAM32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\)) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\);

-- Location: LCCOMB_X14_Y13_N6
\RAM32|altsyncram_component|auto_generated|mux3|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\ & (\RAM32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\)))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\,
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\);

-- Location: M9K_X13_Y15_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y19_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y12_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3),
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X12_Y13_N14
\RAM32|altsyncram_component|auto_generated|mux3|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\) # 
-- ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ & 
-- !\RAM32|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\);

-- Location: M9K_X13_Y13_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X12_Y13_N28
\RAM32|altsyncram_component|auto_generated|mux3|_~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\ & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\)) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\ & ((\RAM32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\))))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\);

-- Location: LCCOMB_X12_Y13_N18
\RAM32|altsyncram_component|auto_generated|mux3|_~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & (\RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\)) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) 
-- & ((\RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(2),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\);

-- Location: LCCOMB_X12_Y13_N16
\VGApart|red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~2_combout\ = (\SW[7]~input_o\ & ((\VGApart|green~0_combout\) # ((\VGApart|red~0_combout\ & \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\)))) # (!\SW[7]~input_o\ & (((\VGApart|red~0_combout\ & 
-- \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \VGApart|green~0_combout\,
	datac => \VGApart|red~0_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\,
	combout => \VGApart|red~2_combout\);

-- Location: LCCOMB_X12_Y13_N24
\VGApart|red[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red[1]~feeder_combout\ = \VGApart|red~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGApart|red~2_combout\,
	combout => \VGApart|red[1]~feeder_combout\);

-- Location: FF_X12_Y13_N25
\VGApart|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red[1]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|red\(1));

-- Location: IOIBUF_X0_Y12_N8
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X22_Y8_N8
\CAP10|B[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|B[4]~4_combout\ = (\CAP10|QaddReg\(4) & !\CAP10|takeTurn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP10|QaddReg\(4),
	datad => \CAP10|takeTurn~q\,
	combout => \CAP10|B[4]~4_combout\);

-- Location: LCCOMB_X22_Y8_N4
\CAP10|RipCar:4:FA|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:4:FA|s~combout\ = \CAP10|B[4]~4_combout\ $ (((\CAP10|QinReg\(7) & ((\CAP10|B[3]~3_combout\) # (\CAP10|RipCar:2:FA|co~0_combout\))) # (!\CAP10|QinReg\(7) & (\CAP10|B[3]~3_combout\ & \CAP10|RipCar:2:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(7),
	datab => \CAP10|B[4]~4_combout\,
	datac => \CAP10|B[3]~3_combout\,
	datad => \CAP10|RipCar:2:FA|co~0_combout\,
	combout => \CAP10|RipCar:4:FA|s~combout\);

-- Location: FF_X22_Y8_N5
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

-- Location: M9K_X13_Y9_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y10_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3),
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y16_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X12_Y13_N8
\RAM32|altsyncram_component|auto_generated|mux3|_~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\) # 
-- (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (\RAM32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ & 
-- ((!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\);

-- Location: M9K_X13_Y5_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X12_Y13_N22
\RAM32|altsyncram_component|auto_generated|mux3|_~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\ & (\RAM32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\)))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\);

-- Location: M9K_X13_Y8_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a30\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CAP10|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \CAP10|Equal2~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y11_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a18\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y14_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a22\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X12_Y13_N4
\RAM32|altsyncram_component|auto_generated|mux3|_~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (\RAM32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\);

-- Location: M9K_X13_Y20_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a26\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X12_Y13_N6
\RAM32|altsyncram_component|auto_generated|mux3|_~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\ & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\)) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\ & ((\RAM32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\))))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\);

-- Location: LCCOMB_X12_Y13_N0
\RAM32|altsyncram_component|auto_generated|mux3|_~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & (\RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(2),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\);

-- Location: LCCOMB_X12_Y13_N10
\VGApart|red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~3_combout\ = (\VGApart|red~0_combout\ & ((\RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\) # ((\VGApart|green~0_combout\ & \SW[8]~input_o\)))) # (!\VGApart|red~0_combout\ & (\VGApart|green~0_combout\ & (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|red~0_combout\,
	datab => \VGApart|green~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\,
	combout => \VGApart|red~3_combout\);

-- Location: LCCOMB_X12_Y13_N2
\VGApart|red[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red[2]~feeder_combout\ = \VGApart|red~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGApart|red~3_combout\,
	combout => \VGApart|red[2]~feeder_combout\);

-- Location: FF_X12_Y13_N3
\VGApart|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red[2]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|red\(2));

-- Location: IOIBUF_X23_Y0_N29
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X22_Y8_N6
\CAP10|RipCar:4:FA|co~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP10|RipCar:4:FA|co~0_combout\ = (\CAP10|B[4]~4_combout\ & ((\CAP10|QinReg\(7) & ((\CAP10|B[3]~3_combout\) # (\CAP10|RipCar:2:FA|co~0_combout\))) # (!\CAP10|QinReg\(7) & (\CAP10|B[3]~3_combout\ & \CAP10|RipCar:2:FA|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP10|QinReg\(7),
	datab => \CAP10|B[4]~4_combout\,
	datac => \CAP10|B[3]~3_combout\,
	datad => \CAP10|RipCar:2:FA|co~0_combout\,
	combout => \CAP10|RipCar:4:FA|co~0_combout\);

-- Location: FF_X22_Y8_N7
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

-- Location: M9K_X25_Y14_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3),
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y16_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N12
\RAM32|altsyncram_component|auto_generated|mux3|_~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (\RAM32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\);

-- Location: M9K_X25_Y17_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y21_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a15\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N14
\RAM32|altsyncram_component|auto_generated|mux3|_~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\ = (\RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\ & (((\RAM32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\)) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0)))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\ & (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\);

-- Location: M9K_X25_Y15_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a19\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y13_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a23\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N18
\RAM32|altsyncram_component|auto_generated|mux3|_~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (\RAM32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\);

-- Location: M9K_X25_Y20_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a27\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y18_N0
\RAM32|altsyncram_component|auto_generated|ram_block1a31\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMx32:RAM32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CAP10|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CAP10|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \CAP10|Equal2~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N0
\RAM32|altsyncram_component|auto_generated|mux3|_~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\ & (\RAM32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\)))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (\RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\,
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\);

-- Location: LCCOMB_X24_Y13_N16
\RAM32|altsyncram_component|auto_generated|mux3|_~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & (\RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(2),
	datab => \RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\);

-- Location: LCCOMB_X24_Y13_N6
\VGApart|red~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~4_combout\ = (\VGApart|red~0_combout\ & ((\RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\) # ((\VGApart|green~0_combout\ & \SW[9]~input_o\)))) # (!\VGApart|red~0_combout\ & (\VGApart|green~0_combout\ & (\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|red~0_combout\,
	datab => \VGApart|green~0_combout\,
	datac => \SW[9]~input_o\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\,
	combout => \VGApart|red~4_combout\);

-- Location: LCCOMB_X24_Y13_N10
\VGApart|red[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red[3]~feeder_combout\ = \VGApart|red~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGApart|red~4_combout\,
	combout => \VGApart|red[3]~feeder_combout\);

-- Location: FF_X24_Y13_N11
\VGApart|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red[3]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|red\(3));

-- Location: LCCOMB_X23_Y13_N30
\VGApart|green~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~1_combout\ = (\VGApart|video_on~q\ & ((\VGApart|set_color~q\) # ((\VGApart|isColor~q\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|isColor~q\,
	datab => \SW[6]~input_o\,
	datac => \VGApart|set_color~q\,
	datad => \VGApart|video_on~q\,
	combout => \VGApart|green~1_combout\);

-- Location: LCCOMB_X24_Y13_N24
\VGApart|green~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~2_combout\ = (\VGApart|green~1_combout\) # ((\VGApart|video_on~q\ & (!\VGApart|isColor~q\ & \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|video_on~q\,
	datab => \VGApart|green~1_combout\,
	datac => \VGApart|isColor~q\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\,
	combout => \VGApart|green~2_combout\);

-- Location: FF_X24_Y13_N25
\VGApart|green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|green~2_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|green\(0));

-- Location: LCCOMB_X14_Y13_N16
\VGApart|green~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~3_combout\ = (\VGApart|video_on~q\ & ((\VGApart|set_color~q\) # ((\SW[7]~input_o\ & \VGApart|isColor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|set_color~q\,
	datab => \SW[7]~input_o\,
	datac => \VGApart|video_on~q\,
	datad => \VGApart|isColor~q\,
	combout => \VGApart|green~3_combout\);

-- Location: LCCOMB_X12_Y13_N12
\VGApart|green~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~4_combout\ = (\VGApart|green~3_combout\) # ((\VGApart|video_on~q\ & (!\VGApart|isColor~q\ & \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|video_on~q\,
	datab => \VGApart|isColor~q\,
	datac => \VGApart|green~3_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\,
	combout => \VGApart|green~4_combout\);

-- Location: FF_X12_Y13_N13
\VGApart|green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|green~4_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|green\(1));

-- Location: LCCOMB_X12_Y13_N26
\VGApart|green~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~5_combout\ = (\VGApart|video_on~q\ & ((\VGApart|set_color~q\) # ((\SW[8]~input_o\ & \VGApart|isColor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|video_on~q\,
	datab => \VGApart|set_color~q\,
	datac => \SW[8]~input_o\,
	datad => \VGApart|isColor~q\,
	combout => \VGApart|green~5_combout\);

-- Location: LCCOMB_X12_Y13_N30
\VGApart|green~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~6_combout\ = (\VGApart|green~5_combout\) # ((\VGApart|video_on~q\ & (!\VGApart|isColor~q\ & \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|video_on~q\,
	datab => \VGApart|isColor~q\,
	datac => \VGApart|green~5_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\,
	combout => \VGApart|green~6_combout\);

-- Location: FF_X12_Y13_N31
\VGApart|green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|green~6_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|green\(2));

-- Location: LCCOMB_X23_Y13_N4
\VGApart|green~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~7_combout\ = (\VGApart|video_on~q\ & ((\VGApart|set_color~q\) # ((\VGApart|isColor~q\ & \SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|isColor~q\,
	datab => \VGApart|video_on~q\,
	datac => \VGApart|set_color~q\,
	datad => \SW[9]~input_o\,
	combout => \VGApart|green~7_combout\);

-- Location: LCCOMB_X24_Y13_N26
\VGApart|green~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~8_combout\ = (\VGApart|green~7_combout\) # ((\VGApart|video_on~q\ & (!\VGApart|isColor~q\ & \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|video_on~q\,
	datab => \VGApart|green~7_combout\,
	datac => \VGApart|isColor~q\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\,
	combout => \VGApart|green~8_combout\);

-- Location: FF_X24_Y13_N27
\VGApart|green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|green~8_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|green\(3));

-- Location: FF_X24_Y13_N9
\VGApart|blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red~1_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|blue\(0));

-- Location: FF_X12_Y13_N17
\VGApart|blue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red~2_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|blue\(1));

-- Location: FF_X12_Y13_N11
\VGApart|blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red~3_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|blue\(2));

-- Location: FF_X24_Y13_N7
\VGApart|blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red~4_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|blue\(3));

-- Location: LCCOMB_X19_Y24_N2
\VGApart|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~0_combout\ = (\VGApart|h_count\(9) & (\VGApart|h_count\(7) & !\VGApart|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(9),
	datac => \VGApart|h_count\(7),
	datad => \VGApart|h_count\(8),
	combout => \VGApart|process_0~0_combout\);

-- Location: LCCOMB_X21_Y24_N28
\VGApart|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~1_combout\ = (\VGApart|h_count\(3)) # ((!\VGApart|h_count\(5) & (\VGApart|h_count\(0) & \VGApart|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(3),
	datab => \VGApart|h_count\(5),
	datac => \VGApart|h_count\(0),
	datad => \VGApart|h_count\(1),
	combout => \VGApart|process_0~1_combout\);

-- Location: LCCOMB_X20_Y24_N24
\VGApart|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~2_combout\ = (\VGApart|h_count\(4) & ((\VGApart|h_count\(2)) # (\VGApart|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(2),
	datab => \VGApart|process_0~1_combout\,
	datad => \VGApart|h_count\(4),
	combout => \VGApart|process_0~2_combout\);

-- Location: LCCOMB_X19_Y24_N28
\VGApart|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~3_combout\ = ((\VGApart|h_count\(5) & (\VGApart|h_count\(6) & \VGApart|process_0~2_combout\)) # (!\VGApart|h_count\(5) & (!\VGApart|h_count\(6) & !\VGApart|process_0~2_combout\))) # (!\VGApart|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|process_0~0_combout\,
	datac => \VGApart|h_count\(6),
	datad => \VGApart|process_0~2_combout\,
	combout => \VGApart|process_0~3_combout\);

-- Location: FF_X19_Y24_N29
\VGApart|Hsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|process_0~3_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|Hsync_aux~q\);

-- Location: LCCOMB_X21_Y23_N30
\VGApart|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~4_combout\ = ((\VGApart|v_count\(1) $ (!\VGApart|v_count\(0))) # (!\VGApart|v_count\(2))) # (!\VGApart|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(1),
	datab => \VGApart|v_count\(3),
	datac => \VGApart|v_count\(2),
	datad => \VGApart|v_count\(0),
	combout => \VGApart|process_0~4_combout\);

-- Location: LCCOMB_X21_Y23_N4
\VGApart|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~5_combout\ = ((\VGApart|v_count\(4)) # ((\VGApart|process_0~4_combout\) # (\VGApart|v_count\(9)))) # (!\VGApart|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|LessThan5~0_combout\,
	datab => \VGApart|v_count\(4),
	datac => \VGApart|process_0~4_combout\,
	datad => \VGApart|v_count\(9),
	combout => \VGApart|process_0~5_combout\);

-- Location: FF_X21_Y23_N5
\VGApart|Vsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|process_0~5_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|Vsync_aux~q\);

-- Location: IOIBUF_X3_Y0_N8
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\GPIO1_D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1_D(10),
	o => \GPIO1_D[10]~input_o\);
END structure;


