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

-- DATE "06/08/2024 19:26:05"

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

ENTITY 	RAMCore2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(6 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic
	);
END RAMCore2;

-- Design Ports Information
-- VGA_R[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAMCore2 IS
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
SIGNAL ww_SW : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk12M~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|Write_addressing~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|readDir_32[0]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \VGA_controller|Add1~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \VGA_controller|Add1~1\ : std_logic;
SIGNAL \VGA_controller|Add1~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~3\ : std_logic;
SIGNAL \VGA_controller|Add1~4_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~5\ : std_logic;
SIGNAL \VGA_controller|Add1~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~7\ : std_logic;
SIGNAL \VGA_controller|Add1~8_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~9\ : std_logic;
SIGNAL \VGA_controller|Add1~10_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~11\ : std_logic;
SIGNAL \VGA_controller|Add1~12_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~13\ : std_logic;
SIGNAL \VGA_controller|Add1~14_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~15\ : std_logic;
SIGNAL \VGA_controller|Add1~16_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~1_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_controller|Add1~17\ : std_logic;
SIGNAL \VGA_controller|Add1~18_combout\ : std_logic;
SIGNAL \VGA_controller|h_count~0_combout\ : std_logic;
SIGNAL \VGA_controller|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~0_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~29_combout\ : std_logic;
SIGNAL \VGA_controller|v_count[9]~0_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~1\ : std_logic;
SIGNAL \VGA_controller|Add0~2_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~27_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~3\ : std_logic;
SIGNAL \VGA_controller|Add0~4_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~28_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~5\ : std_logic;
SIGNAL \VGA_controller|Add0~6_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~26_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~7\ : std_logic;
SIGNAL \VGA_controller|Add0~8_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~25_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~9\ : std_logic;
SIGNAL \VGA_controller|Add0~10_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~21_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~11\ : std_logic;
SIGNAL \VGA_controller|Add0~12_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~22_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~13\ : std_logic;
SIGNAL \VGA_controller|Add0~15\ : std_logic;
SIGNAL \VGA_controller|Add0~16_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~24_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~17\ : std_logic;
SIGNAL \VGA_controller|Add0~18_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~20_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~6_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~7_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~8_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~14_combout\ : std_logic;
SIGNAL \VGA_controller|Add0~23_combout\ : std_logic;
SIGNAL \VGA_controller|Vcount[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|Vcount[6]~feeder_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan29~0_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan29~1_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan29~2_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan16~0_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan17~0_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan30~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add54~1\ : std_logic;
SIGNAL \RAM_controller|Add54~3\ : std_logic;
SIGNAL \RAM_controller|Add54~5\ : std_logic;
SIGNAL \RAM_controller|Add54~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add54~7\ : std_logic;
SIGNAL \RAM_controller|Add54~9\ : std_logic;
SIGNAL \RAM_controller|Add54~11\ : std_logic;
SIGNAL \RAM_controller|Add54~13\ : std_logic;
SIGNAL \RAM_controller|Add54~14_combout\ : std_logic;
SIGNAL \RAM_controller|Add54~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add54~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add54~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add54~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add54~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add54~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~1_cout\ : std_logic;
SIGNAL \RAM_controller|Add30~3\ : std_logic;
SIGNAL \RAM_controller|Add30~5\ : std_logic;
SIGNAL \RAM_controller|Add30~7\ : std_logic;
SIGNAL \RAM_controller|Add30~9\ : std_logic;
SIGNAL \RAM_controller|Add30~11\ : std_logic;
SIGNAL \RAM_controller|Add30~13\ : std_logic;
SIGNAL \RAM_controller|Add30~15\ : std_logic;
SIGNAL \RAM_controller|Add30~16_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~14_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add31~1\ : std_logic;
SIGNAL \RAM_controller|Add31~3\ : std_logic;
SIGNAL \RAM_controller|Add31~5\ : std_logic;
SIGNAL \RAM_controller|Add31~7\ : std_logic;
SIGNAL \RAM_controller|Add31~8_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan27~1_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan27~2_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan27~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~1_cout\ : std_logic;
SIGNAL \RAM_controller|Add42~3\ : std_logic;
SIGNAL \RAM_controller|Add42~5\ : std_logic;
SIGNAL \RAM_controller|Add42~7\ : std_logic;
SIGNAL \RAM_controller|Add42~9\ : std_logic;
SIGNAL \RAM_controller|Add42~11\ : std_logic;
SIGNAL \RAM_controller|Add42~13\ : std_logic;
SIGNAL \RAM_controller|Add42~15\ : std_logic;
SIGNAL \RAM_controller|Add42~16_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~14_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~1\ : std_logic;
SIGNAL \RAM_controller|Add43~3\ : std_logic;
SIGNAL \RAM_controller|Add43~5\ : std_logic;
SIGNAL \RAM_controller|Add43~7\ : std_logic;
SIGNAL \RAM_controller|Add43~8_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[0]~1\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[1]~3\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[2]~5\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[3]~7\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[4]~9\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[5]~11\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[6]~13\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[7]~15\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[8]~16_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[7]~14_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[4]~8_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[6]~12_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[5]~10_combout\ : std_logic;
SIGNAL \RAM_controller|D_out~4_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[8]~17\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[9]~18_combout\ : std_logic;
SIGNAL \RAM_controller|D_out~2_combout\ : std_logic;
SIGNAL \RAM_controller|D_out~3_combout\ : std_logic;
SIGNAL \RAM_controller|D_out~5_combout\ : std_logic;
SIGNAL \RAM_controller|ReadEna~0_combout\ : std_logic;
SIGNAL \RAM_controller|ReadEna~1_combout\ : std_logic;
SIGNAL \RAM_controller|read_addressing~0_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan15~0_combout\ : std_logic;
SIGNAL \RAM_controller|D_out~0_combout\ : std_logic;
SIGNAL \RAM_controller|D_out~1_combout\ : std_logic;
SIGNAL \RAM_controller|read_addressing~1_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add31~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~11_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add31~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add31~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~13_combout\ : std_logic;
SIGNAL \RAM_controller|Add45~1\ : std_logic;
SIGNAL \RAM_controller|Add45~3\ : std_logic;
SIGNAL \RAM_controller|Add45~5\ : std_logic;
SIGNAL \RAM_controller|Add45~7\ : std_logic;
SIGNAL \RAM_controller|Add45~9\ : std_logic;
SIGNAL \RAM_controller|Add45~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add31~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~14_combout\ : std_logic;
SIGNAL \RAM_controller|Add45~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add45~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~1_combout\ : std_logic;
SIGNAL \RAM_controller|Add45~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~3_combout\ : std_logic;
SIGNAL \RAM_controller|Add45~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~5\ : std_logic;
SIGNAL \RAM_controller|Add32~7\ : std_logic;
SIGNAL \RAM_controller|Add32~9\ : std_logic;
SIGNAL \RAM_controller|Add32~11\ : std_logic;
SIGNAL \RAM_controller|Add32~13\ : std_logic;
SIGNAL \RAM_controller|Add32~15\ : std_logic;
SIGNAL \RAM_controller|Add32~17\ : std_logic;
SIGNAL \RAM_controller|Add32~19\ : std_logic;
SIGNAL \RAM_controller|Add32~20_combout\ : std_logic;
SIGNAL \RAM_controller|readEna_32~2_combout\ : std_logic;
SIGNAL \RAM_controller|readEna_32~3_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~22_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[0]~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add41~0_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[0]~1_combout\ : std_logic;
SIGNAL \RAM_controller|ReadEna~2_combout\ : std_logic;
SIGNAL \RAM_controller|ReadEna~3_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[0]~2_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[0]~2clkctrl_outclk\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \RAM_controller|readEna_32~4_combout\ : std_logic;
SIGNAL \RAM_controller|readEna_32~5_combout\ : std_logic;
SIGNAL \RAM_controller|Add41~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~17\ : std_logic;
SIGNAL \RAM_controller|Add42~18_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~9\ : std_logic;
SIGNAL \RAM_controller|Add43~15_combout\ : std_logic;
SIGNAL \RAM_controller|Add54~15\ : std_logic;
SIGNAL \RAM_controller|Add54~16_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~17\ : std_logic;
SIGNAL \RAM_controller|Add30~18_combout\ : std_logic;
SIGNAL \RAM_controller|Add31~9\ : std_logic;
SIGNAL \RAM_controller|Add31~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~20_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~21\ : std_logic;
SIGNAL \RAM_controller|Add32~23_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~28_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \clk12M~0_combout\ : std_logic;
SIGNAL \clk12M~q\ : std_logic;
SIGNAL \RAM_controller|Add0~0_combout\ : std_logic;
SIGNAL \clk12M~clkctrl_outclk\ : std_logic;
SIGNAL \RAM_controller|Add1~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add1~1\ : std_logic;
SIGNAL \RAM_controller|Add1~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add1~3\ : std_logic;
SIGNAL \RAM_controller|Add1~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add1~5\ : std_logic;
SIGNAL \RAM_controller|Add1~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add1~7\ : std_logic;
SIGNAL \RAM_controller|Add1~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add1~9\ : std_logic;
SIGNAL \RAM_controller|Add1~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add1~11\ : std_logic;
SIGNAL \RAM_controller|Add1~12_combout\ : std_logic;
SIGNAL \RAM_controller|Equal1~1_combout\ : std_logic;
SIGNAL \RAM_controller|Add1~13\ : std_logic;
SIGNAL \RAM_controller|Add1~14_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_write~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add1~15\ : std_logic;
SIGNAL \RAM_controller|Add1~16_combout\ : std_logic;
SIGNAL \RAM_controller|Add1~17\ : std_logic;
SIGNAL \RAM_controller|Add1~18_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_write~1_combout\ : std_logic;
SIGNAL \RAM_controller|Equal1~0_combout\ : std_logic;
SIGNAL \RAM_controller|Equal1~2_combout\ : std_logic;
SIGNAL \RAM_controller|v_count_write[9]~1_combout\ : std_logic;
SIGNAL \RAM_controller|Add0~1\ : std_logic;
SIGNAL \RAM_controller|Add0~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add0~3\ : std_logic;
SIGNAL \RAM_controller|Add0~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add0~5\ : std_logic;
SIGNAL \RAM_controller|Add0~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add0~7\ : std_logic;
SIGNAL \RAM_controller|Add0~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add0~9\ : std_logic;
SIGNAL \RAM_controller|Add0~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add0~15\ : std_logic;
SIGNAL \RAM_controller|Add0~16_combout\ : std_logic;
SIGNAL \RAM_controller|v_count_write~4_combout\ : std_logic;
SIGNAL \RAM_controller|write_couters~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add0~17\ : std_logic;
SIGNAL \RAM_controller|Add0~18_combout\ : std_logic;
SIGNAL \RAM_controller|write_couters~0_combout\ : std_logic;
SIGNAL \RAM_controller|write_couters~1_combout\ : std_logic;
SIGNAL \RAM_controller|write_couters~3_combout\ : std_logic;
SIGNAL \RAM_controller|v_count_write~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add0~11\ : std_logic;
SIGNAL \RAM_controller|Add0~12_combout\ : std_logic;
SIGNAL \RAM_controller|v_count_write~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add0~13\ : std_logic;
SIGNAL \RAM_controller|Add0~14_combout\ : std_logic;
SIGNAL \RAM_controller|v_count_write~3_combout\ : std_logic;
SIGNAL \RAM_controller|Par_Reg~0_combout\ : std_logic;
SIGNAL \RAM_controller|Par_Reg~1_combout\ : std_logic;
SIGNAL \RAM_controller|Write_addressing~0_combout\ : std_logic;
SIGNAL \RAM_controller|Write_addressing~1_combout\ : std_logic;
SIGNAL \RAM_controller|Write_addressing~2_combout\ : std_logic;
SIGNAL \RAM_controller|Write_addressing~3_combout\ : std_logic;
SIGNAL \RAM_controller|Write_addressing~3clkctrl_outclk\ : std_logic;
SIGNAL \RAM_controller|Add2~1\ : std_logic;
SIGNAL \RAM_controller|Add2~3\ : std_logic;
SIGNAL \RAM_controller|Add2~5\ : std_logic;
SIGNAL \RAM_controller|Add2~7\ : std_logic;
SIGNAL \RAM_controller|Add2~9\ : std_logic;
SIGNAL \RAM_controller|Add2~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add2~11\ : std_logic;
SIGNAL \RAM_controller|Add2~13\ : std_logic;
SIGNAL \RAM_controller|Add2~15\ : std_logic;
SIGNAL \RAM_controller|Add2~16_combout\ : std_logic;
SIGNAL \RAM_controller|Add2~14_combout\ : std_logic;
SIGNAL \RAM_controller|Add2~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add2~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add2~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add2~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add2~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add2~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~1_cout\ : std_logic;
SIGNAL \RAM_controller|Add3~3\ : std_logic;
SIGNAL \RAM_controller|Add3~5\ : std_logic;
SIGNAL \RAM_controller|Add3~7\ : std_logic;
SIGNAL \RAM_controller|Add3~9\ : std_logic;
SIGNAL \RAM_controller|Add3~11\ : std_logic;
SIGNAL \RAM_controller|Add3~13\ : std_logic;
SIGNAL \RAM_controller|Add3~15\ : std_logic;
SIGNAL \RAM_controller|Add3~17\ : std_logic;
SIGNAL \RAM_controller|Add3~19\ : std_logic;
SIGNAL \RAM_controller|Add3~20_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~18_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~16_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~14_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add4~1\ : std_logic;
SIGNAL \RAM_controller|Add4~3\ : std_logic;
SIGNAL \RAM_controller|Add4~5\ : std_logic;
SIGNAL \RAM_controller|Add4~7\ : std_logic;
SIGNAL \RAM_controller|Add4~9\ : std_logic;
SIGNAL \RAM_controller|Add4~11\ : std_logic;
SIGNAL \RAM_controller|Add4~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add14~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add14~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add14~3_combout\ : std_logic;
SIGNAL \RAM_controller|Add14~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add14~1_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~1_cout\ : std_logic;
SIGNAL \RAM_controller|Add15~3\ : std_logic;
SIGNAL \RAM_controller|Add15~5\ : std_logic;
SIGNAL \RAM_controller|Add15~7\ : std_logic;
SIGNAL \RAM_controller|Add15~9\ : std_logic;
SIGNAL \RAM_controller|Add15~11\ : std_logic;
SIGNAL \RAM_controller|Add15~13\ : std_logic;
SIGNAL \RAM_controller|Add15~15\ : std_logic;
SIGNAL \RAM_controller|Add15~17\ : std_logic;
SIGNAL \RAM_controller|Add15~19\ : std_logic;
SIGNAL \RAM_controller|Add15~20_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~18_combout\ : std_logic;
SIGNAL \RAM_controller|Add14~5_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~16_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~14_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~1\ : std_logic;
SIGNAL \RAM_controller|Add16~3\ : std_logic;
SIGNAL \RAM_controller|Add16~5\ : std_logic;
SIGNAL \RAM_controller|Add16~7\ : std_logic;
SIGNAL \RAM_controller|Add16~9\ : std_logic;
SIGNAL \RAM_controller|Add16~16\ : std_logic;
SIGNAL \RAM_controller|Add16~17_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~19_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~15_combout\ : std_logic;
SIGNAL \RAM_controller|Add4~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~20_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add4~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add4~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~11_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add4~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add4~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~13_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add4~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add16~14_combout\ : std_logic;
SIGNAL \RAM_controller|Add18~1\ : std_logic;
SIGNAL \RAM_controller|Add18~3\ : std_logic;
SIGNAL \RAM_controller|Add18~5\ : std_logic;
SIGNAL \RAM_controller|Add18~7\ : std_logic;
SIGNAL \RAM_controller|Add18~9\ : std_logic;
SIGNAL \RAM_controller|Add18~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add18~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add18~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~1_combout\ : std_logic;
SIGNAL \RAM_controller|Add15~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add3~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add18~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add18~2_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~4\ : std_logic;
SIGNAL \RAM_controller|Add5~6\ : std_logic;
SIGNAL \RAM_controller|Add5~8\ : std_logic;
SIGNAL \RAM_controller|Add5~10\ : std_logic;
SIGNAL \RAM_controller|Add5~12\ : std_logic;
SIGNAL \RAM_controller|Add5~14\ : std_logic;
SIGNAL \RAM_controller|Add5~16\ : std_logic;
SIGNAL \RAM_controller|Add5~18\ : std_logic;
SIGNAL \RAM_controller|Add5~20\ : std_logic;
SIGNAL \RAM_controller|Add5~22\ : std_logic;
SIGNAL \RAM_controller|Add5~23_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~21_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~19_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add30~19\ : std_logic;
SIGNAL \RAM_controller|Add30~20_combout\ : std_logic;
SIGNAL \RAM_controller|Add31~11\ : std_logic;
SIGNAL \RAM_controller|Add31~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add42~19\ : std_logic;
SIGNAL \RAM_controller|Add42~20_combout\ : std_logic;
SIGNAL \RAM_controller|Add41~1_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~16\ : std_logic;
SIGNAL \RAM_controller|Add43~17_combout\ : std_logic;
SIGNAL \RAM_controller|Add43~19_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~24\ : std_logic;
SIGNAL \RAM_controller|Add32~25_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~27_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \SW[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \RAM_controller|Add18~0_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~3_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~5_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~7_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~9_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~11_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~13_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~15_combout\ : std_logic;
SIGNAL \RAM_controller|Add5~17_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[0]~0_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[3]~3_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[0]~4_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[1]~2_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[1]~5_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[2]~4_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[2]~6_combout\ : std_logic;
SIGNAL \RAM_controller|h_count_read_aux[3]~6_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[3]~7_combout\ : std_logic;
SIGNAL \RAM_controller|Add45~0_combout\ : std_logic;
SIGNAL \RAM_controller|readDir_32[4]~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~4_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~29_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~6_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~30_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~8_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~31_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~10_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~32_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~12_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~33_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~14_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~34_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~16_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~35_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~18_combout\ : std_logic;
SIGNAL \RAM_controller|Add32~36_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~0_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~1_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~2_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~3_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_controller|LessThan6~1_combout\ : std_logic;
SIGNAL \VGA_controller|video_on_v~q\ : std_logic;
SIGNAL \VGA_controller|LessThan5~0_combout\ : std_logic;
SIGNAL \VGA_controller|video_on_h~q\ : std_logic;
SIGNAL \VGA_controller|video_on~combout\ : std_logic;
SIGNAL \RAM_controller|D_out~6_combout\ : std_logic;
SIGNAL \RAM_controller|D_out~8_combout\ : std_logic;
SIGNAL \RAM_controller|LessThan13~0_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[0]~0_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[0]~1_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[5]~2_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[6]~8_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[5]~12_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[4]~13_combout\ : std_logic;
SIGNAL \RAM_controller|Mux0~3_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[7]~6_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[7]~7_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[6]~9_combout\ : std_logic;
SIGNAL \RAM_controller|Mux0~1_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[4]~3_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[2]~11_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[3]~10_combout\ : std_logic;
SIGNAL \RAM_controller|Mux0~2_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[0]~5_combout\ : std_logic;
SIGNAL \RAM_controller|Parity_register[1]~4_combout\ : std_logic;
SIGNAL \RAM_controller|Mux0~0_combout\ : std_logic;
SIGNAL \RAM_controller|Mux0~4_combout\ : std_logic;
SIGNAL \RAM_controller|Mux0~5_combout\ : std_logic;
SIGNAL \RAM_controller|Mux1~0_combout\ : std_logic;
SIGNAL \RAM_controller|Mux1~1_combout\ : std_logic;
SIGNAL \RAM_controller|D_out~9_combout\ : std_logic;
SIGNAL \RAM_controller|D_out~7_combout\ : std_logic;
SIGNAL \VGA_controller|red~0_combout\ : std_logic;
SIGNAL \VGA_controller|red~1_combout\ : std_logic;
SIGNAL \VGA_controller|red~2_combout\ : std_logic;
SIGNAL \VGA_controller|red~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~6_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~7_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~4_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~5_combout\ : std_logic;
SIGNAL \VGA_controller|red~4_combout\ : std_logic;
SIGNAL \VGA_controller|red[1]~feeder_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~8_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~9_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~10_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~11_combout\ : std_logic;
SIGNAL \VGA_controller|red~5_combout\ : std_logic;
SIGNAL \VGA_controller|red[2]~feeder_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~12_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~13_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~14_combout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~15_combout\ : std_logic;
SIGNAL \VGA_controller|red~6_combout\ : std_logic;
SIGNAL \VGA_controller|red[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|green[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~0_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~1_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~2_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~3_combout\ : std_logic;
SIGNAL \VGA_controller|Hsync_aux~q\ : std_logic;
SIGNAL \VGA_controller|Hsync~q\ : std_logic;
SIGNAL \VGA_controller|process_0~4_combout\ : std_logic;
SIGNAL \VGA_controller|process_0~5_combout\ : std_logic;
SIGNAL \VGA_controller|Vsync_aux~q\ : std_logic;
SIGNAL \VGA_controller|Vsync~feeder_combout\ : std_logic;
SIGNAL \VGA_controller|Vsync~q\ : std_logic;
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|Parity_register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM_controller|readDir_32\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|writeDir_32\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|h_count_write\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM_controller|v_count_write\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_controller|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|red\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|green\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|blue\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_controller|Vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controller|Hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk12M~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk12M~q\ : std_logic;

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

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \SW[3]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \SW[3]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \SW[3]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \SW[3]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \SW[3]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \SW[3]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \SW[3]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \SW[3]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\CLK25|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\CLK25|altpll_component|auto_generated|wire_pll1_clk\(0) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(0);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(1) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(1);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(2) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(2);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(3) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(3);
\CLK25|altpll_component|auto_generated|wire_pll1_clk\(4) <= \CLK25|altpll_component|auto_generated|pll1_CLK_bus\(4);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \SW[4]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \SW[4]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \SW[4]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \SW[4]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \SW[4]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \SW[4]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \SW[4]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \SW[4]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \SW[5]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \SW[5]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \SW[5]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \SW[5]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \SW[5]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \SW[5]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \SW[5]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \SW[5]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \SW[6]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \SW[6]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \SW[6]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \SW[6]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \SW[6]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \SW[6]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \SW[6]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \SW[6]~input_o\;

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\RAM_controller|writeDir_32\(12) & \RAM_controller|writeDir_32\(11) & \RAM_controller|writeDir_32\(10) & \RAM_controller|writeDir_32\(9) & 
\RAM_controller|writeDir_32\(8) & \RAM_controller|writeDir_32\(7) & \RAM_controller|writeDir_32\(6) & \RAM_controller|writeDir_32\(5) & \RAM_controller|writeDir_32\(4) & \RAM_controller|writeDir_32\(3) & \RAM_controller|writeDir_32\(2) & 
\RAM_controller|writeDir_32\(1) & \RAM_controller|writeDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\RAM_controller|readDir_32\(12) & \RAM_controller|readDir_32\(11) & \RAM_controller|readDir_32\(10) & \RAM_controller|readDir_32\(9) & 
\RAM_controller|readDir_32\(8) & \RAM_controller|readDir_32\(7) & \RAM_controller|readDir_32\(6) & \RAM_controller|readDir_32\(5) & \RAM_controller|readDir_32\(4) & \RAM_controller|readDir_32\(3) & \RAM_controller|readDir_32\(2) & 
\RAM_controller|readDir_32\(1) & \RAM_controller|readDir_32\(0));

\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ <= \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(0) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(0);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(1) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(1);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(2) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(2);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(3) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(3);
\CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(4) <= \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\(4);

\clk12M~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk12M~q\);

\CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK25|altpll_component|auto_generated|wire_pll1_clk\(0));

\RAM_controller|Write_addressing~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM_controller|Write_addressing~3_combout\);

\RAM_controller|readDir_32[0]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM_controller|readDir_32[0]~2_combout\);

\SW[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[1]~input_o\);

\CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(0));
\CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\ALT_INV_clk12M~clkctrl_outclk\ <= NOT \clk12M~clkctrl_outclk\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_clk12M~q\ <= NOT \clk12M~q\;

-- Location: IOOBUF_X11_Y29_N2
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

-- Location: IOOBUF_X21_Y29_N16
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

-- Location: IOOBUF_X14_Y29_N30
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

-- Location: IOOBUF_X16_Y29_N2
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

-- Location: IOOBUF_X11_Y29_N23
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

-- Location: IOOBUF_X11_Y29_N16
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

-- Location: IOOBUF_X11_Y29_N9
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

-- Location: IOOBUF_X16_Y29_N16
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

-- Location: IOOBUF_X14_Y29_N9
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

-- Location: IOOBUF_X14_Y29_N23
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

-- Location: IOOBUF_X16_Y29_N30
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

-- Location: IOOBUF_X16_Y29_N9
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

-- Location: IOOBUF_X16_Y29_N23
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

-- Location: IOOBUF_X21_Y29_N23
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

-- Location: IOIBUF_X19_Y29_N29
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

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

-- Location: LCCOMB_X19_Y25_N0
\VGA_controller|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~0_combout\ = \VGA_controller|h_count\(0) $ (VCC)
-- \VGA_controller|Add1~1\ = CARRY(\VGA_controller|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(0),
	datad => VCC,
	combout => \VGA_controller|Add1~0_combout\,
	cout => \VGA_controller|Add1~1\);

-- Location: IOIBUF_X21_Y29_N1
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X19_Y25_N1
\VGA_controller|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(0));

-- Location: LCCOMB_X19_Y25_N2
\VGA_controller|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~2_combout\ = (\VGA_controller|h_count\(1) & (!\VGA_controller|Add1~1\)) # (!\VGA_controller|h_count\(1) & ((\VGA_controller|Add1~1\) # (GND)))
-- \VGA_controller|Add1~3\ = CARRY((!\VGA_controller|Add1~1\) # (!\VGA_controller|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(1),
	datad => VCC,
	cin => \VGA_controller|Add1~1\,
	combout => \VGA_controller|Add1~2_combout\,
	cout => \VGA_controller|Add1~3\);

-- Location: FF_X19_Y25_N3
\VGA_controller|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(1));

-- Location: LCCOMB_X19_Y25_N4
\VGA_controller|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~4_combout\ = (\VGA_controller|h_count\(2) & (\VGA_controller|Add1~3\ $ (GND))) # (!\VGA_controller|h_count\(2) & (!\VGA_controller|Add1~3\ & VCC))
-- \VGA_controller|Add1~5\ = CARRY((\VGA_controller|h_count\(2) & !\VGA_controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(2),
	datad => VCC,
	cin => \VGA_controller|Add1~3\,
	combout => \VGA_controller|Add1~4_combout\,
	cout => \VGA_controller|Add1~5\);

-- Location: FF_X19_Y25_N5
\VGA_controller|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(2));

-- Location: LCCOMB_X19_Y25_N6
\VGA_controller|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~6_combout\ = (\VGA_controller|h_count\(3) & (!\VGA_controller|Add1~5\)) # (!\VGA_controller|h_count\(3) & ((\VGA_controller|Add1~5\) # (GND)))
-- \VGA_controller|Add1~7\ = CARRY((!\VGA_controller|Add1~5\) # (!\VGA_controller|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(3),
	datad => VCC,
	cin => \VGA_controller|Add1~5\,
	combout => \VGA_controller|Add1~6_combout\,
	cout => \VGA_controller|Add1~7\);

-- Location: FF_X19_Y25_N7
\VGA_controller|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~6_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(3));

-- Location: LCCOMB_X19_Y25_N8
\VGA_controller|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~8_combout\ = (\VGA_controller|h_count\(4) & (\VGA_controller|Add1~7\ $ (GND))) # (!\VGA_controller|h_count\(4) & (!\VGA_controller|Add1~7\ & VCC))
-- \VGA_controller|Add1~9\ = CARRY((\VGA_controller|h_count\(4) & !\VGA_controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(4),
	datad => VCC,
	cin => \VGA_controller|Add1~7\,
	combout => \VGA_controller|Add1~8_combout\,
	cout => \VGA_controller|Add1~9\);

-- Location: FF_X19_Y25_N9
\VGA_controller|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~8_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(4));

-- Location: LCCOMB_X19_Y25_N10
\VGA_controller|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~10_combout\ = (\VGA_controller|h_count\(5) & (!\VGA_controller|Add1~9\)) # (!\VGA_controller|h_count\(5) & ((\VGA_controller|Add1~9\) # (GND)))
-- \VGA_controller|Add1~11\ = CARRY((!\VGA_controller|Add1~9\) # (!\VGA_controller|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(5),
	datad => VCC,
	cin => \VGA_controller|Add1~9\,
	combout => \VGA_controller|Add1~10_combout\,
	cout => \VGA_controller|Add1~11\);

-- Location: LCCOMB_X20_Y25_N12
\VGA_controller|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|h_count~2_combout\ = (\VGA_controller|Add1~10_combout\ & !\VGA_controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add1~10_combout\,
	datac => \VGA_controller|Equal0~2_combout\,
	combout => \VGA_controller|h_count~2_combout\);

-- Location: FF_X20_Y25_N13
\VGA_controller|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(5));

-- Location: LCCOMB_X19_Y25_N12
\VGA_controller|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~12_combout\ = (\VGA_controller|h_count\(6) & (\VGA_controller|Add1~11\ $ (GND))) # (!\VGA_controller|h_count\(6) & (!\VGA_controller|Add1~11\ & VCC))
-- \VGA_controller|Add1~13\ = CARRY((\VGA_controller|h_count\(6) & !\VGA_controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(6),
	datad => VCC,
	cin => \VGA_controller|Add1~11\,
	combout => \VGA_controller|Add1~12_combout\,
	cout => \VGA_controller|Add1~13\);

-- Location: FF_X19_Y25_N13
\VGA_controller|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~12_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(6));

-- Location: LCCOMB_X19_Y25_N14
\VGA_controller|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~14_combout\ = (\VGA_controller|h_count\(7) & (!\VGA_controller|Add1~13\)) # (!\VGA_controller|h_count\(7) & ((\VGA_controller|Add1~13\) # (GND)))
-- \VGA_controller|Add1~15\ = CARRY((!\VGA_controller|Add1~13\) # (!\VGA_controller|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|h_count\(7),
	datad => VCC,
	cin => \VGA_controller|Add1~13\,
	combout => \VGA_controller|Add1~14_combout\,
	cout => \VGA_controller|Add1~15\);

-- Location: FF_X19_Y25_N15
\VGA_controller|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add1~14_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(7));

-- Location: LCCOMB_X19_Y25_N16
\VGA_controller|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~16_combout\ = (\VGA_controller|h_count\(8) & (\VGA_controller|Add1~15\ $ (GND))) # (!\VGA_controller|h_count\(8) & (!\VGA_controller|Add1~15\ & VCC))
-- \VGA_controller|Add1~17\ = CARRY((\VGA_controller|h_count\(8) & !\VGA_controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(8),
	datad => VCC,
	cin => \VGA_controller|Add1~15\,
	combout => \VGA_controller|Add1~16_combout\,
	cout => \VGA_controller|Add1~17\);

-- Location: LCCOMB_X19_Y25_N20
\VGA_controller|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|h_count~1_combout\ = (\VGA_controller|Add1~16_combout\ & !\VGA_controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Add1~16_combout\,
	datac => \VGA_controller|Equal0~2_combout\,
	combout => \VGA_controller|h_count~1_combout\);

-- Location: FF_X19_Y25_N21
\VGA_controller|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(8));

-- Location: LCCOMB_X19_Y25_N28
\VGA_controller|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~1_combout\ = (\VGA_controller|h_count\(4) & (\VGA_controller|h_count\(2) & (\VGA_controller|h_count\(3) & !\VGA_controller|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(4),
	datab => \VGA_controller|h_count\(2),
	datac => \VGA_controller|h_count\(3),
	datad => \VGA_controller|h_count\(7),
	combout => \VGA_controller|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y25_N30
\VGA_controller|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~0_combout\ = (\VGA_controller|h_count\(0) & (\VGA_controller|h_count\(1) & (!\VGA_controller|h_count\(5) & !\VGA_controller|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(0),
	datab => \VGA_controller|h_count\(1),
	datac => \VGA_controller|h_count\(5),
	datad => \VGA_controller|h_count\(6),
	combout => \VGA_controller|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y25_N18
\VGA_controller|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add1~18_combout\ = \VGA_controller|Add1~17\ $ (\VGA_controller|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|h_count\(9),
	cin => \VGA_controller|Add1~17\,
	combout => \VGA_controller|Add1~18_combout\);

-- Location: LCCOMB_X20_Y25_N16
\VGA_controller|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|h_count~0_combout\ = (\VGA_controller|Add1~18_combout\ & !\VGA_controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Add1~18_combout\,
	datac => \VGA_controller|Equal0~2_combout\,
	combout => \VGA_controller|h_count~0_combout\);

-- Location: FF_X20_Y25_N17
\VGA_controller|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|h_count~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|h_count\(9));

-- Location: LCCOMB_X19_Y25_N26
\VGA_controller|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Equal0~2_combout\ = (\VGA_controller|h_count\(8) & (\VGA_controller|Equal0~1_combout\ & (\VGA_controller|Equal0~0_combout\ & \VGA_controller|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(8),
	datab => \VGA_controller|Equal0~1_combout\,
	datac => \VGA_controller|Equal0~0_combout\,
	datad => \VGA_controller|h_count\(9),
	combout => \VGA_controller|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y26_N6
\VGA_controller|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~0_combout\ = \VGA_controller|v_count\(0) $ (VCC)
-- \VGA_controller|Add0~1\ = CARRY(\VGA_controller|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(0),
	datad => VCC,
	combout => \VGA_controller|Add0~0_combout\,
	cout => \VGA_controller|Add0~1\);

-- Location: LCCOMB_X19_Y26_N30
\VGA_controller|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~29_combout\ = (\VGA_controller|Add0~0_combout\ & !\VGA_controller|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add0~0_combout\,
	datad => \VGA_controller|process_0~8_combout\,
	combout => \VGA_controller|Add0~29_combout\);

-- Location: LCCOMB_X20_Y26_N4
\VGA_controller|v_count[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|v_count[9]~0_combout\ = (\VGA_controller|Equal0~2_combout\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Equal0~2_combout\,
	datad => \SW[2]~input_o\,
	combout => \VGA_controller|v_count[9]~0_combout\);

-- Location: FF_X19_Y26_N31
\VGA_controller|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~29_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(0));

-- Location: LCCOMB_X19_Y26_N8
\VGA_controller|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~2_combout\ = (\VGA_controller|v_count\(1) & (!\VGA_controller|Add0~1\)) # (!\VGA_controller|v_count\(1) & ((\VGA_controller|Add0~1\) # (GND)))
-- \VGA_controller|Add0~3\ = CARRY((!\VGA_controller|Add0~1\) # (!\VGA_controller|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(1),
	datad => VCC,
	cin => \VGA_controller|Add0~1\,
	combout => \VGA_controller|Add0~2_combout\,
	cout => \VGA_controller|Add0~3\);

-- Location: LCCOMB_X20_Y26_N14
\VGA_controller|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~27_combout\ = (\VGA_controller|Add0~2_combout\ & !\VGA_controller|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add0~2_combout\,
	datac => \VGA_controller|process_0~8_combout\,
	combout => \VGA_controller|Add0~27_combout\);

-- Location: FF_X20_Y26_N15
\VGA_controller|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~27_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(1));

-- Location: LCCOMB_X19_Y26_N10
\VGA_controller|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~4_combout\ = (\VGA_controller|v_count\(2) & (\VGA_controller|Add0~3\ $ (GND))) # (!\VGA_controller|v_count\(2) & (!\VGA_controller|Add0~3\ & VCC))
-- \VGA_controller|Add0~5\ = CARRY((\VGA_controller|v_count\(2) & !\VGA_controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(2),
	datad => VCC,
	cin => \VGA_controller|Add0~3\,
	combout => \VGA_controller|Add0~4_combout\,
	cout => \VGA_controller|Add0~5\);

-- Location: LCCOMB_X19_Y26_N0
\VGA_controller|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~28_combout\ = (\VGA_controller|Add0~4_combout\ & !\VGA_controller|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add0~4_combout\,
	datad => \VGA_controller|process_0~8_combout\,
	combout => \VGA_controller|Add0~28_combout\);

-- Location: FF_X19_Y26_N1
\VGA_controller|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~28_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(2));

-- Location: LCCOMB_X19_Y26_N12
\VGA_controller|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~6_combout\ = (\VGA_controller|v_count\(3) & (!\VGA_controller|Add0~5\)) # (!\VGA_controller|v_count\(3) & ((\VGA_controller|Add0~5\) # (GND)))
-- \VGA_controller|Add0~7\ = CARRY((!\VGA_controller|Add0~5\) # (!\VGA_controller|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(3),
	datad => VCC,
	cin => \VGA_controller|Add0~5\,
	combout => \VGA_controller|Add0~6_combout\,
	cout => \VGA_controller|Add0~7\);

-- Location: LCCOMB_X19_Y26_N2
\VGA_controller|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~26_combout\ = (\VGA_controller|Add0~6_combout\ & !\VGA_controller|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Add0~6_combout\,
	datad => \VGA_controller|process_0~8_combout\,
	combout => \VGA_controller|Add0~26_combout\);

-- Location: FF_X19_Y26_N3
\VGA_controller|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~26_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(3));

-- Location: LCCOMB_X19_Y26_N14
\VGA_controller|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~8_combout\ = (\VGA_controller|v_count\(4) & (\VGA_controller|Add0~7\ $ (GND))) # (!\VGA_controller|v_count\(4) & (!\VGA_controller|Add0~7\ & VCC))
-- \VGA_controller|Add0~9\ = CARRY((\VGA_controller|v_count\(4) & !\VGA_controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(4),
	datad => VCC,
	cin => \VGA_controller|Add0~7\,
	combout => \VGA_controller|Add0~8_combout\,
	cout => \VGA_controller|Add0~9\);

-- Location: LCCOMB_X20_Y26_N16
\VGA_controller|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~25_combout\ = (!\VGA_controller|process_0~8_combout\ & \VGA_controller|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~8_combout\,
	datac => \VGA_controller|Add0~8_combout\,
	combout => \VGA_controller|Add0~25_combout\);

-- Location: FF_X20_Y26_N17
\VGA_controller|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~25_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(4));

-- Location: LCCOMB_X19_Y26_N16
\VGA_controller|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~10_combout\ = (\VGA_controller|v_count\(5) & (!\VGA_controller|Add0~9\)) # (!\VGA_controller|v_count\(5) & ((\VGA_controller|Add0~9\) # (GND)))
-- \VGA_controller|Add0~11\ = CARRY((!\VGA_controller|Add0~9\) # (!\VGA_controller|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(5),
	datad => VCC,
	cin => \VGA_controller|Add0~9\,
	combout => \VGA_controller|Add0~10_combout\,
	cout => \VGA_controller|Add0~11\);

-- Location: LCCOMB_X19_Y26_N26
\VGA_controller|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~21_combout\ = (\VGA_controller|Add0~10_combout\ & !\VGA_controller|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Add0~10_combout\,
	datad => \VGA_controller|process_0~8_combout\,
	combout => \VGA_controller|Add0~21_combout\);

-- Location: FF_X19_Y26_N27
\VGA_controller|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~21_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(5));

-- Location: LCCOMB_X19_Y26_N18
\VGA_controller|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~12_combout\ = (\VGA_controller|v_count\(6) & (\VGA_controller|Add0~11\ $ (GND))) # (!\VGA_controller|v_count\(6) & (!\VGA_controller|Add0~11\ & VCC))
-- \VGA_controller|Add0~13\ = CARRY((\VGA_controller|v_count\(6) & !\VGA_controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(6),
	datad => VCC,
	cin => \VGA_controller|Add0~11\,
	combout => \VGA_controller|Add0~12_combout\,
	cout => \VGA_controller|Add0~13\);

-- Location: LCCOMB_X19_Y26_N28
\VGA_controller|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~22_combout\ = (\VGA_controller|Add0~12_combout\ & !\VGA_controller|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Add0~12_combout\,
	datad => \VGA_controller|process_0~8_combout\,
	combout => \VGA_controller|Add0~22_combout\);

-- Location: FF_X19_Y26_N29
\VGA_controller|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~22_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(6));

-- Location: LCCOMB_X19_Y26_N20
\VGA_controller|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~14_combout\ = (\VGA_controller|v_count\(7) & (!\VGA_controller|Add0~13\)) # (!\VGA_controller|v_count\(7) & ((\VGA_controller|Add0~13\) # (GND)))
-- \VGA_controller|Add0~15\ = CARRY((!\VGA_controller|Add0~13\) # (!\VGA_controller|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(7),
	datad => VCC,
	cin => \VGA_controller|Add0~13\,
	combout => \VGA_controller|Add0~14_combout\,
	cout => \VGA_controller|Add0~15\);

-- Location: LCCOMB_X19_Y26_N22
\VGA_controller|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~16_combout\ = (\VGA_controller|v_count\(8) & (\VGA_controller|Add0~15\ $ (GND))) # (!\VGA_controller|v_count\(8) & (!\VGA_controller|Add0~15\ & VCC))
-- \VGA_controller|Add0~17\ = CARRY((\VGA_controller|v_count\(8) & !\VGA_controller|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(8),
	datad => VCC,
	cin => \VGA_controller|Add0~15\,
	combout => \VGA_controller|Add0~16_combout\,
	cout => \VGA_controller|Add0~17\);

-- Location: LCCOMB_X20_Y26_N0
\VGA_controller|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~24_combout\ = (\VGA_controller|Add0~16_combout\ & !\VGA_controller|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Add0~16_combout\,
	datac => \VGA_controller|process_0~8_combout\,
	combout => \VGA_controller|Add0~24_combout\);

-- Location: FF_X20_Y26_N1
\VGA_controller|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~24_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(8));

-- Location: LCCOMB_X19_Y26_N24
\VGA_controller|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~18_combout\ = \VGA_controller|v_count\(9) $ (\VGA_controller|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(9),
	cin => \VGA_controller|Add0~17\,
	combout => \VGA_controller|Add0~18_combout\);

-- Location: LCCOMB_X19_Y26_N4
\VGA_controller|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~20_combout\ = (\VGA_controller|Add0~18_combout\ & !\VGA_controller|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Add0~18_combout\,
	datad => \VGA_controller|process_0~8_combout\,
	combout => \VGA_controller|Add0~20_combout\);

-- Location: FF_X19_Y26_N5
\VGA_controller|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~20_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(9));

-- Location: LCCOMB_X20_Y26_N26
\VGA_controller|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~6_combout\ = (\VGA_controller|v_count\(5)) # ((\VGA_controller|v_count\(4)) # ((\VGA_controller|v_count\(2) & \VGA_controller|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(2),
	datab => \VGA_controller|v_count\(3),
	datac => \VGA_controller|v_count\(5),
	datad => \VGA_controller|v_count\(4),
	combout => \VGA_controller|process_0~6_combout\);

-- Location: LCCOMB_X20_Y26_N28
\VGA_controller|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~7_combout\ = (\VGA_controller|v_count\(6)) # ((\VGA_controller|v_count\(7)) # (\VGA_controller|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|v_count\(6),
	datac => \VGA_controller|v_count\(7),
	datad => \VGA_controller|v_count\(8),
	combout => \VGA_controller|process_0~7_combout\);

-- Location: LCCOMB_X20_Y26_N2
\VGA_controller|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~8_combout\ = (\VGA_controller|Equal0~2_combout\ & (\VGA_controller|v_count\(9) & ((\VGA_controller|process_0~6_combout\) # (\VGA_controller|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Equal0~2_combout\,
	datab => \VGA_controller|v_count\(9),
	datac => \VGA_controller|process_0~6_combout\,
	datad => \VGA_controller|process_0~7_combout\,
	combout => \VGA_controller|process_0~8_combout\);

-- Location: LCCOMB_X20_Y26_N22
\VGA_controller|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Add0~23_combout\ = (!\VGA_controller|process_0~8_combout\ & \VGA_controller|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~8_combout\,
	datac => \VGA_controller|Add0~14_combout\,
	combout => \VGA_controller|Add0~23_combout\);

-- Location: FF_X20_Y26_N23
\VGA_controller|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Add0~23_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \VGA_controller|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|v_count\(7));

-- Location: LCCOMB_X14_Y23_N14
\VGA_controller|Vcount[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Vcount[7]~feeder_combout\ = \VGA_controller|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|v_count\(7),
	combout => \VGA_controller|Vcount[7]~feeder_combout\);

-- Location: FF_X14_Y23_N15
\VGA_controller|Vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Vcount[7]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(7));

-- Location: FF_X14_Y23_N29
\VGA_controller|Vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(8),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(8));

-- Location: LCCOMB_X14_Y23_N30
\VGA_controller|Vcount[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|Vcount[6]~feeder_combout\ = \VGA_controller|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|v_count\(6),
	combout => \VGA_controller|Vcount[6]~feeder_combout\);

-- Location: FF_X14_Y23_N31
\VGA_controller|Vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Vcount[6]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(6));

-- Location: FF_X15_Y23_N9
\VGA_controller|Vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(5),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(5));

-- Location: FF_X15_Y23_N1
\VGA_controller|Vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(4),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(4));

-- Location: FF_X15_Y23_N7
\VGA_controller|Vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(1),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(1));

-- Location: FF_X15_Y23_N31
\VGA_controller|Vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(3),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(3));

-- Location: FF_X15_Y23_N3
\VGA_controller|Vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(2),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(2));

-- Location: LCCOMB_X14_Y23_N6
\RAM_controller|LessThan29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan29~0_combout\ = (\VGA_controller|Vcount\(1) & (\VGA_controller|Vcount\(3) & \VGA_controller|Vcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(1),
	datac => \VGA_controller|Vcount\(3),
	datad => \VGA_controller|Vcount\(2),
	combout => \RAM_controller|LessThan29~0_combout\);

-- Location: LCCOMB_X14_Y23_N24
\RAM_controller|LessThan29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan29~1_combout\ = (\VGA_controller|Vcount\(5)) # ((\VGA_controller|Vcount\(4)) # (\RAM_controller|LessThan29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(5),
	datac => \VGA_controller|Vcount\(4),
	datad => \RAM_controller|LessThan29~0_combout\,
	combout => \RAM_controller|LessThan29~1_combout\);

-- Location: LCCOMB_X14_Y23_N16
\RAM_controller|LessThan29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan29~2_combout\ = (\VGA_controller|Vcount\(8)) # ((\VGA_controller|Vcount\(7) & (\VGA_controller|Vcount\(6) & \RAM_controller|LessThan29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(7),
	datab => \VGA_controller|Vcount\(8),
	datac => \VGA_controller|Vcount\(6),
	datad => \RAM_controller|LessThan29~1_combout\,
	combout => \RAM_controller|LessThan29~2_combout\);

-- Location: LCCOMB_X15_Y23_N30
\RAM_controller|LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan16~0_combout\ = (\VGA_controller|Vcount\(3) & ((\VGA_controller|Vcount\(2)) # (\VGA_controller|Vcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(2),
	datac => \VGA_controller|Vcount\(3),
	datad => \VGA_controller|Vcount\(1),
	combout => \RAM_controller|LessThan16~0_combout\);

-- Location: LCCOMB_X15_Y23_N6
\RAM_controller|LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan17~0_combout\ = (!\VGA_controller|Vcount\(4) & (!\VGA_controller|Vcount\(5) & !\VGA_controller|Vcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(4),
	datab => \VGA_controller|Vcount\(5),
	datad => \VGA_controller|Vcount\(6),
	combout => \RAM_controller|LessThan17~0_combout\);

-- Location: LCCOMB_X15_Y23_N4
\RAM_controller|LessThan30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan30~0_combout\ = (\VGA_controller|Vcount\(8)) # ((\VGA_controller|Vcount\(7) & ((\RAM_controller|LessThan16~0_combout\) # (!\RAM_controller|LessThan17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(7),
	datab => \VGA_controller|Vcount\(8),
	datac => \RAM_controller|LessThan16~0_combout\,
	datad => \RAM_controller|LessThan17~0_combout\,
	combout => \RAM_controller|LessThan30~0_combout\);

-- Location: LCCOMB_X15_Y23_N12
\RAM_controller|Add54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add54~0_combout\ = \VGA_controller|Vcount\(1) $ (VCC)
-- \RAM_controller|Add54~1\ = CARRY(\VGA_controller|Vcount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(1),
	datad => VCC,
	combout => \RAM_controller|Add54~0_combout\,
	cout => \RAM_controller|Add54~1\);

-- Location: LCCOMB_X15_Y23_N14
\RAM_controller|Add54~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add54~2_combout\ = (\VGA_controller|Vcount\(2) & (\RAM_controller|Add54~1\ & VCC)) # (!\VGA_controller|Vcount\(2) & (!\RAM_controller|Add54~1\))
-- \RAM_controller|Add54~3\ = CARRY((!\VGA_controller|Vcount\(2) & !\RAM_controller|Add54~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(2),
	datad => VCC,
	cin => \RAM_controller|Add54~1\,
	combout => \RAM_controller|Add54~2_combout\,
	cout => \RAM_controller|Add54~3\);

-- Location: LCCOMB_X15_Y23_N16
\RAM_controller|Add54~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add54~4_combout\ = (\VGA_controller|Vcount\(3) & ((GND) # (!\RAM_controller|Add54~3\))) # (!\VGA_controller|Vcount\(3) & (\RAM_controller|Add54~3\ $ (GND)))
-- \RAM_controller|Add54~5\ = CARRY((\VGA_controller|Vcount\(3)) # (!\RAM_controller|Add54~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(3),
	datad => VCC,
	cin => \RAM_controller|Add54~3\,
	combout => \RAM_controller|Add54~4_combout\,
	cout => \RAM_controller|Add54~5\);

-- Location: LCCOMB_X15_Y23_N18
\RAM_controller|Add54~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add54~6_combout\ = (\VGA_controller|Vcount\(4) & (\RAM_controller|Add54~5\ & VCC)) # (!\VGA_controller|Vcount\(4) & (!\RAM_controller|Add54~5\))
-- \RAM_controller|Add54~7\ = CARRY((!\VGA_controller|Vcount\(4) & !\RAM_controller|Add54~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(4),
	datad => VCC,
	cin => \RAM_controller|Add54~5\,
	combout => \RAM_controller|Add54~6_combout\,
	cout => \RAM_controller|Add54~7\);

-- Location: LCCOMB_X15_Y23_N20
\RAM_controller|Add54~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add54~8_combout\ = (\VGA_controller|Vcount\(5) & ((GND) # (!\RAM_controller|Add54~7\))) # (!\VGA_controller|Vcount\(5) & (\RAM_controller|Add54~7\ $ (GND)))
-- \RAM_controller|Add54~9\ = CARRY((\VGA_controller|Vcount\(5)) # (!\RAM_controller|Add54~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(5),
	datad => VCC,
	cin => \RAM_controller|Add54~7\,
	combout => \RAM_controller|Add54~8_combout\,
	cout => \RAM_controller|Add54~9\);

-- Location: LCCOMB_X15_Y23_N22
\RAM_controller|Add54~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add54~10_combout\ = (\VGA_controller|Vcount\(6) & (\RAM_controller|Add54~9\ & VCC)) # (!\VGA_controller|Vcount\(6) & (!\RAM_controller|Add54~9\))
-- \RAM_controller|Add54~11\ = CARRY((!\VGA_controller|Vcount\(6) & !\RAM_controller|Add54~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(6),
	datad => VCC,
	cin => \RAM_controller|Add54~9\,
	combout => \RAM_controller|Add54~10_combout\,
	cout => \RAM_controller|Add54~11\);

-- Location: LCCOMB_X15_Y23_N24
\RAM_controller|Add54~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add54~12_combout\ = (\VGA_controller|Vcount\(7) & ((GND) # (!\RAM_controller|Add54~11\))) # (!\VGA_controller|Vcount\(7) & (\RAM_controller|Add54~11\ $ (GND)))
-- \RAM_controller|Add54~13\ = CARRY((\VGA_controller|Vcount\(7)) # (!\RAM_controller|Add54~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(7),
	datad => VCC,
	cin => \RAM_controller|Add54~11\,
	combout => \RAM_controller|Add54~12_combout\,
	cout => \RAM_controller|Add54~13\);

-- Location: LCCOMB_X15_Y23_N26
\RAM_controller|Add54~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add54~14_combout\ = (\VGA_controller|Vcount\(8) & (\RAM_controller|Add54~13\ & VCC)) # (!\VGA_controller|Vcount\(8) & (!\RAM_controller|Add54~13\))
-- \RAM_controller|Add54~15\ = CARRY((!\VGA_controller|Vcount\(8) & !\RAM_controller|Add54~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(8),
	datad => VCC,
	cin => \RAM_controller|Add54~13\,
	combout => \RAM_controller|Add54~14_combout\,
	cout => \RAM_controller|Add54~15\);

-- Location: FF_X15_Y21_N31
\VGA_controller|Vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(0),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(0));

-- Location: LCCOMB_X16_Y23_N4
\RAM_controller|Add30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~1_cout\ = CARRY(!\VGA_controller|Vcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(0),
	datad => VCC,
	cout => \RAM_controller|Add30~1_cout\);

-- Location: LCCOMB_X16_Y23_N6
\RAM_controller|Add30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~2_combout\ = (\RAM_controller|Add54~0_combout\ & ((\RAM_controller|Add30~1_cout\) # (GND))) # (!\RAM_controller|Add54~0_combout\ & (!\RAM_controller|Add30~1_cout\))
-- \RAM_controller|Add30~3\ = CARRY((\RAM_controller|Add54~0_combout\) # (!\RAM_controller|Add30~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add54~0_combout\,
	datad => VCC,
	cin => \RAM_controller|Add30~1_cout\,
	combout => \RAM_controller|Add30~2_combout\,
	cout => \RAM_controller|Add30~3\);

-- Location: LCCOMB_X16_Y23_N8
\RAM_controller|Add30~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~4_combout\ = (\RAM_controller|Add54~2_combout\ & (!\RAM_controller|Add30~3\ & VCC)) # (!\RAM_controller|Add54~2_combout\ & (\RAM_controller|Add30~3\ $ (GND)))
-- \RAM_controller|Add30~5\ = CARRY((!\RAM_controller|Add54~2_combout\ & !\RAM_controller|Add30~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add54~2_combout\,
	datad => VCC,
	cin => \RAM_controller|Add30~3\,
	combout => \RAM_controller|Add30~4_combout\,
	cout => \RAM_controller|Add30~5\);

-- Location: LCCOMB_X16_Y23_N10
\RAM_controller|Add30~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~6_combout\ = (\RAM_controller|Add54~4_combout\ & ((\RAM_controller|Add30~5\) # (GND))) # (!\RAM_controller|Add54~4_combout\ & (!\RAM_controller|Add30~5\))
-- \RAM_controller|Add30~7\ = CARRY((\RAM_controller|Add54~4_combout\) # (!\RAM_controller|Add30~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add54~4_combout\,
	datad => VCC,
	cin => \RAM_controller|Add30~5\,
	combout => \RAM_controller|Add30~6_combout\,
	cout => \RAM_controller|Add30~7\);

-- Location: LCCOMB_X16_Y23_N12
\RAM_controller|Add30~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~8_combout\ = (\RAM_controller|Add54~6_combout\ & (!\RAM_controller|Add30~7\ & VCC)) # (!\RAM_controller|Add54~6_combout\ & (\RAM_controller|Add30~7\ $ (GND)))
-- \RAM_controller|Add30~9\ = CARRY((!\RAM_controller|Add54~6_combout\ & !\RAM_controller|Add30~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add54~6_combout\,
	datad => VCC,
	cin => \RAM_controller|Add30~7\,
	combout => \RAM_controller|Add30~8_combout\,
	cout => \RAM_controller|Add30~9\);

-- Location: LCCOMB_X16_Y23_N14
\RAM_controller|Add30~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~10_combout\ = (\RAM_controller|Add54~8_combout\ & ((\RAM_controller|Add30~9\) # (GND))) # (!\RAM_controller|Add54~8_combout\ & (!\RAM_controller|Add30~9\))
-- \RAM_controller|Add30~11\ = CARRY((\RAM_controller|Add54~8_combout\) # (!\RAM_controller|Add30~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add54~8_combout\,
	datad => VCC,
	cin => \RAM_controller|Add30~9\,
	combout => \RAM_controller|Add30~10_combout\,
	cout => \RAM_controller|Add30~11\);

-- Location: LCCOMB_X16_Y23_N16
\RAM_controller|Add30~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~12_combout\ = (\RAM_controller|Add54~10_combout\ & (!\RAM_controller|Add30~11\ & VCC)) # (!\RAM_controller|Add54~10_combout\ & (\RAM_controller|Add30~11\ $ (GND)))
-- \RAM_controller|Add30~13\ = CARRY((!\RAM_controller|Add54~10_combout\ & !\RAM_controller|Add30~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add54~10_combout\,
	datad => VCC,
	cin => \RAM_controller|Add30~11\,
	combout => \RAM_controller|Add30~12_combout\,
	cout => \RAM_controller|Add30~13\);

-- Location: LCCOMB_X16_Y23_N18
\RAM_controller|Add30~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~14_combout\ = (\RAM_controller|Add54~12_combout\ & ((\RAM_controller|Add30~13\) # (GND))) # (!\RAM_controller|Add54~12_combout\ & (!\RAM_controller|Add30~13\))
-- \RAM_controller|Add30~15\ = CARRY((\RAM_controller|Add54~12_combout\) # (!\RAM_controller|Add30~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add54~12_combout\,
	datad => VCC,
	cin => \RAM_controller|Add30~13\,
	combout => \RAM_controller|Add30~14_combout\,
	cout => \RAM_controller|Add30~15\);

-- Location: LCCOMB_X16_Y23_N20
\RAM_controller|Add30~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~16_combout\ = (\RAM_controller|Add54~14_combout\ & (!\RAM_controller|Add30~15\ & VCC)) # (!\RAM_controller|Add54~14_combout\ & (\RAM_controller|Add30~15\ $ (GND)))
-- \RAM_controller|Add30~17\ = CARRY((!\RAM_controller|Add54~14_combout\ & !\RAM_controller|Add30~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add54~14_combout\,
	datad => VCC,
	cin => \RAM_controller|Add30~15\,
	combout => \RAM_controller|Add30~16_combout\,
	cout => \RAM_controller|Add30~17\);

-- Location: LCCOMB_X15_Y20_N4
\RAM_controller|Add31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add31~0_combout\ = (\VGA_controller|Vcount\(0) & (\RAM_controller|Add30~8_combout\ $ (VCC))) # (!\VGA_controller|Vcount\(0) & (\RAM_controller|Add30~8_combout\ & VCC))
-- \RAM_controller|Add31~1\ = CARRY((\VGA_controller|Vcount\(0) & \RAM_controller|Add30~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(0),
	datab => \RAM_controller|Add30~8_combout\,
	datad => VCC,
	combout => \RAM_controller|Add31~0_combout\,
	cout => \RAM_controller|Add31~1\);

-- Location: LCCOMB_X15_Y20_N6
\RAM_controller|Add31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add31~2_combout\ = (\RAM_controller|Add54~0_combout\ & ((\RAM_controller|Add30~10_combout\ & (\RAM_controller|Add31~1\ & VCC)) # (!\RAM_controller|Add30~10_combout\ & (!\RAM_controller|Add31~1\)))) # (!\RAM_controller|Add54~0_combout\ & 
-- ((\RAM_controller|Add30~10_combout\ & (!\RAM_controller|Add31~1\)) # (!\RAM_controller|Add30~10_combout\ & ((\RAM_controller|Add31~1\) # (GND)))))
-- \RAM_controller|Add31~3\ = CARRY((\RAM_controller|Add54~0_combout\ & (!\RAM_controller|Add30~10_combout\ & !\RAM_controller|Add31~1\)) # (!\RAM_controller|Add54~0_combout\ & ((!\RAM_controller|Add31~1\) # (!\RAM_controller|Add30~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add54~0_combout\,
	datab => \RAM_controller|Add30~10_combout\,
	datad => VCC,
	cin => \RAM_controller|Add31~1\,
	combout => \RAM_controller|Add31~2_combout\,
	cout => \RAM_controller|Add31~3\);

-- Location: LCCOMB_X15_Y20_N8
\RAM_controller|Add31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add31~4_combout\ = ((\RAM_controller|Add54~2_combout\ $ (\RAM_controller|Add30~12_combout\ $ (!\RAM_controller|Add31~3\)))) # (GND)
-- \RAM_controller|Add31~5\ = CARRY((\RAM_controller|Add54~2_combout\ & ((\RAM_controller|Add30~12_combout\) # (!\RAM_controller|Add31~3\))) # (!\RAM_controller|Add54~2_combout\ & (\RAM_controller|Add30~12_combout\ & !\RAM_controller|Add31~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add54~2_combout\,
	datab => \RAM_controller|Add30~12_combout\,
	datad => VCC,
	cin => \RAM_controller|Add31~3\,
	combout => \RAM_controller|Add31~4_combout\,
	cout => \RAM_controller|Add31~5\);

-- Location: LCCOMB_X15_Y20_N10
\RAM_controller|Add31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add31~6_combout\ = (\RAM_controller|Add30~14_combout\ & ((\RAM_controller|Add54~4_combout\ & (\RAM_controller|Add31~5\ & VCC)) # (!\RAM_controller|Add54~4_combout\ & (!\RAM_controller|Add31~5\)))) # (!\RAM_controller|Add30~14_combout\ & 
-- ((\RAM_controller|Add54~4_combout\ & (!\RAM_controller|Add31~5\)) # (!\RAM_controller|Add54~4_combout\ & ((\RAM_controller|Add31~5\) # (GND)))))
-- \RAM_controller|Add31~7\ = CARRY((\RAM_controller|Add30~14_combout\ & (!\RAM_controller|Add54~4_combout\ & !\RAM_controller|Add31~5\)) # (!\RAM_controller|Add30~14_combout\ & ((!\RAM_controller|Add31~5\) # (!\RAM_controller|Add54~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add30~14_combout\,
	datab => \RAM_controller|Add54~4_combout\,
	datad => VCC,
	cin => \RAM_controller|Add31~5\,
	combout => \RAM_controller|Add31~6_combout\,
	cout => \RAM_controller|Add31~7\);

-- Location: LCCOMB_X15_Y20_N12
\RAM_controller|Add31~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add31~8_combout\ = ((\RAM_controller|Add54~6_combout\ $ (\RAM_controller|Add30~16_combout\ $ (!\RAM_controller|Add31~7\)))) # (GND)
-- \RAM_controller|Add31~9\ = CARRY((\RAM_controller|Add54~6_combout\ & ((\RAM_controller|Add30~16_combout\) # (!\RAM_controller|Add31~7\))) # (!\RAM_controller|Add54~6_combout\ & (\RAM_controller|Add30~16_combout\ & !\RAM_controller|Add31~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add54~6_combout\,
	datab => \RAM_controller|Add30~16_combout\,
	datad => VCC,
	cin => \RAM_controller|Add31~7\,
	combout => \RAM_controller|Add31~8_combout\,
	cout => \RAM_controller|Add31~9\);

-- Location: LCCOMB_X15_Y21_N22
\RAM_controller|LessThan27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan27~1_combout\ = (((!\VGA_controller|Vcount\(5)) # (!\VGA_controller|Vcount\(4))) # (!\VGA_controller|Vcount\(7))) # (!\VGA_controller|Vcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(6),
	datab => \VGA_controller|Vcount\(7),
	datac => \VGA_controller|Vcount\(4),
	datad => \VGA_controller|Vcount\(5),
	combout => \RAM_controller|LessThan27~1_combout\);

-- Location: LCCOMB_X15_Y21_N26
\RAM_controller|LessThan27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan27~2_combout\ = (\VGA_controller|Vcount\(5) & (\VGA_controller|Vcount\(6) & \VGA_controller|Vcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(5),
	datac => \VGA_controller|Vcount\(6),
	datad => \VGA_controller|Vcount\(4),
	combout => \RAM_controller|LessThan27~2_combout\);

-- Location: LCCOMB_X15_Y21_N28
\RAM_controller|LessThan27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan27~0_combout\ = (\VGA_controller|Vcount\(5) & \VGA_controller|Vcount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(5),
	datad => \VGA_controller|Vcount\(4),
	combout => \RAM_controller|LessThan27~0_combout\);

-- Location: LCCOMB_X15_Y21_N0
\RAM_controller|Add42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~1_cout\ = CARRY(!\VGA_controller|Vcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(0),
	datad => VCC,
	cout => \RAM_controller|Add42~1_cout\);

-- Location: LCCOMB_X15_Y21_N2
\RAM_controller|Add42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~2_combout\ = (\VGA_controller|Vcount\(1) & ((\RAM_controller|Add42~1_cout\) # (GND))) # (!\VGA_controller|Vcount\(1) & (!\RAM_controller|Add42~1_cout\))
-- \RAM_controller|Add42~3\ = CARRY((\VGA_controller|Vcount\(1)) # (!\RAM_controller|Add42~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(1),
	datad => VCC,
	cin => \RAM_controller|Add42~1_cout\,
	combout => \RAM_controller|Add42~2_combout\,
	cout => \RAM_controller|Add42~3\);

-- Location: LCCOMB_X15_Y21_N4
\RAM_controller|Add42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~4_combout\ = (\VGA_controller|Vcount\(2) & (!\RAM_controller|Add42~3\ & VCC)) # (!\VGA_controller|Vcount\(2) & (\RAM_controller|Add42~3\ $ (GND)))
-- \RAM_controller|Add42~5\ = CARRY((!\VGA_controller|Vcount\(2) & !\RAM_controller|Add42~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(2),
	datad => VCC,
	cin => \RAM_controller|Add42~3\,
	combout => \RAM_controller|Add42~4_combout\,
	cout => \RAM_controller|Add42~5\);

-- Location: LCCOMB_X15_Y21_N6
\RAM_controller|Add42~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~6_combout\ = (\VGA_controller|Vcount\(3) & ((\RAM_controller|Add42~5\) # (GND))) # (!\VGA_controller|Vcount\(3) & (!\RAM_controller|Add42~5\))
-- \RAM_controller|Add42~7\ = CARRY((\VGA_controller|Vcount\(3)) # (!\RAM_controller|Add42~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(3),
	datad => VCC,
	cin => \RAM_controller|Add42~5\,
	combout => \RAM_controller|Add42~6_combout\,
	cout => \RAM_controller|Add42~7\);

-- Location: LCCOMB_X15_Y21_N8
\RAM_controller|Add42~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~8_combout\ = (\VGA_controller|Vcount\(4) & (\RAM_controller|Add42~7\ $ (GND))) # (!\VGA_controller|Vcount\(4) & (!\RAM_controller|Add42~7\ & VCC))
-- \RAM_controller|Add42~9\ = CARRY((\VGA_controller|Vcount\(4) & !\RAM_controller|Add42~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(4),
	datad => VCC,
	cin => \RAM_controller|Add42~7\,
	combout => \RAM_controller|Add42~8_combout\,
	cout => \RAM_controller|Add42~9\);

-- Location: LCCOMB_X15_Y21_N10
\RAM_controller|Add42~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~10_combout\ = (\RAM_controller|Add42~9\ & (\VGA_controller|Vcount\(5) $ ((\VGA_controller|Vcount\(4))))) # (!\RAM_controller|Add42~9\ & ((\VGA_controller|Vcount\(5) $ (!\VGA_controller|Vcount\(4))) # (GND)))
-- \RAM_controller|Add42~11\ = CARRY((\VGA_controller|Vcount\(5) $ (\VGA_controller|Vcount\(4))) # (!\RAM_controller|Add42~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(5),
	datab => \VGA_controller|Vcount\(4),
	datad => VCC,
	cin => \RAM_controller|Add42~9\,
	combout => \RAM_controller|Add42~10_combout\,
	cout => \RAM_controller|Add42~11\);

-- Location: LCCOMB_X15_Y21_N12
\RAM_controller|Add42~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~12_combout\ = (\RAM_controller|Add42~11\ & ((\VGA_controller|Vcount\(6) $ (!\RAM_controller|LessThan27~0_combout\)))) # (!\RAM_controller|Add42~11\ & (\VGA_controller|Vcount\(6) $ (\RAM_controller|LessThan27~0_combout\ $ (GND))))
-- \RAM_controller|Add42~13\ = CARRY((!\RAM_controller|Add42~11\ & (\VGA_controller|Vcount\(6) $ (!\RAM_controller|LessThan27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(6),
	datab => \RAM_controller|LessThan27~0_combout\,
	datad => VCC,
	cin => \RAM_controller|Add42~11\,
	combout => \RAM_controller|Add42~12_combout\,
	cout => \RAM_controller|Add42~13\);

-- Location: LCCOMB_X15_Y21_N14
\RAM_controller|Add42~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~14_combout\ = (\RAM_controller|Add42~13\ & (\VGA_controller|Vcount\(7) $ ((\RAM_controller|LessThan27~2_combout\)))) # (!\RAM_controller|Add42~13\ & ((\VGA_controller|Vcount\(7) $ (!\RAM_controller|LessThan27~2_combout\)) # (GND)))
-- \RAM_controller|Add42~15\ = CARRY((\VGA_controller|Vcount\(7) $ (\RAM_controller|LessThan27~2_combout\)) # (!\RAM_controller|Add42~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(7),
	datab => \RAM_controller|LessThan27~2_combout\,
	datad => VCC,
	cin => \RAM_controller|Add42~13\,
	combout => \RAM_controller|Add42~14_combout\,
	cout => \RAM_controller|Add42~15\);

-- Location: LCCOMB_X15_Y21_N16
\RAM_controller|Add42~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~16_combout\ = (\RAM_controller|Add42~15\ & ((\RAM_controller|LessThan27~1_combout\ $ (!\VGA_controller|Vcount\(8))))) # (!\RAM_controller|Add42~15\ & (\RAM_controller|LessThan27~1_combout\ $ (\VGA_controller|Vcount\(8) $ (GND))))
-- \RAM_controller|Add42~17\ = CARRY((!\RAM_controller|Add42~15\ & (\RAM_controller|LessThan27~1_combout\ $ (!\VGA_controller|Vcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan27~1_combout\,
	datab => \VGA_controller|Vcount\(8),
	datad => VCC,
	cin => \RAM_controller|Add42~15\,
	combout => \RAM_controller|Add42~16_combout\,
	cout => \RAM_controller|Add42~17\);

-- Location: LCCOMB_X14_Y21_N18
\RAM_controller|Add43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~0_combout\ = (\VGA_controller|Vcount\(0) & (\RAM_controller|Add42~8_combout\ $ (VCC))) # (!\VGA_controller|Vcount\(0) & (\RAM_controller|Add42~8_combout\ & VCC))
-- \RAM_controller|Add43~1\ = CARRY((\VGA_controller|Vcount\(0) & \RAM_controller|Add42~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(0),
	datab => \RAM_controller|Add42~8_combout\,
	datad => VCC,
	combout => \RAM_controller|Add43~0_combout\,
	cout => \RAM_controller|Add43~1\);

-- Location: LCCOMB_X14_Y21_N20
\RAM_controller|Add43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~2_combout\ = (\VGA_controller|Vcount\(1) & ((\RAM_controller|Add42~10_combout\ & (\RAM_controller|Add43~1\ & VCC)) # (!\RAM_controller|Add42~10_combout\ & (!\RAM_controller|Add43~1\)))) # (!\VGA_controller|Vcount\(1) & 
-- ((\RAM_controller|Add42~10_combout\ & (!\RAM_controller|Add43~1\)) # (!\RAM_controller|Add42~10_combout\ & ((\RAM_controller|Add43~1\) # (GND)))))
-- \RAM_controller|Add43~3\ = CARRY((\VGA_controller|Vcount\(1) & (!\RAM_controller|Add42~10_combout\ & !\RAM_controller|Add43~1\)) # (!\VGA_controller|Vcount\(1) & ((!\RAM_controller|Add43~1\) # (!\RAM_controller|Add42~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(1),
	datab => \RAM_controller|Add42~10_combout\,
	datad => VCC,
	cin => \RAM_controller|Add43~1\,
	combout => \RAM_controller|Add43~2_combout\,
	cout => \RAM_controller|Add43~3\);

-- Location: LCCOMB_X14_Y21_N22
\RAM_controller|Add43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~4_combout\ = ((\RAM_controller|Add42~12_combout\ $ (\VGA_controller|Vcount\(2) $ (!\RAM_controller|Add43~3\)))) # (GND)
-- \RAM_controller|Add43~5\ = CARRY((\RAM_controller|Add42~12_combout\ & ((\VGA_controller|Vcount\(2)) # (!\RAM_controller|Add43~3\))) # (!\RAM_controller|Add42~12_combout\ & (\VGA_controller|Vcount\(2) & !\RAM_controller|Add43~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add42~12_combout\,
	datab => \VGA_controller|Vcount\(2),
	datad => VCC,
	cin => \RAM_controller|Add43~3\,
	combout => \RAM_controller|Add43~4_combout\,
	cout => \RAM_controller|Add43~5\);

-- Location: LCCOMB_X14_Y21_N24
\RAM_controller|Add43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~6_combout\ = (\RAM_controller|Add42~14_combout\ & ((\VGA_controller|Vcount\(3) & (\RAM_controller|Add43~5\ & VCC)) # (!\VGA_controller|Vcount\(3) & (!\RAM_controller|Add43~5\)))) # (!\RAM_controller|Add42~14_combout\ & 
-- ((\VGA_controller|Vcount\(3) & (!\RAM_controller|Add43~5\)) # (!\VGA_controller|Vcount\(3) & ((\RAM_controller|Add43~5\) # (GND)))))
-- \RAM_controller|Add43~7\ = CARRY((\RAM_controller|Add42~14_combout\ & (!\VGA_controller|Vcount\(3) & !\RAM_controller|Add43~5\)) # (!\RAM_controller|Add42~14_combout\ & ((!\RAM_controller|Add43~5\) # (!\VGA_controller|Vcount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add42~14_combout\,
	datab => \VGA_controller|Vcount\(3),
	datad => VCC,
	cin => \RAM_controller|Add43~5\,
	combout => \RAM_controller|Add43~6_combout\,
	cout => \RAM_controller|Add43~7\);

-- Location: LCCOMB_X14_Y21_N26
\RAM_controller|Add43~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~8_combout\ = ((\RAM_controller|Add42~16_combout\ $ (\VGA_controller|Vcount\(4) $ (\RAM_controller|Add43~7\)))) # (GND)
-- \RAM_controller|Add43~9\ = CARRY((\RAM_controller|Add42~16_combout\ & ((!\RAM_controller|Add43~7\) # (!\VGA_controller|Vcount\(4)))) # (!\RAM_controller|Add42~16_combout\ & (!\VGA_controller|Vcount\(4) & !\RAM_controller|Add43~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add42~16_combout\,
	datab => \VGA_controller|Vcount\(4),
	datad => VCC,
	cin => \RAM_controller|Add43~7\,
	combout => \RAM_controller|Add43~8_combout\,
	cout => \RAM_controller|Add43~9\);

-- Location: FF_X15_Y25_N23
\VGA_controller|Hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(8),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(8));

-- Location: FF_X15_Y25_N21
\VGA_controller|Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(7),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(7));

-- Location: FF_X15_Y25_N19
\VGA_controller|Hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(6),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(6));

-- Location: FF_X15_Y25_N17
\VGA_controller|Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(5),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(5));

-- Location: FF_X15_Y25_N15
\VGA_controller|Hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(4),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(4));

-- Location: FF_X15_Y25_N13
\VGA_controller|Hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(3),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(3));

-- Location: FF_X15_Y25_N11
\VGA_controller|Hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(2),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(2));

-- Location: FF_X15_Y25_N9
\VGA_controller|Hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(1),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(1));

-- Location: FF_X15_Y25_N7
\VGA_controller|Hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(0),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(0));

-- Location: LCCOMB_X15_Y25_N6
\RAM_controller|h_count_read_aux[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[0]~0_combout\ = \VGA_controller|Hcount\(0) $ (VCC)
-- \RAM_controller|h_count_read_aux[0]~1\ = CARRY(\VGA_controller|Hcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(0),
	datad => VCC,
	combout => \RAM_controller|h_count_read_aux[0]~0_combout\,
	cout => \RAM_controller|h_count_read_aux[0]~1\);

-- Location: LCCOMB_X15_Y25_N8
\RAM_controller|h_count_read_aux[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[1]~2_combout\ = (\VGA_controller|Hcount\(1) & (!\RAM_controller|h_count_read_aux[0]~1\)) # (!\VGA_controller|Hcount\(1) & ((\RAM_controller|h_count_read_aux[0]~1\) # (GND)))
-- \RAM_controller|h_count_read_aux[1]~3\ = CARRY((!\RAM_controller|h_count_read_aux[0]~1\) # (!\VGA_controller|Hcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Hcount\(1),
	datad => VCC,
	cin => \RAM_controller|h_count_read_aux[0]~1\,
	combout => \RAM_controller|h_count_read_aux[1]~2_combout\,
	cout => \RAM_controller|h_count_read_aux[1]~3\);

-- Location: LCCOMB_X15_Y25_N10
\RAM_controller|h_count_read_aux[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[2]~4_combout\ = (\VGA_controller|Hcount\(2) & (\RAM_controller|h_count_read_aux[1]~3\ $ (GND))) # (!\VGA_controller|Hcount\(2) & (!\RAM_controller|h_count_read_aux[1]~3\ & VCC))
-- \RAM_controller|h_count_read_aux[2]~5\ = CARRY((\VGA_controller|Hcount\(2) & !\RAM_controller|h_count_read_aux[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(2),
	datad => VCC,
	cin => \RAM_controller|h_count_read_aux[1]~3\,
	combout => \RAM_controller|h_count_read_aux[2]~4_combout\,
	cout => \RAM_controller|h_count_read_aux[2]~5\);

-- Location: LCCOMB_X15_Y25_N12
\RAM_controller|h_count_read_aux[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[3]~6_combout\ = (\VGA_controller|Hcount\(3) & (!\RAM_controller|h_count_read_aux[2]~5\)) # (!\VGA_controller|Hcount\(3) & ((\RAM_controller|h_count_read_aux[2]~5\) # (GND)))
-- \RAM_controller|h_count_read_aux[3]~7\ = CARRY((!\RAM_controller|h_count_read_aux[2]~5\) # (!\VGA_controller|Hcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(3),
	datad => VCC,
	cin => \RAM_controller|h_count_read_aux[2]~5\,
	combout => \RAM_controller|h_count_read_aux[3]~6_combout\,
	cout => \RAM_controller|h_count_read_aux[3]~7\);

-- Location: LCCOMB_X15_Y25_N14
\RAM_controller|h_count_read_aux[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[4]~8_combout\ = (\VGA_controller|Hcount\(4) & (\RAM_controller|h_count_read_aux[3]~7\ $ (GND))) # (!\VGA_controller|Hcount\(4) & (!\RAM_controller|h_count_read_aux[3]~7\ & VCC))
-- \RAM_controller|h_count_read_aux[4]~9\ = CARRY((\VGA_controller|Hcount\(4) & !\RAM_controller|h_count_read_aux[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(4),
	datad => VCC,
	cin => \RAM_controller|h_count_read_aux[3]~7\,
	combout => \RAM_controller|h_count_read_aux[4]~8_combout\,
	cout => \RAM_controller|h_count_read_aux[4]~9\);

-- Location: LCCOMB_X15_Y25_N16
\RAM_controller|h_count_read_aux[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[5]~10_combout\ = (\VGA_controller|Hcount\(5) & (!\RAM_controller|h_count_read_aux[4]~9\)) # (!\VGA_controller|Hcount\(5) & ((\RAM_controller|h_count_read_aux[4]~9\) # (GND)))
-- \RAM_controller|h_count_read_aux[5]~11\ = CARRY((!\RAM_controller|h_count_read_aux[4]~9\) # (!\VGA_controller|Hcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(5),
	datad => VCC,
	cin => \RAM_controller|h_count_read_aux[4]~9\,
	combout => \RAM_controller|h_count_read_aux[5]~10_combout\,
	cout => \RAM_controller|h_count_read_aux[5]~11\);

-- Location: LCCOMB_X15_Y25_N18
\RAM_controller|h_count_read_aux[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[6]~12_combout\ = (\VGA_controller|Hcount\(6) & (\RAM_controller|h_count_read_aux[5]~11\ $ (GND))) # (!\VGA_controller|Hcount\(6) & (!\RAM_controller|h_count_read_aux[5]~11\ & VCC))
-- \RAM_controller|h_count_read_aux[6]~13\ = CARRY((\VGA_controller|Hcount\(6) & !\RAM_controller|h_count_read_aux[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Hcount\(6),
	datad => VCC,
	cin => \RAM_controller|h_count_read_aux[5]~11\,
	combout => \RAM_controller|h_count_read_aux[6]~12_combout\,
	cout => \RAM_controller|h_count_read_aux[6]~13\);

-- Location: LCCOMB_X15_Y25_N20
\RAM_controller|h_count_read_aux[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[7]~14_combout\ = (\VGA_controller|Hcount\(7) & (!\RAM_controller|h_count_read_aux[6]~13\)) # (!\VGA_controller|Hcount\(7) & ((\RAM_controller|h_count_read_aux[6]~13\) # (GND)))
-- \RAM_controller|h_count_read_aux[7]~15\ = CARRY((!\RAM_controller|h_count_read_aux[6]~13\) # (!\VGA_controller|Hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Hcount\(7),
	datad => VCC,
	cin => \RAM_controller|h_count_read_aux[6]~13\,
	combout => \RAM_controller|h_count_read_aux[7]~14_combout\,
	cout => \RAM_controller|h_count_read_aux[7]~15\);

-- Location: LCCOMB_X15_Y25_N22
\RAM_controller|h_count_read_aux[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[8]~16_combout\ = (\VGA_controller|Hcount\(8) & (\RAM_controller|h_count_read_aux[7]~15\ $ (GND))) # (!\VGA_controller|Hcount\(8) & (!\RAM_controller|h_count_read_aux[7]~15\ & VCC))
-- \RAM_controller|h_count_read_aux[8]~17\ = CARRY((\VGA_controller|Hcount\(8) & !\RAM_controller|h_count_read_aux[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Hcount\(8),
	datad => VCC,
	cin => \RAM_controller|h_count_read_aux[7]~15\,
	combout => \RAM_controller|h_count_read_aux[8]~16_combout\,
	cout => \RAM_controller|h_count_read_aux[8]~17\);

-- Location: LCCOMB_X15_Y25_N26
\RAM_controller|D_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~4_combout\ = (\RAM_controller|h_count_read_aux[7]~14_combout\) # ((\RAM_controller|h_count_read_aux[6]~12_combout\ & ((\RAM_controller|h_count_read_aux[4]~8_combout\) # (\RAM_controller|h_count_read_aux[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_read_aux[7]~14_combout\,
	datab => \RAM_controller|h_count_read_aux[4]~8_combout\,
	datac => \RAM_controller|h_count_read_aux[6]~12_combout\,
	datad => \RAM_controller|h_count_read_aux[5]~10_combout\,
	combout => \RAM_controller|D_out~4_combout\);

-- Location: FF_X15_Y25_N25
\VGA_controller|Hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|h_count\(9),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hcount\(9));

-- Location: LCCOMB_X15_Y25_N24
\RAM_controller|h_count_read_aux[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_read_aux[9]~18_combout\ = \RAM_controller|h_count_read_aux[8]~17\ $ (\VGA_controller|Hcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|Hcount\(9),
	cin => \RAM_controller|h_count_read_aux[8]~17\,
	combout => \RAM_controller|h_count_read_aux[9]~18_combout\);

-- Location: FF_X15_Y23_N11
\VGA_controller|Vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|v_count\(9),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vcount\(9));

-- Location: LCCOMB_X15_Y23_N2
\RAM_controller|D_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~2_combout\ = (\VGA_controller|Vcount\(3)) # ((\VGA_controller|Vcount\(1)) # ((\VGA_controller|Vcount\(2)) # (\VGA_controller|Vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(3),
	datab => \VGA_controller|Vcount\(1),
	datac => \VGA_controller|Vcount\(2),
	datad => \VGA_controller|Vcount\(7),
	combout => \RAM_controller|D_out~2_combout\);

-- Location: LCCOMB_X15_Y23_N10
\RAM_controller|D_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~3_combout\ = ((\VGA_controller|Vcount\(8)) # ((\VGA_controller|Vcount\(9)) # (\RAM_controller|D_out~2_combout\))) # (!\RAM_controller|LessThan17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan17~0_combout\,
	datab => \VGA_controller|Vcount\(8),
	datac => \VGA_controller|Vcount\(9),
	datad => \RAM_controller|D_out~2_combout\,
	combout => \RAM_controller|D_out~3_combout\);

-- Location: LCCOMB_X16_Y21_N30
\RAM_controller|D_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~5_combout\ = (\RAM_controller|D_out~3_combout\ & ((\RAM_controller|h_count_read_aux[8]~16_combout\) # ((\RAM_controller|D_out~4_combout\) # (\RAM_controller|h_count_read_aux[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_read_aux[8]~16_combout\,
	datab => \RAM_controller|D_out~4_combout\,
	datac => \RAM_controller|h_count_read_aux[9]~18_combout\,
	datad => \RAM_controller|D_out~3_combout\,
	combout => \RAM_controller|D_out~5_combout\);

-- Location: LCCOMB_X14_Y23_N12
\RAM_controller|ReadEna~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|ReadEna~0_combout\ = ((!\VGA_controller|Vcount\(8)) # (!\VGA_controller|Vcount\(6))) # (!\VGA_controller|Vcount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(7),
	datac => \VGA_controller|Vcount\(6),
	datad => \VGA_controller|Vcount\(8),
	combout => \RAM_controller|ReadEna~0_combout\);

-- Location: LCCOMB_X15_Y23_N0
\RAM_controller|ReadEna~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|ReadEna~1_combout\ = (\RAM_controller|ReadEna~0_combout\) # ((!\VGA_controller|Vcount\(5) & ((!\VGA_controller|Vcount\(4)) # (!\RAM_controller|LessThan29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~0_combout\,
	datab => \VGA_controller|Vcount\(5),
	datac => \VGA_controller|Vcount\(4),
	datad => \RAM_controller|ReadEna~0_combout\,
	combout => \RAM_controller|ReadEna~1_combout\);

-- Location: LCCOMB_X15_Y23_N8
\RAM_controller|read_addressing~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|read_addressing~0_combout\ = (!\RAM_controller|LessThan30~0_combout\ & !\VGA_controller|Vcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|LessThan30~0_combout\,
	datad => \VGA_controller|Vcount\(9),
	combout => \RAM_controller|read_addressing~0_combout\);

-- Location: LCCOMB_X15_Y25_N0
\RAM_controller|LessThan15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan15~0_combout\ = (\RAM_controller|h_count_read_aux[7]~14_combout\) # ((\RAM_controller|h_count_read_aux[8]~16_combout\) # ((\RAM_controller|h_count_read_aux[4]~8_combout\ & \RAM_controller|h_count_read_aux[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_read_aux[7]~14_combout\,
	datab => \RAM_controller|h_count_read_aux[4]~8_combout\,
	datac => \RAM_controller|h_count_read_aux[8]~16_combout\,
	datad => \RAM_controller|h_count_read_aux[5]~10_combout\,
	combout => \RAM_controller|LessThan15~0_combout\);

-- Location: LCCOMB_X16_Y21_N2
\RAM_controller|D_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~0_combout\ = (\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\VGA_controller|Vcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \VGA_controller|Vcount\(9),
	combout => \RAM_controller|D_out~0_combout\);

-- Location: LCCOMB_X16_Y21_N10
\RAM_controller|D_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~1_combout\ = (\RAM_controller|D_out~0_combout\ & (((!\RAM_controller|h_count_read_aux[6]~12_combout\ & !\RAM_controller|LessThan15~0_combout\)) # (!\RAM_controller|h_count_read_aux[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_read_aux[9]~18_combout\,
	datab => \RAM_controller|h_count_read_aux[6]~12_combout\,
	datac => \RAM_controller|LessThan15~0_combout\,
	datad => \RAM_controller|D_out~0_combout\,
	combout => \RAM_controller|D_out~1_combout\);

-- Location: LCCOMB_X16_Y21_N14
\RAM_controller|read_addressing~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|read_addressing~1_combout\ = (\RAM_controller|D_out~5_combout\ & (\RAM_controller|ReadEna~1_combout\ & (\RAM_controller|read_addressing~0_combout\ & \RAM_controller|D_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|D_out~5_combout\,
	datab => \RAM_controller|ReadEna~1_combout\,
	datac => \RAM_controller|read_addressing~0_combout\,
	datad => \RAM_controller|D_out~1_combout\,
	combout => \RAM_controller|read_addressing~1_combout\);

-- Location: LCCOMB_X15_Y20_N28
\RAM_controller|Add43~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~10_combout\ = (\RAM_controller|read_addressing~1_combout\ & (\RAM_controller|Add31~8_combout\)) # (!\RAM_controller|read_addressing~1_combout\ & ((\RAM_controller|Add43~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add31~8_combout\,
	datac => \RAM_controller|Add43~8_combout\,
	datad => \RAM_controller|read_addressing~1_combout\,
	combout => \RAM_controller|Add43~10_combout\);

-- Location: LCCOMB_X16_Y20_N30
\RAM_controller|Add43~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~11_combout\ = (\RAM_controller|read_addressing~1_combout\ & ((\RAM_controller|Add31~6_combout\))) # (!\RAM_controller|read_addressing~1_combout\ & (\RAM_controller|Add43~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add43~6_combout\,
	datac => \RAM_controller|read_addressing~1_combout\,
	datad => \RAM_controller|Add31~6_combout\,
	combout => \RAM_controller|Add43~11_combout\);

-- Location: LCCOMB_X15_Y20_N2
\RAM_controller|Add43~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~12_combout\ = (\RAM_controller|read_addressing~1_combout\ & ((\RAM_controller|Add31~4_combout\))) # (!\RAM_controller|read_addressing~1_combout\ & (\RAM_controller|Add43~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add43~4_combout\,
	datac => \RAM_controller|Add31~4_combout\,
	datad => \RAM_controller|read_addressing~1_combout\,
	combout => \RAM_controller|Add43~12_combout\);

-- Location: LCCOMB_X15_Y20_N22
\RAM_controller|Add43~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~13_combout\ = (\RAM_controller|read_addressing~1_combout\ & ((\RAM_controller|Add31~2_combout\))) # (!\RAM_controller|read_addressing~1_combout\ & (\RAM_controller|Add43~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add43~2_combout\,
	datac => \RAM_controller|read_addressing~1_combout\,
	datad => \RAM_controller|Add31~2_combout\,
	combout => \RAM_controller|Add43~13_combout\);

-- Location: LCCOMB_X16_Y22_N6
\RAM_controller|Add45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add45~0_combout\ = \RAM_controller|h_count_read_aux[4]~8_combout\ $ (VCC)
-- \RAM_controller|Add45~1\ = CARRY(\RAM_controller|h_count_read_aux[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_read_aux[4]~8_combout\,
	datad => VCC,
	combout => \RAM_controller|Add45~0_combout\,
	cout => \RAM_controller|Add45~1\);

-- Location: LCCOMB_X16_Y22_N8
\RAM_controller|Add45~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add45~2_combout\ = (\RAM_controller|h_count_read_aux[5]~10_combout\ & (\RAM_controller|Add45~1\ & VCC)) # (!\RAM_controller|h_count_read_aux[5]~10_combout\ & (!\RAM_controller|Add45~1\))
-- \RAM_controller|Add45~3\ = CARRY((!\RAM_controller|h_count_read_aux[5]~10_combout\ & !\RAM_controller|Add45~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_read_aux[5]~10_combout\,
	datad => VCC,
	cin => \RAM_controller|Add45~1\,
	combout => \RAM_controller|Add45~2_combout\,
	cout => \RAM_controller|Add45~3\);

-- Location: LCCOMB_X16_Y22_N10
\RAM_controller|Add45~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add45~4_combout\ = (\RAM_controller|h_count_read_aux[6]~12_combout\ & (\RAM_controller|Add45~3\ $ (GND))) # (!\RAM_controller|h_count_read_aux[6]~12_combout\ & (!\RAM_controller|Add45~3\ & VCC))
-- \RAM_controller|Add45~5\ = CARRY((\RAM_controller|h_count_read_aux[6]~12_combout\ & !\RAM_controller|Add45~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_read_aux[6]~12_combout\,
	datad => VCC,
	cin => \RAM_controller|Add45~3\,
	combout => \RAM_controller|Add45~4_combout\,
	cout => \RAM_controller|Add45~5\);

-- Location: LCCOMB_X16_Y22_N12
\RAM_controller|Add45~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add45~6_combout\ = (\RAM_controller|h_count_read_aux[7]~14_combout\ & (\RAM_controller|Add45~5\ & VCC)) # (!\RAM_controller|h_count_read_aux[7]~14_combout\ & (!\RAM_controller|Add45~5\))
-- \RAM_controller|Add45~7\ = CARRY((!\RAM_controller|h_count_read_aux[7]~14_combout\ & !\RAM_controller|Add45~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_read_aux[7]~14_combout\,
	datad => VCC,
	cin => \RAM_controller|Add45~5\,
	combout => \RAM_controller|Add45~6_combout\,
	cout => \RAM_controller|Add45~7\);

-- Location: LCCOMB_X16_Y22_N14
\RAM_controller|Add45~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add45~8_combout\ = (\RAM_controller|h_count_read_aux[8]~16_combout\ & ((GND) # (!\RAM_controller|Add45~7\))) # (!\RAM_controller|h_count_read_aux[8]~16_combout\ & (\RAM_controller|Add45~7\ $ (GND)))
-- \RAM_controller|Add45~9\ = CARRY((\RAM_controller|h_count_read_aux[8]~16_combout\) # (!\RAM_controller|Add45~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_read_aux[8]~16_combout\,
	datad => VCC,
	cin => \RAM_controller|Add45~7\,
	combout => \RAM_controller|Add45~8_combout\,
	cout => \RAM_controller|Add45~9\);

-- Location: LCCOMB_X16_Y22_N16
\RAM_controller|Add45~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add45~10_combout\ = \RAM_controller|Add45~9\ $ (!\RAM_controller|h_count_read_aux[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RAM_controller|h_count_read_aux[9]~18_combout\,
	cin => \RAM_controller|Add45~9\,
	combout => \RAM_controller|Add45~10_combout\);

-- Location: LCCOMB_X15_Y20_N20
\RAM_controller|Add43~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~14_combout\ = (\RAM_controller|read_addressing~1_combout\ & ((\RAM_controller|Add31~0_combout\))) # (!\RAM_controller|read_addressing~1_combout\ & (\RAM_controller|Add43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add43~0_combout\,
	datac => \RAM_controller|Add31~0_combout\,
	datad => \RAM_controller|read_addressing~1_combout\,
	combout => \RAM_controller|Add43~14_combout\);

-- Location: LCCOMB_X16_Y23_N0
\RAM_controller|Add32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~0_combout\ = (\RAM_controller|read_addressing~1_combout\ & ((\RAM_controller|Add30~6_combout\))) # (!\RAM_controller|read_addressing~1_combout\ & (\RAM_controller|Add42~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add42~6_combout\,
	datac => \RAM_controller|Add30~6_combout\,
	datad => \RAM_controller|read_addressing~1_combout\,
	combout => \RAM_controller|Add32~0_combout\);

-- Location: LCCOMB_X16_Y20_N24
\RAM_controller|Add32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~1_combout\ = (\RAM_controller|read_addressing~1_combout\ & ((\RAM_controller|Add30~4_combout\))) # (!\RAM_controller|read_addressing~1_combout\ & (\RAM_controller|Add42~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add42~4_combout\,
	datac => \RAM_controller|read_addressing~1_combout\,
	datad => \RAM_controller|Add30~4_combout\,
	combout => \RAM_controller|Add32~1_combout\);

-- Location: LCCOMB_X16_Y23_N26
\RAM_controller|Add32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~2_combout\ = (\RAM_controller|ReadEna~1_combout\ & ((\RAM_controller|read_addressing~0_combout\ & (\RAM_controller|Add30~2_combout\)) # (!\RAM_controller|read_addressing~0_combout\ & ((\RAM_controller|Add42~2_combout\))))) # 
-- (!\RAM_controller|ReadEna~1_combout\ & (((\RAM_controller|Add42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|ReadEna~1_combout\,
	datab => \RAM_controller|Add30~2_combout\,
	datac => \RAM_controller|read_addressing~0_combout\,
	datad => \RAM_controller|Add42~2_combout\,
	combout => \RAM_controller|Add32~2_combout\);

-- Location: LCCOMB_X16_Y23_N2
\RAM_controller|Add32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~3_combout\ = (\RAM_controller|D_out~5_combout\ & ((\RAM_controller|D_out~1_combout\ & (\RAM_controller|Add32~2_combout\)) # (!\RAM_controller|D_out~1_combout\ & ((\RAM_controller|Add42~2_combout\))))) # 
-- (!\RAM_controller|D_out~5_combout\ & (((\RAM_controller|Add42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|D_out~5_combout\,
	datab => \RAM_controller|Add32~2_combout\,
	datac => \RAM_controller|D_out~1_combout\,
	datad => \RAM_controller|Add42~2_combout\,
	combout => \RAM_controller|Add32~3_combout\);

-- Location: LCCOMB_X16_Y20_N0
\RAM_controller|Add32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~4_combout\ = (\VGA_controller|Vcount\(0) & (\RAM_controller|Add45~2_combout\ $ (VCC))) # (!\VGA_controller|Vcount\(0) & (\RAM_controller|Add45~2_combout\ & VCC))
-- \RAM_controller|Add32~5\ = CARRY((\VGA_controller|Vcount\(0) & \RAM_controller|Add45~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(0),
	datab => \RAM_controller|Add45~2_combout\,
	datad => VCC,
	combout => \RAM_controller|Add32~4_combout\,
	cout => \RAM_controller|Add32~5\);

-- Location: LCCOMB_X16_Y20_N2
\RAM_controller|Add32~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~6_combout\ = (\RAM_controller|Add45~4_combout\ & ((\RAM_controller|Add32~3_combout\ & (\RAM_controller|Add32~5\ & VCC)) # (!\RAM_controller|Add32~3_combout\ & (!\RAM_controller|Add32~5\)))) # (!\RAM_controller|Add45~4_combout\ & 
-- ((\RAM_controller|Add32~3_combout\ & (!\RAM_controller|Add32~5\)) # (!\RAM_controller|Add32~3_combout\ & ((\RAM_controller|Add32~5\) # (GND)))))
-- \RAM_controller|Add32~7\ = CARRY((\RAM_controller|Add45~4_combout\ & (!\RAM_controller|Add32~3_combout\ & !\RAM_controller|Add32~5\)) # (!\RAM_controller|Add45~4_combout\ & ((!\RAM_controller|Add32~5\) # (!\RAM_controller|Add32~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add45~4_combout\,
	datab => \RAM_controller|Add32~3_combout\,
	datad => VCC,
	cin => \RAM_controller|Add32~5\,
	combout => \RAM_controller|Add32~6_combout\,
	cout => \RAM_controller|Add32~7\);

-- Location: LCCOMB_X16_Y20_N4
\RAM_controller|Add32~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~8_combout\ = ((\RAM_controller|Add45~6_combout\ $ (\RAM_controller|Add32~1_combout\ $ (!\RAM_controller|Add32~7\)))) # (GND)
-- \RAM_controller|Add32~9\ = CARRY((\RAM_controller|Add45~6_combout\ & ((\RAM_controller|Add32~1_combout\) # (!\RAM_controller|Add32~7\))) # (!\RAM_controller|Add45~6_combout\ & (\RAM_controller|Add32~1_combout\ & !\RAM_controller|Add32~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add45~6_combout\,
	datab => \RAM_controller|Add32~1_combout\,
	datad => VCC,
	cin => \RAM_controller|Add32~7\,
	combout => \RAM_controller|Add32~8_combout\,
	cout => \RAM_controller|Add32~9\);

-- Location: LCCOMB_X16_Y20_N6
\RAM_controller|Add32~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~10_combout\ = (\RAM_controller|Add45~8_combout\ & ((\RAM_controller|Add32~0_combout\ & (\RAM_controller|Add32~9\ & VCC)) # (!\RAM_controller|Add32~0_combout\ & (!\RAM_controller|Add32~9\)))) # (!\RAM_controller|Add45~8_combout\ & 
-- ((\RAM_controller|Add32~0_combout\ & (!\RAM_controller|Add32~9\)) # (!\RAM_controller|Add32~0_combout\ & ((\RAM_controller|Add32~9\) # (GND)))))
-- \RAM_controller|Add32~11\ = CARRY((\RAM_controller|Add45~8_combout\ & (!\RAM_controller|Add32~0_combout\ & !\RAM_controller|Add32~9\)) # (!\RAM_controller|Add45~8_combout\ & ((!\RAM_controller|Add32~9\) # (!\RAM_controller|Add32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add45~8_combout\,
	datab => \RAM_controller|Add32~0_combout\,
	datad => VCC,
	cin => \RAM_controller|Add32~9\,
	combout => \RAM_controller|Add32~10_combout\,
	cout => \RAM_controller|Add32~11\);

-- Location: LCCOMB_X16_Y20_N8
\RAM_controller|Add32~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~12_combout\ = ((\RAM_controller|Add45~10_combout\ $ (\RAM_controller|Add43~14_combout\ $ (!\RAM_controller|Add32~11\)))) # (GND)
-- \RAM_controller|Add32~13\ = CARRY((\RAM_controller|Add45~10_combout\ & ((\RAM_controller|Add43~14_combout\) # (!\RAM_controller|Add32~11\))) # (!\RAM_controller|Add45~10_combout\ & (\RAM_controller|Add43~14_combout\ & !\RAM_controller|Add32~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add45~10_combout\,
	datab => \RAM_controller|Add43~14_combout\,
	datad => VCC,
	cin => \RAM_controller|Add32~11\,
	combout => \RAM_controller|Add32~12_combout\,
	cout => \RAM_controller|Add32~13\);

-- Location: LCCOMB_X16_Y20_N10
\RAM_controller|Add32~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~14_combout\ = (\RAM_controller|Add43~13_combout\ & (!\RAM_controller|Add32~13\)) # (!\RAM_controller|Add43~13_combout\ & ((\RAM_controller|Add32~13\) # (GND)))
-- \RAM_controller|Add32~15\ = CARRY((!\RAM_controller|Add32~13\) # (!\RAM_controller|Add43~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add43~13_combout\,
	datad => VCC,
	cin => \RAM_controller|Add32~13\,
	combout => \RAM_controller|Add32~14_combout\,
	cout => \RAM_controller|Add32~15\);

-- Location: LCCOMB_X16_Y20_N12
\RAM_controller|Add32~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~16_combout\ = (\RAM_controller|Add43~12_combout\ & (\RAM_controller|Add32~15\ $ (GND))) # (!\RAM_controller|Add43~12_combout\ & (!\RAM_controller|Add32~15\ & VCC))
-- \RAM_controller|Add32~17\ = CARRY((\RAM_controller|Add43~12_combout\ & !\RAM_controller|Add32~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add43~12_combout\,
	datad => VCC,
	cin => \RAM_controller|Add32~15\,
	combout => \RAM_controller|Add32~16_combout\,
	cout => \RAM_controller|Add32~17\);

-- Location: LCCOMB_X16_Y20_N14
\RAM_controller|Add32~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~18_combout\ = (\RAM_controller|Add43~11_combout\ & (!\RAM_controller|Add32~17\)) # (!\RAM_controller|Add43~11_combout\ & ((\RAM_controller|Add32~17\) # (GND)))
-- \RAM_controller|Add32~19\ = CARRY((!\RAM_controller|Add32~17\) # (!\RAM_controller|Add43~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add43~11_combout\,
	datad => VCC,
	cin => \RAM_controller|Add32~17\,
	combout => \RAM_controller|Add32~18_combout\,
	cout => \RAM_controller|Add32~19\);

-- Location: LCCOMB_X16_Y20_N16
\RAM_controller|Add32~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~20_combout\ = (\RAM_controller|Add43~10_combout\ & (\RAM_controller|Add32~19\ $ (GND))) # (!\RAM_controller|Add43~10_combout\ & (!\RAM_controller|Add32~19\ & VCC))
-- \RAM_controller|Add32~21\ = CARRY((\RAM_controller|Add43~10_combout\ & !\RAM_controller|Add32~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add43~10_combout\,
	datad => VCC,
	cin => \RAM_controller|Add32~19\,
	combout => \RAM_controller|Add32~20_combout\,
	cout => \RAM_controller|Add32~21\);

-- Location: LCCOMB_X14_Y23_N18
\RAM_controller|readEna_32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readEna_32~2_combout\ = (\VGA_controller|Vcount\(7)) # ((\RAM_controller|LessThan27~0_combout\ & (\VGA_controller|Vcount\(3) & \VGA_controller|Vcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(7),
	datab => \RAM_controller|LessThan27~0_combout\,
	datac => \VGA_controller|Vcount\(3),
	datad => \VGA_controller|Vcount\(6),
	combout => \RAM_controller|readEna_32~2_combout\);

-- Location: LCCOMB_X14_Y23_N2
\RAM_controller|readEna_32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readEna_32~3_combout\ = (\VGA_controller|Vcount\(8) & \RAM_controller|readEna_32~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(8),
	datac => \RAM_controller|readEna_32~2_combout\,
	combout => \RAM_controller|readEna_32~3_combout\);

-- Location: LCCOMB_X17_Y21_N30
\RAM_controller|Add32~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~22_combout\ = (\RAM_controller|Add32~20_combout\ & (((\RAM_controller|LessThan29~2_combout\ & !\RAM_controller|readEna_32~3_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \RAM_controller|LessThan30~0_combout\,
	datac => \RAM_controller|Add32~20_combout\,
	datad => \RAM_controller|readEna_32~3_combout\,
	combout => \RAM_controller|Add32~22_combout\);

-- Location: LCCOMB_X14_Y23_N22
\RAM_controller|readDir_32[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32[0]~0_combout\ = (!\VGA_controller|Vcount\(6) & (((!\VGA_controller|Vcount\(2)) # (!\VGA_controller|Vcount\(3))) # (!\RAM_controller|LessThan27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(6),
	datab => \RAM_controller|LessThan27~0_combout\,
	datac => \VGA_controller|Vcount\(3),
	datad => \VGA_controller|Vcount\(2),
	combout => \RAM_controller|readDir_32[0]~0_combout\);

-- Location: LCCOMB_X14_Y23_N20
\RAM_controller|Add41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add41~0_combout\ = (\VGA_controller|Vcount\(8)) # ((\VGA_controller|Vcount\(7) & (\RAM_controller|LessThan27~0_combout\ & \VGA_controller|Vcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(7),
	datab => \RAM_controller|LessThan27~0_combout\,
	datac => \VGA_controller|Vcount\(6),
	datad => \VGA_controller|Vcount\(8),
	combout => \RAM_controller|Add41~0_combout\);

-- Location: LCCOMB_X14_Y23_N8
\RAM_controller|readDir_32[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32[0]~1_combout\ = (\RAM_controller|Add41~0_combout\ & (((\RAM_controller|readDir_32[0]~0_combout\) # (!\VGA_controller|Vcount\(8))) # (!\VGA_controller|Vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(7),
	datab => \VGA_controller|Vcount\(8),
	datac => \RAM_controller|readDir_32[0]~0_combout\,
	datad => \RAM_controller|Add41~0_combout\,
	combout => \RAM_controller|readDir_32[0]~1_combout\);

-- Location: LCCOMB_X16_Y21_N26
\RAM_controller|ReadEna~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|ReadEna~2_combout\ = (\RAM_controller|D_out~5_combout\ & (\RAM_controller|ReadEna~1_combout\ & ((!\RAM_controller|h_count_read_aux[9]~18_combout\) # (!\RAM_controller|h_count_read_aux[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_read_aux[6]~12_combout\,
	datab => \RAM_controller|h_count_read_aux[9]~18_combout\,
	datac => \RAM_controller|D_out~5_combout\,
	datad => \RAM_controller|ReadEna~1_combout\,
	combout => \RAM_controller|ReadEna~2_combout\);

-- Location: LCCOMB_X16_Y21_N16
\RAM_controller|ReadEna~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|ReadEna~3_combout\ = (\RAM_controller|ReadEna~2_combout\ & (\RAM_controller|D_out~0_combout\ & ((!\RAM_controller|LessThan15~0_combout\) # (!\RAM_controller|h_count_read_aux[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_read_aux[9]~18_combout\,
	datab => \RAM_controller|LessThan15~0_combout\,
	datac => \RAM_controller|ReadEna~2_combout\,
	datad => \RAM_controller|D_out~0_combout\,
	combout => \RAM_controller|ReadEna~3_combout\);

-- Location: LCCOMB_X14_Y23_N26
\RAM_controller|readDir_32[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32[0]~2_combout\ = (\RAM_controller|ReadEna~3_combout\ & (((\RAM_controller|readDir_32[0]~1_combout\) # (!\RAM_controller|LessThan29~2_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan30~0_combout\,
	datab => \RAM_controller|LessThan29~2_combout\,
	datac => \RAM_controller|readDir_32[0]~1_combout\,
	datad => \RAM_controller|ReadEna~3_combout\,
	combout => \RAM_controller|readDir_32[0]~2_combout\);

-- Location: CLKCTRL_G11
\RAM_controller|readDir_32[0]~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM_controller|readDir_32[0]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM_controller|readDir_32[0]~2clkctrl_outclk\);

-- Location: LCCOMB_X17_Y21_N18
\RAM_controller|readDir_32[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(13) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~22_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|readDir_32\(13),
	datac => \RAM_controller|Add32~22_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(13));

-- Location: LCCOMB_X17_Y21_N8
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\ = (!\SW[1]~input_o\ & \RAM_controller|readDir_32\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \RAM_controller|readDir_32\(13),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X16_Y21_N22
\RAM_controller|readEna_32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readEna_32~4_combout\ = (!\RAM_controller|readEna_32~3_combout\ & (\RAM_controller|Add41~0_combout\ & ((\RAM_controller|LessThan29~2_combout\) # (\VGA_controller|Vcount\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \VGA_controller|Vcount\(9),
	datac => \RAM_controller|readEna_32~3_combout\,
	datad => \RAM_controller|Add41~0_combout\,
	combout => \RAM_controller|readEna_32~4_combout\);

-- Location: LCCOMB_X16_Y21_N28
\RAM_controller|readEna_32~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readEna_32~5_combout\ = (\RAM_controller|ReadEna~3_combout\ & ((\RAM_controller|readEna_32~4_combout\) # ((!\VGA_controller|Vcount\(9) & !\RAM_controller|LessThan30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(9),
	datab => \RAM_controller|LessThan30~0_combout\,
	datac => \RAM_controller|readEna_32~4_combout\,
	datad => \RAM_controller|ReadEna~3_combout\,
	combout => \RAM_controller|readEna_32~5_combout\);

-- Location: FF_X17_Y21_N9
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\,
	ena => \RAM_controller|readEna_32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X14_Y21_N0
\RAM_controller|Add41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add41~2_combout\ = \VGA_controller|Vcount\(5) $ (\VGA_controller|Vcount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|Vcount\(5),
	datad => \VGA_controller|Vcount\(4),
	combout => \RAM_controller|Add41~2_combout\);

-- Location: LCCOMB_X15_Y21_N18
\RAM_controller|Add42~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~18_combout\ = (\RAM_controller|Add42~17\ & (\RAM_controller|Add41~0_combout\ $ ((!\VGA_controller|Vcount\(9))))) # (!\RAM_controller|Add42~17\ & ((\RAM_controller|Add41~0_combout\ $ (\VGA_controller|Vcount\(9))) # (GND)))
-- \RAM_controller|Add42~19\ = CARRY((\RAM_controller|Add41~0_combout\ $ (!\VGA_controller|Vcount\(9))) # (!\RAM_controller|Add42~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add41~0_combout\,
	datab => \VGA_controller|Vcount\(9),
	datad => VCC,
	cin => \RAM_controller|Add42~17\,
	combout => \RAM_controller|Add42~18_combout\,
	cout => \RAM_controller|Add42~19\);

-- Location: LCCOMB_X14_Y21_N28
\RAM_controller|Add43~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~15_combout\ = (\RAM_controller|Add41~2_combout\ & ((\RAM_controller|Add42~18_combout\ & (\RAM_controller|Add43~9\ & VCC)) # (!\RAM_controller|Add42~18_combout\ & (!\RAM_controller|Add43~9\)))) # (!\RAM_controller|Add41~2_combout\ & 
-- ((\RAM_controller|Add42~18_combout\ & (!\RAM_controller|Add43~9\)) # (!\RAM_controller|Add42~18_combout\ & ((\RAM_controller|Add43~9\) # (GND)))))
-- \RAM_controller|Add43~16\ = CARRY((\RAM_controller|Add41~2_combout\ & (!\RAM_controller|Add42~18_combout\ & !\RAM_controller|Add43~9\)) # (!\RAM_controller|Add41~2_combout\ & ((!\RAM_controller|Add43~9\) # (!\RAM_controller|Add42~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add41~2_combout\,
	datab => \RAM_controller|Add42~18_combout\,
	datad => VCC,
	cin => \RAM_controller|Add43~9\,
	combout => \RAM_controller|Add43~15_combout\,
	cout => \RAM_controller|Add43~16\);

-- Location: LCCOMB_X15_Y23_N28
\RAM_controller|Add54~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add54~16_combout\ = \RAM_controller|Add54~15\ $ (\VGA_controller|Vcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|Vcount\(9),
	cin => \RAM_controller|Add54~15\,
	combout => \RAM_controller|Add54~16_combout\);

-- Location: LCCOMB_X16_Y23_N22
\RAM_controller|Add30~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~18_combout\ = (\RAM_controller|Add54~16_combout\ & ((\RAM_controller|Add30~17\) # (GND))) # (!\RAM_controller|Add54~16_combout\ & (!\RAM_controller|Add30~17\))
-- \RAM_controller|Add30~19\ = CARRY((\RAM_controller|Add54~16_combout\) # (!\RAM_controller|Add30~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add54~16_combout\,
	datad => VCC,
	cin => \RAM_controller|Add30~17\,
	combout => \RAM_controller|Add30~18_combout\,
	cout => \RAM_controller|Add30~19\);

-- Location: LCCOMB_X15_Y20_N14
\RAM_controller|Add31~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add31~10_combout\ = (\RAM_controller|Add30~18_combout\ & ((\RAM_controller|Add54~8_combout\ & (\RAM_controller|Add31~9\ & VCC)) # (!\RAM_controller|Add54~8_combout\ & (!\RAM_controller|Add31~9\)))) # (!\RAM_controller|Add30~18_combout\ & 
-- ((\RAM_controller|Add54~8_combout\ & (!\RAM_controller|Add31~9\)) # (!\RAM_controller|Add54~8_combout\ & ((\RAM_controller|Add31~9\) # (GND)))))
-- \RAM_controller|Add31~11\ = CARRY((\RAM_controller|Add30~18_combout\ & (!\RAM_controller|Add54~8_combout\ & !\RAM_controller|Add31~9\)) # (!\RAM_controller|Add30~18_combout\ & ((!\RAM_controller|Add31~9\) # (!\RAM_controller|Add54~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add30~18_combout\,
	datab => \RAM_controller|Add54~8_combout\,
	datad => VCC,
	cin => \RAM_controller|Add31~9\,
	combout => \RAM_controller|Add31~10_combout\,
	cout => \RAM_controller|Add31~11\);

-- Location: LCCOMB_X15_Y20_N0
\RAM_controller|Add43~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~20_combout\ = (\RAM_controller|read_addressing~1_combout\ & ((\RAM_controller|Add31~10_combout\))) # (!\RAM_controller|read_addressing~1_combout\ & (\RAM_controller|Add43~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|read_addressing~1_combout\,
	datab => \RAM_controller|Add43~15_combout\,
	datad => \RAM_controller|Add31~10_combout\,
	combout => \RAM_controller|Add43~20_combout\);

-- Location: LCCOMB_X16_Y20_N18
\RAM_controller|Add32~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~23_combout\ = (\RAM_controller|Add43~20_combout\ & (!\RAM_controller|Add32~21\)) # (!\RAM_controller|Add43~20_combout\ & ((\RAM_controller|Add32~21\) # (GND)))
-- \RAM_controller|Add32~24\ = CARRY((!\RAM_controller|Add32~21\) # (!\RAM_controller|Add43~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add43~20_combout\,
	datad => VCC,
	cin => \RAM_controller|Add32~21\,
	combout => \RAM_controller|Add32~23_combout\,
	cout => \RAM_controller|Add32~24\);

-- Location: LCCOMB_X16_Y20_N26
\RAM_controller|Add32~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~28_combout\ = (\RAM_controller|Add32~23_combout\ & (((!\RAM_controller|readEna_32~3_combout\ & \RAM_controller|LessThan29~2_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readEna_32~3_combout\,
	datab => \RAM_controller|Add32~23_combout\,
	datac => \RAM_controller|LessThan29~2_combout\,
	datad => \RAM_controller|LessThan30~0_combout\,
	combout => \RAM_controller|Add32~28_combout\);

-- Location: LCCOMB_X17_Y21_N10
\RAM_controller|readDir_32[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(14) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~28_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(14),
	datac => \RAM_controller|Add32~28_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(14));

-- Location: LCCOMB_X17_Y21_N6
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\ = (!\SW[1]~input_o\ & \RAM_controller|readDir_32\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \RAM_controller|readDir_32\(14),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\);

-- Location: FF_X17_Y21_N7
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\,
	ena => \RAM_controller|readEna_32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1));

-- Location: PLL_3
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
	areset => \SW[0]~input_o\,
	fbin => \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X22_Y25_N4
\clk12M~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk12M~0_combout\ = !\clk12M~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk12M~q\,
	combout => \clk12M~0_combout\);

-- Location: FF_X22_Y25_N5
clk12M : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \clk12M~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk12M~q\);

-- Location: LCCOMB_X24_Y25_N8
\RAM_controller|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~0_combout\ = \RAM_controller|v_count_write\(0) $ (VCC)
-- \RAM_controller|Add0~1\ = CARRY(\RAM_controller|v_count_write\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(0),
	datad => VCC,
	combout => \RAM_controller|Add0~0_combout\,
	cout => \RAM_controller|Add0~1\);

-- Location: CLKCTRL_G10
\clk12M~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk12M~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk12M~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y25_N10
\RAM_controller|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~0_combout\ = \RAM_controller|h_count_write\(0) $ (VCC)
-- \RAM_controller|Add1~1\ = CARRY(\RAM_controller|h_count_write\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(0),
	datad => VCC,
	combout => \RAM_controller|Add1~0_combout\,
	cout => \RAM_controller|Add1~1\);

-- Location: FF_X21_Y25_N11
\RAM_controller|h_count_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~clkctrl_outclk\,
	d => \RAM_controller|Add1~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(0));

-- Location: LCCOMB_X21_Y25_N12
\RAM_controller|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~2_combout\ = (\RAM_controller|h_count_write\(1) & (!\RAM_controller|Add1~1\)) # (!\RAM_controller|h_count_write\(1) & ((\RAM_controller|Add1~1\) # (GND)))
-- \RAM_controller|Add1~3\ = CARRY((!\RAM_controller|Add1~1\) # (!\RAM_controller|h_count_write\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(1),
	datad => VCC,
	cin => \RAM_controller|Add1~1\,
	combout => \RAM_controller|Add1~2_combout\,
	cout => \RAM_controller|Add1~3\);

-- Location: FF_X21_Y25_N13
\RAM_controller|h_count_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~clkctrl_outclk\,
	d => \RAM_controller|Add1~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(1));

-- Location: LCCOMB_X21_Y25_N14
\RAM_controller|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~4_combout\ = (\RAM_controller|h_count_write\(2) & (\RAM_controller|Add1~3\ $ (GND))) # (!\RAM_controller|h_count_write\(2) & (!\RAM_controller|Add1~3\ & VCC))
-- \RAM_controller|Add1~5\ = CARRY((\RAM_controller|h_count_write\(2) & !\RAM_controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_write\(2),
	datad => VCC,
	cin => \RAM_controller|Add1~3\,
	combout => \RAM_controller|Add1~4_combout\,
	cout => \RAM_controller|Add1~5\);

-- Location: FF_X21_Y25_N15
\RAM_controller|h_count_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~clkctrl_outclk\,
	d => \RAM_controller|Add1~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(2));

-- Location: LCCOMB_X21_Y25_N16
\RAM_controller|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~6_combout\ = (\RAM_controller|h_count_write\(3) & (!\RAM_controller|Add1~5\)) # (!\RAM_controller|h_count_write\(3) & ((\RAM_controller|Add1~5\) # (GND)))
-- \RAM_controller|Add1~7\ = CARRY((!\RAM_controller|Add1~5\) # (!\RAM_controller|h_count_write\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_write\(3),
	datad => VCC,
	cin => \RAM_controller|Add1~5\,
	combout => \RAM_controller|Add1~6_combout\,
	cout => \RAM_controller|Add1~7\);

-- Location: FF_X21_Y25_N17
\RAM_controller|h_count_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~clkctrl_outclk\,
	d => \RAM_controller|Add1~6_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(3));

-- Location: LCCOMB_X21_Y25_N18
\RAM_controller|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~8_combout\ = (\RAM_controller|h_count_write\(4) & (\RAM_controller|Add1~7\ $ (GND))) # (!\RAM_controller|h_count_write\(4) & (!\RAM_controller|Add1~7\ & VCC))
-- \RAM_controller|Add1~9\ = CARRY((\RAM_controller|h_count_write\(4) & !\RAM_controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_write\(4),
	datad => VCC,
	cin => \RAM_controller|Add1~7\,
	combout => \RAM_controller|Add1~8_combout\,
	cout => \RAM_controller|Add1~9\);

-- Location: FF_X21_Y25_N19
\RAM_controller|h_count_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add1~8_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(4));

-- Location: LCCOMB_X21_Y25_N20
\RAM_controller|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~10_combout\ = (\RAM_controller|h_count_write\(5) & (!\RAM_controller|Add1~9\)) # (!\RAM_controller|h_count_write\(5) & ((\RAM_controller|Add1~9\) # (GND)))
-- \RAM_controller|Add1~11\ = CARRY((!\RAM_controller|Add1~9\) # (!\RAM_controller|h_count_write\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_write\(5),
	datad => VCC,
	cin => \RAM_controller|Add1~9\,
	combout => \RAM_controller|Add1~10_combout\,
	cout => \RAM_controller|Add1~11\);

-- Location: FF_X21_Y25_N21
\RAM_controller|h_count_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add1~10_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(5));

-- Location: LCCOMB_X21_Y25_N22
\RAM_controller|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~12_combout\ = (\RAM_controller|h_count_write\(6) & (\RAM_controller|Add1~11\ $ (GND))) # (!\RAM_controller|h_count_write\(6) & (!\RAM_controller|Add1~11\ & VCC))
-- \RAM_controller|Add1~13\ = CARRY((\RAM_controller|h_count_write\(6) & !\RAM_controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(6),
	datad => VCC,
	cin => \RAM_controller|Add1~11\,
	combout => \RAM_controller|Add1~12_combout\,
	cout => \RAM_controller|Add1~13\);

-- Location: FF_X21_Y25_N23
\RAM_controller|h_count_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add1~12_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(6));

-- Location: LCCOMB_X21_Y25_N0
\RAM_controller|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Equal1~1_combout\ = (\RAM_controller|h_count_write\(1) & (\RAM_controller|h_count_write\(5) & (\RAM_controller|h_count_write\(2) & \RAM_controller|h_count_write\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(1),
	datab => \RAM_controller|h_count_write\(5),
	datac => \RAM_controller|h_count_write\(2),
	datad => \RAM_controller|h_count_write\(4),
	combout => \RAM_controller|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y25_N24
\RAM_controller|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~14_combout\ = (\RAM_controller|h_count_write\(7) & (!\RAM_controller|Add1~13\)) # (!\RAM_controller|h_count_write\(7) & ((\RAM_controller|Add1~13\) # (GND)))
-- \RAM_controller|Add1~15\ = CARRY((!\RAM_controller|Add1~13\) # (!\RAM_controller|h_count_write\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(7),
	datad => VCC,
	cin => \RAM_controller|Add1~13\,
	combout => \RAM_controller|Add1~14_combout\,
	cout => \RAM_controller|Add1~15\);

-- Location: LCCOMB_X22_Y25_N2
\RAM_controller|h_count_write~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_write~0_combout\ = (!\RAM_controller|Equal1~2_combout\ & \RAM_controller|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Equal1~2_combout\,
	datad => \RAM_controller|Add1~14_combout\,
	combout => \RAM_controller|h_count_write~0_combout\);

-- Location: FF_X22_Y25_N3
\RAM_controller|h_count_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|h_count_write~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(7));

-- Location: LCCOMB_X21_Y25_N26
\RAM_controller|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~16_combout\ = (\RAM_controller|h_count_write\(8) & (\RAM_controller|Add1~15\ $ (GND))) # (!\RAM_controller|h_count_write\(8) & (!\RAM_controller|Add1~15\ & VCC))
-- \RAM_controller|Add1~17\ = CARRY((\RAM_controller|h_count_write\(8) & !\RAM_controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(8),
	datad => VCC,
	cin => \RAM_controller|Add1~15\,
	combout => \RAM_controller|Add1~16_combout\,
	cout => \RAM_controller|Add1~17\);

-- Location: FF_X21_Y25_N27
\RAM_controller|h_count_write[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add1~16_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(8));

-- Location: LCCOMB_X21_Y25_N28
\RAM_controller|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add1~18_combout\ = \RAM_controller|Add1~17\ $ (\RAM_controller|h_count_write\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RAM_controller|h_count_write\(9),
	cin => \RAM_controller|Add1~17\,
	combout => \RAM_controller|Add1~18_combout\);

-- Location: LCCOMB_X22_Y25_N26
\RAM_controller|h_count_write~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|h_count_write~1_combout\ = (!\RAM_controller|Equal1~2_combout\ & \RAM_controller|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Equal1~2_combout\,
	datad => \RAM_controller|Add1~18_combout\,
	combout => \RAM_controller|h_count_write~1_combout\);

-- Location: FF_X22_Y25_N27
\RAM_controller|h_count_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|h_count_write~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|h_count_write\(9));

-- Location: LCCOMB_X21_Y25_N2
\RAM_controller|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Equal1~0_combout\ = (\RAM_controller|h_count_write\(0) & (\RAM_controller|h_count_write\(9) & (!\RAM_controller|h_count_write\(8) & !\RAM_controller|h_count_write\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(0),
	datab => \RAM_controller|h_count_write\(9),
	datac => \RAM_controller|h_count_write\(8),
	datad => \RAM_controller|h_count_write\(7),
	combout => \RAM_controller|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y25_N10
\RAM_controller|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Equal1~2_combout\ = (\RAM_controller|h_count_write\(3) & (\RAM_controller|h_count_write\(6) & (\RAM_controller|Equal1~1_combout\ & \RAM_controller|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(3),
	datab => \RAM_controller|h_count_write\(6),
	datac => \RAM_controller|Equal1~1_combout\,
	datad => \RAM_controller|Equal1~0_combout\,
	combout => \RAM_controller|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y25_N22
\RAM_controller|v_count_write[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|v_count_write[9]~1_combout\ = (\SW[2]~input_o\ & \RAM_controller|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \RAM_controller|Equal1~2_combout\,
	combout => \RAM_controller|v_count_write[9]~1_combout\);

-- Location: FF_X24_Y25_N9
\RAM_controller|v_count_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add0~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(0));

-- Location: LCCOMB_X24_Y25_N10
\RAM_controller|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~2_combout\ = (\RAM_controller|v_count_write\(1) & (!\RAM_controller|Add0~1\)) # (!\RAM_controller|v_count_write\(1) & ((\RAM_controller|Add0~1\) # (GND)))
-- \RAM_controller|Add0~3\ = CARRY((!\RAM_controller|Add0~1\) # (!\RAM_controller|v_count_write\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(1),
	datad => VCC,
	cin => \RAM_controller|Add0~1\,
	combout => \RAM_controller|Add0~2_combout\,
	cout => \RAM_controller|Add0~3\);

-- Location: FF_X24_Y25_N11
\RAM_controller|v_count_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add0~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(1));

-- Location: LCCOMB_X24_Y25_N12
\RAM_controller|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~4_combout\ = (\RAM_controller|v_count_write\(2) & (\RAM_controller|Add0~3\ $ (GND))) # (!\RAM_controller|v_count_write\(2) & (!\RAM_controller|Add0~3\ & VCC))
-- \RAM_controller|Add0~5\ = CARRY((\RAM_controller|v_count_write\(2) & !\RAM_controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(2),
	datad => VCC,
	cin => \RAM_controller|Add0~3\,
	combout => \RAM_controller|Add0~4_combout\,
	cout => \RAM_controller|Add0~5\);

-- Location: FF_X24_Y25_N13
\RAM_controller|v_count_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add0~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(2));

-- Location: LCCOMB_X24_Y25_N14
\RAM_controller|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~6_combout\ = (\RAM_controller|v_count_write\(3) & (!\RAM_controller|Add0~5\)) # (!\RAM_controller|v_count_write\(3) & ((\RAM_controller|Add0~5\) # (GND)))
-- \RAM_controller|Add0~7\ = CARRY((!\RAM_controller|Add0~5\) # (!\RAM_controller|v_count_write\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(3),
	datad => VCC,
	cin => \RAM_controller|Add0~5\,
	combout => \RAM_controller|Add0~6_combout\,
	cout => \RAM_controller|Add0~7\);

-- Location: FF_X24_Y25_N15
\RAM_controller|v_count_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add0~6_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(3));

-- Location: LCCOMB_X24_Y25_N16
\RAM_controller|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~8_combout\ = (\RAM_controller|v_count_write\(4) & (\RAM_controller|Add0~7\ $ (GND))) # (!\RAM_controller|v_count_write\(4) & (!\RAM_controller|Add0~7\ & VCC))
-- \RAM_controller|Add0~9\ = CARRY((\RAM_controller|v_count_write\(4) & !\RAM_controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(4),
	datad => VCC,
	cin => \RAM_controller|Add0~7\,
	combout => \RAM_controller|Add0~8_combout\,
	cout => \RAM_controller|Add0~9\);

-- Location: FF_X24_Y25_N17
\RAM_controller|v_count_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add0~8_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(4));

-- Location: LCCOMB_X24_Y25_N18
\RAM_controller|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~10_combout\ = (\RAM_controller|v_count_write\(5) & (!\RAM_controller|Add0~9\)) # (!\RAM_controller|v_count_write\(5) & ((\RAM_controller|Add0~9\) # (GND)))
-- \RAM_controller|Add0~11\ = CARRY((!\RAM_controller|Add0~9\) # (!\RAM_controller|v_count_write\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(5),
	datad => VCC,
	cin => \RAM_controller|Add0~9\,
	combout => \RAM_controller|Add0~10_combout\,
	cout => \RAM_controller|Add0~11\);

-- Location: LCCOMB_X24_Y25_N22
\RAM_controller|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~14_combout\ = (\RAM_controller|v_count_write\(7) & (!\RAM_controller|Add0~13\)) # (!\RAM_controller|v_count_write\(7) & ((\RAM_controller|Add0~13\) # (GND)))
-- \RAM_controller|Add0~15\ = CARRY((!\RAM_controller|Add0~13\) # (!\RAM_controller|v_count_write\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(7),
	datad => VCC,
	cin => \RAM_controller|Add0~13\,
	combout => \RAM_controller|Add0~14_combout\,
	cout => \RAM_controller|Add0~15\);

-- Location: LCCOMB_X24_Y25_N24
\RAM_controller|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~16_combout\ = (\RAM_controller|v_count_write\(8) & (\RAM_controller|Add0~15\ $ (GND))) # (!\RAM_controller|v_count_write\(8) & (!\RAM_controller|Add0~15\ & VCC))
-- \RAM_controller|Add0~17\ = CARRY((\RAM_controller|v_count_write\(8) & !\RAM_controller|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(8),
	datad => VCC,
	cin => \RAM_controller|Add0~15\,
	combout => \RAM_controller|Add0~16_combout\,
	cout => \RAM_controller|Add0~17\);

-- Location: LCCOMB_X26_Y25_N8
\RAM_controller|v_count_write~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|v_count_write~4_combout\ = (\RAM_controller|Add0~16_combout\ & !\RAM_controller|write_couters~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add0~16_combout\,
	datad => \RAM_controller|write_couters~3_combout\,
	combout => \RAM_controller|v_count_write~4_combout\);

-- Location: FF_X26_Y25_N9
\RAM_controller|v_count_write[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|v_count_write~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(8));

-- Location: LCCOMB_X26_Y25_N2
\RAM_controller|write_couters~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|write_couters~2_combout\ = (\RAM_controller|v_count_write\(3) & (\RAM_controller|v_count_write\(4) & (\RAM_controller|v_count_write\(2) & \RAM_controller|v_count_write\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(3),
	datab => \RAM_controller|v_count_write\(4),
	datac => \RAM_controller|v_count_write\(2),
	datad => \RAM_controller|v_count_write\(6),
	combout => \RAM_controller|write_couters~2_combout\);

-- Location: LCCOMB_X24_Y25_N26
\RAM_controller|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~18_combout\ = \RAM_controller|v_count_write\(9) $ (\RAM_controller|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(9),
	cin => \RAM_controller|Add0~17\,
	combout => \RAM_controller|Add0~18_combout\);

-- Location: FF_X24_Y25_N27
\RAM_controller|v_count_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|Add0~18_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(9));

-- Location: LCCOMB_X23_Y25_N14
\RAM_controller|write_couters~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|write_couters~0_combout\ = (\RAM_controller|v_count_write\(0) & \RAM_controller|v_count_write\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_controller|v_count_write\(0),
	datad => \RAM_controller|v_count_write\(1),
	combout => \RAM_controller|write_couters~0_combout\);

-- Location: LCCOMB_X26_Y25_N6
\RAM_controller|write_couters~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|write_couters~1_combout\ = (!\RAM_controller|v_count_write\(5) & (!\RAM_controller|v_count_write\(9) & (\RAM_controller|write_couters~0_combout\ & \RAM_controller|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(5),
	datab => \RAM_controller|v_count_write\(9),
	datac => \RAM_controller|write_couters~0_combout\,
	datad => \RAM_controller|Equal1~2_combout\,
	combout => \RAM_controller|write_couters~1_combout\);

-- Location: LCCOMB_X26_Y25_N28
\RAM_controller|write_couters~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|write_couters~3_combout\ = (\RAM_controller|v_count_write\(8) & (\RAM_controller|write_couters~2_combout\ & (\RAM_controller|v_count_write\(7) & \RAM_controller|write_couters~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(8),
	datab => \RAM_controller|write_couters~2_combout\,
	datac => \RAM_controller|v_count_write\(7),
	datad => \RAM_controller|write_couters~1_combout\,
	combout => \RAM_controller|write_couters~3_combout\);

-- Location: LCCOMB_X26_Y25_N0
\RAM_controller|v_count_write~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|v_count_write~0_combout\ = (\RAM_controller|Add0~10_combout\ & !\RAM_controller|write_couters~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_controller|Add0~10_combout\,
	datad => \RAM_controller|write_couters~3_combout\,
	combout => \RAM_controller|v_count_write~0_combout\);

-- Location: FF_X26_Y25_N1
\RAM_controller|v_count_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|v_count_write~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(5));

-- Location: LCCOMB_X24_Y25_N20
\RAM_controller|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add0~12_combout\ = (\RAM_controller|v_count_write\(6) & (\RAM_controller|Add0~11\ $ (GND))) # (!\RAM_controller|v_count_write\(6) & (!\RAM_controller|Add0~11\ & VCC))
-- \RAM_controller|Add0~13\ = CARRY((\RAM_controller|v_count_write\(6) & !\RAM_controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(6),
	datad => VCC,
	cin => \RAM_controller|Add0~11\,
	combout => \RAM_controller|Add0~12_combout\,
	cout => \RAM_controller|Add0~13\);

-- Location: LCCOMB_X26_Y25_N4
\RAM_controller|v_count_write~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|v_count_write~2_combout\ = (\RAM_controller|Add0~12_combout\ & !\RAM_controller|write_couters~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_controller|Add0~12_combout\,
	datad => \RAM_controller|write_couters~3_combout\,
	combout => \RAM_controller|v_count_write~2_combout\);

-- Location: FF_X26_Y25_N5
\RAM_controller|v_count_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|v_count_write~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(6));

-- Location: LCCOMB_X26_Y25_N30
\RAM_controller|v_count_write~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|v_count_write~3_combout\ = (\RAM_controller|Add0~14_combout\ & !\RAM_controller|write_couters~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_controller|Add0~14_combout\,
	datad => \RAM_controller|write_couters~3_combout\,
	combout => \RAM_controller|v_count_write~3_combout\);

-- Location: FF_X26_Y25_N31
\RAM_controller|v_count_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk12M~q\,
	d => \RAM_controller|v_count_write~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \RAM_controller|v_count_write[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|v_count_write\(7));

-- Location: LCCOMB_X22_Y25_N6
\RAM_controller|Par_Reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Par_Reg~0_combout\ = (!\RAM_controller|v_count_write\(9) & (!\RAM_controller|v_count_write\(6) & (!\SW[0]~input_o\ & !\RAM_controller|v_count_write\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(9),
	datab => \RAM_controller|v_count_write\(6),
	datac => \SW[0]~input_o\,
	datad => \RAM_controller|v_count_write\(5),
	combout => \RAM_controller|Par_Reg~0_combout\);

-- Location: LCCOMB_X22_Y25_N28
\RAM_controller|Par_Reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Par_Reg~1_combout\ = (!\RAM_controller|v_count_write\(7) & (!\RAM_controller|v_count_write\(8) & \RAM_controller|Par_Reg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(7),
	datac => \RAM_controller|v_count_write\(8),
	datad => \RAM_controller|Par_Reg~0_combout\,
	combout => \RAM_controller|Par_Reg~1_combout\);

-- Location: LCCOMB_X24_Y25_N28
\RAM_controller|Write_addressing~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Write_addressing~0_combout\ = \RAM_controller|v_count_write\(4) $ (((\RAM_controller|v_count_write\(1)) # ((\RAM_controller|v_count_write\(3)) # (\RAM_controller|v_count_write\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(1),
	datab => \RAM_controller|v_count_write\(4),
	datac => \RAM_controller|v_count_write\(3),
	datad => \RAM_controller|v_count_write\(2),
	combout => \RAM_controller|Write_addressing~0_combout\);

-- Location: LCCOMB_X22_Y25_N20
\RAM_controller|Write_addressing~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Write_addressing~1_combout\ = (\RAM_controller|h_count_write\(4) & ((\RAM_controller|h_count_write\(6)) # ((\RAM_controller|h_count_write\(9) & \RAM_controller|h_count_write\(5))))) # (!\RAM_controller|h_count_write\(4) & 
-- (\RAM_controller|h_count_write\(6) & ((\RAM_controller|h_count_write\(9)) # (\RAM_controller|h_count_write\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(4),
	datab => \RAM_controller|h_count_write\(6),
	datac => \RAM_controller|h_count_write\(9),
	datad => \RAM_controller|h_count_write\(5),
	combout => \RAM_controller|Write_addressing~1_combout\);

-- Location: LCCOMB_X22_Y25_N24
\RAM_controller|Write_addressing~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Write_addressing~2_combout\ = \RAM_controller|h_count_write\(9) $ (((\RAM_controller|h_count_write\(8)) # ((\RAM_controller|Write_addressing~1_combout\) # (\RAM_controller|h_count_write\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(8),
	datab => \RAM_controller|Write_addressing~1_combout\,
	datac => \RAM_controller|h_count_write\(9),
	datad => \RAM_controller|h_count_write\(7),
	combout => \RAM_controller|Write_addressing~2_combout\);

-- Location: LCCOMB_X22_Y25_N0
\RAM_controller|Write_addressing~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Write_addressing~3_combout\ = (\SW[2]~input_o\ & (\RAM_controller|Par_Reg~1_combout\ & (\RAM_controller|Write_addressing~0_combout\ & \RAM_controller|Write_addressing~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \RAM_controller|Par_Reg~1_combout\,
	datac => \RAM_controller|Write_addressing~0_combout\,
	datad => \RAM_controller|Write_addressing~2_combout\,
	combout => \RAM_controller|Write_addressing~3_combout\);

-- Location: CLKCTRL_G14
\RAM_controller|Write_addressing~3clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM_controller|Write_addressing~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM_controller|Write_addressing~3clkctrl_outclk\);

-- Location: LCCOMB_X26_Y25_N10
\RAM_controller|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add2~0_combout\ = \RAM_controller|v_count_write\(1) $ (VCC)
-- \RAM_controller|Add2~1\ = CARRY(\RAM_controller|v_count_write\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(1),
	datad => VCC,
	combout => \RAM_controller|Add2~0_combout\,
	cout => \RAM_controller|Add2~1\);

-- Location: LCCOMB_X26_Y25_N12
\RAM_controller|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add2~2_combout\ = (\RAM_controller|v_count_write\(2) & (\RAM_controller|Add2~1\ & VCC)) # (!\RAM_controller|v_count_write\(2) & (!\RAM_controller|Add2~1\))
-- \RAM_controller|Add2~3\ = CARRY((!\RAM_controller|v_count_write\(2) & !\RAM_controller|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(2),
	datad => VCC,
	cin => \RAM_controller|Add2~1\,
	combout => \RAM_controller|Add2~2_combout\,
	cout => \RAM_controller|Add2~3\);

-- Location: LCCOMB_X26_Y25_N14
\RAM_controller|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add2~4_combout\ = (\RAM_controller|v_count_write\(3) & ((GND) # (!\RAM_controller|Add2~3\))) # (!\RAM_controller|v_count_write\(3) & (\RAM_controller|Add2~3\ $ (GND)))
-- \RAM_controller|Add2~5\ = CARRY((\RAM_controller|v_count_write\(3)) # (!\RAM_controller|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(3),
	datad => VCC,
	cin => \RAM_controller|Add2~3\,
	combout => \RAM_controller|Add2~4_combout\,
	cout => \RAM_controller|Add2~5\);

-- Location: LCCOMB_X26_Y25_N16
\RAM_controller|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add2~6_combout\ = (\RAM_controller|v_count_write\(4) & (\RAM_controller|Add2~5\ & VCC)) # (!\RAM_controller|v_count_write\(4) & (!\RAM_controller|Add2~5\))
-- \RAM_controller|Add2~7\ = CARRY((!\RAM_controller|v_count_write\(4) & !\RAM_controller|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(4),
	datad => VCC,
	cin => \RAM_controller|Add2~5\,
	combout => \RAM_controller|Add2~6_combout\,
	cout => \RAM_controller|Add2~7\);

-- Location: LCCOMB_X26_Y25_N18
\RAM_controller|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add2~8_combout\ = (\RAM_controller|v_count_write\(5) & ((GND) # (!\RAM_controller|Add2~7\))) # (!\RAM_controller|v_count_write\(5) & (\RAM_controller|Add2~7\ $ (GND)))
-- \RAM_controller|Add2~9\ = CARRY((\RAM_controller|v_count_write\(5)) # (!\RAM_controller|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(5),
	datad => VCC,
	cin => \RAM_controller|Add2~7\,
	combout => \RAM_controller|Add2~8_combout\,
	cout => \RAM_controller|Add2~9\);

-- Location: LCCOMB_X26_Y25_N20
\RAM_controller|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add2~10_combout\ = (\RAM_controller|v_count_write\(6) & (\RAM_controller|Add2~9\ & VCC)) # (!\RAM_controller|v_count_write\(6) & (!\RAM_controller|Add2~9\))
-- \RAM_controller|Add2~11\ = CARRY((!\RAM_controller|v_count_write\(6) & !\RAM_controller|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(6),
	datad => VCC,
	cin => \RAM_controller|Add2~9\,
	combout => \RAM_controller|Add2~10_combout\,
	cout => \RAM_controller|Add2~11\);

-- Location: LCCOMB_X26_Y25_N22
\RAM_controller|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add2~12_combout\ = (\RAM_controller|v_count_write\(7) & ((GND) # (!\RAM_controller|Add2~11\))) # (!\RAM_controller|v_count_write\(7) & (\RAM_controller|Add2~11\ $ (GND)))
-- \RAM_controller|Add2~13\ = CARRY((\RAM_controller|v_count_write\(7)) # (!\RAM_controller|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(7),
	datad => VCC,
	cin => \RAM_controller|Add2~11\,
	combout => \RAM_controller|Add2~12_combout\,
	cout => \RAM_controller|Add2~13\);

-- Location: LCCOMB_X26_Y25_N24
\RAM_controller|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add2~14_combout\ = (\RAM_controller|v_count_write\(8) & (\RAM_controller|Add2~13\ & VCC)) # (!\RAM_controller|v_count_write\(8) & (!\RAM_controller|Add2~13\))
-- \RAM_controller|Add2~15\ = CARRY((!\RAM_controller|v_count_write\(8) & !\RAM_controller|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(8),
	datad => VCC,
	cin => \RAM_controller|Add2~13\,
	combout => \RAM_controller|Add2~14_combout\,
	cout => \RAM_controller|Add2~15\);

-- Location: LCCOMB_X26_Y25_N26
\RAM_controller|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add2~16_combout\ = \RAM_controller|Add2~15\ $ (\RAM_controller|v_count_write\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RAM_controller|v_count_write\(9),
	cin => \RAM_controller|Add2~15\,
	combout => \RAM_controller|Add2~16_combout\);

-- Location: LCCOMB_X27_Y25_N4
\RAM_controller|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~1_cout\ = CARRY(!\RAM_controller|v_count_write\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(0),
	datad => VCC,
	cout => \RAM_controller|Add3~1_cout\);

-- Location: LCCOMB_X27_Y25_N6
\RAM_controller|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~2_combout\ = (\RAM_controller|Add2~0_combout\ & ((\RAM_controller|Add3~1_cout\) # (GND))) # (!\RAM_controller|Add2~0_combout\ & (!\RAM_controller|Add3~1_cout\))
-- \RAM_controller|Add3~3\ = CARRY((\RAM_controller|Add2~0_combout\) # (!\RAM_controller|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~0_combout\,
	datad => VCC,
	cin => \RAM_controller|Add3~1_cout\,
	combout => \RAM_controller|Add3~2_combout\,
	cout => \RAM_controller|Add3~3\);

-- Location: LCCOMB_X27_Y25_N8
\RAM_controller|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~4_combout\ = (\RAM_controller|Add2~2_combout\ & (!\RAM_controller|Add3~3\ & VCC)) # (!\RAM_controller|Add2~2_combout\ & (\RAM_controller|Add3~3\ $ (GND)))
-- \RAM_controller|Add3~5\ = CARRY((!\RAM_controller|Add2~2_combout\ & !\RAM_controller|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~2_combout\,
	datad => VCC,
	cin => \RAM_controller|Add3~3\,
	combout => \RAM_controller|Add3~4_combout\,
	cout => \RAM_controller|Add3~5\);

-- Location: LCCOMB_X27_Y25_N10
\RAM_controller|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~6_combout\ = (\RAM_controller|Add2~4_combout\ & ((\RAM_controller|Add3~5\) # (GND))) # (!\RAM_controller|Add2~4_combout\ & (!\RAM_controller|Add3~5\))
-- \RAM_controller|Add3~7\ = CARRY((\RAM_controller|Add2~4_combout\) # (!\RAM_controller|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~4_combout\,
	datad => VCC,
	cin => \RAM_controller|Add3~5\,
	combout => \RAM_controller|Add3~6_combout\,
	cout => \RAM_controller|Add3~7\);

-- Location: LCCOMB_X27_Y25_N12
\RAM_controller|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~8_combout\ = (\RAM_controller|Add2~6_combout\ & (!\RAM_controller|Add3~7\ & VCC)) # (!\RAM_controller|Add2~6_combout\ & (\RAM_controller|Add3~7\ $ (GND)))
-- \RAM_controller|Add3~9\ = CARRY((!\RAM_controller|Add2~6_combout\ & !\RAM_controller|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~6_combout\,
	datad => VCC,
	cin => \RAM_controller|Add3~7\,
	combout => \RAM_controller|Add3~8_combout\,
	cout => \RAM_controller|Add3~9\);

-- Location: LCCOMB_X27_Y25_N14
\RAM_controller|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~10_combout\ = (\RAM_controller|Add2~8_combout\ & ((\RAM_controller|Add3~9\) # (GND))) # (!\RAM_controller|Add2~8_combout\ & (!\RAM_controller|Add3~9\))
-- \RAM_controller|Add3~11\ = CARRY((\RAM_controller|Add2~8_combout\) # (!\RAM_controller|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add2~8_combout\,
	datad => VCC,
	cin => \RAM_controller|Add3~9\,
	combout => \RAM_controller|Add3~10_combout\,
	cout => \RAM_controller|Add3~11\);

-- Location: LCCOMB_X27_Y25_N16
\RAM_controller|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~12_combout\ = (\RAM_controller|Add2~10_combout\ & (!\RAM_controller|Add3~11\ & VCC)) # (!\RAM_controller|Add2~10_combout\ & (\RAM_controller|Add3~11\ $ (GND)))
-- \RAM_controller|Add3~13\ = CARRY((!\RAM_controller|Add2~10_combout\ & !\RAM_controller|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add2~10_combout\,
	datad => VCC,
	cin => \RAM_controller|Add3~11\,
	combout => \RAM_controller|Add3~12_combout\,
	cout => \RAM_controller|Add3~13\);

-- Location: LCCOMB_X27_Y25_N18
\RAM_controller|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~14_combout\ = (\RAM_controller|Add2~12_combout\ & ((\RAM_controller|Add3~13\) # (GND))) # (!\RAM_controller|Add2~12_combout\ & (!\RAM_controller|Add3~13\))
-- \RAM_controller|Add3~15\ = CARRY((\RAM_controller|Add2~12_combout\) # (!\RAM_controller|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add2~12_combout\,
	datad => VCC,
	cin => \RAM_controller|Add3~13\,
	combout => \RAM_controller|Add3~14_combout\,
	cout => \RAM_controller|Add3~15\);

-- Location: LCCOMB_X27_Y25_N20
\RAM_controller|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~16_combout\ = (\RAM_controller|Add2~14_combout\ & (!\RAM_controller|Add3~15\ & VCC)) # (!\RAM_controller|Add2~14_combout\ & (\RAM_controller|Add3~15\ $ (GND)))
-- \RAM_controller|Add3~17\ = CARRY((!\RAM_controller|Add2~14_combout\ & !\RAM_controller|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add2~14_combout\,
	datad => VCC,
	cin => \RAM_controller|Add3~15\,
	combout => \RAM_controller|Add3~16_combout\,
	cout => \RAM_controller|Add3~17\);

-- Location: LCCOMB_X27_Y25_N22
\RAM_controller|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~18_combout\ = (\RAM_controller|Add2~16_combout\ & ((\RAM_controller|Add3~17\) # (GND))) # (!\RAM_controller|Add2~16_combout\ & (!\RAM_controller|Add3~17\))
-- \RAM_controller|Add3~19\ = CARRY((\RAM_controller|Add2~16_combout\) # (!\RAM_controller|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~16_combout\,
	datad => VCC,
	cin => \RAM_controller|Add3~17\,
	combout => \RAM_controller|Add3~18_combout\,
	cout => \RAM_controller|Add3~19\);

-- Location: LCCOMB_X27_Y25_N24
\RAM_controller|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add3~20_combout\ = \RAM_controller|Add3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RAM_controller|Add3~19\,
	combout => \RAM_controller|Add3~20_combout\);

-- Location: LCCOMB_X27_Y26_N14
\RAM_controller|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add4~0_combout\ = (\RAM_controller|Add3~8_combout\ & (\RAM_controller|v_count_write\(0) $ (VCC))) # (!\RAM_controller|Add3~8_combout\ & (\RAM_controller|v_count_write\(0) & VCC))
-- \RAM_controller|Add4~1\ = CARRY((\RAM_controller|Add3~8_combout\ & \RAM_controller|v_count_write\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add3~8_combout\,
	datab => \RAM_controller|v_count_write\(0),
	datad => VCC,
	combout => \RAM_controller|Add4~0_combout\,
	cout => \RAM_controller|Add4~1\);

-- Location: LCCOMB_X27_Y26_N16
\RAM_controller|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add4~2_combout\ = (\RAM_controller|Add2~0_combout\ & ((\RAM_controller|Add3~10_combout\ & (\RAM_controller|Add4~1\ & VCC)) # (!\RAM_controller|Add3~10_combout\ & (!\RAM_controller|Add4~1\)))) # (!\RAM_controller|Add2~0_combout\ & 
-- ((\RAM_controller|Add3~10_combout\ & (!\RAM_controller|Add4~1\)) # (!\RAM_controller|Add3~10_combout\ & ((\RAM_controller|Add4~1\) # (GND)))))
-- \RAM_controller|Add4~3\ = CARRY((\RAM_controller|Add2~0_combout\ & (!\RAM_controller|Add3~10_combout\ & !\RAM_controller|Add4~1\)) # (!\RAM_controller|Add2~0_combout\ & ((!\RAM_controller|Add4~1\) # (!\RAM_controller|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~0_combout\,
	datab => \RAM_controller|Add3~10_combout\,
	datad => VCC,
	cin => \RAM_controller|Add4~1\,
	combout => \RAM_controller|Add4~2_combout\,
	cout => \RAM_controller|Add4~3\);

-- Location: LCCOMB_X27_Y26_N18
\RAM_controller|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add4~4_combout\ = ((\RAM_controller|Add2~2_combout\ $ (\RAM_controller|Add3~12_combout\ $ (!\RAM_controller|Add4~3\)))) # (GND)
-- \RAM_controller|Add4~5\ = CARRY((\RAM_controller|Add2~2_combout\ & ((\RAM_controller|Add3~12_combout\) # (!\RAM_controller|Add4~3\))) # (!\RAM_controller|Add2~2_combout\ & (\RAM_controller|Add3~12_combout\ & !\RAM_controller|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~2_combout\,
	datab => \RAM_controller|Add3~12_combout\,
	datad => VCC,
	cin => \RAM_controller|Add4~3\,
	combout => \RAM_controller|Add4~4_combout\,
	cout => \RAM_controller|Add4~5\);

-- Location: LCCOMB_X27_Y26_N20
\RAM_controller|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add4~6_combout\ = (\RAM_controller|Add2~4_combout\ & ((\RAM_controller|Add3~14_combout\ & (\RAM_controller|Add4~5\ & VCC)) # (!\RAM_controller|Add3~14_combout\ & (!\RAM_controller|Add4~5\)))) # (!\RAM_controller|Add2~4_combout\ & 
-- ((\RAM_controller|Add3~14_combout\ & (!\RAM_controller|Add4~5\)) # (!\RAM_controller|Add3~14_combout\ & ((\RAM_controller|Add4~5\) # (GND)))))
-- \RAM_controller|Add4~7\ = CARRY((\RAM_controller|Add2~4_combout\ & (!\RAM_controller|Add3~14_combout\ & !\RAM_controller|Add4~5\)) # (!\RAM_controller|Add2~4_combout\ & ((!\RAM_controller|Add4~5\) # (!\RAM_controller|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~4_combout\,
	datab => \RAM_controller|Add3~14_combout\,
	datad => VCC,
	cin => \RAM_controller|Add4~5\,
	combout => \RAM_controller|Add4~6_combout\,
	cout => \RAM_controller|Add4~7\);

-- Location: LCCOMB_X27_Y26_N22
\RAM_controller|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add4~8_combout\ = ((\RAM_controller|Add2~6_combout\ $ (\RAM_controller|Add3~16_combout\ $ (!\RAM_controller|Add4~7\)))) # (GND)
-- \RAM_controller|Add4~9\ = CARRY((\RAM_controller|Add2~6_combout\ & ((\RAM_controller|Add3~16_combout\) # (!\RAM_controller|Add4~7\))) # (!\RAM_controller|Add2~6_combout\ & (\RAM_controller|Add3~16_combout\ & !\RAM_controller|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~6_combout\,
	datab => \RAM_controller|Add3~16_combout\,
	datad => VCC,
	cin => \RAM_controller|Add4~7\,
	combout => \RAM_controller|Add4~8_combout\,
	cout => \RAM_controller|Add4~9\);

-- Location: LCCOMB_X27_Y26_N24
\RAM_controller|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add4~10_combout\ = (\RAM_controller|Add2~8_combout\ & ((\RAM_controller|Add3~18_combout\ & (\RAM_controller|Add4~9\ & VCC)) # (!\RAM_controller|Add3~18_combout\ & (!\RAM_controller|Add4~9\)))) # (!\RAM_controller|Add2~8_combout\ & 
-- ((\RAM_controller|Add3~18_combout\ & (!\RAM_controller|Add4~9\)) # (!\RAM_controller|Add3~18_combout\ & ((\RAM_controller|Add4~9\) # (GND)))))
-- \RAM_controller|Add4~11\ = CARRY((\RAM_controller|Add2~8_combout\ & (!\RAM_controller|Add3~18_combout\ & !\RAM_controller|Add4~9\)) # (!\RAM_controller|Add2~8_combout\ & ((!\RAM_controller|Add4~9\) # (!\RAM_controller|Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add2~8_combout\,
	datab => \RAM_controller|Add3~18_combout\,
	datad => VCC,
	cin => \RAM_controller|Add4~9\,
	combout => \RAM_controller|Add4~10_combout\,
	cout => \RAM_controller|Add4~11\);

-- Location: LCCOMB_X27_Y26_N26
\RAM_controller|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add4~12_combout\ = \RAM_controller|Add2~10_combout\ $ (\RAM_controller|Add4~11\ $ (!\RAM_controller|Add3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add2~10_combout\,
	datad => \RAM_controller|Add3~20_combout\,
	cin => \RAM_controller|Add4~11\,
	combout => \RAM_controller|Add4~12_combout\);

-- Location: LCCOMB_X28_Y25_N30
\RAM_controller|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add14~4_combout\ = \RAM_controller|v_count_write\(6) $ (((\RAM_controller|v_count_write\(5) & \RAM_controller|v_count_write\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(6),
	datac => \RAM_controller|v_count_write\(5),
	datad => \RAM_controller|v_count_write\(4),
	combout => \RAM_controller|Add14~4_combout\);

-- Location: LCCOMB_X28_Y25_N4
\RAM_controller|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add14~2_combout\ = (\RAM_controller|v_count_write\(5) & \RAM_controller|v_count_write\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_controller|v_count_write\(5),
	datad => \RAM_controller|v_count_write\(4),
	combout => \RAM_controller|Add14~2_combout\);

-- Location: LCCOMB_X28_Y25_N0
\RAM_controller|Add14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add14~3_combout\ = (\RAM_controller|v_count_write\(8)) # ((\RAM_controller|v_count_write\(6) & (\RAM_controller|v_count_write\(7) & \RAM_controller|Add14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(8),
	datab => \RAM_controller|v_count_write\(6),
	datac => \RAM_controller|v_count_write\(7),
	datad => \RAM_controller|Add14~2_combout\,
	combout => \RAM_controller|Add14~3_combout\);

-- Location: LCCOMB_X28_Y25_N28
\RAM_controller|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add14~0_combout\ = (\RAM_controller|v_count_write\(6) & (\RAM_controller|v_count_write\(5) & (\RAM_controller|v_count_write\(7) & \RAM_controller|v_count_write\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(6),
	datab => \RAM_controller|v_count_write\(5),
	datac => \RAM_controller|v_count_write\(7),
	datad => \RAM_controller|v_count_write\(4),
	combout => \RAM_controller|Add14~0_combout\);

-- Location: LCCOMB_X28_Y25_N2
\RAM_controller|Add14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add14~1_combout\ = (\RAM_controller|v_count_write\(6) & (\RAM_controller|v_count_write\(5) & \RAM_controller|v_count_write\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(6),
	datac => \RAM_controller|v_count_write\(5),
	datad => \RAM_controller|v_count_write\(4),
	combout => \RAM_controller|Add14~1_combout\);

-- Location: LCCOMB_X28_Y25_N6
\RAM_controller|Add15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~1_cout\ = CARRY(!\RAM_controller|v_count_write\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(0),
	datad => VCC,
	cout => \RAM_controller|Add15~1_cout\);

-- Location: LCCOMB_X28_Y25_N8
\RAM_controller|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~2_combout\ = (\RAM_controller|v_count_write\(1) & ((\RAM_controller|Add15~1_cout\) # (GND))) # (!\RAM_controller|v_count_write\(1) & (!\RAM_controller|Add15~1_cout\))
-- \RAM_controller|Add15~3\ = CARRY((\RAM_controller|v_count_write\(1)) # (!\RAM_controller|Add15~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(1),
	datad => VCC,
	cin => \RAM_controller|Add15~1_cout\,
	combout => \RAM_controller|Add15~2_combout\,
	cout => \RAM_controller|Add15~3\);

-- Location: LCCOMB_X28_Y25_N10
\RAM_controller|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~4_combout\ = (\RAM_controller|v_count_write\(2) & (!\RAM_controller|Add15~3\ & VCC)) # (!\RAM_controller|v_count_write\(2) & (\RAM_controller|Add15~3\ $ (GND)))
-- \RAM_controller|Add15~5\ = CARRY((!\RAM_controller|v_count_write\(2) & !\RAM_controller|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(2),
	datad => VCC,
	cin => \RAM_controller|Add15~3\,
	combout => \RAM_controller|Add15~4_combout\,
	cout => \RAM_controller|Add15~5\);

-- Location: LCCOMB_X28_Y25_N12
\RAM_controller|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~6_combout\ = (\RAM_controller|v_count_write\(3) & ((\RAM_controller|Add15~5\) # (GND))) # (!\RAM_controller|v_count_write\(3) & (!\RAM_controller|Add15~5\))
-- \RAM_controller|Add15~7\ = CARRY((\RAM_controller|v_count_write\(3)) # (!\RAM_controller|Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(3),
	datad => VCC,
	cin => \RAM_controller|Add15~5\,
	combout => \RAM_controller|Add15~6_combout\,
	cout => \RAM_controller|Add15~7\);

-- Location: LCCOMB_X28_Y25_N14
\RAM_controller|Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~8_combout\ = (\RAM_controller|v_count_write\(4) & (\RAM_controller|Add15~7\ $ (GND))) # (!\RAM_controller|v_count_write\(4) & (!\RAM_controller|Add15~7\ & VCC))
-- \RAM_controller|Add15~9\ = CARRY((\RAM_controller|v_count_write\(4) & !\RAM_controller|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|v_count_write\(4),
	datad => VCC,
	cin => \RAM_controller|Add15~7\,
	combout => \RAM_controller|Add15~8_combout\,
	cout => \RAM_controller|Add15~9\);

-- Location: LCCOMB_X28_Y25_N16
\RAM_controller|Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~10_combout\ = (\RAM_controller|Add15~9\ & (\RAM_controller|v_count_write\(4) $ ((\RAM_controller|v_count_write\(5))))) # (!\RAM_controller|Add15~9\ & ((\RAM_controller|v_count_write\(4) $ (!\RAM_controller|v_count_write\(5))) # 
-- (GND)))
-- \RAM_controller|Add15~11\ = CARRY((\RAM_controller|v_count_write\(4) $ (\RAM_controller|v_count_write\(5))) # (!\RAM_controller|Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(4),
	datab => \RAM_controller|v_count_write\(5),
	datad => VCC,
	cin => \RAM_controller|Add15~9\,
	combout => \RAM_controller|Add15~10_combout\,
	cout => \RAM_controller|Add15~11\);

-- Location: LCCOMB_X28_Y25_N18
\RAM_controller|Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~12_combout\ = (\RAM_controller|Add15~11\ & ((\RAM_controller|v_count_write\(6) $ (!\RAM_controller|Add14~2_combout\)))) # (!\RAM_controller|Add15~11\ & (\RAM_controller|v_count_write\(6) $ (\RAM_controller|Add14~2_combout\ $ (GND))))
-- \RAM_controller|Add15~13\ = CARRY((!\RAM_controller|Add15~11\ & (\RAM_controller|v_count_write\(6) $ (!\RAM_controller|Add14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(6),
	datab => \RAM_controller|Add14~2_combout\,
	datad => VCC,
	cin => \RAM_controller|Add15~11\,
	combout => \RAM_controller|Add15~12_combout\,
	cout => \RAM_controller|Add15~13\);

-- Location: LCCOMB_X28_Y25_N20
\RAM_controller|Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~14_combout\ = (\RAM_controller|Add15~13\ & (\RAM_controller|v_count_write\(7) $ ((\RAM_controller|Add14~1_combout\)))) # (!\RAM_controller|Add15~13\ & ((\RAM_controller|v_count_write\(7) $ (!\RAM_controller|Add14~1_combout\)) # 
-- (GND)))
-- \RAM_controller|Add15~15\ = CARRY((\RAM_controller|v_count_write\(7) $ (\RAM_controller|Add14~1_combout\)) # (!\RAM_controller|Add15~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(7),
	datab => \RAM_controller|Add14~1_combout\,
	datad => VCC,
	cin => \RAM_controller|Add15~13\,
	combout => \RAM_controller|Add15~14_combout\,
	cout => \RAM_controller|Add15~15\);

-- Location: LCCOMB_X28_Y25_N22
\RAM_controller|Add15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~16_combout\ = (\RAM_controller|Add15~15\ & ((\RAM_controller|v_count_write\(8) $ (\RAM_controller|Add14~0_combout\)))) # (!\RAM_controller|Add15~15\ & (\RAM_controller|v_count_write\(8) $ (\RAM_controller|Add14~0_combout\ $ (VCC))))
-- \RAM_controller|Add15~17\ = CARRY((!\RAM_controller|Add15~15\ & (\RAM_controller|v_count_write\(8) $ (\RAM_controller|Add14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(8),
	datab => \RAM_controller|Add14~0_combout\,
	datad => VCC,
	cin => \RAM_controller|Add15~15\,
	combout => \RAM_controller|Add15~16_combout\,
	cout => \RAM_controller|Add15~17\);

-- Location: LCCOMB_X28_Y25_N24
\RAM_controller|Add15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~18_combout\ = (\RAM_controller|Add15~17\ & (\RAM_controller|v_count_write\(9) $ ((!\RAM_controller|Add14~3_combout\)))) # (!\RAM_controller|Add15~17\ & ((\RAM_controller|v_count_write\(9) $ (\RAM_controller|Add14~3_combout\)) # 
-- (GND)))
-- \RAM_controller|Add15~19\ = CARRY((\RAM_controller|v_count_write\(9) $ (!\RAM_controller|Add14~3_combout\)) # (!\RAM_controller|Add15~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(9),
	datab => \RAM_controller|Add14~3_combout\,
	datad => VCC,
	cin => \RAM_controller|Add15~17\,
	combout => \RAM_controller|Add15~18_combout\,
	cout => \RAM_controller|Add15~19\);

-- Location: LCCOMB_X28_Y25_N26
\RAM_controller|Add15~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add15~20_combout\ = \RAM_controller|Add15~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RAM_controller|Add15~19\,
	combout => \RAM_controller|Add15~20_combout\);

-- Location: LCCOMB_X28_Y26_N30
\RAM_controller|Add14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add14~5_combout\ = \RAM_controller|v_count_write\(4) $ (\RAM_controller|v_count_write\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(4),
	datad => \RAM_controller|v_count_write\(5),
	combout => \RAM_controller|Add14~5_combout\);

-- Location: LCCOMB_X28_Y26_N0
\RAM_controller|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~0_combout\ = (\RAM_controller|v_count_write\(0) & (\RAM_controller|Add15~8_combout\ $ (VCC))) # (!\RAM_controller|v_count_write\(0) & (\RAM_controller|Add15~8_combout\ & VCC))
-- \RAM_controller|Add16~1\ = CARRY((\RAM_controller|v_count_write\(0) & \RAM_controller|Add15~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(0),
	datab => \RAM_controller|Add15~8_combout\,
	datad => VCC,
	combout => \RAM_controller|Add16~0_combout\,
	cout => \RAM_controller|Add16~1\);

-- Location: LCCOMB_X28_Y26_N2
\RAM_controller|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~2_combout\ = (\RAM_controller|Add15~10_combout\ & ((\RAM_controller|v_count_write\(1) & (\RAM_controller|Add16~1\ & VCC)) # (!\RAM_controller|v_count_write\(1) & (!\RAM_controller|Add16~1\)))) # (!\RAM_controller|Add15~10_combout\ & 
-- ((\RAM_controller|v_count_write\(1) & (!\RAM_controller|Add16~1\)) # (!\RAM_controller|v_count_write\(1) & ((\RAM_controller|Add16~1\) # (GND)))))
-- \RAM_controller|Add16~3\ = CARRY((\RAM_controller|Add15~10_combout\ & (!\RAM_controller|v_count_write\(1) & !\RAM_controller|Add16~1\)) # (!\RAM_controller|Add15~10_combout\ & ((!\RAM_controller|Add16~1\) # (!\RAM_controller|v_count_write\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add15~10_combout\,
	datab => \RAM_controller|v_count_write\(1),
	datad => VCC,
	cin => \RAM_controller|Add16~1\,
	combout => \RAM_controller|Add16~2_combout\,
	cout => \RAM_controller|Add16~3\);

-- Location: LCCOMB_X28_Y26_N4
\RAM_controller|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~4_combout\ = ((\RAM_controller|v_count_write\(2) $ (\RAM_controller|Add15~12_combout\ $ (!\RAM_controller|Add16~3\)))) # (GND)
-- \RAM_controller|Add16~5\ = CARRY((\RAM_controller|v_count_write\(2) & ((\RAM_controller|Add15~12_combout\) # (!\RAM_controller|Add16~3\))) # (!\RAM_controller|v_count_write\(2) & (\RAM_controller|Add15~12_combout\ & !\RAM_controller|Add16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(2),
	datab => \RAM_controller|Add15~12_combout\,
	datad => VCC,
	cin => \RAM_controller|Add16~3\,
	combout => \RAM_controller|Add16~4_combout\,
	cout => \RAM_controller|Add16~5\);

-- Location: LCCOMB_X28_Y26_N6
\RAM_controller|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~6_combout\ = (\RAM_controller|v_count_write\(3) & ((\RAM_controller|Add15~14_combout\ & (\RAM_controller|Add16~5\ & VCC)) # (!\RAM_controller|Add15~14_combout\ & (!\RAM_controller|Add16~5\)))) # (!\RAM_controller|v_count_write\(3) & 
-- ((\RAM_controller|Add15~14_combout\ & (!\RAM_controller|Add16~5\)) # (!\RAM_controller|Add15~14_combout\ & ((\RAM_controller|Add16~5\) # (GND)))))
-- \RAM_controller|Add16~7\ = CARRY((\RAM_controller|v_count_write\(3) & (!\RAM_controller|Add15~14_combout\ & !\RAM_controller|Add16~5\)) # (!\RAM_controller|v_count_write\(3) & ((!\RAM_controller|Add16~5\) # (!\RAM_controller|Add15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(3),
	datab => \RAM_controller|Add15~14_combout\,
	datad => VCC,
	cin => \RAM_controller|Add16~5\,
	combout => \RAM_controller|Add16~6_combout\,
	cout => \RAM_controller|Add16~7\);

-- Location: LCCOMB_X28_Y26_N8
\RAM_controller|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~8_combout\ = ((\RAM_controller|v_count_write\(4) $ (\RAM_controller|Add15~16_combout\ $ (\RAM_controller|Add16~7\)))) # (GND)
-- \RAM_controller|Add16~9\ = CARRY((\RAM_controller|v_count_write\(4) & (\RAM_controller|Add15~16_combout\ & !\RAM_controller|Add16~7\)) # (!\RAM_controller|v_count_write\(4) & ((\RAM_controller|Add15~16_combout\) # (!\RAM_controller|Add16~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(4),
	datab => \RAM_controller|Add15~16_combout\,
	datad => VCC,
	cin => \RAM_controller|Add16~7\,
	combout => \RAM_controller|Add16~8_combout\,
	cout => \RAM_controller|Add16~9\);

-- Location: LCCOMB_X28_Y26_N10
\RAM_controller|Add16~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~15_combout\ = (\RAM_controller|Add15~18_combout\ & ((\RAM_controller|Add14~5_combout\ & (\RAM_controller|Add16~9\ & VCC)) # (!\RAM_controller|Add14~5_combout\ & (!\RAM_controller|Add16~9\)))) # (!\RAM_controller|Add15~18_combout\ & 
-- ((\RAM_controller|Add14~5_combout\ & (!\RAM_controller|Add16~9\)) # (!\RAM_controller|Add14~5_combout\ & ((\RAM_controller|Add16~9\) # (GND)))))
-- \RAM_controller|Add16~16\ = CARRY((\RAM_controller|Add15~18_combout\ & (!\RAM_controller|Add14~5_combout\ & !\RAM_controller|Add16~9\)) # (!\RAM_controller|Add15~18_combout\ & ((!\RAM_controller|Add16~9\) # (!\RAM_controller|Add14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add15~18_combout\,
	datab => \RAM_controller|Add14~5_combout\,
	datad => VCC,
	cin => \RAM_controller|Add16~9\,
	combout => \RAM_controller|Add16~15_combout\,
	cout => \RAM_controller|Add16~16\);

-- Location: LCCOMB_X28_Y26_N12
\RAM_controller|Add16~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~17_combout\ = \RAM_controller|Add14~4_combout\ $ (\RAM_controller|Add16~16\ $ (!\RAM_controller|Add15~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add14~4_combout\,
	datad => \RAM_controller|Add15~20_combout\,
	cin => \RAM_controller|Add16~16\,
	combout => \RAM_controller|Add16~17_combout\);

-- Location: LCCOMB_X27_Y26_N6
\RAM_controller|Add16~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~19_combout\ = (\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add4~12_combout\)) # (!\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add16~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Write_addressing~3_combout\,
	datac => \RAM_controller|Add4~12_combout\,
	datad => \RAM_controller|Add16~17_combout\,
	combout => \RAM_controller|Add16~19_combout\);

-- Location: LCCOMB_X27_Y26_N12
\RAM_controller|Add16~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~20_combout\ = (\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add4~10_combout\))) # (!\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add16~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Write_addressing~3_combout\,
	datac => \RAM_controller|Add16~15_combout\,
	datad => \RAM_controller|Add4~10_combout\,
	combout => \RAM_controller|Add16~20_combout\);

-- Location: LCCOMB_X26_Y26_N28
\RAM_controller|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~10_combout\ = (\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add4~8_combout\))) # (!\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add16~8_combout\,
	datac => \RAM_controller|Write_addressing~3_combout\,
	datad => \RAM_controller|Add4~8_combout\,
	combout => \RAM_controller|Add16~10_combout\);

-- Location: LCCOMB_X26_Y26_N2
\RAM_controller|Add16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~11_combout\ = (\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add4~6_combout\))) # (!\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add16~6_combout\,
	datac => \RAM_controller|Add4~6_combout\,
	datad => \RAM_controller|Write_addressing~3_combout\,
	combout => \RAM_controller|Add16~11_combout\);

-- Location: LCCOMB_X27_Y26_N4
\RAM_controller|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~12_combout\ = (\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add4~4_combout\))) # (!\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Write_addressing~3_combout\,
	datac => \RAM_controller|Add16~4_combout\,
	datad => \RAM_controller|Add4~4_combout\,
	combout => \RAM_controller|Add16~12_combout\);

-- Location: LCCOMB_X27_Y26_N10
\RAM_controller|Add16~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~13_combout\ = (\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add4~2_combout\))) # (!\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add16~2_combout\,
	datac => \RAM_controller|Write_addressing~3_combout\,
	datad => \RAM_controller|Add4~2_combout\,
	combout => \RAM_controller|Add16~13_combout\);

-- Location: LCCOMB_X27_Y26_N28
\RAM_controller|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add16~14_combout\ = (\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add4~0_combout\))) # (!\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add16~0_combout\,
	datab => \RAM_controller|Add4~0_combout\,
	datac => \RAM_controller|Write_addressing~3_combout\,
	combout => \RAM_controller|Add16~14_combout\);

-- Location: LCCOMB_X22_Y25_N8
\RAM_controller|Add18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add18~0_combout\ = \RAM_controller|h_count_write\(4) $ (VCC)
-- \RAM_controller|Add18~1\ = CARRY(\RAM_controller|h_count_write\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_write\(4),
	datad => VCC,
	combout => \RAM_controller|Add18~0_combout\,
	cout => \RAM_controller|Add18~1\);

-- Location: LCCOMB_X22_Y25_N10
\RAM_controller|Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add18~2_combout\ = (\RAM_controller|h_count_write\(5) & (\RAM_controller|Add18~1\ & VCC)) # (!\RAM_controller|h_count_write\(5) & (!\RAM_controller|Add18~1\))
-- \RAM_controller|Add18~3\ = CARRY((!\RAM_controller|h_count_write\(5) & !\RAM_controller|Add18~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_write\(5),
	datad => VCC,
	cin => \RAM_controller|Add18~1\,
	combout => \RAM_controller|Add18~2_combout\,
	cout => \RAM_controller|Add18~3\);

-- Location: LCCOMB_X22_Y25_N12
\RAM_controller|Add18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add18~4_combout\ = (\RAM_controller|h_count_write\(6) & (\RAM_controller|Add18~3\ $ (GND))) # (!\RAM_controller|h_count_write\(6) & (!\RAM_controller|Add18~3\ & VCC))
-- \RAM_controller|Add18~5\ = CARRY((\RAM_controller|h_count_write\(6) & !\RAM_controller|Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_write\(6),
	datad => VCC,
	cin => \RAM_controller|Add18~3\,
	combout => \RAM_controller|Add18~4_combout\,
	cout => \RAM_controller|Add18~5\);

-- Location: LCCOMB_X22_Y25_N14
\RAM_controller|Add18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add18~6_combout\ = (\RAM_controller|h_count_write\(7) & (\RAM_controller|Add18~5\ & VCC)) # (!\RAM_controller|h_count_write\(7) & (!\RAM_controller|Add18~5\))
-- \RAM_controller|Add18~7\ = CARRY((!\RAM_controller|h_count_write\(7) & !\RAM_controller|Add18~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(7),
	datad => VCC,
	cin => \RAM_controller|Add18~5\,
	combout => \RAM_controller|Add18~6_combout\,
	cout => \RAM_controller|Add18~7\);

-- Location: LCCOMB_X22_Y25_N16
\RAM_controller|Add18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add18~8_combout\ = (\RAM_controller|h_count_write\(8) & ((GND) # (!\RAM_controller|Add18~7\))) # (!\RAM_controller|h_count_write\(8) & (\RAM_controller|Add18~7\ $ (GND)))
-- \RAM_controller|Add18~9\ = CARRY((\RAM_controller|h_count_write\(8)) # (!\RAM_controller|Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_write\(8),
	datad => VCC,
	cin => \RAM_controller|Add18~7\,
	combout => \RAM_controller|Add18~8_combout\,
	cout => \RAM_controller|Add18~9\);

-- Location: LCCOMB_X22_Y25_N18
\RAM_controller|Add18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add18~10_combout\ = \RAM_controller|Add18~9\ $ (!\RAM_controller|h_count_write\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RAM_controller|h_count_write\(9),
	cin => \RAM_controller|Add18~9\,
	combout => \RAM_controller|Add18~10_combout\);

-- Location: LCCOMB_X27_Y25_N0
\RAM_controller|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~0_combout\ = (\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add3~6_combout\))) # (!\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add15~6_combout\,
	datab => \RAM_controller|Add3~6_combout\,
	datac => \RAM_controller|Write_addressing~3_combout\,
	combout => \RAM_controller|Add5~0_combout\);

-- Location: LCCOMB_X27_Y25_N26
\RAM_controller|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~1_combout\ = (\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add3~4_combout\)) # (!\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add3~4_combout\,
	datab => \RAM_controller|Add15~4_combout\,
	datac => \RAM_controller|Write_addressing~3_combout\,
	combout => \RAM_controller|Add5~1_combout\);

-- Location: LCCOMB_X27_Y25_N2
\RAM_controller|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~2_combout\ = (\RAM_controller|Write_addressing~3_combout\ & ((\RAM_controller|Add3~2_combout\))) # (!\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|Add15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add15~2_combout\,
	datab => \RAM_controller|Add3~2_combout\,
	datac => \RAM_controller|Write_addressing~3_combout\,
	combout => \RAM_controller|Add5~2_combout\);

-- Location: LCCOMB_X26_Y26_N4
\RAM_controller|Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~3_combout\ = (\RAM_controller|v_count_write\(0) & (\RAM_controller|Add18~2_combout\ $ (VCC))) # (!\RAM_controller|v_count_write\(0) & (\RAM_controller|Add18~2_combout\ & VCC))
-- \RAM_controller|Add5~4\ = CARRY((\RAM_controller|v_count_write\(0) & \RAM_controller|Add18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(0),
	datab => \RAM_controller|Add18~2_combout\,
	datad => VCC,
	combout => \RAM_controller|Add5~3_combout\,
	cout => \RAM_controller|Add5~4\);

-- Location: LCCOMB_X26_Y26_N6
\RAM_controller|Add5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~5_combout\ = (\RAM_controller|Add5~2_combout\ & ((\RAM_controller|Add18~4_combout\ & (\RAM_controller|Add5~4\ & VCC)) # (!\RAM_controller|Add18~4_combout\ & (!\RAM_controller|Add5~4\)))) # (!\RAM_controller|Add5~2_combout\ & 
-- ((\RAM_controller|Add18~4_combout\ & (!\RAM_controller|Add5~4\)) # (!\RAM_controller|Add18~4_combout\ & ((\RAM_controller|Add5~4\) # (GND)))))
-- \RAM_controller|Add5~6\ = CARRY((\RAM_controller|Add5~2_combout\ & (!\RAM_controller|Add18~4_combout\ & !\RAM_controller|Add5~4\)) # (!\RAM_controller|Add5~2_combout\ & ((!\RAM_controller|Add5~4\) # (!\RAM_controller|Add18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add5~2_combout\,
	datab => \RAM_controller|Add18~4_combout\,
	datad => VCC,
	cin => \RAM_controller|Add5~4\,
	combout => \RAM_controller|Add5~5_combout\,
	cout => \RAM_controller|Add5~6\);

-- Location: LCCOMB_X26_Y26_N8
\RAM_controller|Add5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~7_combout\ = ((\RAM_controller|Add18~6_combout\ $ (\RAM_controller|Add5~1_combout\ $ (!\RAM_controller|Add5~6\)))) # (GND)
-- \RAM_controller|Add5~8\ = CARRY((\RAM_controller|Add18~6_combout\ & ((\RAM_controller|Add5~1_combout\) # (!\RAM_controller|Add5~6\))) # (!\RAM_controller|Add18~6_combout\ & (\RAM_controller|Add5~1_combout\ & !\RAM_controller|Add5~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add18~6_combout\,
	datab => \RAM_controller|Add5~1_combout\,
	datad => VCC,
	cin => \RAM_controller|Add5~6\,
	combout => \RAM_controller|Add5~7_combout\,
	cout => \RAM_controller|Add5~8\);

-- Location: LCCOMB_X26_Y26_N10
\RAM_controller|Add5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~9_combout\ = (\RAM_controller|Add18~8_combout\ & ((\RAM_controller|Add5~0_combout\ & (\RAM_controller|Add5~8\ & VCC)) # (!\RAM_controller|Add5~0_combout\ & (!\RAM_controller|Add5~8\)))) # (!\RAM_controller|Add18~8_combout\ & 
-- ((\RAM_controller|Add5~0_combout\ & (!\RAM_controller|Add5~8\)) # (!\RAM_controller|Add5~0_combout\ & ((\RAM_controller|Add5~8\) # (GND)))))
-- \RAM_controller|Add5~10\ = CARRY((\RAM_controller|Add18~8_combout\ & (!\RAM_controller|Add5~0_combout\ & !\RAM_controller|Add5~8\)) # (!\RAM_controller|Add18~8_combout\ & ((!\RAM_controller|Add5~8\) # (!\RAM_controller|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add18~8_combout\,
	datab => \RAM_controller|Add5~0_combout\,
	datad => VCC,
	cin => \RAM_controller|Add5~8\,
	combout => \RAM_controller|Add5~9_combout\,
	cout => \RAM_controller|Add5~10\);

-- Location: LCCOMB_X26_Y26_N12
\RAM_controller|Add5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~11_combout\ = ((\RAM_controller|Add16~14_combout\ $ (\RAM_controller|Add18~10_combout\ $ (!\RAM_controller|Add5~10\)))) # (GND)
-- \RAM_controller|Add5~12\ = CARRY((\RAM_controller|Add16~14_combout\ & ((\RAM_controller|Add18~10_combout\) # (!\RAM_controller|Add5~10\))) # (!\RAM_controller|Add16~14_combout\ & (\RAM_controller|Add18~10_combout\ & !\RAM_controller|Add5~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add16~14_combout\,
	datab => \RAM_controller|Add18~10_combout\,
	datad => VCC,
	cin => \RAM_controller|Add5~10\,
	combout => \RAM_controller|Add5~11_combout\,
	cout => \RAM_controller|Add5~12\);

-- Location: LCCOMB_X26_Y26_N14
\RAM_controller|Add5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~13_combout\ = (\RAM_controller|Add16~13_combout\ & (!\RAM_controller|Add5~12\)) # (!\RAM_controller|Add16~13_combout\ & ((\RAM_controller|Add5~12\) # (GND)))
-- \RAM_controller|Add5~14\ = CARRY((!\RAM_controller|Add5~12\) # (!\RAM_controller|Add16~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add16~13_combout\,
	datad => VCC,
	cin => \RAM_controller|Add5~12\,
	combout => \RAM_controller|Add5~13_combout\,
	cout => \RAM_controller|Add5~14\);

-- Location: LCCOMB_X26_Y26_N16
\RAM_controller|Add5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~15_combout\ = (\RAM_controller|Add16~12_combout\ & (\RAM_controller|Add5~14\ $ (GND))) # (!\RAM_controller|Add16~12_combout\ & (!\RAM_controller|Add5~14\ & VCC))
-- \RAM_controller|Add5~16\ = CARRY((\RAM_controller|Add16~12_combout\ & !\RAM_controller|Add5~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add16~12_combout\,
	datad => VCC,
	cin => \RAM_controller|Add5~14\,
	combout => \RAM_controller|Add5~15_combout\,
	cout => \RAM_controller|Add5~16\);

-- Location: LCCOMB_X26_Y26_N18
\RAM_controller|Add5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~17_combout\ = (\RAM_controller|Add16~11_combout\ & (!\RAM_controller|Add5~16\)) # (!\RAM_controller|Add16~11_combout\ & ((\RAM_controller|Add5~16\) # (GND)))
-- \RAM_controller|Add5~18\ = CARRY((!\RAM_controller|Add5~16\) # (!\RAM_controller|Add16~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add16~11_combout\,
	datad => VCC,
	cin => \RAM_controller|Add5~16\,
	combout => \RAM_controller|Add5~17_combout\,
	cout => \RAM_controller|Add5~18\);

-- Location: LCCOMB_X26_Y26_N20
\RAM_controller|Add5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~19_combout\ = (\RAM_controller|Add16~10_combout\ & (\RAM_controller|Add5~18\ $ (GND))) # (!\RAM_controller|Add16~10_combout\ & (!\RAM_controller|Add5~18\ & VCC))
-- \RAM_controller|Add5~20\ = CARRY((\RAM_controller|Add16~10_combout\ & !\RAM_controller|Add5~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add16~10_combout\,
	datad => VCC,
	cin => \RAM_controller|Add5~18\,
	combout => \RAM_controller|Add5~19_combout\,
	cout => \RAM_controller|Add5~20\);

-- Location: LCCOMB_X26_Y26_N22
\RAM_controller|Add5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~21_combout\ = (\RAM_controller|Add16~20_combout\ & (!\RAM_controller|Add5~20\)) # (!\RAM_controller|Add16~20_combout\ & ((\RAM_controller|Add5~20\) # (GND)))
-- \RAM_controller|Add5~22\ = CARRY((!\RAM_controller|Add5~20\) # (!\RAM_controller|Add16~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add16~20_combout\,
	datad => VCC,
	cin => \RAM_controller|Add5~20\,
	combout => \RAM_controller|Add5~21_combout\,
	cout => \RAM_controller|Add5~22\);

-- Location: LCCOMB_X26_Y26_N24
\RAM_controller|Add5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add5~23_combout\ = \RAM_controller|Add5~22\ $ (!\RAM_controller|Add16~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RAM_controller|Add16~19_combout\,
	cin => \RAM_controller|Add5~22\,
	combout => \RAM_controller|Add5~23_combout\);

-- Location: LCCOMB_X21_Y26_N22
\RAM_controller|writeDir_32[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(15) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|Add5~23_combout\))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|writeDir_32\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(15),
	datac => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	datad => \RAM_controller|Add5~23_combout\,
	combout => \RAM_controller|writeDir_32\(15));

-- Location: LCCOMB_X21_Y26_N20
\RAM_controller|writeDir_32[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(14) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|Add5~21_combout\))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|writeDir_32\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(14),
	datac => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	datad => \RAM_controller|Add5~21_combout\,
	combout => \RAM_controller|writeDir_32\(14));

-- Location: LCCOMB_X21_Y26_N8
\RAM_controller|writeDir_32[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(13) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|Add5~19_combout\)) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|writeDir_32\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add5~19_combout\,
	datac => \RAM_controller|writeDir_32\(13),
	datad => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	combout => \RAM_controller|writeDir_32\(13));

-- Location: LCCOMB_X21_Y26_N28
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3) = (\RAM_controller|writeDir_32\(15) & (!\RAM_controller|writeDir_32\(14) & (\RAM_controller|Write_addressing~3_combout\ & !\RAM_controller|writeDir_32\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(15),
	datab => \RAM_controller|writeDir_32\(14),
	datac => \RAM_controller|Write_addressing~3_combout\,
	datad => \RAM_controller|writeDir_32\(13),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3));

-- Location: FF_X16_Y21_N29
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAM_controller|readEna_32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_b_store~q\);

-- Location: LCCOMB_X16_Y21_N6
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_b_store~q\) # ((\RAM_controller|ReadEna~3_combout\ & ((\RAM_controller|readEna_32~4_combout\) # 
-- (\RAM_controller|read_addressing~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readEna_32~4_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_b_store~q\,
	datac => \RAM_controller|read_addressing~0_combout\,
	datad => \RAM_controller|ReadEna~3_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X16_Y23_N24
\RAM_controller|Add30~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add30~20_combout\ = \RAM_controller|Add30~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RAM_controller|Add30~19\,
	combout => \RAM_controller|Add30~20_combout\);

-- Location: LCCOMB_X15_Y20_N16
\RAM_controller|Add31~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add31~12_combout\ = \RAM_controller|Add30~20_combout\ $ (\RAM_controller|Add31~11\ $ (!\RAM_controller|Add54~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add30~20_combout\,
	datad => \RAM_controller|Add54~10_combout\,
	cin => \RAM_controller|Add31~11\,
	combout => \RAM_controller|Add31~12_combout\);

-- Location: LCCOMB_X15_Y21_N20
\RAM_controller|Add42~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add42~20_combout\ = \RAM_controller|Add42~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RAM_controller|Add42~19\,
	combout => \RAM_controller|Add42~20_combout\);

-- Location: LCCOMB_X15_Y21_N30
\RAM_controller|Add41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add41~1_combout\ = \VGA_controller|Vcount\(6) $ (((\VGA_controller|Vcount\(4) & \VGA_controller|Vcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(4),
	datab => \VGA_controller|Vcount\(5),
	datad => \VGA_controller|Vcount\(6),
	combout => \RAM_controller|Add41~1_combout\);

-- Location: LCCOMB_X14_Y21_N30
\RAM_controller|Add43~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~17_combout\ = \RAM_controller|Add42~20_combout\ $ (\RAM_controller|Add43~16\ $ (!\RAM_controller|Add41~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add42~20_combout\,
	datad => \RAM_controller|Add41~1_combout\,
	cin => \RAM_controller|Add43~16\,
	combout => \RAM_controller|Add43~17_combout\);

-- Location: LCCOMB_X15_Y20_N18
\RAM_controller|Add43~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add43~19_combout\ = (\RAM_controller|read_addressing~1_combout\ & (\RAM_controller|Add31~12_combout\)) # (!\RAM_controller|read_addressing~1_combout\ & ((\RAM_controller|Add43~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|read_addressing~1_combout\,
	datac => \RAM_controller|Add31~12_combout\,
	datad => \RAM_controller|Add43~17_combout\,
	combout => \RAM_controller|Add43~19_combout\);

-- Location: LCCOMB_X16_Y20_N20
\RAM_controller|Add32~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~25_combout\ = \RAM_controller|Add43~19_combout\ $ (!\RAM_controller|Add32~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add43~19_combout\,
	cin => \RAM_controller|Add32~24\,
	combout => \RAM_controller|Add32~25_combout\);

-- Location: LCCOMB_X17_Y21_N20
\RAM_controller|Add32~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~27_combout\ = (\RAM_controller|Add32~25_combout\ & (((\RAM_controller|LessThan29~2_combout\ & !\RAM_controller|readEna_32~3_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \RAM_controller|LessThan30~0_combout\,
	datac => \RAM_controller|readEna_32~3_combout\,
	datad => \RAM_controller|Add32~25_combout\,
	combout => \RAM_controller|Add32~27_combout\);

-- Location: LCCOMB_X17_Y21_N16
\RAM_controller|readDir_32[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(15) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~27_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|readDir_32\(15),
	datac => \RAM_controller|Add32~27_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(15));

-- Location: LCCOMB_X17_Y21_N4
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\ = (!\SW[1]~input_o\ & \RAM_controller|readDir_32\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \RAM_controller|readDir_32\(15),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\);

-- Location: LCCOMB_X17_Y21_N2
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w\(3) = (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\ & (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\ & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ & \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w\(3));

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

-- Location: IOIBUF_X23_Y29_N22
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X21_Y25_N6
\RAM_controller|writeDir_32[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(0) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|h_count_write\(0)))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|writeDir_32\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(0),
	datab => \RAM_controller|h_count_write\(0),
	datad => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	combout => \RAM_controller|writeDir_32\(0));

-- Location: LCCOMB_X21_Y25_N30
\RAM_controller|writeDir_32[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(1) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|h_count_write\(1)))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|writeDir_32\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(1),
	datac => \RAM_controller|h_count_write\(1),
	datad => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	combout => \RAM_controller|writeDir_32\(1));

-- Location: LCCOMB_X21_Y25_N8
\RAM_controller|writeDir_32[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(2) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|h_count_write\(2))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|writeDir_32\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(2),
	datac => \RAM_controller|writeDir_32\(2),
	datad => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	combout => \RAM_controller|writeDir_32\(2));

-- Location: LCCOMB_X21_Y25_N4
\RAM_controller|writeDir_32[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(3) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|h_count_write\(3))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|writeDir_32\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|h_count_write\(3),
	datac => \RAM_controller|writeDir_32\(3),
	datad => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	combout => \RAM_controller|writeDir_32\(3));

-- Location: LCCOMB_X22_Y25_N30
\RAM_controller|writeDir_32[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(4) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|Add18~0_combout\))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|writeDir_32\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(4),
	datac => \RAM_controller|Add18~0_combout\,
	datad => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	combout => \RAM_controller|writeDir_32\(4));

-- Location: LCCOMB_X27_Y26_N2
\RAM_controller|writeDir_32[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(5) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|Add5~3_combout\)) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|writeDir_32\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add5~3_combout\,
	datac => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	datad => \RAM_controller|writeDir_32\(5),
	combout => \RAM_controller|writeDir_32\(5));

-- Location: LCCOMB_X24_Y26_N8
\RAM_controller|writeDir_32[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(6) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|Add5~5_combout\)) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|writeDir_32\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add5~5_combout\,
	datac => \RAM_controller|writeDir_32\(6),
	datad => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	combout => \RAM_controller|writeDir_32\(6));

-- Location: LCCOMB_X27_Y26_N0
\RAM_controller|writeDir_32[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(7) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|Add5~7_combout\))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|writeDir_32\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|writeDir_32\(7),
	datac => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	datad => \RAM_controller|Add5~7_combout\,
	combout => \RAM_controller|writeDir_32\(7));

-- Location: LCCOMB_X27_Y26_N8
\RAM_controller|writeDir_32[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(8) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|Add5~9_combout\))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|writeDir_32\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|writeDir_32\(8),
	datac => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	datad => \RAM_controller|Add5~9_combout\,
	combout => \RAM_controller|writeDir_32\(8));

-- Location: LCCOMB_X27_Y26_N30
\RAM_controller|writeDir_32[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(9) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|Add5~11_combout\))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|writeDir_32\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(9),
	datac => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	datad => \RAM_controller|Add5~11_combout\,
	combout => \RAM_controller|writeDir_32\(9));

-- Location: LCCOMB_X26_Y26_N30
\RAM_controller|writeDir_32[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(10) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|Add5~13_combout\)) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|writeDir_32\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add5~13_combout\,
	datac => \RAM_controller|writeDir_32\(10),
	datad => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	combout => \RAM_controller|writeDir_32\(10));

-- Location: LCCOMB_X26_Y26_N0
\RAM_controller|writeDir_32[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(11) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|Add5~15_combout\)) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|writeDir_32\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Add5~15_combout\,
	datac => \RAM_controller|writeDir_32\(11),
	datad => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	combout => \RAM_controller|writeDir_32\(11));

-- Location: LCCOMB_X26_Y26_N26
\RAM_controller|writeDir_32[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|writeDir_32\(12) = (GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & ((\RAM_controller|Add5~17_combout\))) # (!GLOBAL(\RAM_controller|Write_addressing~3clkctrl_outclk\) & (\RAM_controller|writeDir_32\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(12),
	datac => \RAM_controller|Write_addressing~3clkctrl_outclk\,
	datad => \RAM_controller|Add5~17_combout\,
	combout => \RAM_controller|writeDir_32\(12));

-- Location: LCCOMB_X15_Y22_N20
\RAM_controller|readDir_32[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32[3]~3_combout\ = (\RAM_controller|ReadEna~3_combout\ & ((\RAM_controller|read_addressing~0_combout\) # ((!\RAM_controller|readEna_32~3_combout\ & \RAM_controller|LessThan29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readEna_32~3_combout\,
	datab => \RAM_controller|ReadEna~3_combout\,
	datac => \RAM_controller|read_addressing~0_combout\,
	datad => \RAM_controller|LessThan29~2_combout\,
	combout => \RAM_controller|readDir_32[3]~3_combout\);

-- Location: LCCOMB_X15_Y22_N18
\RAM_controller|readDir_32[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32[0]~4_combout\ = (\RAM_controller|h_count_read_aux[0]~0_combout\ & \RAM_controller|readDir_32[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_read_aux[0]~0_combout\,
	datac => \RAM_controller|readDir_32[3]~3_combout\,
	combout => \RAM_controller|readDir_32[0]~4_combout\);

-- Location: LCCOMB_X15_Y22_N12
\RAM_controller|readDir_32[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(0) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|readDir_32[0]~4_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(0),
	datac => \RAM_controller|readDir_32[0]~4_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(0));

-- Location: LCCOMB_X15_Y22_N8
\RAM_controller|readDir_32[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32[1]~5_combout\ = (\RAM_controller|readDir_32[3]~3_combout\ & \RAM_controller|h_count_read_aux[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_controller|readDir_32[3]~3_combout\,
	datad => \RAM_controller|h_count_read_aux[1]~2_combout\,
	combout => \RAM_controller|readDir_32[1]~5_combout\);

-- Location: LCCOMB_X15_Y22_N22
\RAM_controller|readDir_32[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(1) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|readDir_32[1]~5_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(1),
	datac => \RAM_controller|readDir_32[1]~5_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(1));

-- Location: LCCOMB_X15_Y22_N26
\RAM_controller|readDir_32[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32[2]~6_combout\ = (\RAM_controller|readDir_32[3]~3_combout\ & \RAM_controller|h_count_read_aux[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_controller|readDir_32[3]~3_combout\,
	datad => \RAM_controller|h_count_read_aux[2]~4_combout\,
	combout => \RAM_controller|readDir_32[2]~6_combout\);

-- Location: LCCOMB_X15_Y22_N4
\RAM_controller|readDir_32[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(2) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|readDir_32[2]~6_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|readDir_32\(2),
	datac => \RAM_controller|readDir_32[2]~6_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(2));

-- Location: LCCOMB_X15_Y22_N16
\RAM_controller|readDir_32[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32[3]~7_combout\ = (\RAM_controller|h_count_read_aux[3]~6_combout\ & \RAM_controller|readDir_32[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|h_count_read_aux[3]~6_combout\,
	datac => \RAM_controller|readDir_32[3]~3_combout\,
	combout => \RAM_controller|readDir_32[3]~7_combout\);

-- Location: LCCOMB_X15_Y22_N10
\RAM_controller|readDir_32[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(3) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|readDir_32[3]~7_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(3),
	datac => \RAM_controller|readDir_32[3]~7_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(3));

-- Location: LCCOMB_X15_Y22_N30
\RAM_controller|readDir_32[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32[4]~8_combout\ = (\RAM_controller|Add45~0_combout\ & \RAM_controller|readDir_32[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add45~0_combout\,
	datac => \RAM_controller|readDir_32[3]~3_combout\,
	combout => \RAM_controller|readDir_32[4]~8_combout\);

-- Location: LCCOMB_X15_Y22_N24
\RAM_controller|readDir_32[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(4) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|readDir_32[4]~8_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|readDir_32\(4),
	datac => \RAM_controller|readDir_32[4]~8_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(4));

-- Location: LCCOMB_X17_Y20_N20
\RAM_controller|Add32~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~29_combout\ = (\RAM_controller|Add32~4_combout\ & (((\RAM_controller|LessThan29~2_combout\ & !\RAM_controller|readEna_32~3_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \RAM_controller|LessThan30~0_combout\,
	datac => \RAM_controller|readEna_32~3_combout\,
	datad => \RAM_controller|Add32~4_combout\,
	combout => \RAM_controller|Add32~29_combout\);

-- Location: LCCOMB_X17_Y20_N10
\RAM_controller|readDir_32[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(5) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|Add32~29_combout\)) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|readDir_32\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add32~29_combout\,
	datac => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	datad => \RAM_controller|readDir_32\(5),
	combout => \RAM_controller|readDir_32\(5));

-- Location: LCCOMB_X17_Y20_N22
\RAM_controller|Add32~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~30_combout\ = (\RAM_controller|Add32~6_combout\ & (((!\RAM_controller|readEna_32~3_combout\ & \RAM_controller|LessThan29~2_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan30~0_combout\,
	datab => \RAM_controller|Add32~6_combout\,
	datac => \RAM_controller|readEna_32~3_combout\,
	datad => \RAM_controller|LessThan29~2_combout\,
	combout => \RAM_controller|Add32~30_combout\);

-- Location: LCCOMB_X17_Y20_N28
\RAM_controller|readDir_32[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(6) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~30_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|readDir_32\(6),
	datac => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	datad => \RAM_controller|Add32~30_combout\,
	combout => \RAM_controller|readDir_32\(6));

-- Location: LCCOMB_X17_Y20_N4
\RAM_controller|Add32~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~31_combout\ = (\RAM_controller|Add32~8_combout\ & (((\RAM_controller|LessThan29~2_combout\ & !\RAM_controller|readEna_32~3_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \RAM_controller|Add32~8_combout\,
	datac => \RAM_controller|readEna_32~3_combout\,
	datad => \RAM_controller|LessThan30~0_combout\,
	combout => \RAM_controller|Add32~31_combout\);

-- Location: LCCOMB_X17_Y20_N18
\RAM_controller|readDir_32[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(7) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~31_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|readDir_32\(7),
	datac => \RAM_controller|Add32~31_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(7));

-- Location: LCCOMB_X17_Y20_N26
\RAM_controller|Add32~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~32_combout\ = (\RAM_controller|Add32~10_combout\ & (((\RAM_controller|LessThan29~2_combout\ & !\RAM_controller|readEna_32~3_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \RAM_controller|Add32~10_combout\,
	datac => \RAM_controller|readEna_32~3_combout\,
	datad => \RAM_controller|LessThan30~0_combout\,
	combout => \RAM_controller|Add32~32_combout\);

-- Location: LCCOMB_X17_Y20_N16
\RAM_controller|readDir_32[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(8) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~32_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|readDir_32\(8),
	datac => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	datad => \RAM_controller|Add32~32_combout\,
	combout => \RAM_controller|readDir_32\(8));

-- Location: LCCOMB_X17_Y20_N8
\RAM_controller|Add32~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~33_combout\ = (\RAM_controller|Add32~12_combout\ & (((\RAM_controller|LessThan29~2_combout\ & !\RAM_controller|readEna_32~3_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \RAM_controller|LessThan30~0_combout\,
	datac => \RAM_controller|readEna_32~3_combout\,
	datad => \RAM_controller|Add32~12_combout\,
	combout => \RAM_controller|Add32~33_combout\);

-- Location: LCCOMB_X17_Y20_N6
\RAM_controller|readDir_32[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(9) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~33_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(9),
	datac => \RAM_controller|Add32~33_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(9));

-- Location: LCCOMB_X17_Y20_N14
\RAM_controller|Add32~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~34_combout\ = (\RAM_controller|Add32~14_combout\ & (((\RAM_controller|LessThan29~2_combout\ & !\RAM_controller|readEna_32~3_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \RAM_controller|LessThan30~0_combout\,
	datac => \RAM_controller|readEna_32~3_combout\,
	datad => \RAM_controller|Add32~14_combout\,
	combout => \RAM_controller|Add32~34_combout\);

-- Location: LCCOMB_X17_Y20_N12
\RAM_controller|readDir_32[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(10) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~34_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(10),
	datac => \RAM_controller|Add32~34_combout\,
	datad => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	combout => \RAM_controller|readDir_32\(10));

-- Location: LCCOMB_X17_Y20_N24
\RAM_controller|Add32~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~35_combout\ = (\RAM_controller|Add32~16_combout\ & (((\RAM_controller|LessThan29~2_combout\ & !\RAM_controller|readEna_32~3_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \RAM_controller|LessThan30~0_combout\,
	datac => \RAM_controller|readEna_32~3_combout\,
	datad => \RAM_controller|Add32~16_combout\,
	combout => \RAM_controller|Add32~35_combout\);

-- Location: LCCOMB_X17_Y20_N30
\RAM_controller|readDir_32[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(11) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~35_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(11),
	datac => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	datad => \RAM_controller|Add32~35_combout\,
	combout => \RAM_controller|readDir_32\(11));

-- Location: LCCOMB_X16_Y20_N28
\RAM_controller|Add32~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Add32~36_combout\ = (\RAM_controller|Add32~18_combout\ & (((\RAM_controller|LessThan29~2_combout\ & !\RAM_controller|readEna_32~3_combout\)) # (!\RAM_controller|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|LessThan29~2_combout\,
	datab => \RAM_controller|readEna_32~3_combout\,
	datac => \RAM_controller|Add32~18_combout\,
	datad => \RAM_controller|LessThan30~0_combout\,
	combout => \RAM_controller|Add32~36_combout\);

-- Location: LCCOMB_X16_Y20_N22
\RAM_controller|readDir_32[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|readDir_32\(12) = (GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & ((\RAM_controller|Add32~36_combout\))) # (!GLOBAL(\RAM_controller|readDir_32[0]~2clkctrl_outclk\) & (\RAM_controller|readDir_32\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(12),
	datac => \RAM_controller|readDir_32[0]~2clkctrl_outclk\,
	datad => \RAM_controller|Add32~36_combout\,
	combout => \RAM_controller|readDir_32\(12));

-- Location: M9K_X13_Y13_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y26_N30
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3) = (\RAM_controller|writeDir_32\(14) & (!\RAM_controller|writeDir_32\(13) & (\RAM_controller|writeDir_32\(15) & \RAM_controller|Write_addressing~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(14),
	datab => \RAM_controller|writeDir_32\(13),
	datac => \RAM_controller|writeDir_32\(15),
	datad => \RAM_controller|Write_addressing~3_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3));

-- Location: LCCOMB_X17_Y21_N12
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\ = (\RAM_controller|readDir_32\(14) & (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\ & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ & \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(14),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\);

-- Location: M9K_X25_Y15_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N24
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~0_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\) # (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ & 
-- ((!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~0_combout\);

-- Location: LCCOMB_X21_Y26_N14
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3) = (\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|writeDir_32\(13) & (\RAM_controller|writeDir_32\(15) & \RAM_controller|writeDir_32\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Write_addressing~3_combout\,
	datab => \RAM_controller|writeDir_32\(13),
	datac => \RAM_controller|writeDir_32\(15),
	datad => \RAM_controller|writeDir_32\(14),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3));

-- Location: LCCOMB_X17_Y21_N28
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\ = (\RAM_controller|readDir_32\(14) & (\RAM_controller|readDir_32\(13) & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ & 
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|readDir_32\(14),
	datab => \RAM_controller|readDir_32\(13),
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\);

-- Location: M9K_X25_Y16_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y26_N12
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3) = (!\RAM_controller|writeDir_32\(14) & (\RAM_controller|writeDir_32\(13) & (\RAM_controller|writeDir_32\(15) & \RAM_controller|Write_addressing~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(14),
	datab => \RAM_controller|writeDir_32\(13),
	datac => \RAM_controller|writeDir_32\(15),
	datad => \RAM_controller|Write_addressing~3_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3));

-- Location: LCCOMB_X17_Y21_N26
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\ = (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\ & (\RAM_controller|readDir_32\(13) & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ & \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\,
	datab => \RAM_controller|readDir_32\(13),
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\);

-- Location: M9K_X25_Y20_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N2
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~1_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~0_combout\ & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\)) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~0_combout\ & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\))))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~0_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~1_combout\);

-- Location: LCCOMB_X21_Y26_N26
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3) = (!\RAM_controller|writeDir_32\(15) & (\RAM_controller|writeDir_32\(13) & (\RAM_controller|Write_addressing~3_combout\ & \RAM_controller|writeDir_32\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(15),
	datab => \RAM_controller|writeDir_32\(13),
	datac => \RAM_controller|Write_addressing~3_combout\,
	datad => \RAM_controller|writeDir_32\(14),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3));

-- Location: LCCOMB_X17_Y21_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\ & 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ & \RAM_controller|readDir_32\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\,
	datad => \RAM_controller|readDir_32\(13),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\);

-- Location: M9K_X13_Y19_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y26_N24
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3) = (\RAM_controller|Write_addressing~3_combout\ & (!\RAM_controller|writeDir_32\(13) & (!\RAM_controller|writeDir_32\(15) & \RAM_controller|writeDir_32\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Write_addressing~3_combout\,
	datab => \RAM_controller|writeDir_32\(13),
	datac => \RAM_controller|writeDir_32\(15),
	datad => \RAM_controller|writeDir_32\(14),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3));

-- Location: LCCOMB_X17_Y21_N22
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w\(3) = (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ & 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\ & \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w\(3));

-- Location: M9K_X13_Y16_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y26_N4
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3) = (!\RAM_controller|writeDir_32\(15) & (!\RAM_controller|writeDir_32\(14) & (\RAM_controller|Write_addressing~3_combout\ & !\RAM_controller|writeDir_32\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(15),
	datab => \RAM_controller|writeDir_32\(14),
	datac => \RAM_controller|Write_addressing~3_combout\,
	datad => \RAM_controller|writeDir_32\(13),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3));

-- Location: LCCOMB_X17_Y21_N14
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3) = (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\ & (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\ & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ & !\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3));

-- Location: M9K_X25_Y22_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y26_N6
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3) = (!\RAM_controller|writeDir_32\(15) & (\RAM_controller|Write_addressing~3_combout\ & (\RAM_controller|writeDir_32\(13) & !\RAM_controller|writeDir_32\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|writeDir_32\(15),
	datab => \RAM_controller|Write_addressing~3_combout\,
	datac => \RAM_controller|writeDir_32\(13),
	datad => \RAM_controller|writeDir_32\(14),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3));

-- Location: LCCOMB_X17_Y21_N24
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w\(3) = (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\ & (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\ & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\ & \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~2_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~0_combout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~3_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w\(3));

-- Location: M9K_X25_Y27_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N28
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~2_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~2_combout\);

-- Location: LCCOMB_X17_Y23_N18
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~3_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~2_combout\ & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\)) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~2_combout\ & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\))))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~2_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~3_combout\);

-- Location: LCCOMB_X20_Y26_N6
\VGA_controller|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan6~0_combout\ = (\VGA_controller|v_count\(7) & (\VGA_controller|v_count\(6) & (\VGA_controller|v_count\(5) & \VGA_controller|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(7),
	datab => \VGA_controller|v_count\(6),
	datac => \VGA_controller|v_count\(5),
	datad => \VGA_controller|v_count\(8),
	combout => \VGA_controller|LessThan6~0_combout\);

-- Location: LCCOMB_X20_Y26_N30
\VGA_controller|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan6~1_combout\ = (!\VGA_controller|v_count\(9) & !\VGA_controller|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|LessThan6~0_combout\,
	combout => \VGA_controller|LessThan6~1_combout\);

-- Location: FF_X20_Y26_N31
\VGA_controller|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|LessThan6~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_v~q\);

-- Location: LCCOMB_X17_Y25_N18
\VGA_controller|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|LessThan5~0_combout\ = ((!\VGA_controller|h_count\(7) & !\VGA_controller|h_count\(8))) # (!\VGA_controller|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(7),
	datab => \VGA_controller|h_count\(8),
	datad => \VGA_controller|h_count\(9),
	combout => \VGA_controller|LessThan5~0_combout\);

-- Location: FF_X17_Y25_N19
\VGA_controller|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|LessThan5~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|video_on_h~q\);

-- Location: LCCOMB_X17_Y25_N2
\VGA_controller|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|video_on~combout\ = (\VGA_controller|video_on_v~q\ & \VGA_controller|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|video_on_v~q\,
	datad => \VGA_controller|video_on_h~q\,
	combout => \VGA_controller|video_on~combout\);

-- Location: FF_X17_Y21_N5
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|_~1_combout\,
	ena => \RAM_controller|readEna_32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(2));

-- Location: LCCOMB_X16_Y21_N12
\RAM_controller|D_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~6_combout\ = (!\RAM_controller|LessThan30~0_combout\ & (\RAM_controller|D_out~5_combout\ & \RAM_controller|D_out~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|LessThan30~0_combout\,
	datac => \RAM_controller|D_out~5_combout\,
	datad => \RAM_controller|D_out~1_combout\,
	combout => \RAM_controller|D_out~6_combout\);

-- Location: LCCOMB_X15_Y21_N24
\RAM_controller|D_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~8_combout\ = (\VGA_controller|Vcount\(4) & (!\VGA_controller|Vcount\(1) & (!\VGA_controller|Vcount\(2) & !\VGA_controller|Vcount\(3)))) # (!\VGA_controller|Vcount\(4) & (((!\VGA_controller|Vcount\(1) & !\VGA_controller|Vcount\(2))) # 
-- (!\VGA_controller|Vcount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(1),
	datab => \VGA_controller|Vcount\(2),
	datac => \VGA_controller|Vcount\(4),
	datad => \VGA_controller|Vcount\(3),
	combout => \RAM_controller|D_out~8_combout\);

-- Location: LCCOMB_X24_Y25_N0
\RAM_controller|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|LessThan13~0_combout\ = (\RAM_controller|v_count_write\(2)) # ((\RAM_controller|v_count_write\(0) & \RAM_controller|v_count_write\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(2),
	datac => \RAM_controller|v_count_write\(0),
	datad => \RAM_controller|v_count_write\(1),
	combout => \RAM_controller|LessThan13~0_combout\);

-- Location: LCCOMB_X24_Y25_N4
\RAM_controller|Parity_register[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[0]~0_combout\ = (\RAM_controller|v_count_write\(3) & (!\RAM_controller|v_count_write\(4) & \RAM_controller|LessThan13~0_combout\)) # (!\RAM_controller|v_count_write\(3) & (\RAM_controller|v_count_write\(4) & 
-- !\RAM_controller|LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(3),
	datac => \RAM_controller|v_count_write\(4),
	datad => \RAM_controller|LessThan13~0_combout\,
	combout => \RAM_controller|Parity_register[0]~0_combout\);

-- Location: LCCOMB_X23_Y25_N4
\RAM_controller|Parity_register[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[0]~1_combout\ = (!\RAM_controller|v_count_write\(7) & (!\RAM_controller|v_count_write\(8) & (\RAM_controller|Par_Reg~0_combout\ & \RAM_controller|Parity_register[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(7),
	datab => \RAM_controller|v_count_write\(8),
	datac => \RAM_controller|Par_Reg~0_combout\,
	datad => \RAM_controller|Parity_register[0]~0_combout\,
	combout => \RAM_controller|Parity_register[0]~1_combout\);

-- Location: LCCOMB_X23_Y25_N6
\RAM_controller|Parity_register[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[5]~2_combout\ = (\RAM_controller|Par_Reg~1_combout\ & (\RAM_controller|v_count_write\(4) $ (((\RAM_controller|LessThan13~0_combout\) # (\RAM_controller|v_count_write\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(4),
	datab => \RAM_controller|LessThan13~0_combout\,
	datac => \RAM_controller|v_count_write\(3),
	datad => \RAM_controller|Par_Reg~1_combout\,
	combout => \RAM_controller|Parity_register[5]~2_combout\);

-- Location: LCCOMB_X23_Y25_N22
\RAM_controller|Parity_register[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[6]~8_combout\ = (!\RAM_controller|v_count_write\(2) & !\RAM_controller|v_count_write\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_controller|v_count_write\(2),
	datad => \RAM_controller|v_count_write\(1),
	combout => \RAM_controller|Parity_register[6]~8_combout\);

-- Location: LCCOMB_X23_Y25_N20
\RAM_controller|Parity_register[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[5]~12_combout\ = (\SW[0]~input_o\) # ((\RAM_controller|Parity_register[5]~2_combout\ & (!\RAM_controller|v_count_write\(0) & \RAM_controller|Parity_register[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register[5]~2_combout\,
	datab => \RAM_controller|v_count_write\(0),
	datac => \RAM_controller|Parity_register[6]~8_combout\,
	datad => \SW[0]~input_o\,
	combout => \RAM_controller|Parity_register[5]~12_combout\);

-- Location: LCCOMB_X23_Y25_N26
\RAM_controller|Parity_register[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register\(5) = (\RAM_controller|Parity_register[5]~12_combout\ & (\RAM_controller|Parity_register[0]~1_combout\)) # (!\RAM_controller|Parity_register[5]~12_combout\ & ((\RAM_controller|Parity_register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register[0]~1_combout\,
	datac => \RAM_controller|Parity_register\(5),
	datad => \RAM_controller|Parity_register[5]~12_combout\,
	combout => \RAM_controller|Parity_register\(5));

-- Location: LCCOMB_X23_Y25_N10
\RAM_controller|Parity_register[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[4]~13_combout\ = (\SW[0]~input_o\) # ((\RAM_controller|Parity_register[5]~2_combout\ & (\RAM_controller|v_count_write\(2) & \RAM_controller|write_couters~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register[5]~2_combout\,
	datab => \RAM_controller|v_count_write\(2),
	datac => \RAM_controller|write_couters~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \RAM_controller|Parity_register[4]~13_combout\);

-- Location: LCCOMB_X23_Y25_N28
\RAM_controller|Parity_register[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register\(4) = (\RAM_controller|Parity_register[4]~13_combout\ & (\RAM_controller|Parity_register[0]~1_combout\)) # (!\RAM_controller|Parity_register[4]~13_combout\ & ((\RAM_controller|Parity_register\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register[0]~1_combout\,
	datac => \RAM_controller|Parity_register\(4),
	datad => \RAM_controller|Parity_register[4]~13_combout\,
	combout => \RAM_controller|Parity_register\(4));

-- Location: LCCOMB_X23_Y25_N12
\RAM_controller|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Mux0~3_combout\ = (\VGA_controller|Vcount\(0) & (\RAM_controller|Parity_register\(5))) # (!\VGA_controller|Vcount\(0) & ((\RAM_controller|Parity_register\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controller|Vcount\(0),
	datac => \RAM_controller|Parity_register\(5),
	datad => \RAM_controller|Parity_register\(4),
	combout => \RAM_controller|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y25_N30
\RAM_controller|Parity_register[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[7]~6_combout\ = (!\RAM_controller|v_count_write\(2) & \RAM_controller|v_count_write\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(2),
	datad => \RAM_controller|v_count_write\(1),
	combout => \RAM_controller|Parity_register[7]~6_combout\);

-- Location: LCCOMB_X23_Y25_N16
\RAM_controller|Parity_register[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[7]~7_combout\ = (\SW[0]~input_o\) # ((!\RAM_controller|v_count_write\(0) & (\RAM_controller|Parity_register[7]~6_combout\ & \RAM_controller|Parity_register[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \RAM_controller|v_count_write\(0),
	datac => \RAM_controller|Parity_register[7]~6_combout\,
	datad => \RAM_controller|Parity_register[5]~2_combout\,
	combout => \RAM_controller|Parity_register[7]~7_combout\);

-- Location: LCCOMB_X23_Y25_N30
\RAM_controller|Parity_register[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register\(7) = (\RAM_controller|Parity_register[7]~7_combout\ & (\RAM_controller|Parity_register[0]~1_combout\)) # (!\RAM_controller|Parity_register[7]~7_combout\ & ((\RAM_controller|Parity_register\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register[0]~1_combout\,
	datac => \RAM_controller|Parity_register\(7),
	datad => \RAM_controller|Parity_register[7]~7_combout\,
	combout => \RAM_controller|Parity_register\(7));

-- Location: LCCOMB_X23_Y25_N0
\RAM_controller|Parity_register[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[6]~9_combout\ = (\SW[0]~input_o\) # ((\RAM_controller|v_count_write\(0) & (\RAM_controller|Parity_register[6]~8_combout\ & \RAM_controller|Parity_register[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \RAM_controller|v_count_write\(0),
	datac => \RAM_controller|Parity_register[6]~8_combout\,
	datad => \RAM_controller|Parity_register[5]~2_combout\,
	combout => \RAM_controller|Parity_register[6]~9_combout\);

-- Location: LCCOMB_X23_Y25_N8
\RAM_controller|Parity_register[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register\(6) = (\RAM_controller|Parity_register[6]~9_combout\ & (\RAM_controller|Parity_register[0]~1_combout\)) # (!\RAM_controller|Parity_register[6]~9_combout\ & ((\RAM_controller|Parity_register\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register[0]~1_combout\,
	datac => \RAM_controller|Parity_register\(6),
	datad => \RAM_controller|Parity_register[6]~9_combout\,
	combout => \RAM_controller|Parity_register\(6));

-- Location: LCCOMB_X16_Y25_N0
\RAM_controller|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Mux0~1_combout\ = (\VGA_controller|Vcount\(0) & (\RAM_controller|Parity_register\(7))) # (!\VGA_controller|Vcount\(0) & ((\RAM_controller|Parity_register\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register\(7),
	datab => \VGA_controller|Vcount\(0),
	datad => \RAM_controller|Parity_register\(6),
	combout => \RAM_controller|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y25_N2
\RAM_controller|Parity_register[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[4]~3_combout\ = (\RAM_controller|Parity_register[5]~2_combout\ & \RAM_controller|v_count_write\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM_controller|Parity_register[5]~2_combout\,
	datad => \RAM_controller|v_count_write\(2),
	combout => \RAM_controller|Parity_register[4]~3_combout\);

-- Location: LCCOMB_X17_Y25_N22
\RAM_controller|Parity_register[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[2]~11_combout\ = (\SW[0]~input_o\) # ((!\RAM_controller|v_count_write\(1) & (\RAM_controller|v_count_write\(0) & \RAM_controller|Parity_register[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|v_count_write\(1),
	datab => \RAM_controller|v_count_write\(0),
	datac => \SW[0]~input_o\,
	datad => \RAM_controller|Parity_register[4]~3_combout\,
	combout => \RAM_controller|Parity_register[2]~11_combout\);

-- Location: LCCOMB_X16_Y25_N26
\RAM_controller|Parity_register[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register\(2) = (\RAM_controller|Parity_register[2]~11_combout\ & ((\RAM_controller|Parity_register[0]~1_combout\))) # (!\RAM_controller|Parity_register[2]~11_combout\ & (\RAM_controller|Parity_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register\(2),
	datab => \RAM_controller|Parity_register[2]~11_combout\,
	datad => \RAM_controller|Parity_register[0]~1_combout\,
	combout => \RAM_controller|Parity_register\(2));

-- Location: LCCOMB_X20_Y25_N18
\RAM_controller|Parity_register[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[3]~10_combout\ = (\SW[0]~input_o\) # ((\RAM_controller|Parity_register[4]~3_combout\ & (\RAM_controller|v_count_write\(1) & !\RAM_controller|v_count_write\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \RAM_controller|Parity_register[4]~3_combout\,
	datac => \RAM_controller|v_count_write\(1),
	datad => \RAM_controller|v_count_write\(0),
	combout => \RAM_controller|Parity_register[3]~10_combout\);

-- Location: LCCOMB_X16_Y25_N12
\RAM_controller|Parity_register[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register\(3) = (\RAM_controller|Parity_register[3]~10_combout\ & ((\RAM_controller|Parity_register[0]~1_combout\))) # (!\RAM_controller|Parity_register[3]~10_combout\ & (\RAM_controller|Parity_register\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register[3]~10_combout\,
	datab => \RAM_controller|Parity_register\(3),
	datad => \RAM_controller|Parity_register[0]~1_combout\,
	combout => \RAM_controller|Parity_register\(3));

-- Location: LCCOMB_X16_Y25_N10
\RAM_controller|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Mux0~2_combout\ = (\VGA_controller|Vcount\(0) & ((\RAM_controller|Parity_register\(3)))) # (!\VGA_controller|Vcount\(0) & (\RAM_controller|Parity_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register\(2),
	datab => \VGA_controller|Vcount\(0),
	datad => \RAM_controller|Parity_register\(3),
	combout => \RAM_controller|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y25_N2
\RAM_controller|Parity_register[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[0]~5_combout\ = (\SW[0]~input_o\) # ((\RAM_controller|Parity_register[5]~2_combout\ & (!\RAM_controller|v_count_write\(2) & \RAM_controller|write_couters~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register[5]~2_combout\,
	datab => \RAM_controller|v_count_write\(2),
	datac => \RAM_controller|write_couters~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \RAM_controller|Parity_register[0]~5_combout\);

-- Location: LCCOMB_X23_Y25_N18
\RAM_controller|Parity_register[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register\(0) = (\RAM_controller|Parity_register[0]~5_combout\ & (\RAM_controller|Parity_register[0]~1_combout\)) # (!\RAM_controller|Parity_register[0]~5_combout\ & ((\RAM_controller|Parity_register\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register[0]~1_combout\,
	datab => \RAM_controller|Parity_register\(0),
	datad => \RAM_controller|Parity_register[0]~5_combout\,
	combout => \RAM_controller|Parity_register\(0));

-- Location: LCCOMB_X24_Y25_N6
\RAM_controller|Parity_register[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register[1]~4_combout\ = (\SW[0]~input_o\) # ((!\RAM_controller|v_count_write\(1) & (!\RAM_controller|v_count_write\(0) & \RAM_controller|Parity_register[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \RAM_controller|v_count_write\(1),
	datac => \RAM_controller|v_count_write\(0),
	datad => \RAM_controller|Parity_register[4]~3_combout\,
	combout => \RAM_controller|Parity_register[1]~4_combout\);

-- Location: LCCOMB_X23_Y25_N24
\RAM_controller|Parity_register[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Parity_register\(1) = (\RAM_controller|Parity_register[1]~4_combout\ & ((\RAM_controller|Parity_register[0]~1_combout\))) # (!\RAM_controller|Parity_register[1]~4_combout\ & (\RAM_controller|Parity_register\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_controller|Parity_register\(1),
	datac => \RAM_controller|Parity_register[0]~1_combout\,
	datad => \RAM_controller|Parity_register[1]~4_combout\,
	combout => \RAM_controller|Parity_register\(1));

-- Location: LCCOMB_X16_Y25_N6
\RAM_controller|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Mux0~0_combout\ = (\VGA_controller|Vcount\(0) & ((\RAM_controller|Parity_register\(1)))) # (!\VGA_controller|Vcount\(0) & (\RAM_controller|Parity_register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Parity_register\(0),
	datab => \VGA_controller|Vcount\(0),
	datad => \RAM_controller|Parity_register\(1),
	combout => \RAM_controller|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y25_N20
\RAM_controller|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Mux0~4_combout\ = (\RAM_controller|Add54~0_combout\ & ((\RAM_controller|Mux0~2_combout\) # ((\RAM_controller|Add54~2_combout\)))) # (!\RAM_controller|Add54~0_combout\ & (((!\RAM_controller|Add54~2_combout\ & 
-- \RAM_controller|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Mux0~2_combout\,
	datab => \RAM_controller|Add54~0_combout\,
	datac => \RAM_controller|Add54~2_combout\,
	datad => \RAM_controller|Mux0~0_combout\,
	combout => \RAM_controller|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y25_N22
\RAM_controller|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Mux0~5_combout\ = (\RAM_controller|Add54~2_combout\ & ((\RAM_controller|Mux0~4_combout\ & ((\RAM_controller|Mux0~1_combout\))) # (!\RAM_controller|Mux0~4_combout\ & (\RAM_controller|Mux0~3_combout\)))) # (!\RAM_controller|Add54~2_combout\ 
-- & (((\RAM_controller|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|Add54~2_combout\,
	datab => \RAM_controller|Mux0~3_combout\,
	datac => \RAM_controller|Mux0~1_combout\,
	datad => \RAM_controller|Mux0~4_combout\,
	combout => \RAM_controller|Mux0~5_combout\);

-- Location: LCCOMB_X16_Y25_N28
\RAM_controller|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Mux1~0_combout\ = (\VGA_controller|Vcount\(2) & ((\VGA_controller|Vcount\(1) & (\RAM_controller|Mux0~3_combout\)) # (!\VGA_controller|Vcount\(1) & ((\RAM_controller|Mux0~2_combout\))))) # (!\VGA_controller|Vcount\(2) & 
-- (!\VGA_controller|Vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(2),
	datab => \VGA_controller|Vcount\(1),
	datac => \RAM_controller|Mux0~3_combout\,
	datad => \RAM_controller|Mux0~2_combout\,
	combout => \RAM_controller|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y25_N18
\RAM_controller|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|Mux1~1_combout\ = (\VGA_controller|Vcount\(2) & (((\RAM_controller|Mux1~0_combout\)))) # (!\VGA_controller|Vcount\(2) & ((\RAM_controller|Mux1~0_combout\ & (\RAM_controller|Mux0~1_combout\)) # (!\RAM_controller|Mux1~0_combout\ & 
-- ((\RAM_controller|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(2),
	datab => \RAM_controller|Mux0~1_combout\,
	datac => \RAM_controller|Mux0~0_combout\,
	datad => \RAM_controller|Mux1~0_combout\,
	combout => \RAM_controller|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y25_N2
\RAM_controller|D_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~9_combout\ = (\RAM_controller|D_out~8_combout\ & ((\VGA_controller|Vcount\(4) & ((\RAM_controller|Mux1~1_combout\))) # (!\VGA_controller|Vcount\(4) & (!\RAM_controller|Mux0~5_combout\)))) # (!\RAM_controller|D_out~8_combout\ & 
-- (!\VGA_controller|Vcount\(4) & ((\RAM_controller|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|D_out~8_combout\,
	datab => \VGA_controller|Vcount\(4),
	datac => \RAM_controller|Mux0~5_combout\,
	datad => \RAM_controller|Mux1~1_combout\,
	combout => \RAM_controller|D_out~9_combout\);

-- Location: LCCOMB_X16_Y25_N24
\RAM_controller|D_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|D_out~7_combout\ = (!\VGA_controller|Vcount\(7) & (!\VGA_controller|Vcount\(6) & (!\VGA_controller|Vcount\(5) & \RAM_controller|D_out~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(7),
	datab => \VGA_controller|Vcount\(6),
	datac => \VGA_controller|Vcount\(5),
	datad => \RAM_controller|D_out~9_combout\,
	combout => \RAM_controller|D_out~7_combout\);

-- Location: LCCOMB_X16_Y25_N30
\VGA_controller|red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~0_combout\ = (\VGA_controller|video_on~combout\ & (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(2) & (\RAM_controller|D_out~6_combout\ & \RAM_controller|D_out~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|video_on~combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(2),
	datac => \RAM_controller|D_out~6_combout\,
	datad => \RAM_controller|D_out~7_combout\,
	combout => \VGA_controller|red~0_combout\);

-- Location: LCCOMB_X16_Y21_N24
\VGA_controller|red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~1_combout\ = (!\VGA_controller|Vcount\(5) & (!\VGA_controller|Vcount\(6) & (!\VGA_controller|Vcount\(7) & \RAM_controller|D_out~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|Vcount\(5),
	datab => \VGA_controller|Vcount\(6),
	datac => \VGA_controller|Vcount\(7),
	datad => \RAM_controller|D_out~6_combout\,
	combout => \VGA_controller|red~1_combout\);

-- Location: LCCOMB_X16_Y25_N16
\VGA_controller|red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~2_combout\ = (\VGA_controller|video_on~combout\ & (\RAM_controller|D_out~9_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(2) & \VGA_controller|red~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|video_on~combout\,
	datab => \RAM_controller|D_out~9_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(2),
	datad => \VGA_controller|red~1_combout\,
	combout => \VGA_controller|red~2_combout\);

-- Location: LCCOMB_X16_Y25_N8
\VGA_controller|red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~3_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~1_combout\ & ((\VGA_controller|red~2_combout\) # ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~3_combout\ & 
-- \VGA_controller|red~0_combout\)))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~1_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~3_combout\ & (\VGA_controller|red~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~1_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~3_combout\,
	datac => \VGA_controller|red~0_combout\,
	datad => \VGA_controller|red~2_combout\,
	combout => \VGA_controller|red~3_combout\);

-- Location: FF_X16_Y25_N13
\VGA_controller|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(0));

-- Location: IOIBUF_X14_Y29_N15
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: M9K_X13_Y26_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y27_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y14_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y28_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N20
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~6_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\) # ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ & 
-- !\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~6_combout\);

-- Location: LCCOMB_X17_Y23_N22
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~7_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~6_combout\ & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~6_combout\ & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\)))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~6_combout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~7_combout\);

-- Location: M9K_X13_Y23_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y18_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y24_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N8
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~4_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~4_combout\);

-- Location: M9K_X25_Y26_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N10
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~5_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~4_combout\ & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\)) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~4_combout\ & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\))))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~4_combout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~5_combout\);

-- Location: LCCOMB_X16_Y25_N14
\VGA_controller|red~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~4_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~7_combout\ & ((\VGA_controller|red~2_combout\) # ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~5_combout\ & 
-- \VGA_controller|red~0_combout\)))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~7_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~5_combout\ & (\VGA_controller|red~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~7_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~5_combout\,
	datac => \VGA_controller|red~0_combout\,
	datad => \VGA_controller|red~2_combout\,
	combout => \VGA_controller|red~4_combout\);

-- Location: LCCOMB_X17_Y25_N30
\VGA_controller|red[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red[1]~feeder_combout\ = \VGA_controller|red~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~4_combout\,
	combout => \VGA_controller|red[1]~feeder_combout\);

-- Location: FF_X17_Y25_N31
\VGA_controller|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red[1]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(1));

-- Location: IOIBUF_X23_Y29_N1
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: M9K_X13_Y20_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y18_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N12
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~8_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\)) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~8_combout\);

-- Location: M9K_X25_Y21_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y15_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N30
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~9_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~8_combout\ & 
-- (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~8_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~8_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~9_combout\);

-- Location: M9K_X13_Y22_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y17_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y19_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N16
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~10_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\) # ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ & 
-- !\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~10_combout\);

-- Location: M9K_X13_Y14_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N6
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~11_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~10_combout\ & 
-- (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~10_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~10_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~11_combout\);

-- Location: LCCOMB_X16_Y25_N4
\VGA_controller|red~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~5_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~9_combout\ & ((\VGA_controller|red~0_combout\) # ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~11_combout\ & 
-- \VGA_controller|red~2_combout\)))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~9_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~11_combout\ & ((\VGA_controller|red~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~9_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~11_combout\,
	datac => \VGA_controller|red~0_combout\,
	datad => \VGA_controller|red~2_combout\,
	combout => \VGA_controller|red~5_combout\);

-- Location: LCCOMB_X15_Y25_N4
\VGA_controller|red[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red[2]~feeder_combout\ = \VGA_controller|red~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~5_combout\,
	combout => \VGA_controller|red[2]~feeder_combout\);

-- Location: FF_X15_Y25_N5
\VGA_controller|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red[2]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(2));

-- Location: IOIBUF_X14_Y29_N1
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: M9K_X25_Y25_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode349w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y28_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode359w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y17_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode339w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y21_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode322w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y23_N4
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~12_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\) # ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0) & (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ & 
-- !\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~12_combout\);

-- Location: LCCOMB_X17_Y25_N20
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~13_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~12_combout\ & 
-- (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~12_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ & 
-- ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~12_combout\,
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~13_combout\);

-- Location: M9K_X13_Y25_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode379w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y23_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode369w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w\(3),
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y13_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode389w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y25_N24
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~14_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0)) # 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\)))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ & (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~14_combout\);

-- Location: M9K_X13_Y24_N0
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAMs_drive:RAM_controller|RAMdevice_32:RAMdev_32|altsyncram:altsyncram_component|altsyncram_glq3:auto_generated|ALTSYNCRAM",
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
	portawe => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3),
	portbre => \RAM_controller|readEna_32~5_combout\,
	clk0 => \clk12M~clkctrl_outclk\,
	clk1 => \CLK25|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|decode2|w_anode399w\(3),
	ena1 => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => \SW[1]~inputclkctrl_outclk\,
	portadatain => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y25_N26
\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~15_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~14_combout\ & 
-- (((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~14_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ & 
-- (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~14_combout\,
	datac => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\,
	combout => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~15_combout\);

-- Location: LCCOMB_X17_Y25_N28
\VGA_controller|red~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red~6_combout\ = (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~13_combout\ & ((\VGA_controller|red~0_combout\) # ((\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~15_combout\ & 
-- \VGA_controller|red~2_combout\)))) # (!\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~13_combout\ & (\RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~15_combout\ & (\VGA_controller|red~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~13_combout\,
	datab => \RAM_controller|RAMdev_32|altsyncram_component|auto_generated|mux3|_~15_combout\,
	datac => \VGA_controller|red~2_combout\,
	datad => \VGA_controller|red~0_combout\,
	combout => \VGA_controller|red~6_combout\);

-- Location: LCCOMB_X17_Y25_N8
\VGA_controller|red[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|red[3]~feeder_combout\ = \VGA_controller|red~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~6_combout\,
	combout => \VGA_controller|red[3]~feeder_combout\);

-- Location: FF_X17_Y25_N9
\VGA_controller|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red[3]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|red\(3));

-- Location: FF_X16_Y25_N11
\VGA_controller|green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(0));

-- Location: FF_X16_Y25_N1
\VGA_controller|green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(1));

-- Location: FF_X16_Y25_N7
\VGA_controller|green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|red~5_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(2));

-- Location: LCCOMB_X17_Y25_N12
\VGA_controller|green[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|green[3]~feeder_combout\ = \VGA_controller|red~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controller|red~6_combout\,
	combout => \VGA_controller|green[3]~feeder_combout\);

-- Location: FF_X17_Y25_N13
\VGA_controller|green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|green[3]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|green\(3));

-- Location: FF_X16_Y25_N9
\VGA_controller|blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(0));

-- Location: FF_X16_Y25_N15
\VGA_controller|blue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(1));

-- Location: FF_X16_Y25_N5
\VGA_controller|blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~5_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(2));

-- Location: FF_X17_Y25_N29
\VGA_controller|blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|red~6_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|blue\(3));

-- Location: LCCOMB_X17_Y25_N16
\VGA_controller|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~0_combout\ = (\VGA_controller|h_count\(7) & (!\VGA_controller|h_count\(8) & \VGA_controller|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(7),
	datab => \VGA_controller|h_count\(8),
	datad => \VGA_controller|h_count\(9),
	combout => \VGA_controller|process_0~0_combout\);

-- Location: LCCOMB_X19_Y25_N22
\VGA_controller|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~1_combout\ = (\VGA_controller|h_count\(2)) # ((\VGA_controller|h_count\(0) & (!\VGA_controller|h_count\(5) & \VGA_controller|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(0),
	datab => \VGA_controller|h_count\(2),
	datac => \VGA_controller|h_count\(5),
	datad => \VGA_controller|h_count\(1),
	combout => \VGA_controller|process_0~1_combout\);

-- Location: LCCOMB_X19_Y25_N24
\VGA_controller|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~2_combout\ = (\VGA_controller|h_count\(4) & ((\VGA_controller|process_0~1_combout\) # (\VGA_controller|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~1_combout\,
	datac => \VGA_controller|h_count\(3),
	datad => \VGA_controller|h_count\(4),
	combout => \VGA_controller|process_0~2_combout\);

-- Location: LCCOMB_X17_Y25_N14
\VGA_controller|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~3_combout\ = ((\VGA_controller|h_count\(6) & (\VGA_controller|process_0~2_combout\ & \VGA_controller|h_count\(5))) # (!\VGA_controller|h_count\(6) & (!\VGA_controller|process_0~2_combout\ & !\VGA_controller|h_count\(5)))) # 
-- (!\VGA_controller|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|h_count\(6),
	datab => \VGA_controller|process_0~0_combout\,
	datac => \VGA_controller|process_0~2_combout\,
	datad => \VGA_controller|h_count\(5),
	combout => \VGA_controller|process_0~3_combout\);

-- Location: FF_X17_Y25_N15
\VGA_controller|Hsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync_aux~q\);

-- Location: FF_X16_Y25_N27
\VGA_controller|Hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controller|Hsync_aux~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Hsync~q\);

-- Location: LCCOMB_X20_Y26_N12
\VGA_controller|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~4_combout\ = ((\VGA_controller|v_count\(1) $ (!\VGA_controller|v_count\(0))) # (!\VGA_controller|v_count\(2))) # (!\VGA_controller|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|v_count\(1),
	datab => \VGA_controller|v_count\(0),
	datac => \VGA_controller|v_count\(3),
	datad => \VGA_controller|v_count\(2),
	combout => \VGA_controller|process_0~4_combout\);

-- Location: LCCOMB_X20_Y26_N24
\VGA_controller|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controller|process_0~5_combout\ = (\VGA_controller|process_0~4_combout\) # ((\VGA_controller|v_count\(4)) # ((\VGA_controller|v_count\(9)) # (!\VGA_controller|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controller|process_0~4_combout\,
	datab => \VGA_controller|v_count\(4),
	datac => \VGA_controller|v_count\(9),
	datad => \VGA_controller|LessThan6~0_combout\,
	combout => \VGA_controller|process_0~5_combout\);

-- Location: FF_X20_Y26_N25
\VGA_controller|Vsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|process_0~5_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync_aux~q\);

-- Location: LCCOMB_X20_Y26_N8
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

-- Location: FF_X20_Y26_N9
\VGA_controller|Vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK25|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controller|Vsync~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controller|Vsync~q\);
END structure;


