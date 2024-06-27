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

-- DATE "06/27/2024 18:16:11"

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
	LEDG : BUFFER std_logic_vector(2 DOWNTO 0);
	GPIO0_D : BUFFER std_logic_vector(30 DOWNTO 0);
	GPIO1D0 : BUFFER std_logic;
	GPIO1D1 : BUFFER std_logic;
	GPIO1D2 : IN std_logic;
	GPIO1D3 : BUFFER std_logic;
	GPIO1D4 : IN std_logic;
	GPIO1D6 : IN std_logic;
	GPIO1D8 : IN std_logic;
	GPIO1D10 : IN std_logic;
	GPIO1D22 : IN std_logic;
	GPIO1D24 : IN std_logic;
	GPIO1D26 : IN std_logic;
	GPIO1D28 : IN std_logic;
	GPIO1D30 : IN std_logic;
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic
	);
END LoQritas;

-- Design Ports Information
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO0_D[0]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[1]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[2]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[3]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[4]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[5]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[6]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[8]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[9]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[10]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[11]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[12]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[13]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[14]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[15]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[16]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[17]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[18]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[19]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[20]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[21]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[22]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[23]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[24]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[25]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[26]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[27]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[28]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[29]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO0_D[30]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO1D0	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO1D1	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO1D2	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1D3	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO1D10	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1D22	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1D24	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
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
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO1D30	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1D26	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1D4	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1D8	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1D28	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO1D6	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_GPIO0_D : std_logic_vector(30 DOWNTO 0);
SIGNAL ww_GPIO1D0 : std_logic;
SIGNAL ww_GPIO1D1 : std_logic;
SIGNAL ww_GPIO1D2 : std_logic;
SIGNAL ww_GPIO1D3 : std_logic;
SIGNAL ww_GPIO1D4 : std_logic;
SIGNAL ww_GPIO1D6 : std_logic;
SIGNAL ww_GPIO1D8 : std_logic;
SIGNAL ww_GPIO1D10 : std_logic;
SIGNAL ww_GPIO1D22 : std_logic;
SIGNAL ww_GPIO1D24 : std_logic;
SIGNAL ww_GPIO1D26 : std_logic;
SIGNAL ww_GPIO1D28 : std_logic;
SIGNAL ww_GPIO1D30 : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DIV800|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DIV800|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \CAP11|outCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAP11|CAPclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCCBdriver|clk400data~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rRAMclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAP11|dPCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \GPIO1D2~input_o\ : std_logic;
SIGNAL \GPIO1D10~input_o\ : std_logic;
SIGNAL \GPIO1D22~input_o\ : std_logic;
SIGNAL \GPIO1D24~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \DIV800|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \SCCBdriver|EE~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|EE~q\ : std_logic;
SIGNAL \SCCBdriver|D1~0_combout\ : std_logic;
SIGNAL \SCCBdriver|Q1~q\ : std_logic;
SIGNAL \SCCBdriver|D0~0_combout\ : std_logic;
SIGNAL \SCCBdriver|Q0~q\ : std_logic;
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
SIGNAL \SCCBdriver|clkE~combout\ : std_logic;
SIGNAL \SCCBdriver|clk400~q\ : std_logic;
SIGNAL \SCCBdriver|dataEedge~combout\ : std_logic;
SIGNAL \SCCBdriver|mssgGO~0_combout\ : std_logic;
SIGNAL \SCCBdriver|mssgGO~q\ : std_logic;
SIGNAL \SCCBdriver|C_Eedge~combout\ : std_logic;
SIGNAL \SCCBdriver|C_E~0_combout\ : std_logic;
SIGNAL \SCCBdriver|C_E~q\ : std_logic;
SIGNAL \SCCBdriver|C_Esync~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|C_Esync~q\ : std_logic;
SIGNAL \SCCBdriver|DeInd~0_combout\ : std_logic;
SIGNAL \SCCBdriver|DeInd~1_combout\ : std_logic;
SIGNAL \SCCBdriver|eInd~q\ : std_logic;
SIGNAL \SCCBdriver|LIVE~0_combout\ : std_logic;
SIGNAL \SCCBdriver|LIVE~q\ : std_logic;
SIGNAL \SCCBdriver|SIO_C~combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[17]~25_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[2]~24_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[3]~23_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|Q[3]~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[4]~22_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[5]~21_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[6]~20_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[7]~19_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[8]~18_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|Q[8]~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[9]~17_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[10]~16_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[11]~15_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[12]~14_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[13]~13_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[14]~12_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|Q[14]~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[15]~11_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[16]~10_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[17]~9_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|Q[17]~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[18]~8_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[19]~7_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[20]~6_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|Q[20]~feeder_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[21]~5_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[22]~4_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[23]~3_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[24]~2_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[25]~1_combout\ : std_logic;
SIGNAL \SCCBdriver|REGS|D[26]~0_combout\ : std_logic;
SIGNAL \SCCBdriver|SIO_D~combout\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK_25M|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGApart|Add1~0_combout\ : std_logic;
SIGNAL \VGApart|Add0~0_combout\ : std_logic;
SIGNAL \VGApart|h_count~3_combout\ : std_logic;
SIGNAL \VGApart|Add0~1\ : std_logic;
SIGNAL \VGApart|Add0~2_combout\ : std_logic;
SIGNAL \VGApart|Add0~3\ : std_logic;
SIGNAL \VGApart|Add0~4_combout\ : std_logic;
SIGNAL \VGApart|Add0~5\ : std_logic;
SIGNAL \VGApart|Add0~6_combout\ : std_logic;
SIGNAL \VGApart|Equal0~0_combout\ : std_logic;
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
SIGNAL \VGApart|Add0~16_combout\ : std_logic;
SIGNAL \VGApart|h_count~0_combout\ : std_logic;
SIGNAL \VGApart|Add0~17\ : std_logic;
SIGNAL \VGApart|Add0~18_combout\ : std_logic;
SIGNAL \VGApart|h_count~1_combout\ : std_logic;
SIGNAL \VGApart|Equal0~1_combout\ : std_logic;
SIGNAL \VGApart|Equal0~2_combout\ : std_logic;
SIGNAL \VGApart|Equal1~2_combout\ : std_logic;
SIGNAL \VGApart|Add1~11\ : std_logic;
SIGNAL \VGApart|Add1~12_combout\ : std_logic;
SIGNAL \VGApart|Add1~13\ : std_logic;
SIGNAL \VGApart|Add1~14_combout\ : std_logic;
SIGNAL \VGApart|Add1~15\ : std_logic;
SIGNAL \VGApart|Add1~16_combout\ : std_logic;
SIGNAL \VGApart|Add1~17\ : std_logic;
SIGNAL \VGApart|Add1~18_combout\ : std_logic;
SIGNAL \VGApart|v_count~3_combout\ : std_logic;
SIGNAL \VGApart|Add1~1\ : std_logic;
SIGNAL \VGApart|Add1~2_combout\ : std_logic;
SIGNAL \VGApart|v_count~0_combout\ : std_logic;
SIGNAL \VGApart|Equal1~0_combout\ : std_logic;
SIGNAL \VGApart|Equal1~1_combout\ : std_logic;
SIGNAL \VGApart|Equal1~3_combout\ : std_logic;
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
SIGNAL \VGApart|LessThan5~0_combout\ : std_logic;
SIGNAL \VGApart|LessThan10~0_combout\ : std_logic;
SIGNAL \VGApart|process_0~8_combout\ : std_logic;
SIGNAL \VGApart|video_on~q\ : std_logic;
SIGNAL \VGApart|process_0~6_combout\ : std_logic;
SIGNAL \VGApart|process_0~7_combout\ : std_logic;
SIGNAL \VGApart|isColor~feeder_combout\ : std_logic;
SIGNAL \VGApart|isColor~q\ : std_logic;
SIGNAL \VGApart|green~0_combout\ : std_logic;
SIGNAL \VGApart|set_color~1_combout\ : std_logic;
SIGNAL \VGApart|set_color~0_combout\ : std_logic;
SIGNAL \VGApart|set_color~2_combout\ : std_logic;
SIGNAL \GPIO1D4~input_o\ : std_logic;
SIGNAL \CAP11|DEPHASE|Qt~0_combout\ : std_logic;
SIGNAL \GPIO1D30~input_o\ : std_logic;
SIGNAL \CAP11|DEPHASE|Qt~q\ : std_logic;
SIGNAL \CAP11|DEPHASE|Qd[0]~feeder_combout\ : std_logic;
SIGNAL \CAP11|DEPHASE|Qd[1]~feeder_combout\ : std_logic;
SIGNAL \CAP11|CAPclk~0_combout\ : std_logic;
SIGNAL \CAP11|CAPclk~q\ : std_logic;
SIGNAL \CAP11|CAPclk~clkctrl_outclk\ : std_logic;
SIGNAL \CAP11|Add1~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~0clkctrl_outclk\ : std_logic;
SIGNAL \CAP11|Add0~0_combout\ : std_logic;
SIGNAL \CAP11|Add0~1\ : std_logic;
SIGNAL \CAP11|Add0~2_combout\ : std_logic;
SIGNAL \CAP11|Add0~3\ : std_logic;
SIGNAL \CAP11|Add0~4_combout\ : std_logic;
SIGNAL \CAP11|Add0~5\ : std_logic;
SIGNAL \CAP11|Add0~6_combout\ : std_logic;
SIGNAL \CAP11|Add0~7\ : std_logic;
SIGNAL \CAP11|Add0~8_combout\ : std_logic;
SIGNAL \CAP11|Add0~9\ : std_logic;
SIGNAL \CAP11|Add0~10_combout\ : std_logic;
SIGNAL \CAP11|Add0~11\ : std_logic;
SIGNAL \CAP11|Add0~12_combout\ : std_logic;
SIGNAL \CAP11|h_count~1_combout\ : std_logic;
SIGNAL \CAP11|Add0~13\ : std_logic;
SIGNAL \CAP11|Add0~14_combout\ : std_logic;
SIGNAL \CAP11|Add0~15\ : std_logic;
SIGNAL \CAP11|Add0~16_combout\ : std_logic;
SIGNAL \CAP11|h_count~0_combout\ : std_logic;
SIGNAL \CAP11|Add0~17\ : std_logic;
SIGNAL \CAP11|Add0~18_combout\ : std_logic;
SIGNAL \CAP11|Equal0~3_combout\ : std_logic;
SIGNAL \CAP11|Equal0~0_combout\ : std_logic;
SIGNAL \CAP11|Equal0~2_combout\ : std_logic;
SIGNAL \CAP11|Equal0~4_combout\ : std_logic;
SIGNAL \CAP11|enawRAMclk~0_combout\ : std_logic;
SIGNAL \CAP11|enawRAMclk~q\ : std_logic;
SIGNAL \CAP11|outCLK~combout\ : std_logic;
SIGNAL \CAP11|outCLK~clkctrl_outclk\ : std_logic;
SIGNAL \cID|LessThan3~0_combout\ : std_logic;
SIGNAL \CAP11|Equal0~1_combout\ : std_logic;
SIGNAL \cID|LessThan3~1_combout\ : std_logic;
SIGNAL \cID|firstWhite~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CAP11|LessThan0~0_combout\ : std_logic;
SIGNAL \CAP11|process_0~0_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~6_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~9_combout\ : std_logic;
SIGNAL \CAP11|dPCLK~combout\ : std_logic;
SIGNAL \CAP11|dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \CAP11|takeTurn~0_combout\ : std_logic;
SIGNAL \CAP11|takeTurn~q\ : std_logic;
SIGNAL \GPIO1D28~input_o\ : std_logic;
SIGNAL \CAP11|QinReg[6]~feeder_combout\ : std_logic;
SIGNAL \CAP11|B[2]~2_combout\ : std_logic;
SIGNAL \cID|whiteCount[0]~13_combout\ : std_logic;
SIGNAL \cID|LessThan3~2_combout\ : std_logic;
SIGNAL \GPIO1D8~input_o\ : std_logic;
SIGNAL \CAP11|B[1]~1_combout\ : std_logic;
SIGNAL \GPIO1D6~input_o\ : std_logic;
SIGNAL \CAP11|QinReg[7]~feeder_combout\ : std_logic;
SIGNAL \CAP11|B[3]~3_combout\ : std_logic;
SIGNAL \cID|whiteCount[4]~11_combout\ : std_logic;
SIGNAL \CAP11|RAM_adr[15]~1_combout\ : std_logic;
SIGNAL \CAP11|RAM_adr[15]~2_combout\ : std_logic;
SIGNAL \CAP11|RAM_adr[15]~3_combout\ : std_logic;
SIGNAL \cID|whiteCount[4]~12_combout\ : std_logic;
SIGNAL \cID|whiteCount[0]~14\ : std_logic;
SIGNAL \cID|whiteCount[1]~15_combout\ : std_logic;
SIGNAL \cID|whiteCount[1]~16\ : std_logic;
SIGNAL \cID|whiteCount[2]~17_combout\ : std_logic;
SIGNAL \cID|whiteCount[2]~18\ : std_logic;
SIGNAL \cID|whiteCount[3]~19_combout\ : std_logic;
SIGNAL \cID|whiteCount[3]~20\ : std_logic;
SIGNAL \cID|whiteCount[4]~21_combout\ : std_logic;
SIGNAL \cID|whiteCount[4]~22\ : std_logic;
SIGNAL \cID|whiteCount[5]~23_combout\ : std_logic;
SIGNAL \cID|whiteCount[5]~24\ : std_logic;
SIGNAL \cID|whiteCount[6]~25_combout\ : std_logic;
SIGNAL \cID|whiteCount[6]~26\ : std_logic;
SIGNAL \cID|whiteCount[7]~27_combout\ : std_logic;
SIGNAL \cID|whiteCount[7]~28\ : std_logic;
SIGNAL \cID|whiteCount[8]~29_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~2_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~1_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~3_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~4_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~5_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~7_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~8_combout\ : std_logic;
SIGNAL \cID|firstWhite[6]~10_combout\ : std_logic;
SIGNAL \cID|firstWhite~11_combout\ : std_logic;
SIGNAL \cID|firstWhite~12_combout\ : std_logic;
SIGNAL \cID|firstWhite~13_combout\ : std_logic;
SIGNAL \cID|firstWhite~14_combout\ : std_logic;
SIGNAL \cID|firstWhite~15_combout\ : std_logic;
SIGNAL \cID|firstWhite~16_combout\ : std_logic;
SIGNAL \cID|firstWhite~17_combout\ : std_logic;
SIGNAL \cID|firstWhite~18_combout\ : std_logic;
SIGNAL \cID|lastWhite[0]~11\ : std_logic;
SIGNAL \cID|lastWhite[1]~13\ : std_logic;
SIGNAL \cID|lastWhite[2]~15\ : std_logic;
SIGNAL \cID|lastWhite[3]~17\ : std_logic;
SIGNAL \cID|lastWhite[4]~19\ : std_logic;
SIGNAL \cID|lastWhite[5]~21\ : std_logic;
SIGNAL \cID|lastWhite[6]~23\ : std_logic;
SIGNAL \cID|lastWhite[7]~25\ : std_logic;
SIGNAL \cID|lastWhite[8]~26_combout\ : std_logic;
SIGNAL \cID|lastWhite[7]~24_combout\ : std_logic;
SIGNAL \cID|lastWhite[6]~22_combout\ : std_logic;
SIGNAL \cID|lastWhite[5]~20_combout\ : std_logic;
SIGNAL \cID|lastWhite[4]~18_combout\ : std_logic;
SIGNAL \cID|lastWhite[3]~16_combout\ : std_logic;
SIGNAL \cID|lastWhite[2]~14_combout\ : std_logic;
SIGNAL \cID|lastWhite[1]~12_combout\ : std_logic;
SIGNAL \cID|lastWhite[1]~feeder_combout\ : std_logic;
SIGNAL \cID|lastWhite[0]~10_combout\ : std_logic;
SIGNAL \cID|lastWhite[0]~feeder_combout\ : std_logic;
SIGNAL \cID|mostLocX[0]~11\ : std_logic;
SIGNAL \cID|mostLocX[1]~13\ : std_logic;
SIGNAL \cID|mostLocX[2]~15\ : std_logic;
SIGNAL \cID|mostLocX[3]~17\ : std_logic;
SIGNAL \cID|mostLocX[4]~19\ : std_logic;
SIGNAL \cID|mostLocX[5]~21\ : std_logic;
SIGNAL \cID|mostLocX[6]~23\ : std_logic;
SIGNAL \cID|mostLocX[7]~25\ : std_logic;
SIGNAL \cID|mostLocX[8]~26_combout\ : std_logic;
SIGNAL \CAP11|Add1~1\ : std_logic;
SIGNAL \CAP11|Add1~2_combout\ : std_logic;
SIGNAL \CAP11|Add1~3\ : std_logic;
SIGNAL \CAP11|Add1~4_combout\ : std_logic;
SIGNAL \CAP11|Add1~5\ : std_logic;
SIGNAL \CAP11|Add1~6_combout\ : std_logic;
SIGNAL \CAP11|Add1~7\ : std_logic;
SIGNAL \CAP11|Add1~8_combout\ : std_logic;
SIGNAL \CAP11|Add1~9\ : std_logic;
SIGNAL \CAP11|Add1~10_combout\ : std_logic;
SIGNAL \CAP11|v_count~0_combout\ : std_logic;
SIGNAL \CAP11|Add1~11\ : std_logic;
SIGNAL \CAP11|Add1~12_combout\ : std_logic;
SIGNAL \CAP11|v_count~3_combout\ : std_logic;
SIGNAL \CAP11|Equal1~2_combout\ : std_logic;
SIGNAL \CAP11|Equal1~0_combout\ : std_logic;
SIGNAL \CAP11|Equal1~3_combout\ : std_logic;
SIGNAL \CAP11|Add1~13\ : std_logic;
SIGNAL \CAP11|Add1~14_combout\ : std_logic;
SIGNAL \CAP11|v_count~2_combout\ : std_logic;
SIGNAL \CAP11|Add1~15\ : std_logic;
SIGNAL \CAP11|Add1~16_combout\ : std_logic;
SIGNAL \CAP11|v_count~1_combout\ : std_logic;
SIGNAL \CAP11|Add1~17\ : std_logic;
SIGNAL \CAP11|Add1~18_combout\ : std_logic;
SIGNAL \CAP11|Equal1~1_combout\ : std_logic;
SIGNAL \cID|LessThan5~0_combout\ : std_logic;
SIGNAL \cID|mostCount[0]~9_combout\ : std_logic;
SIGNAL \cID|mostCount[0]~10\ : std_logic;
SIGNAL \cID|mostCount[1]~11_combout\ : std_logic;
SIGNAL \cID|mostCount[1]~12\ : std_logic;
SIGNAL \cID|mostCount[2]~13_combout\ : std_logic;
SIGNAL \cID|mostCount[2]~14\ : std_logic;
SIGNAL \cID|mostCount[3]~15_combout\ : std_logic;
SIGNAL \cID|mostCount[3]~16\ : std_logic;
SIGNAL \cID|mostCount[4]~17_combout\ : std_logic;
SIGNAL \cID|mostCount[4]~18\ : std_logic;
SIGNAL \cID|mostCount[5]~19_combout\ : std_logic;
SIGNAL \cID|mostCount[5]~20\ : std_logic;
SIGNAL \cID|mostCount[6]~21_combout\ : std_logic;
SIGNAL \cID|mostCount[6]~22\ : std_logic;
SIGNAL \cID|mostCount[7]~23_combout\ : std_logic;
SIGNAL \cID|mostCount[7]~24\ : std_logic;
SIGNAL \cID|mostCount[8]~25_combout\ : std_logic;
SIGNAL \cID|mostCount[8]~26\ : std_logic;
SIGNAL \cID|LessThan4~0_combout\ : std_logic;
SIGNAL \cID|mostLocX[9]~30_combout\ : std_logic;
SIGNAL \cID|lastLocY[2]~0_combout\ : std_logic;
SIGNAL \cID|lastWhite[8]~27\ : std_logic;
SIGNAL \cID|lastWhite[9]~28_combout\ : std_logic;
SIGNAL \cID|lastWhite[9]~feeder_combout\ : std_logic;
SIGNAL \cID|mostLocX[8]~27\ : std_logic;
SIGNAL \cID|mostLocX[9]~28_combout\ : std_logic;
SIGNAL \VGApart|Equal6~0_combout\ : std_logic;
SIGNAL \cID|mostLocX[3]~16_combout\ : std_logic;
SIGNAL \cID|mostLocX[2]~14_combout\ : std_logic;
SIGNAL \cID|lastLocX[2]~feeder_combout\ : std_logic;
SIGNAL \VGApart|Equal6~2_combout\ : std_logic;
SIGNAL \cID|mostLocX[1]~12_combout\ : std_logic;
SIGNAL \cID|mostLocX[0]~10_combout\ : std_logic;
SIGNAL \cID|lastLocX[0]~feeder_combout\ : std_logic;
SIGNAL \VGApart|Equal6~1_combout\ : std_logic;
SIGNAL \cID|mostLocX[4]~18_combout\ : std_logic;
SIGNAL \cID|mostLocX[5]~20_combout\ : std_logic;
SIGNAL \cID|lastLocX[5]~feeder_combout\ : std_logic;
SIGNAL \VGApart|Equal6~3_combout\ : std_logic;
SIGNAL \cID|mostLocX[6]~22_combout\ : std_logic;
SIGNAL \cID|mostLocX[7]~24_combout\ : std_logic;
SIGNAL \cID|lastLocX[7]~feeder_combout\ : std_logic;
SIGNAL \VGApart|Equal6~4_combout\ : std_logic;
SIGNAL \VGApart|Equal6~5_combout\ : std_logic;
SIGNAL \VGApart|set_color~3_combout\ : std_logic;
SIGNAL \VGApart|Add4~1\ : std_logic;
SIGNAL \VGApart|Add4~3\ : std_logic;
SIGNAL \VGApart|Add4~5\ : std_logic;
SIGNAL \VGApart|Add4~7\ : std_logic;
SIGNAL \VGApart|Add4~9\ : std_logic;
SIGNAL \VGApart|Add4~10_combout\ : std_logic;
SIGNAL \VGApart|Add4~8_combout\ : std_logic;
SIGNAL \VGApart|Add4~11\ : std_logic;
SIGNAL \VGApart|Add4~13\ : std_logic;
SIGNAL \VGApart|Add4~14_combout\ : std_logic;
SIGNAL \VGApart|Add4~12_combout\ : std_logic;
SIGNAL \VGApart|process_0~10_combout\ : std_logic;
SIGNAL \VGApart|Add4~15\ : std_logic;
SIGNAL \VGApart|Add4~16_combout\ : std_logic;
SIGNAL \VGApart|Add4~6_combout\ : std_logic;
SIGNAL \VGApart|Add4~0_combout\ : std_logic;
SIGNAL \VGApart|Add4~4_combout\ : std_logic;
SIGNAL \VGApart|Add4~2_combout\ : std_logic;
SIGNAL \VGApart|process_0~9_combout\ : std_logic;
SIGNAL \VGApart|Add4~17\ : std_logic;
SIGNAL \VGApart|Add4~18_combout\ : std_logic;
SIGNAL \VGApart|process_0~11_combout\ : std_logic;
SIGNAL \VGApart|Add5~1\ : std_logic;
SIGNAL \VGApart|Add5~3\ : std_logic;
SIGNAL \VGApart|Add5~5\ : std_logic;
SIGNAL \VGApart|Add5~7\ : std_logic;
SIGNAL \VGApart|Add5~9\ : std_logic;
SIGNAL \VGApart|Add5~11\ : std_logic;
SIGNAL \VGApart|Add5~13\ : std_logic;
SIGNAL \VGApart|Add5~14_combout\ : std_logic;
SIGNAL \VGApart|Add5~12_combout\ : std_logic;
SIGNAL \VGApart|Add5~8_combout\ : std_logic;
SIGNAL \VGApart|Add5~10_combout\ : std_logic;
SIGNAL \VGApart|process_0~13_combout\ : std_logic;
SIGNAL \VGApart|Add5~15\ : std_logic;
SIGNAL \VGApart|Add5~17\ : std_logic;
SIGNAL \VGApart|Add5~18_combout\ : std_logic;
SIGNAL \VGApart|Add5~16_combout\ : std_logic;
SIGNAL \VGApart|Add5~6_combout\ : std_logic;
SIGNAL \VGApart|Add5~4_combout\ : std_logic;
SIGNAL \VGApart|Add5~2_combout\ : std_logic;
SIGNAL \VGApart|Add5~0_combout\ : std_logic;
SIGNAL \VGApart|process_0~12_combout\ : std_logic;
SIGNAL \VGApart|process_0~14_combout\ : std_logic;
SIGNAL \VGApart|set_color~11_combout\ : std_logic;
SIGNAL \VGApart|set_color~12_combout\ : std_logic;
SIGNAL \VGApart|set_color~10_combout\ : std_logic;
SIGNAL \cID|lastRow~0_combout\ : std_logic;
SIGNAL \cID|whiteCount[4]~31_combout\ : std_logic;
SIGNAL \cID|lastRow[9]~1_combout\ : std_logic;
SIGNAL \cID|firstRow~0_combout\ : std_logic;
SIGNAL \cID|firstRow[1]~2_combout\ : std_logic;
SIGNAL \cID|firstRow[1]~1_combout\ : std_logic;
SIGNAL \cID|firstRow[1]~3_combout\ : std_logic;
SIGNAL \cID|firstRow[0]~4_combout\ : std_logic;
SIGNAL \cID|lastRow~2_combout\ : std_logic;
SIGNAL \cID|firstRow~5_combout\ : std_logic;
SIGNAL \cID|lastRow~3_combout\ : std_logic;
SIGNAL \cID|firstRow~6_combout\ : std_logic;
SIGNAL \cID|firstRow~7_combout\ : std_logic;
SIGNAL \cID|lastRow~4_combout\ : std_logic;
SIGNAL \cID|firstRow~8_combout\ : std_logic;
SIGNAL \cID|lastRow~5_combout\ : std_logic;
SIGNAL \cID|mostLocY[1]~10_cout\ : std_logic;
SIGNAL \cID|mostLocY[1]~12\ : std_logic;
SIGNAL \cID|mostLocY[2]~14\ : std_logic;
SIGNAL \cID|mostLocY[3]~16\ : std_logic;
SIGNAL \cID|mostLocY[4]~17_combout\ : std_logic;
SIGNAL \cID|mostLocY[3]~15_combout\ : std_logic;
SIGNAL \cID|lastLocY[2]~feeder_combout\ : std_logic;
SIGNAL \VGApart|set_color~4_combout\ : std_logic;
SIGNAL \cID|lastRow~6_combout\ : std_logic;
SIGNAL \cID|firstRow~9_combout\ : std_logic;
SIGNAL \cID|mostLocY[4]~18\ : std_logic;
SIGNAL \cID|mostLocY[5]~19_combout\ : std_logic;
SIGNAL \cID|lastRow~7_combout\ : std_logic;
SIGNAL \cID|firstRow~10_combout\ : std_logic;
SIGNAL \cID|mostLocY[5]~20\ : std_logic;
SIGNAL \cID|mostLocY[6]~21_combout\ : std_logic;
SIGNAL \cID|lastLocY[5]~feeder_combout\ : std_logic;
SIGNAL \VGApart|set_color~5_combout\ : std_logic;
SIGNAL \cID|mostLocY[2]~13_combout\ : std_logic;
SIGNAL \cID|mostLocY[1]~11_combout\ : std_logic;
SIGNAL \cID|lastLocY[0]~feeder_combout\ : std_logic;
SIGNAL \VGApart|set_color~6_combout\ : std_logic;
SIGNAL \cID|lastRow~8_combout\ : std_logic;
SIGNAL \cID|firstRow~11_combout\ : std_logic;
SIGNAL \cID|lastRow~9_combout\ : std_logic;
SIGNAL \cID|firstRow~12_combout\ : std_logic;
SIGNAL \cID|lastRow~10_combout\ : std_logic;
SIGNAL \cID|mostLocY[6]~22\ : std_logic;
SIGNAL \cID|mostLocY[7]~24\ : std_logic;
SIGNAL \cID|mostLocY[8]~26\ : std_logic;
SIGNAL \cID|mostLocY[9]~27_combout\ : std_logic;
SIGNAL \cID|mostLocY[7]~23_combout\ : std_logic;
SIGNAL \cID|mostLocY[8]~25_combout\ : std_logic;
SIGNAL \cID|lastLocY[7]~feeder_combout\ : std_logic;
SIGNAL \VGApart|set_color~7_combout\ : std_logic;
SIGNAL \VGApart|set_color~8_combout\ : std_logic;
SIGNAL \VGApart|set_color~9_combout\ : std_logic;
SIGNAL \VGApart|set_color~13_combout\ : std_logic;
SIGNAL \VGApart|set_color~14_combout\ : std_logic;
SIGNAL \VGApart|set_color~15_combout\ : std_logic;
SIGNAL \VGApart|set_color~q\ : std_logic;
SIGNAL \VGApart|red~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \VGApart|LessThan5~1_combout\ : std_logic;
SIGNAL \VGApart|process_0~17_combout\ : std_logic;
SIGNAL \VGApart|process_0~16_combout\ : std_logic;
SIGNAL \VGApart|process_0~18_combout\ : std_logic;
SIGNAL \VGApart|process_0~19_combout\ : std_logic;
SIGNAL \VGApart|enarRAMclk~q\ : std_logic;
SIGNAL \rRAMclk~combout\ : std_logic;
SIGNAL \rRAMclk~clkctrl_outclk\ : std_logic;
SIGNAL \VGApart|Add2~0_combout\ : std_logic;
SIGNAL \VGApart|process_0~15_combout\ : std_logic;
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
SIGNAL \VGApart|Equal2~1_combout\ : std_logic;
SIGNAL \VGApart|Equal2~2_combout\ : std_logic;
SIGNAL \VGApart|Equal2~0_combout\ : std_logic;
SIGNAL \VGApart|Equal2~3_combout\ : std_logic;
SIGNAL \VGApart|Equal2~4_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr0~5_combout\ : std_logic;
SIGNAL \VGApart|Add2~17\ : std_logic;
SIGNAL \VGApart|Add2~18_combout\ : std_logic;
SIGNAL \VGApart|Add2~19\ : std_logic;
SIGNAL \VGApart|Add2~20_combout\ : std_logic;
SIGNAL \VGApart|Add2~21\ : std_logic;
SIGNAL \VGApart|Add2~22_combout\ : std_logic;
SIGNAL \VGApart|Add2~23\ : std_logic;
SIGNAL \VGApart|Add2~24_combout\ : std_logic;
SIGNAL \VGApart|Add2~25\ : std_logic;
SIGNAL \VGApart|Add2~26_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr0~4_combout\ : std_logic;
SIGNAL \VGApart|Add2~27\ : std_logic;
SIGNAL \VGApart|Add2~28_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr0~3_combout\ : std_logic;
SIGNAL \VGApart|Add2~29\ : std_logic;
SIGNAL \VGApart|Add2~30_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr0~2_combout\ : std_logic;
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
SIGNAL \VGApart|RAM_adr1~5_combout\ : std_logic;
SIGNAL \VGApart|Add3~17\ : std_logic;
SIGNAL \VGApart|Add3~18_combout\ : std_logic;
SIGNAL \VGApart|Add3~19\ : std_logic;
SIGNAL \VGApart|Add3~20_combout\ : std_logic;
SIGNAL \VGApart|Add3~21\ : std_logic;
SIGNAL \VGApart|Add3~22_combout\ : std_logic;
SIGNAL \VGApart|Equal3~2_combout\ : std_logic;
SIGNAL \VGApart|Equal3~1_combout\ : std_logic;
SIGNAL \VGApart|Equal3~0_combout\ : std_logic;
SIGNAL \VGApart|Add3~23\ : std_logic;
SIGNAL \VGApart|Add3~24_combout\ : std_logic;
SIGNAL \VGApart|Equal3~3_combout\ : std_logic;
SIGNAL \VGApart|Equal3~4_combout\ : std_logic;
SIGNAL \VGApart|Add3~25\ : std_logic;
SIGNAL \VGApart|Add3~26_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr1~4_combout\ : std_logic;
SIGNAL \VGApart|Add3~27\ : std_logic;
SIGNAL \VGApart|Add3~28_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr1~3_combout\ : std_logic;
SIGNAL \VGApart|Add3~29\ : std_logic;
SIGNAL \VGApart|Add3~30_combout\ : std_logic;
SIGNAL \VGApart|RAM_adr1~0_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~0_combout\ : std_logic;
SIGNAL \VGApart|RAMadr[12]~1_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~3_combout\ : std_logic;
SIGNAL \VGApart|RAMadr~2_combout\ : std_logic;
SIGNAL \CAP11|Add2~0_combout\ : std_logic;
SIGNAL \CAP11|RAM_adr[15]~4_combout\ : std_logic;
SIGNAL \CAP11|Add2~1\ : std_logic;
SIGNAL \CAP11|Add2~2_combout\ : std_logic;
SIGNAL \CAP11|Add2~3\ : std_logic;
SIGNAL \CAP11|Add2~4_combout\ : std_logic;
SIGNAL \CAP11|Add2~5\ : std_logic;
SIGNAL \CAP11|Add2~6_combout\ : std_logic;
SIGNAL \CAP11|Add2~7\ : std_logic;
SIGNAL \CAP11|Add2~8_combout\ : std_logic;
SIGNAL \CAP11|Add2~9\ : std_logic;
SIGNAL \CAP11|Add2~10_combout\ : std_logic;
SIGNAL \CAP11|Add2~11\ : std_logic;
SIGNAL \CAP11|Add2~12_combout\ : std_logic;
SIGNAL \CAP11|Add2~13\ : std_logic;
SIGNAL \CAP11|Add2~14_combout\ : std_logic;
SIGNAL \CAP11|Add2~15\ : std_logic;
SIGNAL \CAP11|Add2~16_combout\ : std_logic;
SIGNAL \CAP11|RAM_adr~7_combout\ : std_logic;
SIGNAL \CAP11|Add2~17\ : std_logic;
SIGNAL \CAP11|Add2~18_combout\ : std_logic;
SIGNAL \CAP11|Add2~19\ : std_logic;
SIGNAL \CAP11|Add2~20_combout\ : std_logic;
SIGNAL \CAP11|Add2~21\ : std_logic;
SIGNAL \CAP11|Add2~22_combout\ : std_logic;
SIGNAL \CAP11|Add2~23\ : std_logic;
SIGNAL \CAP11|Add2~24_combout\ : std_logic;
SIGNAL \CAP11|Add2~25\ : std_logic;
SIGNAL \CAP11|Add2~27\ : std_logic;
SIGNAL \CAP11|Add2~28_combout\ : std_logic;
SIGNAL \CAP11|RAM_adr~5_combout\ : std_logic;
SIGNAL \CAP11|Add2~29\ : std_logic;
SIGNAL \CAP11|Add2~30_combout\ : std_logic;
SIGNAL \CAP11|RAM_adr~0_combout\ : std_logic;
SIGNAL \CAP11|Equal2~1_combout\ : std_logic;
SIGNAL \CAP11|Equal2~4_combout\ : std_logic;
SIGNAL \CAP11|Equal2~3_combout\ : std_logic;
SIGNAL \CAP11|Equal2~2_combout\ : std_logic;
SIGNAL \CAP11|Equal2~5_combout\ : std_logic;
SIGNAL \CAP11|Add2~26_combout\ : std_logic;
SIGNAL \CAP11|RAM_adr~6_combout\ : std_logic;
SIGNAL \GPIO1D26~input_o\ : std_logic;
SIGNAL \CAP11|B[0]~0_combout\ : std_logic;
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
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode339w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\ : std_logic;
SIGNAL \CAP11|Equal2~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\ : std_logic;
SIGNAL \VGApart|red~1_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\ : std_logic;
SIGNAL \VGApart|red~2_combout\ : std_logic;
SIGNAL \VGApart|red[1]~feeder_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\ : std_logic;
SIGNAL \VGApart|red~3_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\ : std_logic;
SIGNAL \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
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
SIGNAL \RAM32|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CAP11|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CAP11|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CAP11|RAM_adr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CAP11|QinReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CAP11|QaddReg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CAP11|DEPHASE|Qd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cID|whiteCount\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cID|mostLocY\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cID|mostLocX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cID|mostCount\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cID|lastWhite\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cID|lastRow\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cID|lastLocY\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cID|lastLocX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cID|firstWhite\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cID|firstRow\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SCCBdriver|REGS|Q\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \DIV800|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SCCBdriver|REGS|cQ\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \DIV800|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \CAP11|ALT_INV_dPCLK~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_comb~0clkctrl_outclk\ : std_logic;
SIGNAL \CAP11|ALT_INV_CAPclk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \cID|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \cID|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \CAP11|ALT_INV_CAPclk~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
GPIO0_D <= ww_GPIO0_D;
GPIO1D0 <= ww_GPIO1D0;
GPIO1D1 <= ww_GPIO1D1;
ww_GPIO1D2 <= GPIO1D2;
GPIO1D3 <= ww_GPIO1D3;
ww_GPIO1D4 <= GPIO1D4;
ww_GPIO1D6 <= GPIO1D6;
ww_GPIO1D8 <= GPIO1D8;
ww_GPIO1D10 <= GPIO1D10;
ww_GPIO1D22 <= GPIO1D22;
ww_GPIO1D24 <= GPIO1D24;
ww_GPIO1D26 <= GPIO1D26;
ww_GPIO1D28 <= GPIO1D28;
ww_GPIO1D30 <= GPIO1D30;
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

\DIV800|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\DIV800|altpll_component|auto_generated|wire_pll1_clk\(0) <= \DIV800|altpll_component|auto_generated|pll1_CLK_bus\(0);
\DIV800|altpll_component|auto_generated|wire_pll1_clk\(1) <= \DIV800|altpll_component|auto_generated|pll1_CLK_bus\(1);
\DIV800|altpll_component|auto_generated|wire_pll1_clk\(2) <= \DIV800|altpll_component|auto_generated|pll1_CLK_bus\(2);
\DIV800|altpll_component|auto_generated|wire_pll1_clk\(3) <= \DIV800|altpll_component|auto_generated|pll1_CLK_bus\(3);
\DIV800|altpll_component|auto_generated|wire_pll1_clk\(4) <= \DIV800|altpll_component|auto_generated|pll1_CLK_bus\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\CLK_25M|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~inputclkctrl_outclk\);

\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(0) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(0);
\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(1) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(1);
\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(2) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(2);
\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(3) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(3);
\CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(4) <= \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\(4);

\RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(1);

\RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(1);

\RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(1);

\RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(1);

\RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(1);

\RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(1);

\RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(1);

\RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(1);

\RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(2);

\RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \CAP11|QaddReg\(3);

\RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\CAP11|RAM_adr\(12) & \CAP11|RAM_adr\(11) & \CAP11|RAM_adr\(10) & \CAP11|RAM_adr\(9) & \CAP11|RAM_adr\(8) & \CAP11|RAM_adr\(7) & \CAP11|RAM_adr\(6) & 
\CAP11|RAM_adr\(5) & \CAP11|RAM_adr\(4) & \CAP11|RAM_adr\(3) & \CAP11|RAM_adr\(2) & \CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\VGApart|RAMadr\(12) & \VGApart|RAMadr\(11) & \VGApart|RAMadr\(10) & \VGApart|RAMadr\(9) & \VGApart|RAMadr\(8) & \VGApart|RAMadr\(7) & \VGApart|RAMadr\(6) & 
\VGApart|RAMadr\(5) & \VGApart|RAMadr\(4) & \VGApart|RAMadr\(3) & \VGApart|RAMadr\(2) & \VGApart|RAMadr\(1) & \VGApart|RAMadr\(0));

\RAM32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ <= \RAM32|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\CAP11|outCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAP11|outCLK~combout\);

\CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_25M|altpll_component|auto_generated|wire_pll1_clk\(0));

\CAP11|CAPclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAP11|CAPclk~q\);

\SCCBdriver|clk400data~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCCBdriver|clk400data~q\);

\rRAMclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rRAMclk~combout\);

\comb~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb~0_combout\);

\CAP11|dPCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CAP11|dPCLK~combout\);

\DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV800|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_24M|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\DIV800|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\CAP11|ALT_INV_dPCLK~clkctrl_outclk\ <= NOT \CAP11|dPCLK~clkctrl_outclk\;
\ALT_INV_comb~0clkctrl_outclk\ <= NOT \comb~0clkctrl_outclk\;
\CAP11|ALT_INV_CAPclk~clkctrl_outclk\ <= NOT \CAP11|CAPclk~clkctrl_outclk\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\cID|ALT_INV_LessThan3~2_combout\ <= NOT \cID|LessThan3~2_combout\;
\cID|ALT_INV_LessThan5~0_combout\ <= NOT \cID|LessThan5~0_combout\;
\CAP11|ALT_INV_CAPclk~q\ <= NOT \CAP11|CAPclk~q\;

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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(3));

-- Location: IOOBUF_X23_Y0_N16
\GPIO0_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(4));

-- Location: IOOBUF_X23_Y0_N9
\GPIO0_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(5));

-- Location: IOOBUF_X23_Y0_N23
\GPIO0_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(6));

-- Location: IOOBUF_X23_Y0_N30
\GPIO0_D[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(7));

-- Location: IOOBUF_X21_Y0_N30
\GPIO0_D[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(8));

-- Location: IOOBUF_X19_Y0_N2
\GPIO0_D[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(9));

-- Location: IOOBUF_X16_Y0_N23
\GPIO0_D[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(10));

-- Location: IOOBUF_X16_Y0_N30
\GPIO0_D[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(11));

-- Location: IOOBUF_X9_Y0_N23
\GPIO0_D[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(12));

-- Location: IOOBUF_X9_Y0_N30
\GPIO0_D[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(13));

-- Location: IOOBUF_X7_Y0_N2
\GPIO0_D[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(14));

-- Location: IOOBUF_X7_Y0_N9
\GPIO0_D[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(15));

-- Location: IOOBUF_X30_Y0_N2
\GPIO0_D[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(16));

-- Location: IOOBUF_X39_Y0_N23
\GPIO0_D[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(17));

-- Location: IOOBUF_X26_Y0_N23
\GPIO0_D[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(18));

-- Location: IOOBUF_X26_Y0_N30
\GPIO0_D[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(19));

-- Location: IOOBUF_X30_Y0_N9
\GPIO0_D[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(20));

-- Location: IOOBUF_X23_Y0_N2
\GPIO0_D[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(21));

-- Location: IOOBUF_X1_Y0_N16
\GPIO0_D[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(22));

-- Location: IOOBUF_X19_Y0_N23
\GPIO0_D[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(23));

-- Location: IOOBUF_X19_Y0_N9
\GPIO0_D[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(24));

-- Location: IOOBUF_X19_Y0_N16
\GPIO0_D[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(25));

-- Location: IOOBUF_X1_Y0_N23
\GPIO0_D[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(26));

-- Location: IOOBUF_X11_Y0_N30
\GPIO0_D[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(27));

-- Location: IOOBUF_X9_Y0_N16
\GPIO0_D[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(28));

-- Location: IOOBUF_X7_Y0_N23
\GPIO0_D[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SCCBdriver|SIO_D~combout\,
	devoe => ww_devoe,
	o => ww_GPIO0_D(29));

-- Location: IOOBUF_X3_Y0_N30
\GPIO0_D[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO0_D(30));

-- Location: IOOBUF_X37_Y0_N23
\GPIO1D0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_GPIO1D0);

-- Location: IOOBUF_X37_Y0_N16
\GPIO1D1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_GPIO1D1);

-- Location: IOOBUF_X35_Y0_N16
\GPIO1D3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_24M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_GPIO1D3);

-- Location: IOOBUF_X41_Y23_N23
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

-- Location: IOOBUF_X41_Y25_N2
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

-- Location: IOOBUF_X41_Y22_N2
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

-- Location: IOOBUF_X41_Y21_N23
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

-- Location: IOOBUF_X41_Y20_N2
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

-- Location: IOOBUF_X41_Y24_N23
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

-- Location: IOOBUF_X41_Y21_N16
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

-- Location: IOOBUF_X41_Y20_N23
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

-- Location: IOOBUF_X41_Y19_N16
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

-- Location: IOOBUF_X41_Y19_N9
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

-- Location: IOOBUF_X41_Y19_N2
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

-- Location: IOOBUF_X41_Y21_N9
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

-- Location: IOOBUF_X41_Y18_N16
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

-- Location: IOOBUF_X41_Y18_N23
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

-- Location: PLL_4
\DIV800|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 250,
	c0_initial => 1,
	c0_low => 250,
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
	clk0_divide_by => 125,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
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
	loop_filter_r_bits => 27,
	m => 8,
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
	vco_phase_shift_step => 312,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_SW[0]~input_o\,
	fbin => \DIV800|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \DIV800|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \DIV800|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \DIV800|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y21_N24
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

-- Location: FF_X4_Y21_N25
\SCCBdriver|EE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \SCCBdriver|EE~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|EE~q\);

-- Location: LCCOMB_X5_Y21_N14
\SCCBdriver|D1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|D1~0_combout\ = (\SCCBdriver|EE~q\ & ((\SCCBdriver|Q1~q\) # ((!\SCCBdriver|eInd~q\ & \SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|eInd~q\,
	datab => \SCCBdriver|EE~q\,
	datac => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|Q0~q\,
	combout => \SCCBdriver|D1~0_combout\);

-- Location: FF_X5_Y21_N15
\SCCBdriver|Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \SCCBdriver|D1~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|Q1~q\);

-- Location: LCCOMB_X5_Y21_N24
\SCCBdriver|D0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|D0~0_combout\ = (\SCCBdriver|EE~q\ & ((\SCCBdriver|eInd~q\ & ((\SCCBdriver|Q0~q\) # (!\SCCBdriver|Q1~q\))) # (!\SCCBdriver|eInd~q\ & ((\SCCBdriver|Q1~q\) # (!\SCCBdriver|Q0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|eInd~q\,
	datab => \SCCBdriver|EE~q\,
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|D0~0_combout\);

-- Location: FF_X5_Y21_N25
\SCCBdriver|Q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \SCCBdriver|D0~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|Q0~q\);

-- Location: LCCOMB_X4_Y21_N28
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

-- Location: FF_X4_Y21_N29
\SCCBdriver|clk400data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \SCCBdriver|clk400D~combout\,
	clrn => \SW[0]~input_o\,
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

-- Location: LCCOMB_X3_Y21_N18
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

-- Location: FF_X3_Y21_N19
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

-- Location: LCCOMB_X3_Y20_N30
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

-- Location: FF_X3_Y20_N31
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

-- Location: LCCOMB_X3_Y20_N12
\SCCBdriver|REGS|cD[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[1]~25_combout\ = (\SCCBdriver|REGS|cQ\(0)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(0),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[1]~25_combout\);

-- Location: FF_X3_Y20_N13
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

-- Location: LCCOMB_X3_Y20_N26
\SCCBdriver|REGS|cD[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[2]~24_combout\ = (\SCCBdriver|REGS|cQ\(1)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(1),
	combout => \SCCBdriver|REGS|cD[2]~24_combout\);

-- Location: FF_X3_Y20_N27
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

-- Location: LCCOMB_X3_Y20_N16
\SCCBdriver|REGS|cD[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[3]~23_combout\ = (\SCCBdriver|REGS|cQ\(2)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(2),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[3]~23_combout\);

-- Location: FF_X3_Y20_N17
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

-- Location: LCCOMB_X3_Y20_N22
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

-- Location: FF_X3_Y20_N23
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

-- Location: LCCOMB_X3_Y20_N4
\SCCBdriver|REGS|cD[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[5]~21_combout\ = (\SCCBdriver|REGS|cQ\(4)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|cQ\(4),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[5]~21_combout\);

-- Location: FF_X3_Y20_N5
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

-- Location: LCCOMB_X3_Y20_N2
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

-- Location: FF_X3_Y20_N3
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

-- Location: LCCOMB_X3_Y20_N20
\SCCBdriver|REGS|cD[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[7]~19_combout\ = (\SCCBdriver|REGS|cQ\(6)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(6),
	combout => \SCCBdriver|REGS|cD[7]~19_combout\);

-- Location: FF_X3_Y20_N21
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

-- Location: LCCOMB_X3_Y20_N10
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

-- Location: FF_X3_Y20_N11
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

-- Location: LCCOMB_X3_Y20_N24
\SCCBdriver|REGS|cD[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[9]~17_combout\ = (\SCCBdriver|REGS|cQ\(8)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(8),
	combout => \SCCBdriver|REGS|cD[9]~17_combout\);

-- Location: FF_X3_Y20_N25
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

-- Location: LCCOMB_X3_Y20_N6
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

-- Location: FF_X3_Y20_N7
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

-- Location: LCCOMB_X3_Y20_N28
\SCCBdriver|REGS|cD[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[11]~15_combout\ = (\SCCBdriver|REGS|cQ\(10)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(10),
	combout => \SCCBdriver|REGS|cD[11]~15_combout\);

-- Location: FF_X3_Y20_N29
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

-- Location: LCCOMB_X3_Y20_N18
\SCCBdriver|REGS|cD[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[12]~14_combout\ = (\SCCBdriver|REGS|cQ\(11)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(11),
	combout => \SCCBdriver|REGS|cD[12]~14_combout\);

-- Location: FF_X3_Y20_N19
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

-- Location: LCCOMB_X3_Y20_N8
\SCCBdriver|REGS|cD[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[13]~13_combout\ = (\SCCBdriver|REGS|cQ\(12)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|cQ\(12),
	combout => \SCCBdriver|REGS|cD[13]~13_combout\);

-- Location: FF_X3_Y20_N9
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

-- Location: LCCOMB_X3_Y20_N14
\SCCBdriver|REGS|cD[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[14]~12_combout\ = (\SCCBdriver|REGS|cQ\(13)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(13),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[14]~12_combout\);

-- Location: FF_X3_Y20_N15
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

-- Location: LCCOMB_X3_Y20_N0
\SCCBdriver|REGS|cD[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[15]~11_combout\ = (\SCCBdriver|REGS|cQ\(14)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(14),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[15]~11_combout\);

-- Location: FF_X3_Y20_N1
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

-- Location: LCCOMB_X3_Y21_N28
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

-- Location: FF_X3_Y21_N29
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

-- Location: LCCOMB_X3_Y21_N30
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

-- Location: FF_X3_Y21_N31
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

-- Location: LCCOMB_X3_Y21_N24
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

-- Location: FF_X3_Y21_N25
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

-- Location: LCCOMB_X3_Y21_N14
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

-- Location: FF_X3_Y21_N15
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

-- Location: LCCOMB_X3_Y21_N8
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

-- Location: FF_X3_Y21_N9
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

-- Location: LCCOMB_X3_Y21_N16
\SCCBdriver|REGS|cD[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|cD[21]~5_combout\ = (\SCCBdriver|REGS|cQ\(20)) # (!\SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|cQ\(20),
	datac => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|cD[21]~5_combout\);

-- Location: FF_X3_Y21_N17
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

-- Location: LCCOMB_X3_Y21_N10
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

-- Location: FF_X3_Y21_N11
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

-- Location: LCCOMB_X3_Y21_N20
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

-- Location: FF_X3_Y21_N21
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

-- Location: LCCOMB_X3_Y21_N22
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

-- Location: FF_X3_Y21_N23
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

-- Location: LCCOMB_X3_Y21_N4
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

-- Location: FF_X3_Y21_N5
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

-- Location: LCCOMB_X3_Y21_N6
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

-- Location: FF_X3_Y21_N7
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

-- Location: LCCOMB_X5_Y21_N18
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

-- Location: FF_X5_Y21_N19
\SCCBdriver|clk400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \SCCBdriver|clkE~combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|clk400~q\);

-- Location: LCCOMB_X4_Y21_N26
\SCCBdriver|dataEedge\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|dataEedge~combout\ = LCELL((((\SCCBdriver|mssgGO~q\ & \SCCBdriver|REGS|cQ\(26))) # (!\SCCBdriver|clk400~q\)) # (!\SCCBdriver|clk400data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|mssgGO~q\,
	datab => \SCCBdriver|clk400data~q\,
	datac => \SCCBdriver|REGS|cQ\(26),
	datad => \SCCBdriver|clk400~q\,
	combout => \SCCBdriver|dataEedge~combout\);

-- Location: LCCOMB_X4_Y21_N6
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

-- Location: FF_X4_Y21_N7
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

-- Location: LCCOMB_X5_Y21_N28
\SCCBdriver|C_Eedge\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|C_Eedge~combout\ = LCELL((\SCCBdriver|C_E~q\ & (!\SCCBdriver|mssgGO~q\)) # (!\SCCBdriver|C_E~q\ & ((\SCCBdriver|eInd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|mssgGO~q\,
	datac => \SCCBdriver|C_E~q\,
	datad => \SCCBdriver|eInd~q\,
	combout => \SCCBdriver|C_Eedge~combout\);

-- Location: LCCOMB_X5_Y21_N30
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

-- Location: FF_X5_Y21_N29
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

-- Location: LCCOMB_X5_Y21_N22
\SCCBdriver|C_Esync~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|C_Esync~feeder_combout\ = \SCCBdriver|C_E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCCBdriver|C_E~q\,
	combout => \SCCBdriver|C_Esync~feeder_combout\);

-- Location: FF_X5_Y21_N23
\SCCBdriver|C_Esync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \SCCBdriver|C_Esync~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|C_Esync~q\);

-- Location: LCCOMB_X4_Y21_N22
\SCCBdriver|DeInd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|DeInd~0_combout\ = (\SCCBdriver|Q0~q\ & (!\SCCBdriver|Q1~q\ & (\SCCBdriver|eInd~q\ $ (!\SCCBdriver|C_Esync~q\)))) # (!\SCCBdriver|Q0~q\ & ((\SCCBdriver|eInd~q\ $ (!\SCCBdriver|C_Esync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|eInd~q\,
	datad => \SCCBdriver|C_Esync~q\,
	combout => \SCCBdriver|DeInd~0_combout\);

-- Location: LCCOMB_X4_Y21_N14
\SCCBdriver|DeInd~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|DeInd~1_combout\ = (\SCCBdriver|DeInd~0_combout\ & \SCCBdriver|EE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|DeInd~0_combout\,
	datad => \SCCBdriver|EE~q\,
	combout => \SCCBdriver|DeInd~1_combout\);

-- Location: FF_X4_Y21_N15
\SCCBdriver|eInd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \SCCBdriver|DeInd~1_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|eInd~q\);

-- Location: LCCOMB_X5_Y21_N26
\SCCBdriver|LIVE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|LIVE~0_combout\ = (\SCCBdriver|eInd~q\) # (\SCCBdriver|Q0~q\ $ (\SCCBdriver|Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|eInd~q\,
	datab => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|Q1~q\,
	combout => \SCCBdriver|LIVE~0_combout\);

-- Location: FF_X5_Y21_N27
\SCCBdriver|LIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV800|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \SCCBdriver|LIVE~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|LIVE~q\);

-- Location: LCCOMB_X5_Y21_N20
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
	vco_phase_shift_step => 260,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \SW[1]~input_o\,
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

-- Location: LCCOMB_X4_Y20_N18
\SCCBdriver|REGS|D[17]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[17]~25_combout\ = (\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\ & !\SCCBdriver|REGS|Esync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[17]~25_combout\);

-- Location: FF_X4_Y20_N1
\SCCBdriver|REGS|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|REGS|D[17]~25_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(1));

-- Location: LCCOMB_X4_Y20_N0
\SCCBdriver|REGS|D[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[2]~24_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(1))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|REGS|Q\(1),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[2]~24_combout\);

-- Location: FF_X4_Y20_N15
\SCCBdriver|REGS|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|REGS|D[2]~24_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(2));

-- Location: LCCOMB_X4_Y20_N14
\SCCBdriver|REGS|D[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[3]~23_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(2))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (!\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|REGS|Q\(2),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[3]~23_combout\);

-- Location: LCCOMB_X4_Y20_N24
\SCCBdriver|REGS|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|Q[3]~feeder_combout\ = \SCCBdriver|REGS|D[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|D[3]~23_combout\,
	combout => \SCCBdriver|REGS|Q[3]~feeder_combout\);

-- Location: FF_X4_Y20_N25
\SCCBdriver|REGS|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|Q[3]~feeder_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(3));

-- Location: LCCOMB_X4_Y20_N8
\SCCBdriver|REGS|D[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[4]~22_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(3),
	combout => \SCCBdriver|REGS|D[4]~22_combout\);

-- Location: FF_X4_Y20_N9
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

-- Location: LCCOMB_X4_Y20_N6
\SCCBdriver|REGS|D[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[5]~21_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(4))))) # (!\SCCBdriver|REGS|Esync~q\ & (!\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|REGS|Q\(4),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[5]~21_combout\);

-- Location: FF_X4_Y20_N19
\SCCBdriver|REGS|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|REGS|D[5]~21_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(5));

-- Location: LCCOMB_X4_Y20_N22
\SCCBdriver|REGS|D[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[6]~20_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(5),
	combout => \SCCBdriver|REGS|D[6]~20_combout\);

-- Location: FF_X4_Y20_N23
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

-- Location: LCCOMB_X4_Y20_N20
\SCCBdriver|REGS|D[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[7]~19_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(6))))) # (!\SCCBdriver|REGS|Esync~q\ & (!\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|REGS|Q\(6),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[7]~19_combout\);

-- Location: FF_X4_Y20_N29
\SCCBdriver|REGS|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|REGS|D[7]~19_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(7));

-- Location: LCCOMB_X4_Y20_N28
\SCCBdriver|REGS|D[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[8]~18_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(7))))) # (!\SCCBdriver|REGS|Esync~q\ & (!\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|REGS|Q\(7),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[8]~18_combout\);

-- Location: LCCOMB_X4_Y20_N30
\SCCBdriver|REGS|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|Q[8]~feeder_combout\ = \SCCBdriver|REGS|D[8]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|D[8]~18_combout\,
	combout => \SCCBdriver|REGS|Q[8]~feeder_combout\);

-- Location: FF_X4_Y20_N31
\SCCBdriver|REGS|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|Q[8]~feeder_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(8));

-- Location: LCCOMB_X5_Y20_N22
\SCCBdriver|REGS|D[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[9]~17_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(8),
	combout => \SCCBdriver|REGS|D[9]~17_combout\);

-- Location: FF_X5_Y20_N23
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

-- Location: LCCOMB_X5_Y20_N2
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

-- Location: FF_X5_Y20_N3
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

-- Location: LCCOMB_X5_Y20_N0
\SCCBdriver|REGS|D[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[11]~15_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(10))))) # (!\SCCBdriver|REGS|Esync~q\ & (!\SCCBdriver|Q1~q\ & ((\SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q1~q\,
	datab => \SCCBdriver|REGS|Q\(10),
	datac => \SCCBdriver|Q0~q\,
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[11]~15_combout\);

-- Location: FF_X5_Y20_N17
\SCCBdriver|REGS|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|REGS|D[11]~15_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(11));

-- Location: LCCOMB_X5_Y20_N16
\SCCBdriver|REGS|D[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[12]~14_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(11))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|REGS|Q\(11),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[12]~14_combout\);

-- Location: FF_X4_Y20_N13
\SCCBdriver|REGS|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|REGS|D[12]~14_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(12));

-- Location: LCCOMB_X4_Y20_N12
\SCCBdriver|REGS|D[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[13]~13_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(12))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|REGS|Q\(12),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[13]~13_combout\);

-- Location: FF_X4_Y20_N27
\SCCBdriver|REGS|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|REGS|D[13]~13_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(13));

-- Location: LCCOMB_X4_Y20_N26
\SCCBdriver|REGS|D[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[14]~12_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(13))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q0~q\ & (!\SCCBdriver|Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|REGS|Q\(13),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[14]~12_combout\);

-- Location: LCCOMB_X4_Y20_N16
\SCCBdriver|REGS|Q[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|Q[14]~feeder_combout\ = \SCCBdriver|REGS|D[14]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|D[14]~12_combout\,
	combout => \SCCBdriver|REGS|Q[14]~feeder_combout\);

-- Location: FF_X4_Y20_N17
\SCCBdriver|REGS|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|Q[14]~feeder_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(14));

-- Location: LCCOMB_X5_Y20_N4
\SCCBdriver|REGS|D[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[15]~11_combout\ = (\SCCBdriver|REGS|Q\(14) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Q\(14),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[15]~11_combout\);

-- Location: FF_X5_Y20_N5
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

-- Location: LCCOMB_X5_Y20_N18
\SCCBdriver|REGS|D[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[16]~10_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(15))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q1~q\ & (!\SCCBdriver|Q0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q1~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|REGS|Q\(15),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[16]~10_combout\);

-- Location: FF_X5_Y20_N31
\SCCBdriver|REGS|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|REGS|D[16]~10_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(16));

-- Location: LCCOMB_X5_Y20_N30
\SCCBdriver|REGS|D[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[17]~9_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(16))))) # (!\SCCBdriver|REGS|Esync~q\ & (\SCCBdriver|Q1~q\ & (\SCCBdriver|Q0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q1~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|REGS|Q\(16),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[17]~9_combout\);

-- Location: LCCOMB_X5_Y20_N24
\SCCBdriver|REGS|Q[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|Q[17]~feeder_combout\ = \SCCBdriver|REGS|D[17]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|D[17]~9_combout\,
	combout => \SCCBdriver|REGS|Q[17]~feeder_combout\);

-- Location: FF_X5_Y20_N25
\SCCBdriver|REGS|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|Q[17]~feeder_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(17));

-- Location: LCCOMB_X5_Y20_N26
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

-- Location: FF_X5_Y20_N27
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

-- Location: LCCOMB_X5_Y20_N14
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

-- Location: FF_X5_Y20_N15
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

-- Location: LCCOMB_X5_Y20_N20
\SCCBdriver|REGS|D[20]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[20]~6_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(19))))) # (!\SCCBdriver|REGS|Esync~q\ & ((\SCCBdriver|Q1~q\) # ((\SCCBdriver|Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q1~q\,
	datab => \SCCBdriver|Q0~q\,
	datac => \SCCBdriver|REGS|Q\(19),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[20]~6_combout\);

-- Location: LCCOMB_X5_Y20_N28
\SCCBdriver|REGS|Q[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|Q[20]~feeder_combout\ = \SCCBdriver|REGS|D[20]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|D[20]~6_combout\,
	combout => \SCCBdriver|REGS|Q[20]~feeder_combout\);

-- Location: FF_X5_Y20_N29
\SCCBdriver|REGS|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	d => \SCCBdriver|REGS|Q[20]~feeder_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(20));

-- Location: LCCOMB_X4_Y20_N10
\SCCBdriver|REGS|D[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[21]~5_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(20),
	combout => \SCCBdriver|REGS|D[21]~5_combout\);

-- Location: FF_X4_Y20_N11
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

-- Location: LCCOMB_X4_Y20_N4
\SCCBdriver|REGS|D[22]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[22]~4_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(21),
	combout => \SCCBdriver|REGS|D[22]~4_combout\);

-- Location: FF_X4_Y20_N5
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

-- Location: LCCOMB_X3_Y21_N12
\SCCBdriver|REGS|D[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[23]~3_combout\ = (\SCCBdriver|REGS|Q\(22) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SCCBdriver|REGS|Q\(22),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[23]~3_combout\);

-- Location: FF_X3_Y21_N13
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

-- Location: LCCOMB_X3_Y21_N26
\SCCBdriver|REGS|D[24]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[24]~2_combout\ = (\SCCBdriver|REGS|Esync~q\ & \SCCBdriver|REGS|Q\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCCBdriver|REGS|Esync~q\,
	datad => \SCCBdriver|REGS|Q\(23),
	combout => \SCCBdriver|REGS|D[24]~2_combout\);

-- Location: FF_X3_Y21_N27
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

-- Location: LCCOMB_X4_Y21_N20
\SCCBdriver|REGS|D[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[25]~1_combout\ = (\SCCBdriver|REGS|Esync~q\ & (((\SCCBdriver|REGS|Q\(24))))) # (!\SCCBdriver|REGS|Esync~q\ & ((\SCCBdriver|Q0~q\) # ((\SCCBdriver|Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|Q0~q\,
	datab => \SCCBdriver|Q1~q\,
	datac => \SCCBdriver|REGS|Q\(24),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[25]~1_combout\);

-- Location: FF_X5_Y20_N11
\SCCBdriver|REGS|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCCBdriver|clk400data~clkctrl_outclk\,
	asdata => \SCCBdriver|REGS|D[25]~1_combout\,
	clrn => \SCCBdriver|mssgGO~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCCBdriver|REGS|Q\(25));

-- Location: LCCOMB_X5_Y20_N12
\SCCBdriver|REGS|D[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCCBdriver|REGS|D[26]~0_combout\ = (\SCCBdriver|REGS|Q\(25) & \SCCBdriver|REGS|Esync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCCBdriver|REGS|Q\(25),
	datad => \SCCBdriver|REGS|Esync~q\,
	combout => \SCCBdriver|REGS|D[26]~0_combout\);

-- Location: FF_X5_Y20_N13
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

-- Location: LCCOMB_X5_Y20_N10
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

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: PLL_1
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
	pll_compensation_delay => 2314,
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
	fbin => \CLK_25M|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \CLK_25M|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \CLK_25M|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \CLK_25M|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X16_Y11_N8
\VGApart|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~0_combout\ = \VGApart|v_count\(0) $ (VCC)
-- \VGApart|Add1~1\ = CARRY(\VGApart|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(0),
	datad => VCC,
	combout => \VGApart|Add1~0_combout\,
	cout => \VGApart|Add1~1\);

-- Location: LCCOMB_X14_Y13_N4
\VGApart|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~0_combout\ = \VGApart|h_count\(0) $ (VCC)
-- \VGApart|Add0~1\ = CARRY(\VGApart|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(0),
	datad => VCC,
	combout => \VGApart|Add0~0_combout\,
	cout => \VGApart|Add0~1\);

-- Location: LCCOMB_X14_Y13_N2
\VGApart|h_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|h_count~3_combout\ = (!\VGApart|Equal0~2_combout\ & \VGApart|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Equal0~2_combout\,
	datac => \VGApart|Add0~0_combout\,
	combout => \VGApart|h_count~3_combout\);

-- Location: FF_X14_Y13_N3
\VGApart|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|h_count~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(0));

-- Location: LCCOMB_X14_Y13_N6
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

-- Location: FF_X14_Y13_N7
\VGApart|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(1));

-- Location: LCCOMB_X14_Y13_N8
\VGApart|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~4_combout\ = (\VGApart|h_count\(2) & (\VGApart|Add0~3\ $ (GND))) # (!\VGApart|h_count\(2) & (!\VGApart|Add0~3\ & VCC))
-- \VGApart|Add0~5\ = CARRY((\VGApart|h_count\(2) & !\VGApart|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(2),
	datad => VCC,
	cin => \VGApart|Add0~3\,
	combout => \VGApart|Add0~4_combout\,
	cout => \VGApart|Add0~5\);

-- Location: FF_X14_Y13_N9
\VGApart|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(2));

-- Location: LCCOMB_X14_Y13_N10
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

-- Location: FF_X14_Y13_N11
\VGApart|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~6_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(3));

-- Location: LCCOMB_X14_Y12_N28
\VGApart|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal0~0_combout\ = (!\VGApart|h_count\(3) & (!\VGApart|h_count\(0) & (!\VGApart|h_count\(2) & !\VGApart|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(3),
	datab => \VGApart|h_count\(0),
	datac => \VGApart|h_count\(2),
	datad => \VGApart|h_count\(1),
	combout => \VGApart|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y13_N12
\VGApart|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~8_combout\ = (\VGApart|h_count\(4) & (\VGApart|Add0~7\ $ (GND))) # (!\VGApart|h_count\(4) & (!\VGApart|Add0~7\ & VCC))
-- \VGApart|Add0~9\ = CARRY((\VGApart|h_count\(4) & !\VGApart|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(4),
	datad => VCC,
	cin => \VGApart|Add0~7\,
	combout => \VGApart|Add0~8_combout\,
	cout => \VGApart|Add0~9\);

-- Location: FF_X14_Y13_N13
\VGApart|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~8_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(4));

-- Location: LCCOMB_X14_Y13_N14
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

-- Location: LCCOMB_X14_Y11_N16
\VGApart|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|h_count~2_combout\ = (!\VGApart|Equal0~2_combout\ & \VGApart|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Equal0~2_combout\,
	datac => \VGApart|Add0~10_combout\,
	combout => \VGApart|h_count~2_combout\);

-- Location: FF_X14_Y11_N17
\VGApart|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|h_count~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(5));

-- Location: LCCOMB_X14_Y13_N16
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

-- Location: FF_X14_Y13_N17
\VGApart|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~12_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(6));

-- Location: LCCOMB_X14_Y13_N18
\VGApart|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~14_combout\ = (\VGApart|h_count\(7) & (!\VGApart|Add0~13\)) # (!\VGApart|h_count\(7) & ((\VGApart|Add0~13\) # (GND)))
-- \VGApart|Add0~15\ = CARRY((!\VGApart|Add0~13\) # (!\VGApart|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(7),
	datad => VCC,
	cin => \VGApart|Add0~13\,
	combout => \VGApart|Add0~14_combout\,
	cout => \VGApart|Add0~15\);

-- Location: FF_X14_Y13_N19
\VGApart|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add0~14_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(7));

-- Location: LCCOMB_X14_Y13_N20
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

-- Location: LCCOMB_X14_Y13_N30
\VGApart|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|h_count~0_combout\ = (!\VGApart|Equal0~2_combout\ & \VGApart|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Equal0~2_combout\,
	datad => \VGApart|Add0~16_combout\,
	combout => \VGApart|h_count~0_combout\);

-- Location: FF_X14_Y13_N31
\VGApart|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|h_count~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(8));

-- Location: LCCOMB_X14_Y13_N22
\VGApart|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add0~18_combout\ = \VGApart|Add0~17\ $ (\VGApart|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGApart|h_count\(9),
	cin => \VGApart|Add0~17\,
	combout => \VGApart|Add0~18_combout\);

-- Location: LCCOMB_X14_Y13_N24
\VGApart|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|h_count~1_combout\ = (!\VGApart|Equal0~2_combout\ & \VGApart|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Equal0~2_combout\,
	datac => \VGApart|Add0~18_combout\,
	combout => \VGApart|h_count~1_combout\);

-- Location: FF_X14_Y13_N25
\VGApart|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|h_count~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|h_count\(9));

-- Location: LCCOMB_X14_Y11_N24
\VGApart|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal0~1_combout\ = (!\VGApart|h_count\(6) & (\VGApart|h_count\(5) & (\VGApart|h_count\(9) & !\VGApart|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(6),
	datab => \VGApart|h_count\(5),
	datac => \VGApart|h_count\(9),
	datad => \VGApart|h_count\(4),
	combout => \VGApart|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y11_N4
\VGApart|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal0~2_combout\ = (\VGApart|Equal0~0_combout\ & (\VGApart|Equal0~1_combout\ & (!\VGApart|h_count\(7) & \VGApart|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal0~0_combout\,
	datab => \VGApart|Equal0~1_combout\,
	datac => \VGApart|h_count\(7),
	datad => \VGApart|h_count\(8),
	combout => \VGApart|Equal0~2_combout\);

-- Location: FF_X16_Y11_N9
\VGApart|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(0));

-- Location: LCCOMB_X16_Y13_N30
\VGApart|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal1~2_combout\ = (\VGApart|v_count\(3) & (\VGApart|v_count\(2) & \VGApart|v_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(3),
	datab => \VGApart|v_count\(2),
	datac => \VGApart|v_count\(0),
	combout => \VGApart|Equal1~2_combout\);

-- Location: LCCOMB_X16_Y11_N18
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

-- Location: LCCOMB_X16_Y11_N20
\VGApart|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~12_combout\ = (\VGApart|v_count\(6) & (\VGApart|Add1~11\ $ (GND))) # (!\VGApart|v_count\(6) & (!\VGApart|Add1~11\ & VCC))
-- \VGApart|Add1~13\ = CARRY((\VGApart|v_count\(6) & !\VGApart|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(6),
	datad => VCC,
	cin => \VGApart|Add1~11\,
	combout => \VGApart|Add1~12_combout\,
	cout => \VGApart|Add1~13\);

-- Location: FF_X16_Y11_N21
\VGApart|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~12_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(6));

-- Location: LCCOMB_X16_Y11_N22
\VGApart|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~14_combout\ = (\VGApart|v_count\(7) & (!\VGApart|Add1~13\)) # (!\VGApart|v_count\(7) & ((\VGApart|Add1~13\) # (GND)))
-- \VGApart|Add1~15\ = CARRY((!\VGApart|Add1~13\) # (!\VGApart|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(7),
	datad => VCC,
	cin => \VGApart|Add1~13\,
	combout => \VGApart|Add1~14_combout\,
	cout => \VGApart|Add1~15\);

-- Location: FF_X16_Y11_N23
\VGApart|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~14_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(7));

-- Location: LCCOMB_X16_Y11_N24
\VGApart|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~16_combout\ = (\VGApart|v_count\(8) & (\VGApart|Add1~15\ $ (GND))) # (!\VGApart|v_count\(8) & (!\VGApart|Add1~15\ & VCC))
-- \VGApart|Add1~17\ = CARRY((\VGApart|v_count\(8) & !\VGApart|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(8),
	datad => VCC,
	cin => \VGApart|Add1~15\,
	combout => \VGApart|Add1~16_combout\,
	cout => \VGApart|Add1~17\);

-- Location: FF_X16_Y11_N25
\VGApart|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~16_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(8));

-- Location: LCCOMB_X16_Y11_N26
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

-- Location: LCCOMB_X16_Y11_N2
\VGApart|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|v_count~3_combout\ = (\VGApart|Add1~18_combout\ & !\VGApart|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add1~18_combout\,
	datad => \VGApart|Equal1~3_combout\,
	combout => \VGApart|v_count~3_combout\);

-- Location: FF_X16_Y11_N3
\VGApart|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|v_count~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(9));

-- Location: LCCOMB_X16_Y11_N10
\VGApart|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~2_combout\ = (\VGApart|v_count\(1) & (!\VGApart|Add1~1\)) # (!\VGApart|v_count\(1) & ((\VGApart|Add1~1\) # (GND)))
-- \VGApart|Add1~3\ = CARRY((!\VGApart|Add1~1\) # (!\VGApart|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(1),
	datad => VCC,
	cin => \VGApart|Add1~1\,
	combout => \VGApart|Add1~2_combout\,
	cout => \VGApart|Add1~3\);

-- Location: LCCOMB_X16_Y11_N28
\VGApart|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|v_count~0_combout\ = (!\VGApart|Equal1~3_combout\ & \VGApart|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal1~3_combout\,
	datad => \VGApart|Add1~2_combout\,
	combout => \VGApart|v_count~0_combout\);

-- Location: FF_X16_Y11_N29
\VGApart|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|v_count~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(1));

-- Location: LCCOMB_X15_Y11_N24
\VGApart|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal1~0_combout\ = (!\VGApart|v_count\(6) & (!\VGApart|v_count\(4) & (!\VGApart|v_count\(1) & !\VGApart|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(6),
	datab => \VGApart|v_count\(4),
	datac => \VGApart|v_count\(1),
	datad => \VGApart|v_count\(7),
	combout => \VGApart|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y11_N0
\VGApart|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal1~1_combout\ = (\VGApart|Equal1~0_combout\ & !\VGApart|v_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Equal1~0_combout\,
	datad => \VGApart|v_count\(8),
	combout => \VGApart|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y11_N6
\VGApart|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal1~3_combout\ = (\VGApart|Equal1~2_combout\ & (\VGApart|v_count\(9) & (\VGApart|Equal1~1_combout\ & !\VGApart|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal1~2_combout\,
	datab => \VGApart|v_count\(9),
	datac => \VGApart|Equal1~1_combout\,
	datad => \VGApart|v_count\(5),
	combout => \VGApart|Equal1~3_combout\);

-- Location: LCCOMB_X16_Y11_N12
\VGApart|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add1~4_combout\ = (\VGApart|v_count\(2) & (\VGApart|Add1~3\ $ (GND))) # (!\VGApart|v_count\(2) & (!\VGApart|Add1~3\ & VCC))
-- \VGApart|Add1~5\ = CARRY((\VGApart|v_count\(2) & !\VGApart|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(2),
	datad => VCC,
	cin => \VGApart|Add1~3\,
	combout => \VGApart|Add1~4_combout\,
	cout => \VGApart|Add1~5\);

-- Location: LCCOMB_X16_Y11_N30
\VGApart|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|v_count~1_combout\ = (!\VGApart|Equal1~3_combout\ & \VGApart|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal1~3_combout\,
	datad => \VGApart|Add1~4_combout\,
	combout => \VGApart|v_count~1_combout\);

-- Location: FF_X16_Y11_N31
\VGApart|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|v_count~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(2));

-- Location: LCCOMB_X16_Y11_N14
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

-- Location: LCCOMB_X16_Y11_N4
\VGApart|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|v_count~2_combout\ = (\VGApart|Add1~6_combout\ & !\VGApart|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add1~6_combout\,
	datad => \VGApart|Equal1~3_combout\,
	combout => \VGApart|v_count~2_combout\);

-- Location: FF_X16_Y11_N5
\VGApart|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|v_count~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(3));

-- Location: LCCOMB_X16_Y11_N16
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

-- Location: FF_X16_Y11_N17
\VGApart|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~8_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(4));

-- Location: FF_X16_Y11_N19
\VGApart|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|Add1~10_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \VGApart|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|v_count\(5));

-- Location: LCCOMB_X15_Y11_N20
\VGApart|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|LessThan5~0_combout\ = (\VGApart|v_count\(5) & (\VGApart|v_count\(7) & (\VGApart|v_count\(6) & \VGApart|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(5),
	datab => \VGApart|v_count\(7),
	datac => \VGApart|v_count\(6),
	datad => \VGApart|v_count\(8),
	combout => \VGApart|LessThan5~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
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

-- Location: LCCOMB_X14_Y11_N6
\VGApart|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~8_combout\ = (!\VGApart|LessThan5~0_combout\ & (!\VGApart|v_count\(9) & ((\VGApart|LessThan10~0_combout\) # (!\VGApart|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|LessThan5~0_combout\,
	datab => \VGApart|v_count\(9),
	datac => \VGApart|h_count\(9),
	datad => \VGApart|LessThan10~0_combout\,
	combout => \VGApart|process_0~8_combout\);

-- Location: FF_X14_Y11_N7
\VGApart|video_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|process_0~8_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|video_on~q\);

-- Location: LCCOMB_X15_Y13_N24
\VGApart|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~6_combout\ = (\VGApart|h_count\(5) & ((\VGApart|h_count\(4)) # (!\VGApart|h_count\(9)))) # (!\VGApart|h_count\(5) & (!\VGApart|h_count\(9) & \VGApart|h_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|h_count\(9),
	datad => \VGApart|h_count\(4),
	combout => \VGApart|process_0~6_combout\);

-- Location: LCCOMB_X17_Y13_N12
\VGApart|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~7_combout\ = (\VGApart|h_count\(9) & ((\VGApart|h_count\(6)) # ((\VGApart|process_0~6_combout\) # (!\VGApart|LessThan10~0_combout\)))) # (!\VGApart|h_count\(9) & (\VGApart|LessThan10~0_combout\ & ((!\VGApart|process_0~6_combout\) # 
-- (!\VGApart|h_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(6),
	datab => \VGApart|h_count\(9),
	datac => \VGApart|LessThan10~0_combout\,
	datad => \VGApart|process_0~6_combout\,
	combout => \VGApart|process_0~7_combout\);

-- Location: LCCOMB_X14_Y11_N12
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

-- Location: FF_X14_Y11_N13
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

-- Location: LCCOMB_X21_Y11_N2
\VGApart|green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~0_combout\ = (\VGApart|video_on~q\ & \VGApart|isColor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|video_on~q\,
	datad => \VGApart|isColor~q\,
	combout => \VGApart|green~0_combout\);

-- Location: LCCOMB_X14_Y11_N14
\VGApart|set_color~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~1_combout\ = (\VGApart|h_count\(6) & (!\VGApart|h_count\(5) & (!\VGApart|h_count\(9) & \VGApart|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(6),
	datab => \VGApart|h_count\(5),
	datac => \VGApart|h_count\(9),
	datad => \VGApart|h_count\(4),
	combout => \VGApart|set_color~1_combout\);

-- Location: LCCOMB_X15_Y13_N26
\VGApart|set_color~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~0_combout\ = (\VGApart|h_count\(3) & (\VGApart|h_count\(0) & (\VGApart|h_count\(1) & \VGApart|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(3),
	datab => \VGApart|h_count\(0),
	datac => \VGApart|h_count\(1),
	datad => \VGApart|h_count\(2),
	combout => \VGApart|set_color~0_combout\);

-- Location: LCCOMB_X14_Y11_N22
\VGApart|set_color~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~2_combout\ = (\VGApart|Equal0~0_combout\ & ((\VGApart|set_color~1_combout\) # ((\VGApart|Equal0~1_combout\ & \VGApart|set_color~0_combout\)))) # (!\VGApart|Equal0~0_combout\ & (\VGApart|Equal0~1_combout\ & 
-- ((\VGApart|set_color~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal0~0_combout\,
	datab => \VGApart|Equal0~1_combout\,
	datac => \VGApart|set_color~1_combout\,
	datad => \VGApart|set_color~0_combout\,
	combout => \VGApart|set_color~2_combout\);

-- Location: IOIBUF_X32_Y0_N1
\GPIO1D4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D4,
	o => \GPIO1D4~input_o\);

-- Location: LCCOMB_X1_Y3_N20
\CAP11|DEPHASE|Qt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|DEPHASE|Qt~0_combout\ = !\CAP11|DEPHASE|Qt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|DEPHASE|Qt~q\,
	combout => \CAP11|DEPHASE|Qt~0_combout\);

-- Location: IOIBUF_X1_Y0_N1
\GPIO1D30~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D30,
	o => \GPIO1D30~input_o\);

-- Location: FF_X1_Y3_N21
\CAP11|DEPHASE|Qt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO1D4~input_o\,
	d => \CAP11|DEPHASE|Qt~0_combout\,
	clrn => \GPIO1D30~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|DEPHASE|Qt~q\);

-- Location: LCCOMB_X1_Y3_N28
\CAP11|DEPHASE|Qd[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|DEPHASE|Qd[0]~feeder_combout\ = \CAP11|DEPHASE|Qt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAP11|DEPHASE|Qt~q\,
	combout => \CAP11|DEPHASE|Qd[0]~feeder_combout\);

-- Location: FF_X1_Y3_N29
\CAP11|DEPHASE|Qd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO1D4~input_o\,
	d => \CAP11|DEPHASE|Qd[0]~feeder_combout\,
	clrn => \GPIO1D30~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|DEPHASE|Qd\(0));

-- Location: LCCOMB_X1_Y3_N18
\CAP11|DEPHASE|Qd[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|DEPHASE|Qd[1]~feeder_combout\ = \CAP11|DEPHASE|Qd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CAP11|DEPHASE|Qd\(0),
	combout => \CAP11|DEPHASE|Qd[1]~feeder_combout\);

-- Location: FF_X1_Y3_N19
\CAP11|DEPHASE|Qd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO1D4~input_o\,
	d => \CAP11|DEPHASE|Qd[1]~feeder_combout\,
	clrn => \GPIO1D30~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|DEPHASE|Qd\(1));

-- Location: LCCOMB_X1_Y3_N26
\CAP11|CAPclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|CAPclk~0_combout\ = !\CAP11|CAPclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|CAPclk~q\,
	combout => \CAP11|CAPclk~0_combout\);

-- Location: FF_X1_Y3_N7
\CAP11|CAPclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|DEPHASE|Qd\(1),
	asdata => \CAP11|CAPclk~0_combout\,
	clrn => \GPIO1D30~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|CAPclk~q\);

-- Location: CLKCTRL_G4
\CAP11|CAPclk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAP11|CAPclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAP11|CAPclk~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y17_N0
\CAP11|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~0_combout\ = \CAP11|v_count\(0) $ (VCC)
-- \CAP11|Add1~1\ = CARRY(\CAP11|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(0),
	datad => VCC,
	combout => \CAP11|Add1~0_combout\,
	cout => \CAP11|Add1~1\);

-- Location: LCCOMB_X8_Y22_N28
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\SW[2]~input_o\) # (!\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \comb~0_combout\);

-- Location: CLKCTRL_G13
\comb~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~0clkctrl_outclk\);

-- Location: LCCOMB_X16_Y17_N12
\CAP11|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~0_combout\ = \CAP11|h_count\(0) $ (VCC)
-- \CAP11|Add0~1\ = CARRY(\CAP11|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|h_count\(0),
	datad => VCC,
	combout => \CAP11|Add0~0_combout\,
	cout => \CAP11|Add0~1\);

-- Location: FF_X16_Y17_N13
\CAP11|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add0~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(0));

-- Location: LCCOMB_X16_Y17_N14
\CAP11|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~2_combout\ = (\CAP11|h_count\(1) & (!\CAP11|Add0~1\)) # (!\CAP11|h_count\(1) & ((\CAP11|Add0~1\) # (GND)))
-- \CAP11|Add0~3\ = CARRY((!\CAP11|Add0~1\) # (!\CAP11|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(1),
	datad => VCC,
	cin => \CAP11|Add0~1\,
	combout => \CAP11|Add0~2_combout\,
	cout => \CAP11|Add0~3\);

-- Location: FF_X16_Y17_N15
\CAP11|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add0~2_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(1));

-- Location: LCCOMB_X16_Y17_N16
\CAP11|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~4_combout\ = (\CAP11|h_count\(2) & (\CAP11|Add0~3\ $ (GND))) # (!\CAP11|h_count\(2) & (!\CAP11|Add0~3\ & VCC))
-- \CAP11|Add0~5\ = CARRY((\CAP11|h_count\(2) & !\CAP11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(2),
	datad => VCC,
	cin => \CAP11|Add0~3\,
	combout => \CAP11|Add0~4_combout\,
	cout => \CAP11|Add0~5\);

-- Location: FF_X16_Y17_N17
\CAP11|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add0~4_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(2));

-- Location: LCCOMB_X16_Y17_N18
\CAP11|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~6_combout\ = (\CAP11|h_count\(3) & (!\CAP11|Add0~5\)) # (!\CAP11|h_count\(3) & ((\CAP11|Add0~5\) # (GND)))
-- \CAP11|Add0~7\ = CARRY((!\CAP11|Add0~5\) # (!\CAP11|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(3),
	datad => VCC,
	cin => \CAP11|Add0~5\,
	combout => \CAP11|Add0~6_combout\,
	cout => \CAP11|Add0~7\);

-- Location: FF_X16_Y17_N19
\CAP11|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add0~6_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(3));

-- Location: LCCOMB_X16_Y17_N20
\CAP11|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~8_combout\ = (\CAP11|h_count\(4) & (\CAP11|Add0~7\ $ (GND))) # (!\CAP11|h_count\(4) & (!\CAP11|Add0~7\ & VCC))
-- \CAP11|Add0~9\ = CARRY((\CAP11|h_count\(4) & !\CAP11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(4),
	datad => VCC,
	cin => \CAP11|Add0~7\,
	combout => \CAP11|Add0~8_combout\,
	cout => \CAP11|Add0~9\);

-- Location: FF_X16_Y17_N21
\CAP11|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add0~8_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(4));

-- Location: LCCOMB_X16_Y17_N22
\CAP11|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~10_combout\ = (\CAP11|h_count\(5) & (!\CAP11|Add0~9\)) # (!\CAP11|h_count\(5) & ((\CAP11|Add0~9\) # (GND)))
-- \CAP11|Add0~11\ = CARRY((!\CAP11|Add0~9\) # (!\CAP11|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|h_count\(5),
	datad => VCC,
	cin => \CAP11|Add0~9\,
	combout => \CAP11|Add0~10_combout\,
	cout => \CAP11|Add0~11\);

-- Location: FF_X16_Y17_N23
\CAP11|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add0~10_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(5));

-- Location: LCCOMB_X16_Y17_N24
\CAP11|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~12_combout\ = (\CAP11|h_count\(6) & (\CAP11|Add0~11\ $ (GND))) # (!\CAP11|h_count\(6) & (!\CAP11|Add0~11\ & VCC))
-- \CAP11|Add0~13\ = CARRY((\CAP11|h_count\(6) & !\CAP11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(6),
	datad => VCC,
	cin => \CAP11|Add0~11\,
	combout => \CAP11|Add0~12_combout\,
	cout => \CAP11|Add0~13\);

-- Location: LCCOMB_X15_Y17_N28
\CAP11|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|h_count~1_combout\ = (\CAP11|Add0~12_combout\ & !\CAP11|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|Add0~12_combout\,
	datad => \CAP11|Equal0~4_combout\,
	combout => \CAP11|h_count~1_combout\);

-- Location: FF_X16_Y17_N1
\CAP11|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	asdata => \CAP11|h_count~1_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(6));

-- Location: LCCOMB_X16_Y17_N26
\CAP11|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~14_combout\ = (\CAP11|h_count\(7) & (!\CAP11|Add0~13\)) # (!\CAP11|h_count\(7) & ((\CAP11|Add0~13\) # (GND)))
-- \CAP11|Add0~15\ = CARRY((!\CAP11|Add0~13\) # (!\CAP11|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(7),
	datad => VCC,
	cin => \CAP11|Add0~13\,
	combout => \CAP11|Add0~14_combout\,
	cout => \CAP11|Add0~15\);

-- Location: FF_X16_Y17_N27
\CAP11|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add0~14_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(7));

-- Location: LCCOMB_X16_Y17_N28
\CAP11|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~16_combout\ = (\CAP11|h_count\(8) & (\CAP11|Add0~15\ $ (GND))) # (!\CAP11|h_count\(8) & (!\CAP11|Add0~15\ & VCC))
-- \CAP11|Add0~17\ = CARRY((\CAP11|h_count\(8) & !\CAP11|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|h_count\(8),
	datad => VCC,
	cin => \CAP11|Add0~15\,
	combout => \CAP11|Add0~16_combout\,
	cout => \CAP11|Add0~17\);

-- Location: LCCOMB_X16_Y17_N10
\CAP11|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|h_count~0_combout\ = (\CAP11|Add0~16_combout\ & !\CAP11|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|Add0~16_combout\,
	datad => \CAP11|Equal0~4_combout\,
	combout => \CAP11|h_count~0_combout\);

-- Location: FF_X16_Y17_N11
\CAP11|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|h_count~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(8));

-- Location: LCCOMB_X16_Y17_N30
\CAP11|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add0~18_combout\ = \CAP11|h_count\(9) $ (\CAP11|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(9),
	cin => \CAP11|Add0~17\,
	combout => \CAP11|Add0~18_combout\);

-- Location: FF_X16_Y17_N31
\CAP11|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add0~18_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|h_count\(9));

-- Location: LCCOMB_X15_Y17_N18
\CAP11|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal0~3_combout\ = (!\CAP11|h_count\(9) & !\CAP11|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|h_count\(9),
	datad => \CAP11|h_count\(7),
	combout => \CAP11|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y17_N2
\CAP11|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal0~0_combout\ = (\CAP11|h_count\(5) & (\CAP11|h_count\(3) & (\CAP11|h_count\(4) & \CAP11|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(5),
	datab => \CAP11|h_count\(3),
	datac => \CAP11|h_count\(4),
	datad => \CAP11|h_count\(2),
	combout => \CAP11|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y17_N18
\CAP11|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal0~2_combout\ = (\CAP11|h_count\(0) & (\CAP11|h_count\(1) & \CAP11|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(0),
	datac => \CAP11|h_count\(1),
	datad => \CAP11|Equal0~0_combout\,
	combout => \CAP11|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y17_N12
\CAP11|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal0~4_combout\ = (\CAP11|Equal0~3_combout\ & (\CAP11|h_count\(8) & (!\CAP11|h_count\(6) & \CAP11|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|Equal0~3_combout\,
	datab => \CAP11|h_count\(8),
	datac => \CAP11|h_count\(6),
	datad => \CAP11|Equal0~2_combout\,
	combout => \CAP11|Equal0~4_combout\);

-- Location: FF_X12_Y17_N1
\CAP11|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add1~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(0));

-- Location: LCCOMB_X2_Y3_N10
\CAP11|enawRAMclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|enawRAMclk~0_combout\ = (\SW[2]~input_o\ & (((\CAP11|enawRAMclk~q\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((!\CAP11|v_count\(0)))) # (!\SW[3]~input_o\ & (\CAP11|enawRAMclk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \CAP11|enawRAMclk~q\,
	datad => \CAP11|v_count\(0),
	combout => \CAP11|enawRAMclk~0_combout\);

-- Location: FF_X2_Y3_N11
\CAP11|enawRAMclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~q\,
	d => \CAP11|enawRAMclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|enawRAMclk~q\);

-- Location: LCCOMB_X1_Y3_N10
\CAP11|outCLK\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|outCLK~combout\ = LCELL((\CAP11|enawRAMclk~q\ & \CAP11|CAPclk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|enawRAMclk~q\,
	datad => \CAP11|CAPclk~q\,
	combout => \CAP11|outCLK~combout\);

-- Location: CLKCTRL_G1
\CAP11|outCLK~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAP11|outCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAP11|outCLK~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y17_N28
\cID|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|LessThan3~0_combout\ = (!\CAP11|h_count\(7) & !\CAP11|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(7),
	datad => \CAP11|h_count\(6),
	combout => \cID|LessThan3~0_combout\);

-- Location: LCCOMB_X17_Y17_N26
\CAP11|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal0~1_combout\ = (\CAP11|h_count\(1) & \CAP11|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(1),
	datad => \CAP11|h_count\(0),
	combout => \CAP11|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y17_N0
\cID|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|LessThan3~1_combout\ = ((\cID|LessThan3~0_combout\ & ((!\CAP11|Equal0~0_combout\) # (!\CAP11|Equal0~1_combout\)))) # (!\CAP11|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(8),
	datab => \cID|LessThan3~0_combout\,
	datac => \CAP11|Equal0~1_combout\,
	datad => \CAP11|Equal0~0_combout\,
	combout => \cID|LessThan3~1_combout\);

-- Location: LCCOMB_X19_Y17_N28
\cID|firstWhite~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite~0_combout\ = (\CAP11|h_count\(8) & (!\CAP11|h_count\(9) & \cID|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(8),
	datab => \CAP11|h_count\(9),
	datad => \cID|LessThan3~1_combout\,
	combout => \cID|firstWhite~0_combout\);

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

-- Location: LCCOMB_X16_Y17_N4
\CAP11|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|LessThan0~0_combout\ = (\CAP11|h_count\(3) & ((\CAP11|h_count\(0)) # ((\CAP11|h_count\(1)) # (\CAP11|h_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(0),
	datab => \CAP11|h_count\(3),
	datac => \CAP11|h_count\(1),
	datad => \CAP11|h_count\(2),
	combout => \CAP11|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y17_N6
\CAP11|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|process_0~0_combout\ = (!\CAP11|h_count\(8) & (!\CAP11|h_count\(6) & ((!\CAP11|h_count\(4)) # (!\CAP11|h_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(8),
	datab => \CAP11|h_count\(6),
	datac => \CAP11|h_count\(5),
	datad => \CAP11|h_count\(4),
	combout => \CAP11|process_0~0_combout\);

-- Location: LCCOMB_X15_Y17_N24
\cID|firstWhite[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~6_combout\ = (\CAP11|process_0~0_combout\ & (\CAP11|Equal0~3_combout\ & ((!\CAP11|h_count\(5)) # (!\CAP11|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|LessThan0~0_combout\,
	datab => \CAP11|h_count\(5),
	datac => \CAP11|process_0~0_combout\,
	datad => \CAP11|Equal0~3_combout\,
	combout => \cID|firstWhite[6]~6_combout\);

-- Location: LCCOMB_X17_Y17_N24
\cID|firstWhite[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~9_combout\ = (!\CAP11|h_count\(9) & (\cID|LessThan3~0_combout\ & ((!\CAP11|Equal0~1_combout\) # (!\CAP11|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|Equal0~0_combout\,
	datab => \CAP11|h_count\(9),
	datac => \CAP11|Equal0~1_combout\,
	datad => \cID|LessThan3~0_combout\,
	combout => \cID|firstWhite[6]~9_combout\);

-- Location: LCCOMB_X1_Y14_N16
\CAP11|dPCLK\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|dPCLK~combout\ = LCELL((\GPIO1D30~input_o\ & !\GPIO1D4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPIO1D30~input_o\,
	datad => \GPIO1D4~input_o\,
	combout => \CAP11|dPCLK~combout\);

-- Location: CLKCTRL_G2
\CAP11|dPCLK~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CAP11|dPCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CAP11|dPCLK~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y17_N30
\CAP11|takeTurn~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|takeTurn~0_combout\ = !\CAP11|takeTurn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|takeTurn~q\,
	combout => \CAP11|takeTurn~0_combout\);

-- Location: FF_X15_Y17_N31
\CAP11|takeTurn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAP11|takeTurn~0_combout\,
	clrn => \GPIO1D30~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|takeTurn~q\);

-- Location: IOIBUF_X9_Y0_N8
\GPIO1D28~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D28,
	o => \GPIO1D28~input_o\);

-- Location: LCCOMB_X15_Y17_N22
\CAP11|QinReg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|QinReg[6]~feeder_combout\ = \GPIO1D28~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO1D28~input_o\,
	combout => \CAP11|QinReg[6]~feeder_combout\);

-- Location: FF_X15_Y17_N23
\CAP11|QinReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAP11|QinReg[6]~feeder_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|QinReg\(6));

-- Location: LCCOMB_X15_Y17_N20
\CAP11|B[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|B[2]~2_combout\ = (!\CAP11|takeTurn~q\ & \CAP11|QinReg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|takeTurn~q\,
	datad => \CAP11|QinReg\(6),
	combout => \CAP11|B[2]~2_combout\);

-- Location: FF_X15_Y17_N21
\CAP11|QaddReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|dPCLK~clkctrl_outclk\,
	d => \CAP11|B[2]~2_combout\,
	clrn => \GPIO1D30~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|QaddReg\(2));

-- Location: LCCOMB_X20_Y17_N0
\cID|whiteCount[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[0]~13_combout\ = \cID|whiteCount\(0) $ (VCC)
-- \cID|whiteCount[0]~14\ = CARRY(\cID|whiteCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cID|whiteCount\(0),
	datad => VCC,
	combout => \cID|whiteCount[0]~13_combout\,
	cout => \cID|whiteCount[0]~14\);

-- Location: LCCOMB_X17_Y17_N8
\cID|LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|LessThan3~2_combout\ = (!\CAP11|h_count\(9) & (((\cID|LessThan3~0_combout\ & !\CAP11|Equal0~2_combout\)) # (!\CAP11|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(8),
	datab => \cID|LessThan3~0_combout\,
	datac => \CAP11|h_count\(9),
	datad => \CAP11|Equal0~2_combout\,
	combout => \cID|LessThan3~2_combout\);

-- Location: IOIBUF_X35_Y0_N1
\GPIO1D8~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D8,
	o => \GPIO1D8~input_o\);

-- Location: FF_X15_Y17_N29
\CAP11|QinReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1D8~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|QinReg\(5));

-- Location: LCCOMB_X15_Y17_N10
\CAP11|B[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|B[1]~1_combout\ = (!\CAP11|takeTurn~q\ & \CAP11|QinReg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|takeTurn~q\,
	datad => \CAP11|QinReg\(5),
	combout => \CAP11|B[1]~1_combout\);

-- Location: FF_X15_Y17_N11
\CAP11|QaddReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|dPCLK~clkctrl_outclk\,
	d => \CAP11|B[1]~1_combout\,
	clrn => \GPIO1D30~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|QaddReg\(1));

-- Location: IOIBUF_X28_Y0_N8
\GPIO1D6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D6,
	o => \GPIO1D6~input_o\);

-- Location: LCCOMB_X15_Y17_N8
\CAP11|QinReg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|QinReg[7]~feeder_combout\ = \GPIO1D6~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO1D6~input_o\,
	combout => \CAP11|QinReg[7]~feeder_combout\);

-- Location: FF_X15_Y17_N9
\CAP11|QinReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_dPCLK~clkctrl_outclk\,
	d => \CAP11|QinReg[7]~feeder_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|QinReg\(7));

-- Location: LCCOMB_X15_Y17_N6
\CAP11|B[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|B[3]~3_combout\ = (!\CAP11|takeTurn~q\ & \CAP11|QinReg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|takeTurn~q\,
	datad => \CAP11|QinReg\(7),
	combout => \CAP11|B[3]~3_combout\);

-- Location: FF_X15_Y17_N7
\CAP11|QaddReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|dPCLK~clkctrl_outclk\,
	d => \CAP11|B[3]~3_combout\,
	clrn => \GPIO1D30~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|QaddReg\(3));

-- Location: LCCOMB_X15_Y17_N14
\cID|whiteCount[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[4]~11_combout\ = (\CAP11|QaddReg\(1) & (\CAP11|QaddReg\(2) & \CAP11|QaddReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|QaddReg\(1),
	datab => \CAP11|QaddReg\(2),
	datad => \CAP11|QaddReg\(3),
	combout => \cID|whiteCount[4]~11_combout\);

-- Location: LCCOMB_X16_Y17_N8
\CAP11|RAM_adr[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|RAM_adr[15]~1_combout\ = (\CAP11|h_count\(5) & (((\CAP11|LessThan0~0_combout\) # (!\CAP11|process_0~0_combout\)))) # (!\CAP11|h_count\(5) & (\CAP11|h_count\(4) & (\CAP11|LessThan0~0_combout\ & !\CAP11|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(4),
	datab => \CAP11|h_count\(5),
	datac => \CAP11|LessThan0~0_combout\,
	datad => \CAP11|process_0~0_combout\,
	combout => \CAP11|RAM_adr[15]~1_combout\);

-- Location: LCCOMB_X15_Y17_N0
\CAP11|RAM_adr[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|RAM_adr[15]~2_combout\ = (\CAP11|h_count\(7) & (((\CAP11|h_count\(8))))) # (!\CAP11|h_count\(7) & ((\CAP11|process_0~0_combout\) # ((\CAP11|h_count\(6) & \CAP11|h_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(7),
	datab => \CAP11|h_count\(6),
	datac => \CAP11|h_count\(8),
	datad => \CAP11|process_0~0_combout\,
	combout => \CAP11|RAM_adr[15]~2_combout\);

-- Location: LCCOMB_X15_Y17_N2
\CAP11|RAM_adr[15]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|RAM_adr[15]~3_combout\ = (!\CAP11|h_count\(9) & ((\CAP11|RAM_adr[15]~1_combout\ & (!\CAP11|h_count\(8))) # (!\CAP11|RAM_adr[15]~1_combout\ & ((!\CAP11|RAM_adr[15]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(9),
	datab => \CAP11|h_count\(8),
	datac => \CAP11|RAM_adr[15]~1_combout\,
	datad => \CAP11|RAM_adr[15]~2_combout\,
	combout => \CAP11|RAM_adr[15]~3_combout\);

-- Location: LCCOMB_X20_Y17_N28
\cID|whiteCount[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[4]~12_combout\ = ((\CAP11|h_count\(9)) # ((\cID|whiteCount[4]~11_combout\ & \CAP11|RAM_adr[15]~3_combout\))) # (!\cID|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount[4]~11_combout\,
	datab => \cID|LessThan3~1_combout\,
	datac => \CAP11|RAM_adr[15]~3_combout\,
	datad => \CAP11|h_count\(9),
	combout => \cID|whiteCount[4]~12_combout\);

-- Location: FF_X20_Y17_N1
\cID|whiteCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|whiteCount[0]~13_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|whiteCount\(0));

-- Location: LCCOMB_X20_Y17_N2
\cID|whiteCount[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[1]~15_combout\ = (\cID|whiteCount\(1) & (!\cID|whiteCount[0]~14\)) # (!\cID|whiteCount\(1) & ((\cID|whiteCount[0]~14\) # (GND)))
-- \cID|whiteCount[1]~16\ = CARRY((!\cID|whiteCount[0]~14\) # (!\cID|whiteCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cID|whiteCount\(1),
	datad => VCC,
	cin => \cID|whiteCount[0]~14\,
	combout => \cID|whiteCount[1]~15_combout\,
	cout => \cID|whiteCount[1]~16\);

-- Location: FF_X20_Y17_N3
\cID|whiteCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|whiteCount[1]~15_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|whiteCount\(1));

-- Location: LCCOMB_X20_Y17_N4
\cID|whiteCount[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[2]~17_combout\ = (\cID|whiteCount\(2) & (\cID|whiteCount[1]~16\ $ (GND))) # (!\cID|whiteCount\(2) & (!\cID|whiteCount[1]~16\ & VCC))
-- \cID|whiteCount[2]~18\ = CARRY((\cID|whiteCount\(2) & !\cID|whiteCount[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cID|whiteCount\(2),
	datad => VCC,
	cin => \cID|whiteCount[1]~16\,
	combout => \cID|whiteCount[2]~17_combout\,
	cout => \cID|whiteCount[2]~18\);

-- Location: FF_X20_Y17_N5
\cID|whiteCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|whiteCount[2]~17_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|whiteCount\(2));

-- Location: LCCOMB_X20_Y17_N6
\cID|whiteCount[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[3]~19_combout\ = (\cID|whiteCount\(3) & (!\cID|whiteCount[2]~18\)) # (!\cID|whiteCount\(3) & ((\cID|whiteCount[2]~18\) # (GND)))
-- \cID|whiteCount[3]~20\ = CARRY((!\cID|whiteCount[2]~18\) # (!\cID|whiteCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(3),
	datad => VCC,
	cin => \cID|whiteCount[2]~18\,
	combout => \cID|whiteCount[3]~19_combout\,
	cout => \cID|whiteCount[3]~20\);

-- Location: FF_X20_Y17_N7
\cID|whiteCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|whiteCount[3]~19_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|whiteCount\(3));

-- Location: LCCOMB_X20_Y17_N8
\cID|whiteCount[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[4]~21_combout\ = (\cID|whiteCount\(4) & (\cID|whiteCount[3]~20\ $ (GND))) # (!\cID|whiteCount\(4) & (!\cID|whiteCount[3]~20\ & VCC))
-- \cID|whiteCount[4]~22\ = CARRY((\cID|whiteCount\(4) & !\cID|whiteCount[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cID|whiteCount\(4),
	datad => VCC,
	cin => \cID|whiteCount[3]~20\,
	combout => \cID|whiteCount[4]~21_combout\,
	cout => \cID|whiteCount[4]~22\);

-- Location: FF_X20_Y17_N9
\cID|whiteCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|whiteCount[4]~21_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|whiteCount\(4));

-- Location: LCCOMB_X20_Y17_N10
\cID|whiteCount[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[5]~23_combout\ = (\cID|whiteCount\(5) & (!\cID|whiteCount[4]~22\)) # (!\cID|whiteCount\(5) & ((\cID|whiteCount[4]~22\) # (GND)))
-- \cID|whiteCount[5]~24\ = CARRY((!\cID|whiteCount[4]~22\) # (!\cID|whiteCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(5),
	datad => VCC,
	cin => \cID|whiteCount[4]~22\,
	combout => \cID|whiteCount[5]~23_combout\,
	cout => \cID|whiteCount[5]~24\);

-- Location: FF_X20_Y17_N11
\cID|whiteCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|whiteCount[5]~23_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|whiteCount\(5));

-- Location: LCCOMB_X20_Y17_N12
\cID|whiteCount[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[6]~25_combout\ = (\cID|whiteCount\(6) & (\cID|whiteCount[5]~24\ $ (GND))) # (!\cID|whiteCount\(6) & (!\cID|whiteCount[5]~24\ & VCC))
-- \cID|whiteCount[6]~26\ = CARRY((\cID|whiteCount\(6) & !\cID|whiteCount[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(6),
	datad => VCC,
	cin => \cID|whiteCount[5]~24\,
	combout => \cID|whiteCount[6]~25_combout\,
	cout => \cID|whiteCount[6]~26\);

-- Location: FF_X20_Y17_N13
\cID|whiteCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|whiteCount[6]~25_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|whiteCount\(6));

-- Location: LCCOMB_X20_Y17_N14
\cID|whiteCount[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[7]~27_combout\ = (\cID|whiteCount\(7) & (!\cID|whiteCount[6]~26\)) # (!\cID|whiteCount\(7) & ((\cID|whiteCount[6]~26\) # (GND)))
-- \cID|whiteCount[7]~28\ = CARRY((!\cID|whiteCount[6]~26\) # (!\cID|whiteCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cID|whiteCount\(7),
	datad => VCC,
	cin => \cID|whiteCount[6]~26\,
	combout => \cID|whiteCount[7]~27_combout\,
	cout => \cID|whiteCount[7]~28\);

-- Location: FF_X20_Y17_N15
\cID|whiteCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|whiteCount[7]~27_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|whiteCount\(7));

-- Location: LCCOMB_X20_Y17_N16
\cID|whiteCount[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[8]~29_combout\ = \cID|whiteCount[7]~28\ $ (!\cID|whiteCount\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cID|whiteCount\(8),
	cin => \cID|whiteCount[7]~28\,
	combout => \cID|whiteCount[8]~29_combout\);

-- Location: FF_X20_Y17_N17
\cID|whiteCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|whiteCount[8]~29_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|whiteCount\(8));

-- Location: LCCOMB_X20_Y17_N20
\cID|firstWhite[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~2_combout\ = (\cID|whiteCount\(5)) # ((\cID|whiteCount\(4)) # ((\cID|whiteCount\(2)) # (\cID|whiteCount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(5),
	datab => \cID|whiteCount\(4),
	datac => \cID|whiteCount\(2),
	datad => \cID|whiteCount\(8),
	combout => \cID|firstWhite[6]~2_combout\);

-- Location: LCCOMB_X20_Y17_N26
\cID|firstWhite[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~1_combout\ = (\cID|whiteCount\(6)) # ((\cID|whiteCount\(1)) # ((\cID|whiteCount\(7)) # (\cID|whiteCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(6),
	datab => \cID|whiteCount\(1),
	datac => \cID|whiteCount\(7),
	datad => \cID|whiteCount\(3),
	combout => \cID|firstWhite[6]~1_combout\);

-- Location: LCCOMB_X20_Y17_N30
\cID|firstWhite[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~3_combout\ = (\cID|firstWhite[6]~2_combout\) # ((\cID|firstWhite[6]~1_combout\) # (!\cID|whiteCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cID|firstWhite[6]~2_combout\,
	datac => \cID|firstWhite[6]~1_combout\,
	datad => \cID|whiteCount\(0),
	combout => \cID|firstWhite[6]~3_combout\);

-- Location: LCCOMB_X17_Y17_N2
\cID|firstWhite[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~4_combout\ = ((\cID|firstWhite[6]~3_combout\) # ((!\CAP11|QaddReg\(3)) # (!\CAP11|QaddReg\(1)))) # (!\CAP11|QaddReg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|QaddReg\(2),
	datab => \cID|firstWhite[6]~3_combout\,
	datac => \CAP11|QaddReg\(1),
	datad => \CAP11|QaddReg\(3),
	combout => \cID|firstWhite[6]~4_combout\);

-- Location: LCCOMB_X17_Y17_N4
\cID|firstWhite[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~5_combout\ = (!\CAP11|h_count\(8) & (!\CAP11|h_count\(9) & \cID|firstWhite[6]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(8),
	datac => \CAP11|h_count\(9),
	datad => \cID|firstWhite[6]~4_combout\,
	combout => \cID|firstWhite[6]~5_combout\);

-- Location: LCCOMB_X16_Y17_N0
\cID|firstWhite[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~7_combout\ = (\CAP11|h_count\(5)) # ((\CAP11|h_count\(4) & \CAP11|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(4),
	datab => \CAP11|h_count\(5),
	datad => \CAP11|LessThan0~0_combout\,
	combout => \cID|firstWhite[6]~7_combout\);

-- Location: LCCOMB_X17_Y17_N10
\cID|firstWhite[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~8_combout\ = (\cID|firstWhite[6]~4_combout\) # ((\CAP11|h_count\(8) & ((\CAP11|h_count\(6)) # (\cID|firstWhite[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(6),
	datab => \CAP11|h_count\(8),
	datac => \cID|firstWhite[6]~7_combout\,
	datad => \cID|firstWhite[6]~4_combout\,
	combout => \cID|firstWhite[6]~8_combout\);

-- Location: LCCOMB_X17_Y17_N6
\cID|firstWhite[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite[6]~10_combout\ = (!\cID|firstWhite[6]~6_combout\ & (!\cID|firstWhite[6]~5_combout\ & ((!\cID|firstWhite[6]~8_combout\) # (!\cID|firstWhite[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstWhite[6]~6_combout\,
	datab => \cID|firstWhite[6]~9_combout\,
	datac => \cID|firstWhite[6]~5_combout\,
	datad => \cID|firstWhite[6]~8_combout\,
	combout => \cID|firstWhite[6]~10_combout\);

-- Location: FF_X17_Y17_N27
\cID|firstWhite[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|firstWhite~0_combout\,
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|firstWhite[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstWhite\(8));

-- Location: LCCOMB_X17_Y17_N12
\cID|firstWhite~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite~11_combout\ = (!\CAP11|h_count\(9) & (\CAP11|h_count\(7) & \cID|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|h_count\(9),
	datac => \CAP11|h_count\(7),
	datad => \cID|LessThan3~1_combout\,
	combout => \cID|firstWhite~11_combout\);

-- Location: FF_X17_Y17_N13
\cID|firstWhite[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstWhite~11_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstWhite[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstWhite\(7));

-- Location: LCCOMB_X17_Y17_N22
\cID|firstWhite~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite~12_combout\ = (\CAP11|h_count\(6) & (!\CAP11|h_count\(9) & \cID|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(6),
	datac => \CAP11|h_count\(9),
	datad => \cID|LessThan3~1_combout\,
	combout => \cID|firstWhite~12_combout\);

-- Location: FF_X17_Y17_N23
\cID|firstWhite[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstWhite~12_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstWhite[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstWhite\(6));

-- Location: LCCOMB_X19_Y17_N2
\cID|firstWhite~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite~13_combout\ = (!\CAP11|h_count\(9) & (\CAP11|h_count\(5) & \cID|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|h_count\(9),
	datac => \CAP11|h_count\(5),
	datad => \cID|LessThan3~1_combout\,
	combout => \cID|firstWhite~13_combout\);

-- Location: FF_X17_Y17_N29
\cID|firstWhite[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|firstWhite~13_combout\,
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|firstWhite[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstWhite\(5));

-- Location: LCCOMB_X19_Y17_N0
\cID|firstWhite~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite~14_combout\ = (\cID|LessThan3~1_combout\ & (!\CAP11|h_count\(9) & \CAP11|h_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \CAP11|h_count\(9),
	datad => \CAP11|h_count\(4),
	combout => \cID|firstWhite~14_combout\);

-- Location: FF_X19_Y17_N1
\cID|firstWhite[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstWhite~14_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstWhite[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstWhite\(4));

-- Location: LCCOMB_X17_Y17_N16
\cID|firstWhite~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite~15_combout\ = (!\CAP11|h_count\(9) & (\CAP11|h_count\(3) & \cID|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(9),
	datac => \CAP11|h_count\(3),
	datad => \cID|LessThan3~1_combout\,
	combout => \cID|firstWhite~15_combout\);

-- Location: FF_X17_Y17_N17
\cID|firstWhite[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstWhite~15_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstWhite[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstWhite\(3));

-- Location: LCCOMB_X17_Y17_N14
\cID|firstWhite~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite~16_combout\ = (!\CAP11|h_count\(9) & (\CAP11|h_count\(2) & \cID|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|h_count\(9),
	datac => \CAP11|h_count\(2),
	datad => \cID|LessThan3~1_combout\,
	combout => \cID|firstWhite~16_combout\);

-- Location: FF_X17_Y17_N15
\cID|firstWhite[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstWhite~16_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstWhite[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstWhite\(2));

-- Location: LCCOMB_X17_Y17_N20
\cID|firstWhite~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite~17_combout\ = (\CAP11|h_count\(1) & (!\CAP11|h_count\(9) & \cID|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(1),
	datab => \CAP11|h_count\(9),
	datad => \cID|LessThan3~1_combout\,
	combout => \cID|firstWhite~17_combout\);

-- Location: FF_X17_Y17_N21
\cID|firstWhite[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstWhite~17_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstWhite[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstWhite\(1));

-- Location: LCCOMB_X17_Y17_N30
\cID|firstWhite~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstWhite~18_combout\ = (\CAP11|h_count\(0) & (!\CAP11|h_count\(9) & \cID|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(0),
	datab => \CAP11|h_count\(9),
	datad => \cID|LessThan3~1_combout\,
	combout => \cID|firstWhite~18_combout\);

-- Location: FF_X17_Y17_N31
\cID|firstWhite[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstWhite~18_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstWhite[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstWhite\(0));

-- Location: LCCOMB_X21_Y17_N6
\cID|lastWhite[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[0]~10_combout\ = (\cID|whiteCount\(0) & (\cID|firstWhite\(0) $ (VCC))) # (!\cID|whiteCount\(0) & (\cID|firstWhite\(0) & VCC))
-- \cID|lastWhite[0]~11\ = CARRY((\cID|whiteCount\(0) & \cID|firstWhite\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(0),
	datab => \cID|firstWhite\(0),
	datad => VCC,
	combout => \cID|lastWhite[0]~10_combout\,
	cout => \cID|lastWhite[0]~11\);

-- Location: LCCOMB_X21_Y17_N8
\cID|lastWhite[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[1]~12_combout\ = (\cID|firstWhite\(1) & ((\cID|whiteCount\(1) & (\cID|lastWhite[0]~11\ & VCC)) # (!\cID|whiteCount\(1) & (!\cID|lastWhite[0]~11\)))) # (!\cID|firstWhite\(1) & ((\cID|whiteCount\(1) & (!\cID|lastWhite[0]~11\)) # 
-- (!\cID|whiteCount\(1) & ((\cID|lastWhite[0]~11\) # (GND)))))
-- \cID|lastWhite[1]~13\ = CARRY((\cID|firstWhite\(1) & (!\cID|whiteCount\(1) & !\cID|lastWhite[0]~11\)) # (!\cID|firstWhite\(1) & ((!\cID|lastWhite[0]~11\) # (!\cID|whiteCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstWhite\(1),
	datab => \cID|whiteCount\(1),
	datad => VCC,
	cin => \cID|lastWhite[0]~11\,
	combout => \cID|lastWhite[1]~12_combout\,
	cout => \cID|lastWhite[1]~13\);

-- Location: LCCOMB_X21_Y17_N10
\cID|lastWhite[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[2]~14_combout\ = ((\cID|firstWhite\(2) $ (\cID|whiteCount\(2) $ (!\cID|lastWhite[1]~13\)))) # (GND)
-- \cID|lastWhite[2]~15\ = CARRY((\cID|firstWhite\(2) & ((\cID|whiteCount\(2)) # (!\cID|lastWhite[1]~13\))) # (!\cID|firstWhite\(2) & (\cID|whiteCount\(2) & !\cID|lastWhite[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstWhite\(2),
	datab => \cID|whiteCount\(2),
	datad => VCC,
	cin => \cID|lastWhite[1]~13\,
	combout => \cID|lastWhite[2]~14_combout\,
	cout => \cID|lastWhite[2]~15\);

-- Location: LCCOMB_X21_Y17_N12
\cID|lastWhite[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[3]~16_combout\ = (\cID|firstWhite\(3) & ((\cID|whiteCount\(3) & (\cID|lastWhite[2]~15\ & VCC)) # (!\cID|whiteCount\(3) & (!\cID|lastWhite[2]~15\)))) # (!\cID|firstWhite\(3) & ((\cID|whiteCount\(3) & (!\cID|lastWhite[2]~15\)) # 
-- (!\cID|whiteCount\(3) & ((\cID|lastWhite[2]~15\) # (GND)))))
-- \cID|lastWhite[3]~17\ = CARRY((\cID|firstWhite\(3) & (!\cID|whiteCount\(3) & !\cID|lastWhite[2]~15\)) # (!\cID|firstWhite\(3) & ((!\cID|lastWhite[2]~15\) # (!\cID|whiteCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstWhite\(3),
	datab => \cID|whiteCount\(3),
	datad => VCC,
	cin => \cID|lastWhite[2]~15\,
	combout => \cID|lastWhite[3]~16_combout\,
	cout => \cID|lastWhite[3]~17\);

-- Location: LCCOMB_X21_Y17_N14
\cID|lastWhite[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[4]~18_combout\ = ((\cID|whiteCount\(4) $ (\cID|firstWhite\(4) $ (!\cID|lastWhite[3]~17\)))) # (GND)
-- \cID|lastWhite[4]~19\ = CARRY((\cID|whiteCount\(4) & ((\cID|firstWhite\(4)) # (!\cID|lastWhite[3]~17\))) # (!\cID|whiteCount\(4) & (\cID|firstWhite\(4) & !\cID|lastWhite[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(4),
	datab => \cID|firstWhite\(4),
	datad => VCC,
	cin => \cID|lastWhite[3]~17\,
	combout => \cID|lastWhite[4]~18_combout\,
	cout => \cID|lastWhite[4]~19\);

-- Location: LCCOMB_X21_Y17_N16
\cID|lastWhite[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[5]~20_combout\ = (\cID|whiteCount\(5) & ((\cID|firstWhite\(5) & (\cID|lastWhite[4]~19\ & VCC)) # (!\cID|firstWhite\(5) & (!\cID|lastWhite[4]~19\)))) # (!\cID|whiteCount\(5) & ((\cID|firstWhite\(5) & (!\cID|lastWhite[4]~19\)) # 
-- (!\cID|firstWhite\(5) & ((\cID|lastWhite[4]~19\) # (GND)))))
-- \cID|lastWhite[5]~21\ = CARRY((\cID|whiteCount\(5) & (!\cID|firstWhite\(5) & !\cID|lastWhite[4]~19\)) # (!\cID|whiteCount\(5) & ((!\cID|lastWhite[4]~19\) # (!\cID|firstWhite\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(5),
	datab => \cID|firstWhite\(5),
	datad => VCC,
	cin => \cID|lastWhite[4]~19\,
	combout => \cID|lastWhite[5]~20_combout\,
	cout => \cID|lastWhite[5]~21\);

-- Location: LCCOMB_X21_Y17_N18
\cID|lastWhite[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[6]~22_combout\ = ((\cID|whiteCount\(6) $ (\cID|firstWhite\(6) $ (!\cID|lastWhite[5]~21\)))) # (GND)
-- \cID|lastWhite[6]~23\ = CARRY((\cID|whiteCount\(6) & ((\cID|firstWhite\(6)) # (!\cID|lastWhite[5]~21\))) # (!\cID|whiteCount\(6) & (\cID|firstWhite\(6) & !\cID|lastWhite[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(6),
	datab => \cID|firstWhite\(6),
	datad => VCC,
	cin => \cID|lastWhite[5]~21\,
	combout => \cID|lastWhite[6]~22_combout\,
	cout => \cID|lastWhite[6]~23\);

-- Location: LCCOMB_X21_Y17_N20
\cID|lastWhite[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[7]~24_combout\ = (\cID|whiteCount\(7) & ((\cID|firstWhite\(7) & (\cID|lastWhite[6]~23\ & VCC)) # (!\cID|firstWhite\(7) & (!\cID|lastWhite[6]~23\)))) # (!\cID|whiteCount\(7) & ((\cID|firstWhite\(7) & (!\cID|lastWhite[6]~23\)) # 
-- (!\cID|firstWhite\(7) & ((\cID|lastWhite[6]~23\) # (GND)))))
-- \cID|lastWhite[7]~25\ = CARRY((\cID|whiteCount\(7) & (!\cID|firstWhite\(7) & !\cID|lastWhite[6]~23\)) # (!\cID|whiteCount\(7) & ((!\cID|lastWhite[6]~23\) # (!\cID|firstWhite\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(7),
	datab => \cID|firstWhite\(7),
	datad => VCC,
	cin => \cID|lastWhite[6]~23\,
	combout => \cID|lastWhite[7]~24_combout\,
	cout => \cID|lastWhite[7]~25\);

-- Location: LCCOMB_X21_Y17_N22
\cID|lastWhite[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[8]~26_combout\ = (\cID|firstWhite\(8) & (\cID|lastWhite[7]~25\ $ (GND))) # (!\cID|firstWhite\(8) & (!\cID|lastWhite[7]~25\ & VCC))
-- \cID|lastWhite[8]~27\ = CARRY((\cID|firstWhite\(8) & !\cID|lastWhite[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstWhite\(8),
	datad => VCC,
	cin => \cID|lastWhite[7]~25\,
	combout => \cID|lastWhite[8]~26_combout\,
	cout => \cID|lastWhite[8]~27\);

-- Location: FF_X21_Y17_N23
\cID|lastWhite[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[8]~26_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(8));

-- Location: FF_X21_Y17_N21
\cID|lastWhite[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[7]~24_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(7));

-- Location: FF_X21_Y17_N19
\cID|lastWhite[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[6]~22_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(6));

-- Location: FF_X21_Y17_N17
\cID|lastWhite[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[5]~20_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(5));

-- Location: FF_X21_Y17_N15
\cID|lastWhite[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[4]~18_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(4));

-- Location: FF_X21_Y17_N13
\cID|lastWhite[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[3]~16_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(3));

-- Location: FF_X21_Y17_N11
\cID|lastWhite[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[2]~14_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(2));

-- Location: LCCOMB_X20_Y17_N24
\cID|lastWhite[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[1]~feeder_combout\ = \cID|lastWhite[1]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cID|lastWhite[1]~12_combout\,
	combout => \cID|lastWhite[1]~feeder_combout\);

-- Location: FF_X20_Y17_N25
\cID|lastWhite[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[1]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(1));

-- Location: LCCOMB_X20_Y17_N18
\cID|lastWhite[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[0]~feeder_combout\ = \cID|lastWhite[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|lastWhite[0]~10_combout\,
	combout => \cID|lastWhite[0]~feeder_combout\);

-- Location: FF_X20_Y17_N19
\cID|lastWhite[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[0]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(0));

-- Location: LCCOMB_X19_Y17_N4
\cID|mostLocX[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[0]~10_combout\ = (\cID|firstWhite\(0) & (\cID|lastWhite\(0) $ (VCC))) # (!\cID|firstWhite\(0) & (\cID|lastWhite\(0) & VCC))
-- \cID|mostLocX[0]~11\ = CARRY((\cID|firstWhite\(0) & \cID|lastWhite\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstWhite\(0),
	datab => \cID|lastWhite\(0),
	datad => VCC,
	combout => \cID|mostLocX[0]~10_combout\,
	cout => \cID|mostLocX[0]~11\);

-- Location: LCCOMB_X19_Y17_N6
\cID|mostLocX[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[1]~12_combout\ = (\cID|firstWhite\(1) & ((\cID|lastWhite\(1) & (\cID|mostLocX[0]~11\ & VCC)) # (!\cID|lastWhite\(1) & (!\cID|mostLocX[0]~11\)))) # (!\cID|firstWhite\(1) & ((\cID|lastWhite\(1) & (!\cID|mostLocX[0]~11\)) # (!\cID|lastWhite\(1) 
-- & ((\cID|mostLocX[0]~11\) # (GND)))))
-- \cID|mostLocX[1]~13\ = CARRY((\cID|firstWhite\(1) & (!\cID|lastWhite\(1) & !\cID|mostLocX[0]~11\)) # (!\cID|firstWhite\(1) & ((!\cID|mostLocX[0]~11\) # (!\cID|lastWhite\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstWhite\(1),
	datab => \cID|lastWhite\(1),
	datad => VCC,
	cin => \cID|mostLocX[0]~11\,
	combout => \cID|mostLocX[1]~12_combout\,
	cout => \cID|mostLocX[1]~13\);

-- Location: LCCOMB_X19_Y17_N8
\cID|mostLocX[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[2]~14_combout\ = ((\cID|lastWhite\(2) $ (\cID|firstWhite\(2) $ (!\cID|mostLocX[1]~13\)))) # (GND)
-- \cID|mostLocX[2]~15\ = CARRY((\cID|lastWhite\(2) & ((\cID|firstWhite\(2)) # (!\cID|mostLocX[1]~13\))) # (!\cID|lastWhite\(2) & (\cID|firstWhite\(2) & !\cID|mostLocX[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastWhite\(2),
	datab => \cID|firstWhite\(2),
	datad => VCC,
	cin => \cID|mostLocX[1]~13\,
	combout => \cID|mostLocX[2]~14_combout\,
	cout => \cID|mostLocX[2]~15\);

-- Location: LCCOMB_X19_Y17_N10
\cID|mostLocX[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[3]~16_combout\ = (\cID|lastWhite\(3) & ((\cID|firstWhite\(3) & (\cID|mostLocX[2]~15\ & VCC)) # (!\cID|firstWhite\(3) & (!\cID|mostLocX[2]~15\)))) # (!\cID|lastWhite\(3) & ((\cID|firstWhite\(3) & (!\cID|mostLocX[2]~15\)) # 
-- (!\cID|firstWhite\(3) & ((\cID|mostLocX[2]~15\) # (GND)))))
-- \cID|mostLocX[3]~17\ = CARRY((\cID|lastWhite\(3) & (!\cID|firstWhite\(3) & !\cID|mostLocX[2]~15\)) # (!\cID|lastWhite\(3) & ((!\cID|mostLocX[2]~15\) # (!\cID|firstWhite\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastWhite\(3),
	datab => \cID|firstWhite\(3),
	datad => VCC,
	cin => \cID|mostLocX[2]~15\,
	combout => \cID|mostLocX[3]~16_combout\,
	cout => \cID|mostLocX[3]~17\);

-- Location: LCCOMB_X19_Y17_N12
\cID|mostLocX[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[4]~18_combout\ = ((\cID|lastWhite\(4) $ (\cID|firstWhite\(4) $ (!\cID|mostLocX[3]~17\)))) # (GND)
-- \cID|mostLocX[4]~19\ = CARRY((\cID|lastWhite\(4) & ((\cID|firstWhite\(4)) # (!\cID|mostLocX[3]~17\))) # (!\cID|lastWhite\(4) & (\cID|firstWhite\(4) & !\cID|mostLocX[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastWhite\(4),
	datab => \cID|firstWhite\(4),
	datad => VCC,
	cin => \cID|mostLocX[3]~17\,
	combout => \cID|mostLocX[4]~18_combout\,
	cout => \cID|mostLocX[4]~19\);

-- Location: LCCOMB_X19_Y17_N14
\cID|mostLocX[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[5]~20_combout\ = (\cID|lastWhite\(5) & ((\cID|firstWhite\(5) & (\cID|mostLocX[4]~19\ & VCC)) # (!\cID|firstWhite\(5) & (!\cID|mostLocX[4]~19\)))) # (!\cID|lastWhite\(5) & ((\cID|firstWhite\(5) & (!\cID|mostLocX[4]~19\)) # 
-- (!\cID|firstWhite\(5) & ((\cID|mostLocX[4]~19\) # (GND)))))
-- \cID|mostLocX[5]~21\ = CARRY((\cID|lastWhite\(5) & (!\cID|firstWhite\(5) & !\cID|mostLocX[4]~19\)) # (!\cID|lastWhite\(5) & ((!\cID|mostLocX[4]~19\) # (!\cID|firstWhite\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastWhite\(5),
	datab => \cID|firstWhite\(5),
	datad => VCC,
	cin => \cID|mostLocX[4]~19\,
	combout => \cID|mostLocX[5]~20_combout\,
	cout => \cID|mostLocX[5]~21\);

-- Location: LCCOMB_X19_Y17_N16
\cID|mostLocX[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[6]~22_combout\ = ((\cID|firstWhite\(6) $ (\cID|lastWhite\(6) $ (!\cID|mostLocX[5]~21\)))) # (GND)
-- \cID|mostLocX[6]~23\ = CARRY((\cID|firstWhite\(6) & ((\cID|lastWhite\(6)) # (!\cID|mostLocX[5]~21\))) # (!\cID|firstWhite\(6) & (\cID|lastWhite\(6) & !\cID|mostLocX[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstWhite\(6),
	datab => \cID|lastWhite\(6),
	datad => VCC,
	cin => \cID|mostLocX[5]~21\,
	combout => \cID|mostLocX[6]~22_combout\,
	cout => \cID|mostLocX[6]~23\);

-- Location: LCCOMB_X19_Y17_N18
\cID|mostLocX[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[7]~24_combout\ = (\cID|lastWhite\(7) & ((\cID|firstWhite\(7) & (\cID|mostLocX[6]~23\ & VCC)) # (!\cID|firstWhite\(7) & (!\cID|mostLocX[6]~23\)))) # (!\cID|lastWhite\(7) & ((\cID|firstWhite\(7) & (!\cID|mostLocX[6]~23\)) # 
-- (!\cID|firstWhite\(7) & ((\cID|mostLocX[6]~23\) # (GND)))))
-- \cID|mostLocX[7]~25\ = CARRY((\cID|lastWhite\(7) & (!\cID|firstWhite\(7) & !\cID|mostLocX[6]~23\)) # (!\cID|lastWhite\(7) & ((!\cID|mostLocX[6]~23\) # (!\cID|firstWhite\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastWhite\(7),
	datab => \cID|firstWhite\(7),
	datad => VCC,
	cin => \cID|mostLocX[6]~23\,
	combout => \cID|mostLocX[7]~24_combout\,
	cout => \cID|mostLocX[7]~25\);

-- Location: LCCOMB_X19_Y17_N20
\cID|mostLocX[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[8]~26_combout\ = ((\cID|firstWhite\(8) $ (\cID|lastWhite\(8) $ (!\cID|mostLocX[7]~25\)))) # (GND)
-- \cID|mostLocX[8]~27\ = CARRY((\cID|firstWhite\(8) & ((\cID|lastWhite\(8)) # (!\cID|mostLocX[7]~25\))) # (!\cID|firstWhite\(8) & (\cID|lastWhite\(8) & !\cID|mostLocX[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstWhite\(8),
	datab => \cID|lastWhite\(8),
	datad => VCC,
	cin => \cID|mostLocX[7]~25\,
	combout => \cID|mostLocX[8]~26_combout\,
	cout => \cID|mostLocX[8]~27\);

-- Location: LCCOMB_X12_Y17_N2
\CAP11|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~2_combout\ = (\CAP11|v_count\(1) & (!\CAP11|Add1~1\)) # (!\CAP11|v_count\(1) & ((\CAP11|Add1~1\) # (GND)))
-- \CAP11|Add1~3\ = CARRY((!\CAP11|Add1~1\) # (!\CAP11|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(1),
	datad => VCC,
	cin => \CAP11|Add1~1\,
	combout => \CAP11|Add1~2_combout\,
	cout => \CAP11|Add1~3\);

-- Location: FF_X12_Y17_N3
\CAP11|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add1~2_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(1));

-- Location: LCCOMB_X12_Y17_N4
\CAP11|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~4_combout\ = (\CAP11|v_count\(2) & (\CAP11|Add1~3\ $ (GND))) # (!\CAP11|v_count\(2) & (!\CAP11|Add1~3\ & VCC))
-- \CAP11|Add1~5\ = CARRY((\CAP11|v_count\(2) & !\CAP11|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(2),
	datad => VCC,
	cin => \CAP11|Add1~3\,
	combout => \CAP11|Add1~4_combout\,
	cout => \CAP11|Add1~5\);

-- Location: FF_X12_Y17_N5
\CAP11|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add1~4_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(2));

-- Location: LCCOMB_X12_Y17_N6
\CAP11|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~6_combout\ = (\CAP11|v_count\(3) & (!\CAP11|Add1~5\)) # (!\CAP11|v_count\(3) & ((\CAP11|Add1~5\) # (GND)))
-- \CAP11|Add1~7\ = CARRY((!\CAP11|Add1~5\) # (!\CAP11|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(3),
	datad => VCC,
	cin => \CAP11|Add1~5\,
	combout => \CAP11|Add1~6_combout\,
	cout => \CAP11|Add1~7\);

-- Location: FF_X12_Y17_N7
\CAP11|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add1~6_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(3));

-- Location: LCCOMB_X12_Y17_N8
\CAP11|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~8_combout\ = (\CAP11|v_count\(4) & (\CAP11|Add1~7\ $ (GND))) # (!\CAP11|v_count\(4) & (!\CAP11|Add1~7\ & VCC))
-- \CAP11|Add1~9\ = CARRY((\CAP11|v_count\(4) & !\CAP11|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(4),
	datad => VCC,
	cin => \CAP11|Add1~7\,
	combout => \CAP11|Add1~8_combout\,
	cout => \CAP11|Add1~9\);

-- Location: FF_X12_Y17_N9
\CAP11|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add1~8_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(4));

-- Location: LCCOMB_X12_Y17_N10
\CAP11|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~10_combout\ = (\CAP11|v_count\(5) & (!\CAP11|Add1~9\)) # (!\CAP11|v_count\(5) & ((\CAP11|Add1~9\) # (GND)))
-- \CAP11|Add1~11\ = CARRY((!\CAP11|Add1~9\) # (!\CAP11|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(5),
	datad => VCC,
	cin => \CAP11|Add1~9\,
	combout => \CAP11|Add1~10_combout\,
	cout => \CAP11|Add1~11\);

-- Location: LCCOMB_X14_Y17_N8
\CAP11|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|v_count~0_combout\ = (!\CAP11|Equal1~3_combout\ & \CAP11|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|Equal1~3_combout\,
	datad => \CAP11|Add1~10_combout\,
	combout => \CAP11|v_count~0_combout\);

-- Location: FF_X14_Y17_N9
\CAP11|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|v_count~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(5));

-- Location: LCCOMB_X12_Y17_N12
\CAP11|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~12_combout\ = (\CAP11|v_count\(6) & (\CAP11|Add1~11\ $ (GND))) # (!\CAP11|v_count\(6) & (!\CAP11|Add1~11\ & VCC))
-- \CAP11|Add1~13\ = CARRY((\CAP11|v_count\(6) & !\CAP11|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(6),
	datad => VCC,
	cin => \CAP11|Add1~11\,
	combout => \CAP11|Add1~12_combout\,
	cout => \CAP11|Add1~13\);

-- Location: LCCOMB_X14_Y17_N20
\CAP11|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|v_count~3_combout\ = (\CAP11|Add1~12_combout\ & !\CAP11|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|Add1~12_combout\,
	datac => \CAP11|Equal1~3_combout\,
	combout => \CAP11|v_count~3_combout\);

-- Location: FF_X14_Y17_N21
\CAP11|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|v_count~3_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(6));

-- Location: LCCOMB_X12_Y17_N28
\CAP11|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal1~2_combout\ = (\CAP11|v_count\(8) & (!\CAP11|v_count\(9) & (\CAP11|v_count\(6) & \CAP11|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(8),
	datab => \CAP11|v_count\(9),
	datac => \CAP11|v_count\(6),
	datad => \CAP11|v_count\(7),
	combout => \CAP11|Equal1~2_combout\);

-- Location: LCCOMB_X12_Y17_N20
\CAP11|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal1~0_combout\ = (\CAP11|v_count\(3) & (\CAP11|v_count\(4) & (\CAP11|v_count\(2) & \CAP11|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(3),
	datab => \CAP11|v_count\(4),
	datac => \CAP11|v_count\(2),
	datad => \CAP11|v_count\(1),
	combout => \CAP11|Equal1~0_combout\);

-- Location: LCCOMB_X12_Y17_N22
\CAP11|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal1~3_combout\ = (\CAP11|v_count\(0) & (\CAP11|Equal1~2_combout\ & (!\CAP11|v_count\(5) & \CAP11|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(0),
	datab => \CAP11|Equal1~2_combout\,
	datac => \CAP11|v_count\(5),
	datad => \CAP11|Equal1~0_combout\,
	combout => \CAP11|Equal1~3_combout\);

-- Location: LCCOMB_X12_Y17_N14
\CAP11|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~14_combout\ = (\CAP11|v_count\(7) & (!\CAP11|Add1~13\)) # (!\CAP11|v_count\(7) & ((\CAP11|Add1~13\) # (GND)))
-- \CAP11|Add1~15\ = CARRY((!\CAP11|Add1~13\) # (!\CAP11|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(7),
	datad => VCC,
	cin => \CAP11|Add1~13\,
	combout => \CAP11|Add1~14_combout\,
	cout => \CAP11|Add1~15\);

-- Location: LCCOMB_X14_Y17_N6
\CAP11|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|v_count~2_combout\ = (!\CAP11|Equal1~3_combout\ & \CAP11|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|Equal1~3_combout\,
	datad => \CAP11|Add1~14_combout\,
	combout => \CAP11|v_count~2_combout\);

-- Location: FF_X14_Y17_N7
\CAP11|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|v_count~2_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(7));

-- Location: LCCOMB_X12_Y17_N16
\CAP11|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~16_combout\ = (\CAP11|v_count\(8) & (\CAP11|Add1~15\ $ (GND))) # (!\CAP11|v_count\(8) & (!\CAP11|Add1~15\ & VCC))
-- \CAP11|Add1~17\ = CARRY((\CAP11|v_count\(8) & !\CAP11|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(8),
	datad => VCC,
	cin => \CAP11|Add1~15\,
	combout => \CAP11|Add1~16_combout\,
	cout => \CAP11|Add1~17\);

-- Location: LCCOMB_X12_Y17_N26
\CAP11|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|v_count~1_combout\ = (\CAP11|Add1~16_combout\ & !\CAP11|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|Add1~16_combout\,
	datac => \CAP11|Equal1~3_combout\,
	combout => \CAP11|v_count~1_combout\);

-- Location: FF_X12_Y17_N27
\CAP11|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|v_count~1_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(8));

-- Location: LCCOMB_X12_Y17_N18
\CAP11|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add1~18_combout\ = \CAP11|v_count\(9) $ (\CAP11|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(9),
	cin => \CAP11|Add1~17\,
	combout => \CAP11|Add1~18_combout\);

-- Location: FF_X12_Y17_N19
\CAP11|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add1~18_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|v_count\(9));

-- Location: LCCOMB_X14_Y17_N14
\CAP11|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal1~1_combout\ = (\CAP11|v_count\(7) & (\CAP11|v_count\(6) & \CAP11|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(7),
	datab => \CAP11|v_count\(6),
	datad => \CAP11|v_count\(8),
	combout => \CAP11|Equal1~1_combout\);

-- Location: LCCOMB_X14_Y17_N4
\cID|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|LessThan5~0_combout\ = (!\CAP11|v_count\(9) & (((!\CAP11|v_count\(5) & !\CAP11|Equal1~0_combout\)) # (!\CAP11|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(9),
	datab => \CAP11|v_count\(5),
	datac => \CAP11|Equal1~1_combout\,
	datad => \CAP11|Equal1~0_combout\,
	combout => \cID|LessThan5~0_combout\);

-- Location: LCCOMB_X22_Y17_N0
\cID|mostCount[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostCount[0]~9_combout\ = (\cID|mostCount\(0) & ((VCC))) # (!\cID|mostCount\(0) & (\cID|whiteCount\(0) & GND))
-- \cID|mostCount[0]~10\ = CARRY((!\cID|mostCount\(0) & \cID|whiteCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|mostCount\(0),
	datab => \cID|whiteCount\(0),
	datad => VCC,
	combout => \cID|mostCount[0]~9_combout\,
	cout => \cID|mostCount[0]~10\);

-- Location: FF_X22_Y17_N1
\cID|mostCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostCount[0]~9_combout\,
	asdata => \cID|whiteCount\(0),
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	sload => \cID|LessThan4~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostCount\(0));

-- Location: LCCOMB_X22_Y17_N2
\cID|mostCount[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostCount[1]~11_combout\ = (\cID|mostCount\(1) & (((VCC) # (!\cID|mostCount[0]~10\)) # (!\cID|whiteCount\(1)))) # (!\cID|mostCount\(1) & (!\cID|whiteCount\(1) & (!\cID|mostCount[0]~10\ & GND)))
-- \cID|mostCount[1]~12\ = CARRY((\cID|mostCount\(1) & ((!\cID|mostCount[0]~10\) # (!\cID|whiteCount\(1)))) # (!\cID|mostCount\(1) & (!\cID|whiteCount\(1) & !\cID|mostCount[0]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|mostCount\(1),
	datab => \cID|whiteCount\(1),
	datad => VCC,
	cin => \cID|mostCount[0]~10\,
	combout => \cID|mostCount[1]~11_combout\,
	cout => \cID|mostCount[1]~12\);

-- Location: FF_X22_Y17_N3
\cID|mostCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostCount[1]~11_combout\,
	asdata => \cID|whiteCount\(1),
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	sload => \cID|LessThan4~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostCount\(1));

-- Location: LCCOMB_X22_Y17_N4
\cID|mostCount[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostCount[2]~13_combout\ = (\cID|mostCount\(2) & ((VCC) # ((\cID|whiteCount\(2) & !\cID|mostCount[1]~12\)))) # (!\cID|mostCount\(2) & (GND))
-- \cID|mostCount[2]~14\ = CARRY((\cID|mostCount\(2) & (\cID|whiteCount\(2) & !\cID|mostCount[1]~12\)) # (!\cID|mostCount\(2) & ((\cID|whiteCount\(2)) # (!\cID|mostCount[1]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|mostCount\(2),
	datab => \cID|whiteCount\(2),
	datad => VCC,
	cin => \cID|mostCount[1]~12\,
	combout => \cID|mostCount[2]~13_combout\,
	cout => \cID|mostCount[2]~14\);

-- Location: FF_X22_Y17_N5
\cID|mostCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostCount[2]~13_combout\,
	asdata => \cID|whiteCount\(2),
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	sload => \cID|LessThan4~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostCount\(2));

-- Location: LCCOMB_X22_Y17_N6
\cID|mostCount[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostCount[3]~15_combout\ = (\cID|mostCount\(3) & (((VCC) # (!\cID|mostCount[2]~14\)) # (!\cID|whiteCount\(3)))) # (!\cID|mostCount\(3) & (!\cID|whiteCount\(3) & (!\cID|mostCount[2]~14\ & GND)))
-- \cID|mostCount[3]~16\ = CARRY((\cID|mostCount\(3) & ((!\cID|mostCount[2]~14\) # (!\cID|whiteCount\(3)))) # (!\cID|mostCount\(3) & (!\cID|whiteCount\(3) & !\cID|mostCount[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|mostCount\(3),
	datab => \cID|whiteCount\(3),
	datad => VCC,
	cin => \cID|mostCount[2]~14\,
	combout => \cID|mostCount[3]~15_combout\,
	cout => \cID|mostCount[3]~16\);

-- Location: FF_X22_Y17_N7
\cID|mostCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostCount[3]~15_combout\,
	asdata => \cID|whiteCount\(3),
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	sload => \cID|LessThan4~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostCount\(3));

-- Location: LCCOMB_X22_Y17_N8
\cID|mostCount[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostCount[4]~17_combout\ = (\cID|mostCount\(4) & ((VCC) # ((\cID|whiteCount\(4) & !\cID|mostCount[3]~16\)))) # (!\cID|mostCount\(4) & (GND))
-- \cID|mostCount[4]~18\ = CARRY((\cID|mostCount\(4) & (\cID|whiteCount\(4) & !\cID|mostCount[3]~16\)) # (!\cID|mostCount\(4) & ((\cID|whiteCount\(4)) # (!\cID|mostCount[3]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|mostCount\(4),
	datab => \cID|whiteCount\(4),
	datad => VCC,
	cin => \cID|mostCount[3]~16\,
	combout => \cID|mostCount[4]~17_combout\,
	cout => \cID|mostCount[4]~18\);

-- Location: FF_X22_Y17_N9
\cID|mostCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostCount[4]~17_combout\,
	asdata => \cID|whiteCount\(4),
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	sload => \cID|LessThan4~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostCount\(4));

-- Location: LCCOMB_X22_Y17_N10
\cID|mostCount[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostCount[5]~19_combout\ = (\cID|whiteCount\(5) & (\cID|mostCount\(5) & ((VCC) # (!\cID|mostCount[4]~18\)))) # (!\cID|whiteCount\(5) & ((\cID|mostCount\(5)) # ((!\cID|mostCount[4]~18\ & GND))))
-- \cID|mostCount[5]~20\ = CARRY((\cID|whiteCount\(5) & (\cID|mostCount\(5) & !\cID|mostCount[4]~18\)) # (!\cID|whiteCount\(5) & ((\cID|mostCount\(5)) # (!\cID|mostCount[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(5),
	datab => \cID|mostCount\(5),
	datad => VCC,
	cin => \cID|mostCount[4]~18\,
	combout => \cID|mostCount[5]~19_combout\,
	cout => \cID|mostCount[5]~20\);

-- Location: FF_X22_Y17_N11
\cID|mostCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostCount[5]~19_combout\,
	asdata => \cID|whiteCount\(5),
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	sload => \cID|LessThan4~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostCount\(5));

-- Location: LCCOMB_X22_Y17_N12
\cID|mostCount[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostCount[6]~21_combout\ = (\cID|mostCount\(6) & ((VCC) # ((\cID|whiteCount\(6) & !\cID|mostCount[5]~20\)))) # (!\cID|mostCount\(6) & (GND))
-- \cID|mostCount[6]~22\ = CARRY((\cID|whiteCount\(6) & ((!\cID|mostCount[5]~20\) # (!\cID|mostCount\(6)))) # (!\cID|whiteCount\(6) & (!\cID|mostCount\(6) & !\cID|mostCount[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(6),
	datab => \cID|mostCount\(6),
	datad => VCC,
	cin => \cID|mostCount[5]~20\,
	combout => \cID|mostCount[6]~21_combout\,
	cout => \cID|mostCount[6]~22\);

-- Location: FF_X22_Y17_N13
\cID|mostCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostCount[6]~21_combout\,
	asdata => \cID|whiteCount\(6),
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	sload => \cID|LessThan4~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostCount\(6));

-- Location: LCCOMB_X22_Y17_N14
\cID|mostCount[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostCount[7]~23_combout\ = (\cID|whiteCount\(7) & (\cID|mostCount\(7) & ((VCC) # (!\cID|mostCount[6]~22\)))) # (!\cID|whiteCount\(7) & ((\cID|mostCount\(7)) # ((!\cID|mostCount[6]~22\ & GND))))
-- \cID|mostCount[7]~24\ = CARRY((\cID|whiteCount\(7) & (\cID|mostCount\(7) & !\cID|mostCount[6]~22\)) # (!\cID|whiteCount\(7) & ((\cID|mostCount\(7)) # (!\cID|mostCount[6]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(7),
	datab => \cID|mostCount\(7),
	datad => VCC,
	cin => \cID|mostCount[6]~22\,
	combout => \cID|mostCount[7]~23_combout\,
	cout => \cID|mostCount[7]~24\);

-- Location: FF_X22_Y17_N15
\cID|mostCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostCount[7]~23_combout\,
	asdata => \cID|whiteCount\(7),
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	sload => \cID|LessThan4~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostCount\(7));

-- Location: LCCOMB_X22_Y17_N16
\cID|mostCount[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostCount[8]~25_combout\ = (\cID|mostCount\(8) & ((VCC) # ((\cID|whiteCount\(8) & !\cID|mostCount[7]~24\)))) # (!\cID|mostCount\(8) & (GND))
-- \cID|mostCount[8]~26\ = CARRY((\cID|whiteCount\(8) & ((!\cID|mostCount[7]~24\) # (!\cID|mostCount\(8)))) # (!\cID|whiteCount\(8) & (!\cID|mostCount\(8) & !\cID|mostCount[7]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|whiteCount\(8),
	datab => \cID|mostCount\(8),
	datad => VCC,
	cin => \cID|mostCount[7]~24\,
	combout => \cID|mostCount[8]~25_combout\,
	cout => \cID|mostCount[8]~26\);

-- Location: FF_X22_Y17_N17
\cID|mostCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostCount[8]~25_combout\,
	asdata => \cID|whiteCount\(8),
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	sload => \cID|LessThan4~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostCount\(8));

-- Location: LCCOMB_X22_Y17_N18
\cID|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|LessThan4~0_combout\ = \cID|mostCount[8]~26\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cID|mostCount[8]~26\,
	combout => \cID|LessThan4~0_combout\);

-- Location: LCCOMB_X19_Y17_N26
\cID|mostLocX[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[9]~30_combout\ = (\cID|LessThan3~1_combout\ & (\CAP11|h_count\(9) & ((\cID|LessThan4~0_combout\) # (!\cID|LessThan5~0_combout\)))) # (!\cID|LessThan3~1_combout\ & (((\cID|LessThan4~0_combout\) # (!\cID|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \CAP11|h_count\(9),
	datac => \cID|LessThan4~0_combout\,
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|mostLocX[9]~30_combout\);

-- Location: FF_X19_Y17_N21
\cID|mostLocX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[8]~26_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(8));

-- Location: LCCOMB_X15_Y13_N16
\cID|lastLocY[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastLocY[2]~0_combout\ = (!\cID|LessThan5~0_combout\ & ((\CAP11|h_count\(9)) # (!\cID|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|h_count\(9),
	datac => \cID|LessThan3~1_combout\,
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|lastLocY[2]~0_combout\);

-- Location: FF_X15_Y13_N5
\cID|lastLocX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocX\(8),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(8));

-- Location: LCCOMB_X21_Y17_N24
\cID|lastWhite[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[9]~28_combout\ = \cID|lastWhite[8]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cID|lastWhite[8]~27\,
	combout => \cID|lastWhite[9]~28_combout\);

-- Location: LCCOMB_X20_Y17_N22
\cID|lastWhite[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastWhite[9]~feeder_combout\ = \cID|lastWhite[9]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|lastWhite[9]~28_combout\,
	combout => \cID|lastWhite[9]~feeder_combout\);

-- Location: FF_X20_Y17_N23
\cID|lastWhite[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastWhite[9]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan3~2_combout\,
	ena => \cID|whiteCount[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastWhite\(9));

-- Location: LCCOMB_X19_Y17_N22
\cID|mostLocX[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocX[9]~28_combout\ = \cID|mostLocX[8]~27\ $ (\cID|lastWhite\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cID|lastWhite\(9),
	cin => \cID|mostLocX[8]~27\,
	combout => \cID|mostLocX[9]~28_combout\);

-- Location: FF_X19_Y17_N23
\cID|mostLocX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[9]~28_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(9));

-- Location: FF_X15_Y13_N25
\cID|lastLocX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocX\(9),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(9));

-- Location: LCCOMB_X15_Y13_N4
\VGApart|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal6~0_combout\ = (\VGApart|h_count\(8) & (\cID|lastLocX\(8) & (\VGApart|h_count\(9) $ (!\cID|lastLocX\(9))))) # (!\VGApart|h_count\(8) & (!\cID|lastLocX\(8) & (\VGApart|h_count\(9) $ (!\cID|lastLocX\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(8),
	datab => \VGApart|h_count\(9),
	datac => \cID|lastLocX\(8),
	datad => \cID|lastLocX\(9),
	combout => \VGApart|Equal6~0_combout\);

-- Location: FF_X19_Y17_N11
\cID|mostLocX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[3]~16_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(3));

-- Location: FF_X15_Y13_N31
\cID|lastLocX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocX\(3),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(3));

-- Location: FF_X19_Y17_N9
\cID|mostLocX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[2]~14_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(2));

-- Location: LCCOMB_X15_Y13_N28
\cID|lastLocX[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastLocX[2]~feeder_combout\ = \cID|mostLocX\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|mostLocX\(2),
	combout => \cID|lastLocX[2]~feeder_combout\);

-- Location: FF_X15_Y13_N29
\cID|lastLocX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastLocX[2]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(2));

-- Location: LCCOMB_X15_Y13_N30
\VGApart|Equal6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal6~2_combout\ = (\VGApart|h_count\(3) & (\cID|lastLocX\(3) & (\VGApart|h_count\(2) $ (!\cID|lastLocX\(2))))) # (!\VGApart|h_count\(3) & (!\cID|lastLocX\(3) & (\VGApart|h_count\(2) $ (!\cID|lastLocX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(3),
	datab => \VGApart|h_count\(2),
	datac => \cID|lastLocX\(3),
	datad => \cID|lastLocX\(2),
	combout => \VGApart|Equal6~2_combout\);

-- Location: FF_X19_Y17_N7
\cID|mostLocX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[1]~12_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(1));

-- Location: FF_X15_Y13_N15
\cID|lastLocX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocX\(1),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(1));

-- Location: FF_X19_Y17_N5
\cID|mostLocX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[0]~10_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(0));

-- Location: LCCOMB_X15_Y13_N20
\cID|lastLocX[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastLocX[0]~feeder_combout\ = \cID|mostLocX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|mostLocX\(0),
	combout => \cID|lastLocX[0]~feeder_combout\);

-- Location: FF_X15_Y13_N21
\cID|lastLocX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastLocX[0]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(0));

-- Location: LCCOMB_X15_Y13_N14
\VGApart|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal6~1_combout\ = (\VGApart|h_count\(1) & (\cID|lastLocX\(1) & (\VGApart|h_count\(0) $ (!\cID|lastLocX\(0))))) # (!\VGApart|h_count\(1) & (!\cID|lastLocX\(1) & (\VGApart|h_count\(0) $ (!\cID|lastLocX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(1),
	datab => \VGApart|h_count\(0),
	datac => \cID|lastLocX\(1),
	datad => \cID|lastLocX\(0),
	combout => \VGApart|Equal6~1_combout\);

-- Location: FF_X19_Y17_N13
\cID|mostLocX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[4]~18_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(4));

-- Location: FF_X15_Y13_N9
\cID|lastLocX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocX\(4),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(4));

-- Location: FF_X19_Y17_N15
\cID|mostLocX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[5]~20_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(5));

-- Location: LCCOMB_X15_Y13_N2
\cID|lastLocX[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastLocX[5]~feeder_combout\ = \cID|mostLocX\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|mostLocX\(5),
	combout => \cID|lastLocX[5]~feeder_combout\);

-- Location: FF_X15_Y13_N3
\cID|lastLocX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastLocX[5]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(5));

-- Location: LCCOMB_X15_Y13_N8
\VGApart|Equal6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal6~3_combout\ = (\VGApart|h_count\(5) & (\cID|lastLocX\(5) & (\VGApart|h_count\(4) $ (!\cID|lastLocX\(4))))) # (!\VGApart|h_count\(5) & (!\cID|lastLocX\(5) & (\VGApart|h_count\(4) $ (!\cID|lastLocX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|h_count\(4),
	datac => \cID|lastLocX\(4),
	datad => \cID|lastLocX\(5),
	combout => \VGApart|Equal6~3_combout\);

-- Location: FF_X19_Y17_N17
\cID|mostLocX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[6]~22_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(6));

-- Location: FF_X15_Y13_N13
\cID|lastLocX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocX\(6),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(6));

-- Location: FF_X19_Y17_N19
\cID|mostLocX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocX[7]~24_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|mostLocX[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocX\(7));

-- Location: LCCOMB_X15_Y13_N18
\cID|lastLocX[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastLocX[7]~feeder_combout\ = \cID|mostLocX\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|mostLocX\(7),
	combout => \cID|lastLocX[7]~feeder_combout\);

-- Location: FF_X15_Y13_N19
\cID|lastLocX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastLocX[7]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocX\(7));

-- Location: LCCOMB_X15_Y13_N12
\VGApart|Equal6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal6~4_combout\ = (\VGApart|h_count\(6) & (\cID|lastLocX\(6) & (\VGApart|h_count\(7) $ (!\cID|lastLocX\(7))))) # (!\VGApart|h_count\(6) & (!\cID|lastLocX\(6) & (\VGApart|h_count\(7) $ (!\cID|lastLocX\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(6),
	datab => \VGApart|h_count\(7),
	datac => \cID|lastLocX\(6),
	datad => \cID|lastLocX\(7),
	combout => \VGApart|Equal6~4_combout\);

-- Location: LCCOMB_X15_Y13_N6
\VGApart|Equal6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal6~5_combout\ = (\VGApart|Equal6~2_combout\ & (\VGApart|Equal6~1_combout\ & (\VGApart|Equal6~3_combout\ & \VGApart|Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal6~2_combout\,
	datab => \VGApart|Equal6~1_combout\,
	datac => \VGApart|Equal6~3_combout\,
	datad => \VGApart|Equal6~4_combout\,
	combout => \VGApart|Equal6~5_combout\);

-- Location: LCCOMB_X15_Y13_N0
\VGApart|set_color~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~3_combout\ = (\VGApart|LessThan10~0_combout\ & ((\VGApart|set_color~2_combout\) # ((\VGApart|Equal6~0_combout\ & \VGApart|Equal6~5_combout\)))) # (!\VGApart|LessThan10~0_combout\ & (((\VGApart|Equal6~0_combout\ & 
-- \VGApart|Equal6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|LessThan10~0_combout\,
	datab => \VGApart|set_color~2_combout\,
	datac => \VGApart|Equal6~0_combout\,
	datad => \VGApart|Equal6~5_combout\,
	combout => \VGApart|set_color~3_combout\);

-- Location: LCCOMB_X15_Y11_N0
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

-- Location: LCCOMB_X15_Y11_N2
\VGApart|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~2_combout\ = (\VGApart|v_count\(1) & ((\VGApart|h_count\(1) & (!\VGApart|Add4~1\)) # (!\VGApart|h_count\(1) & ((\VGApart|Add4~1\) # (GND))))) # (!\VGApart|v_count\(1) & ((\VGApart|h_count\(1) & (\VGApart|Add4~1\ & VCC)) # 
-- (!\VGApart|h_count\(1) & (!\VGApart|Add4~1\))))
-- \VGApart|Add4~3\ = CARRY((\VGApart|v_count\(1) & ((!\VGApart|Add4~1\) # (!\VGApart|h_count\(1)))) # (!\VGApart|v_count\(1) & (!\VGApart|h_count\(1) & !\VGApart|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(1),
	datab => \VGApart|h_count\(1),
	datad => VCC,
	cin => \VGApart|Add4~1\,
	combout => \VGApart|Add4~2_combout\,
	cout => \VGApart|Add4~3\);

-- Location: LCCOMB_X15_Y11_N4
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

-- Location: LCCOMB_X15_Y11_N6
\VGApart|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~6_combout\ = (\VGApart|v_count\(3) & ((\VGApart|h_count\(3) & (!\VGApart|Add4~5\)) # (!\VGApart|h_count\(3) & ((\VGApart|Add4~5\) # (GND))))) # (!\VGApart|v_count\(3) & ((\VGApart|h_count\(3) & (\VGApart|Add4~5\ & VCC)) # 
-- (!\VGApart|h_count\(3) & (!\VGApart|Add4~5\))))
-- \VGApart|Add4~7\ = CARRY((\VGApart|v_count\(3) & ((!\VGApart|Add4~5\) # (!\VGApart|h_count\(3)))) # (!\VGApart|v_count\(3) & (!\VGApart|h_count\(3) & !\VGApart|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(3),
	datab => \VGApart|h_count\(3),
	datad => VCC,
	cin => \VGApart|Add4~5\,
	combout => \VGApart|Add4~6_combout\,
	cout => \VGApart|Add4~7\);

-- Location: LCCOMB_X15_Y11_N8
\VGApart|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~8_combout\ = ((\VGApart|h_count\(4) $ (\VGApart|v_count\(4) $ (\VGApart|Add4~7\)))) # (GND)
-- \VGApart|Add4~9\ = CARRY((\VGApart|h_count\(4) & ((!\VGApart|Add4~7\) # (!\VGApart|v_count\(4)))) # (!\VGApart|h_count\(4) & (!\VGApart|v_count\(4) & !\VGApart|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(4),
	datab => \VGApart|v_count\(4),
	datad => VCC,
	cin => \VGApart|Add4~7\,
	combout => \VGApart|Add4~8_combout\,
	cout => \VGApart|Add4~9\);

-- Location: LCCOMB_X15_Y11_N10
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

-- Location: LCCOMB_X15_Y11_N12
\VGApart|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~12_combout\ = ((\VGApart|v_count\(6) $ (\VGApart|h_count\(6) $ (\VGApart|Add4~11\)))) # (GND)
-- \VGApart|Add4~13\ = CARRY((\VGApart|v_count\(6) & (\VGApart|h_count\(6) & !\VGApart|Add4~11\)) # (!\VGApart|v_count\(6) & ((\VGApart|h_count\(6)) # (!\VGApart|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(6),
	datab => \VGApart|h_count\(6),
	datad => VCC,
	cin => \VGApart|Add4~11\,
	combout => \VGApart|Add4~12_combout\,
	cout => \VGApart|Add4~13\);

-- Location: LCCOMB_X15_Y11_N14
\VGApart|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~14_combout\ = (\VGApart|h_count\(7) & ((\VGApart|v_count\(7) & (!\VGApart|Add4~13\)) # (!\VGApart|v_count\(7) & (\VGApart|Add4~13\ & VCC)))) # (!\VGApart|h_count\(7) & ((\VGApart|v_count\(7) & ((\VGApart|Add4~13\) # (GND))) # 
-- (!\VGApart|v_count\(7) & (!\VGApart|Add4~13\))))
-- \VGApart|Add4~15\ = CARRY((\VGApart|h_count\(7) & (\VGApart|v_count\(7) & !\VGApart|Add4~13\)) # (!\VGApart|h_count\(7) & ((\VGApart|v_count\(7)) # (!\VGApart|Add4~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(7),
	datab => \VGApart|v_count\(7),
	datad => VCC,
	cin => \VGApart|Add4~13\,
	combout => \VGApart|Add4~14_combout\,
	cout => \VGApart|Add4~15\);

-- Location: LCCOMB_X15_Y11_N28
\VGApart|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~10_combout\ = (!\VGApart|Add4~10_combout\ & (\VGApart|Add4~8_combout\ & (!\VGApart|Add4~14_combout\ & \VGApart|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Add4~10_combout\,
	datab => \VGApart|Add4~8_combout\,
	datac => \VGApart|Add4~14_combout\,
	datad => \VGApart|Add4~12_combout\,
	combout => \VGApart|process_0~10_combout\);

-- Location: LCCOMB_X15_Y11_N16
\VGApart|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~16_combout\ = ((\VGApart|h_count\(8) $ (\VGApart|v_count\(8) $ (\VGApart|Add4~15\)))) # (GND)
-- \VGApart|Add4~17\ = CARRY((\VGApart|h_count\(8) & ((!\VGApart|Add4~15\) # (!\VGApart|v_count\(8)))) # (!\VGApart|h_count\(8) & (!\VGApart|v_count\(8) & !\VGApart|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(8),
	datab => \VGApart|v_count\(8),
	datad => VCC,
	cin => \VGApart|Add4~15\,
	combout => \VGApart|Add4~16_combout\,
	cout => \VGApart|Add4~17\);

-- Location: LCCOMB_X15_Y11_N26
\VGApart|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~9_combout\ = (!\VGApart|Add4~6_combout\ & (!\VGApart|Add4~0_combout\ & (!\VGApart|Add4~4_combout\ & !\VGApart|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Add4~6_combout\,
	datab => \VGApart|Add4~0_combout\,
	datac => \VGApart|Add4~4_combout\,
	datad => \VGApart|Add4~2_combout\,
	combout => \VGApart|process_0~9_combout\);

-- Location: LCCOMB_X15_Y11_N18
\VGApart|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add4~18_combout\ = \VGApart|h_count\(9) $ (\VGApart|Add4~17\ $ (!\VGApart|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(9),
	datad => \VGApart|v_count\(9),
	cin => \VGApart|Add4~17\,
	combout => \VGApart|Add4~18_combout\);

-- Location: LCCOMB_X15_Y11_N30
\VGApart|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~11_combout\ = (\VGApart|process_0~10_combout\ & (!\VGApart|Add4~16_combout\ & (\VGApart|process_0~9_combout\ & !\VGApart|Add4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~10_combout\,
	datab => \VGApart|Add4~16_combout\,
	datac => \VGApart|process_0~9_combout\,
	datad => \VGApart|Add4~18_combout\,
	combout => \VGApart|process_0~11_combout\);

-- Location: LCCOMB_X15_Y12_N6
\VGApart|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~0_combout\ = (\VGApart|h_count\(0) & (\VGApart|v_count\(0) $ (VCC))) # (!\VGApart|h_count\(0) & (\VGApart|v_count\(0) & VCC))
-- \VGApart|Add5~1\ = CARRY((\VGApart|h_count\(0) & \VGApart|v_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(0),
	datab => \VGApart|v_count\(0),
	datad => VCC,
	combout => \VGApart|Add5~0_combout\,
	cout => \VGApart|Add5~1\);

-- Location: LCCOMB_X15_Y12_N8
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

-- Location: LCCOMB_X15_Y12_N10
\VGApart|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~4_combout\ = ((\VGApart|v_count\(2) $ (\VGApart|h_count\(2) $ (!\VGApart|Add5~3\)))) # (GND)
-- \VGApart|Add5~5\ = CARRY((\VGApart|v_count\(2) & ((\VGApart|h_count\(2)) # (!\VGApart|Add5~3\))) # (!\VGApart|v_count\(2) & (\VGApart|h_count\(2) & !\VGApart|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(2),
	datab => \VGApart|h_count\(2),
	datad => VCC,
	cin => \VGApart|Add5~3\,
	combout => \VGApart|Add5~4_combout\,
	cout => \VGApart|Add5~5\);

-- Location: LCCOMB_X15_Y12_N12
\VGApart|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~6_combout\ = (\VGApart|h_count\(3) & ((\VGApart|v_count\(3) & (\VGApart|Add5~5\ & VCC)) # (!\VGApart|v_count\(3) & (!\VGApart|Add5~5\)))) # (!\VGApart|h_count\(3) & ((\VGApart|v_count\(3) & (!\VGApart|Add5~5\)) # (!\VGApart|v_count\(3) & 
-- ((\VGApart|Add5~5\) # (GND)))))
-- \VGApart|Add5~7\ = CARRY((\VGApart|h_count\(3) & (!\VGApart|v_count\(3) & !\VGApart|Add5~5\)) # (!\VGApart|h_count\(3) & ((!\VGApart|Add5~5\) # (!\VGApart|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(3),
	datab => \VGApart|v_count\(3),
	datad => VCC,
	cin => \VGApart|Add5~5\,
	combout => \VGApart|Add5~6_combout\,
	cout => \VGApart|Add5~7\);

-- Location: LCCOMB_X15_Y12_N14
\VGApart|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~8_combout\ = ((\VGApart|v_count\(4) $ (\VGApart|h_count\(4) $ (!\VGApart|Add5~7\)))) # (GND)
-- \VGApart|Add5~9\ = CARRY((\VGApart|v_count\(4) & ((\VGApart|h_count\(4)) # (!\VGApart|Add5~7\))) # (!\VGApart|v_count\(4) & (\VGApart|h_count\(4) & !\VGApart|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(4),
	datab => \VGApart|h_count\(4),
	datad => VCC,
	cin => \VGApart|Add5~7\,
	combout => \VGApart|Add5~8_combout\,
	cout => \VGApart|Add5~9\);

-- Location: LCCOMB_X15_Y12_N16
\VGApart|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~10_combout\ = (\VGApart|h_count\(5) & ((\VGApart|v_count\(5) & (\VGApart|Add5~9\ & VCC)) # (!\VGApart|v_count\(5) & (!\VGApart|Add5~9\)))) # (!\VGApart|h_count\(5) & ((\VGApart|v_count\(5) & (!\VGApart|Add5~9\)) # (!\VGApart|v_count\(5) & 
-- ((\VGApart|Add5~9\) # (GND)))))
-- \VGApart|Add5~11\ = CARRY((\VGApart|h_count\(5) & (!\VGApart|v_count\(5) & !\VGApart|Add5~9\)) # (!\VGApart|h_count\(5) & ((!\VGApart|Add5~9\) # (!\VGApart|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|v_count\(5),
	datad => VCC,
	cin => \VGApart|Add5~9\,
	combout => \VGApart|Add5~10_combout\,
	cout => \VGApart|Add5~11\);

-- Location: LCCOMB_X15_Y12_N18
\VGApart|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~12_combout\ = ((\VGApart|v_count\(6) $ (\VGApart|h_count\(6) $ (!\VGApart|Add5~11\)))) # (GND)
-- \VGApart|Add5~13\ = CARRY((\VGApart|v_count\(6) & ((\VGApart|h_count\(6)) # (!\VGApart|Add5~11\))) # (!\VGApart|v_count\(6) & (\VGApart|h_count\(6) & !\VGApart|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(6),
	datab => \VGApart|h_count\(6),
	datad => VCC,
	cin => \VGApart|Add5~11\,
	combout => \VGApart|Add5~12_combout\,
	cout => \VGApart|Add5~13\);

-- Location: LCCOMB_X15_Y12_N20
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

-- Location: LCCOMB_X15_Y12_N26
\VGApart|process_0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~13_combout\ = (!\VGApart|Add5~14_combout\ & (!\VGApart|Add5~12_combout\ & (!\VGApart|Add5~8_combout\ & \VGApart|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Add5~14_combout\,
	datab => \VGApart|Add5~12_combout\,
	datac => \VGApart|Add5~8_combout\,
	datad => \VGApart|Add5~10_combout\,
	combout => \VGApart|process_0~13_combout\);

-- Location: LCCOMB_X15_Y12_N22
\VGApart|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~16_combout\ = ((\VGApart|h_count\(8) $ (\VGApart|v_count\(8) $ (!\VGApart|Add5~15\)))) # (GND)
-- \VGApart|Add5~17\ = CARRY((\VGApart|h_count\(8) & ((\VGApart|v_count\(8)) # (!\VGApart|Add5~15\))) # (!\VGApart|h_count\(8) & (\VGApart|v_count\(8) & !\VGApart|Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(8),
	datab => \VGApart|v_count\(8),
	datad => VCC,
	cin => \VGApart|Add5~15\,
	combout => \VGApart|Add5~16_combout\,
	cout => \VGApart|Add5~17\);

-- Location: LCCOMB_X15_Y12_N24
\VGApart|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add5~18_combout\ = \VGApart|h_count\(9) $ (\VGApart|Add5~17\ $ (\VGApart|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(9),
	datad => \VGApart|v_count\(9),
	cin => \VGApart|Add5~17\,
	combout => \VGApart|Add5~18_combout\);

-- Location: LCCOMB_X15_Y12_N28
\VGApart|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~12_combout\ = (\VGApart|Add5~6_combout\ & (\VGApart|Add5~4_combout\ & (\VGApart|Add5~2_combout\ & \VGApart|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Add5~6_combout\,
	datab => \VGApart|Add5~4_combout\,
	datac => \VGApart|Add5~2_combout\,
	datad => \VGApart|Add5~0_combout\,
	combout => \VGApart|process_0~12_combout\);

-- Location: LCCOMB_X15_Y12_N0
\VGApart|process_0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~14_combout\ = (\VGApart|process_0~13_combout\ & (\VGApart|Add5~18_combout\ & (!\VGApart|Add5~16_combout\ & \VGApart|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~13_combout\,
	datab => \VGApart|Add5~18_combout\,
	datac => \VGApart|Add5~16_combout\,
	datad => \VGApart|process_0~12_combout\,
	combout => \VGApart|process_0~14_combout\);

-- Location: LCCOMB_X15_Y13_N10
\VGApart|set_color~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~11_combout\ = (\VGApart|v_count\(8) & (\VGApart|v_count\(6) & (\VGApart|v_count\(7) & \VGApart|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(8),
	datab => \VGApart|v_count\(6),
	datac => \VGApart|v_count\(7),
	datad => \VGApart|v_count\(4),
	combout => \VGApart|set_color~11_combout\);

-- Location: LCCOMB_X16_Y13_N0
\VGApart|set_color~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~12_combout\ = (\VGApart|v_count\(1) & (\VGApart|Equal1~2_combout\ & \VGApart|set_color~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(1),
	datac => \VGApart|Equal1~2_combout\,
	datad => \VGApart|set_color~11_combout\,
	combout => \VGApart|set_color~12_combout\);

-- Location: LCCOMB_X16_Y13_N4
\VGApart|set_color~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~10_combout\ = (!\VGApart|v_count\(3) & (!\VGApart|v_count\(0) & (!\VGApart|v_count\(2) & \VGApart|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(3),
	datab => \VGApart|v_count\(0),
	datac => \VGApart|v_count\(2),
	datad => \VGApart|Equal1~1_combout\,
	combout => \VGApart|set_color~10_combout\);

-- Location: LCCOMB_X14_Y17_N18
\cID|lastRow~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~0_combout\ = (\CAP11|v_count\(4) & ((\cID|LessThan5~0_combout\) # ((\cID|LessThan3~1_combout\ & !\CAP11|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \CAP11|h_count\(9),
	datac => \cID|LessThan5~0_combout\,
	datad => \CAP11|v_count\(4),
	combout => \cID|lastRow~0_combout\);

-- Location: LCCOMB_X15_Y17_N26
\cID|whiteCount[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|whiteCount[4]~31_combout\ = (((!\CAP11|RAM_adr[15]~3_combout\) # (!\CAP11|QaddReg\(3))) # (!\CAP11|QaddReg\(2))) # (!\CAP11|QaddReg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|QaddReg\(1),
	datab => \CAP11|QaddReg\(2),
	datac => \CAP11|QaddReg\(3),
	datad => \CAP11|RAM_adr[15]~3_combout\,
	combout => \cID|whiteCount[4]~31_combout\);

-- Location: LCCOMB_X14_Y17_N2
\cID|lastRow[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow[9]~1_combout\ = (\SW[4]~input_o\ & (((!\cID|LessThan5~0_combout\ & !\cID|LessThan3~2_combout\)) # (!\cID|whiteCount[4]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \cID|LessThan5~0_combout\,
	datac => \cID|LessThan3~2_combout\,
	datad => \cID|whiteCount[4]~31_combout\,
	combout => \cID|lastRow[9]~1_combout\);

-- Location: FF_X14_Y17_N19
\cID|lastRow[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~0_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(4));

-- Location: LCCOMB_X16_Y15_N24
\cID|firstRow~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow~0_combout\ = (\CAP11|v_count\(4) & \cID|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(4),
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|firstRow~0_combout\);

-- Location: LCCOMB_X22_Y17_N26
\cID|firstRow[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow[1]~2_combout\ = (\cID|mostCount\(5)) # ((\cID|mostCount\(6)) # ((\cID|mostCount\(4)) # (\cID|mostCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|mostCount\(5),
	datab => \cID|mostCount\(6),
	datac => \cID|mostCount\(4),
	datad => \cID|mostCount\(3),
	combout => \cID|firstRow[1]~2_combout\);

-- Location: LCCOMB_X22_Y17_N24
\cID|firstRow[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow[1]~1_combout\ = (\cID|mostCount\(1)) # ((\cID|mostCount\(0)) # ((\cID|mostCount\(2)) # (!\cID|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|mostCount\(1),
	datab => \cID|mostCount\(0),
	datac => \cID|mostCount\(2),
	datad => \cID|LessThan4~0_combout\,
	combout => \cID|firstRow[1]~1_combout\);

-- Location: LCCOMB_X22_Y17_N28
\cID|firstRow[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow[1]~3_combout\ = (\cID|firstRow[1]~2_combout\) # ((\cID|mostCount\(8)) # ((\cID|mostCount\(7)) # (\cID|firstRow[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstRow[1]~2_combout\,
	datab => \cID|mostCount\(8),
	datac => \cID|mostCount\(7),
	datad => \cID|firstRow[1]~1_combout\,
	combout => \cID|firstRow[1]~3_combout\);

-- Location: LCCOMB_X16_Y15_N26
\cID|firstRow[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow[0]~4_combout\ = (!\cID|LessThan3~2_combout\ & ((!\cID|LessThan5~0_combout\) # (!\cID|firstRow[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstRow[1]~3_combout\,
	datac => \cID|LessThan5~0_combout\,
	datad => \cID|LessThan3~2_combout\,
	combout => \cID|firstRow[0]~4_combout\);

-- Location: FF_X16_Y15_N25
\cID|firstRow[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstRow~0_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstRow[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstRow\(4));

-- Location: LCCOMB_X14_Y17_N12
\cID|lastRow~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~2_combout\ = (\CAP11|v_count\(3) & ((\cID|LessThan5~0_combout\) # ((\cID|LessThan3~1_combout\ & !\CAP11|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \CAP11|h_count\(9),
	datac => \cID|LessThan5~0_combout\,
	datad => \CAP11|v_count\(3),
	combout => \cID|lastRow~2_combout\);

-- Location: FF_X14_Y17_N13
\cID|lastRow[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~2_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(3));

-- Location: LCCOMB_X16_Y15_N18
\cID|firstRow~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow~5_combout\ = (\CAP11|v_count\(3) & \cID|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(3),
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|firstRow~5_combout\);

-- Location: FF_X16_Y15_N19
\cID|firstRow[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstRow~5_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstRow[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstRow\(3));

-- Location: LCCOMB_X14_Y17_N30
\cID|lastRow~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~3_combout\ = (\CAP11|v_count\(2) & ((\cID|LessThan5~0_combout\) # ((\cID|LessThan3~1_combout\ & !\CAP11|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \CAP11|h_count\(9),
	datac => \cID|LessThan5~0_combout\,
	datad => \CAP11|v_count\(2),
	combout => \cID|lastRow~3_combout\);

-- Location: FF_X14_Y17_N31
\cID|lastRow[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~3_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(2));

-- Location: LCCOMB_X16_Y15_N28
\cID|firstRow~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow~6_combout\ = (\CAP11|v_count\(2) & \cID|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(2),
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|firstRow~6_combout\);

-- Location: FF_X16_Y15_N29
\cID|firstRow[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstRow~6_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstRow[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstRow\(2));

-- Location: LCCOMB_X16_Y15_N6
\cID|firstRow~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow~7_combout\ = (\CAP11|v_count\(1) & \cID|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|v_count\(1),
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|firstRow~7_combout\);

-- Location: FF_X16_Y15_N7
\cID|firstRow[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstRow~7_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstRow[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstRow\(1));

-- Location: LCCOMB_X14_Y17_N28
\cID|lastRow~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~4_combout\ = (\CAP11|v_count\(1) & ((\cID|LessThan5~0_combout\) # ((\cID|LessThan3~1_combout\ & !\CAP11|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \CAP11|h_count\(9),
	datac => \cID|LessThan5~0_combout\,
	datad => \CAP11|v_count\(1),
	combout => \cID|lastRow~4_combout\);

-- Location: FF_X14_Y17_N29
\cID|lastRow[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~4_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(1));

-- Location: LCCOMB_X16_Y15_N4
\cID|firstRow~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow~8_combout\ = (\CAP11|v_count\(0) & \cID|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|v_count\(0),
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|firstRow~8_combout\);

-- Location: FF_X16_Y15_N5
\cID|firstRow[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstRow~8_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstRow[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstRow\(0));

-- Location: LCCOMB_X14_Y17_N10
\cID|lastRow~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~5_combout\ = (\CAP11|v_count\(0) & ((\cID|LessThan5~0_combout\) # ((\cID|LessThan3~1_combout\ & !\CAP11|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \cID|LessThan5~0_combout\,
	datac => \CAP11|v_count\(0),
	datad => \CAP11|h_count\(9),
	combout => \cID|lastRow~5_combout\);

-- Location: FF_X14_Y17_N11
\cID|lastRow[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~5_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(0));

-- Location: LCCOMB_X15_Y15_N2
\cID|mostLocY[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[1]~10_cout\ = CARRY((\cID|firstRow\(0) & \cID|lastRow\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstRow\(0),
	datab => \cID|lastRow\(0),
	datad => VCC,
	cout => \cID|mostLocY[1]~10_cout\);

-- Location: LCCOMB_X15_Y15_N4
\cID|mostLocY[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[1]~11_combout\ = (\cID|firstRow\(1) & ((\cID|lastRow\(1) & (\cID|mostLocY[1]~10_cout\ & VCC)) # (!\cID|lastRow\(1) & (!\cID|mostLocY[1]~10_cout\)))) # (!\cID|firstRow\(1) & ((\cID|lastRow\(1) & (!\cID|mostLocY[1]~10_cout\)) # 
-- (!\cID|lastRow\(1) & ((\cID|mostLocY[1]~10_cout\) # (GND)))))
-- \cID|mostLocY[1]~12\ = CARRY((\cID|firstRow\(1) & (!\cID|lastRow\(1) & !\cID|mostLocY[1]~10_cout\)) # (!\cID|firstRow\(1) & ((!\cID|mostLocY[1]~10_cout\) # (!\cID|lastRow\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstRow\(1),
	datab => \cID|lastRow\(1),
	datad => VCC,
	cin => \cID|mostLocY[1]~10_cout\,
	combout => \cID|mostLocY[1]~11_combout\,
	cout => \cID|mostLocY[1]~12\);

-- Location: LCCOMB_X15_Y15_N6
\cID|mostLocY[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[2]~13_combout\ = ((\cID|lastRow\(2) $ (\cID|firstRow\(2) $ (!\cID|mostLocY[1]~12\)))) # (GND)
-- \cID|mostLocY[2]~14\ = CARRY((\cID|lastRow\(2) & ((\cID|firstRow\(2)) # (!\cID|mostLocY[1]~12\))) # (!\cID|lastRow\(2) & (\cID|firstRow\(2) & !\cID|mostLocY[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastRow\(2),
	datab => \cID|firstRow\(2),
	datad => VCC,
	cin => \cID|mostLocY[1]~12\,
	combout => \cID|mostLocY[2]~13_combout\,
	cout => \cID|mostLocY[2]~14\);

-- Location: LCCOMB_X15_Y15_N8
\cID|mostLocY[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[3]~15_combout\ = (\cID|lastRow\(3) & ((\cID|firstRow\(3) & (\cID|mostLocY[2]~14\ & VCC)) # (!\cID|firstRow\(3) & (!\cID|mostLocY[2]~14\)))) # (!\cID|lastRow\(3) & ((\cID|firstRow\(3) & (!\cID|mostLocY[2]~14\)) # (!\cID|firstRow\(3) & 
-- ((\cID|mostLocY[2]~14\) # (GND)))))
-- \cID|mostLocY[3]~16\ = CARRY((\cID|lastRow\(3) & (!\cID|firstRow\(3) & !\cID|mostLocY[2]~14\)) # (!\cID|lastRow\(3) & ((!\cID|mostLocY[2]~14\) # (!\cID|firstRow\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastRow\(3),
	datab => \cID|firstRow\(3),
	datad => VCC,
	cin => \cID|mostLocY[2]~14\,
	combout => \cID|mostLocY[3]~15_combout\,
	cout => \cID|mostLocY[3]~16\);

-- Location: LCCOMB_X15_Y15_N10
\cID|mostLocY[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[4]~17_combout\ = ((\cID|lastRow\(4) $ (\cID|firstRow\(4) $ (!\cID|mostLocY[3]~16\)))) # (GND)
-- \cID|mostLocY[4]~18\ = CARRY((\cID|lastRow\(4) & ((\cID|firstRow\(4)) # (!\cID|mostLocY[3]~16\))) # (!\cID|lastRow\(4) & (\cID|firstRow\(4) & !\cID|mostLocY[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastRow\(4),
	datab => \cID|firstRow\(4),
	datad => VCC,
	cin => \cID|mostLocY[3]~16\,
	combout => \cID|mostLocY[4]~17_combout\,
	cout => \cID|mostLocY[4]~18\);

-- Location: FF_X15_Y15_N11
\cID|mostLocY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocY[4]~17_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocY\(4));

-- Location: FF_X16_Y13_N13
\cID|lastLocY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocY\(4),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocY\(3));

-- Location: FF_X15_Y15_N9
\cID|mostLocY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocY[3]~15_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocY\(3));

-- Location: LCCOMB_X16_Y13_N6
\cID|lastLocY[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastLocY[2]~feeder_combout\ = \cID|mostLocY\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|mostLocY\(3),
	combout => \cID|lastLocY[2]~feeder_combout\);

-- Location: FF_X16_Y13_N7
\cID|lastLocY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastLocY[2]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocY\(2));

-- Location: LCCOMB_X16_Y13_N12
\VGApart|set_color~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~4_combout\ = (\VGApart|v_count\(3) & (\cID|lastLocY\(3) & (\VGApart|v_count\(2) $ (!\cID|lastLocY\(2))))) # (!\VGApart|v_count\(3) & (!\cID|lastLocY\(3) & (\VGApart|v_count\(2) $ (!\cID|lastLocY\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(3),
	datab => \VGApart|v_count\(2),
	datac => \cID|lastLocY\(3),
	datad => \cID|lastLocY\(2),
	combout => \VGApart|set_color~4_combout\);

-- Location: LCCOMB_X14_Y17_N24
\cID|lastRow~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~6_combout\ = (\CAP11|v_count\(5) & ((\cID|LessThan5~0_combout\) # ((\cID|LessThan3~1_combout\ & !\CAP11|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \CAP11|h_count\(9),
	datac => \cID|LessThan5~0_combout\,
	datad => \CAP11|v_count\(5),
	combout => \cID|lastRow~6_combout\);

-- Location: FF_X14_Y17_N25
\cID|lastRow[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~6_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(5));

-- Location: LCCOMB_X16_Y15_N10
\cID|firstRow~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow~9_combout\ = (!\CAP11|v_count\(9) & (!\CAP11|Equal1~1_combout\ & \CAP11|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(9),
	datac => \CAP11|Equal1~1_combout\,
	datad => \CAP11|v_count\(5),
	combout => \cID|firstRow~9_combout\);

-- Location: FF_X16_Y15_N11
\cID|firstRow[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstRow~9_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstRow[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstRow\(5));

-- Location: LCCOMB_X15_Y15_N12
\cID|mostLocY[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[5]~19_combout\ = (\cID|lastRow\(5) & ((\cID|firstRow\(5) & (\cID|mostLocY[4]~18\ & VCC)) # (!\cID|firstRow\(5) & (!\cID|mostLocY[4]~18\)))) # (!\cID|lastRow\(5) & ((\cID|firstRow\(5) & (!\cID|mostLocY[4]~18\)) # (!\cID|firstRow\(5) & 
-- ((\cID|mostLocY[4]~18\) # (GND)))))
-- \cID|mostLocY[5]~20\ = CARRY((\cID|lastRow\(5) & (!\cID|firstRow\(5) & !\cID|mostLocY[4]~18\)) # (!\cID|lastRow\(5) & ((!\cID|mostLocY[4]~18\) # (!\cID|firstRow\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastRow\(5),
	datab => \cID|firstRow\(5),
	datad => VCC,
	cin => \cID|mostLocY[4]~18\,
	combout => \cID|mostLocY[5]~19_combout\,
	cout => \cID|mostLocY[5]~20\);

-- Location: FF_X15_Y15_N13
\cID|mostLocY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocY[5]~19_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocY\(5));

-- Location: FF_X16_Y13_N25
\cID|lastLocY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocY\(5),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocY\(4));

-- Location: LCCOMB_X14_Y17_N26
\cID|lastRow~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~7_combout\ = (\CAP11|v_count\(6) & ((\cID|LessThan5~0_combout\) # ((\cID|LessThan3~1_combout\ & !\CAP11|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \CAP11|h_count\(9),
	datac => \cID|LessThan5~0_combout\,
	datad => \CAP11|v_count\(6),
	combout => \cID|lastRow~7_combout\);

-- Location: FF_X14_Y17_N27
\cID|lastRow[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~7_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(6));

-- Location: LCCOMB_X16_Y15_N12
\cID|firstRow~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow~10_combout\ = (\CAP11|v_count\(6) & \cID|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(6),
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|firstRow~10_combout\);

-- Location: FF_X16_Y15_N13
\cID|firstRow[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstRow~10_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstRow[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstRow\(6));

-- Location: LCCOMB_X15_Y15_N14
\cID|mostLocY[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[6]~21_combout\ = ((\cID|lastRow\(6) $ (\cID|firstRow\(6) $ (!\cID|mostLocY[5]~20\)))) # (GND)
-- \cID|mostLocY[6]~22\ = CARRY((\cID|lastRow\(6) & ((\cID|firstRow\(6)) # (!\cID|mostLocY[5]~20\))) # (!\cID|lastRow\(6) & (\cID|firstRow\(6) & !\cID|mostLocY[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|lastRow\(6),
	datab => \cID|firstRow\(6),
	datad => VCC,
	cin => \cID|mostLocY[5]~20\,
	combout => \cID|mostLocY[6]~21_combout\,
	cout => \cID|mostLocY[6]~22\);

-- Location: FF_X15_Y15_N15
\cID|mostLocY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocY[6]~21_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocY\(6));

-- Location: LCCOMB_X16_Y13_N2
\cID|lastLocY[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastLocY[5]~feeder_combout\ = \cID|mostLocY\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|mostLocY\(6),
	combout => \cID|lastLocY[5]~feeder_combout\);

-- Location: FF_X16_Y13_N3
\cID|lastLocY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastLocY[5]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocY\(5));

-- Location: LCCOMB_X16_Y13_N24
\VGApart|set_color~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~5_combout\ = (\VGApart|v_count\(5) & (\cID|lastLocY\(5) & (\VGApart|v_count\(4) $ (!\cID|lastLocY\(4))))) # (!\VGApart|v_count\(5) & (!\cID|lastLocY\(5) & (\VGApart|v_count\(4) $ (!\cID|lastLocY\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(5),
	datab => \VGApart|v_count\(4),
	datac => \cID|lastLocY\(4),
	datad => \cID|lastLocY\(5),
	combout => \VGApart|set_color~5_combout\);

-- Location: FF_X15_Y15_N7
\cID|mostLocY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocY[2]~13_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocY\(2));

-- Location: FF_X16_Y13_N9
\cID|lastLocY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocY\(2),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocY\(1));

-- Location: FF_X15_Y15_N5
\cID|mostLocY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocY[1]~11_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocY\(1));

-- Location: LCCOMB_X16_Y13_N26
\cID|lastLocY[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastLocY[0]~feeder_combout\ = \cID|mostLocY\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|mostLocY\(1),
	combout => \cID|lastLocY[0]~feeder_combout\);

-- Location: FF_X16_Y13_N27
\cID|lastLocY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastLocY[0]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocY\(0));

-- Location: LCCOMB_X16_Y13_N8
\VGApart|set_color~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~6_combout\ = (\VGApart|v_count\(0) & (\cID|lastLocY\(0) & (\VGApart|v_count\(1) $ (!\cID|lastLocY\(1))))) # (!\VGApart|v_count\(0) & (!\cID|lastLocY\(0) & (\VGApart|v_count\(1) $ (!\cID|lastLocY\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(0),
	datab => \VGApart|v_count\(1),
	datac => \cID|lastLocY\(1),
	datad => \cID|lastLocY\(0),
	combout => \VGApart|set_color~6_combout\);

-- Location: LCCOMB_X14_Y17_N0
\cID|lastRow~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~8_combout\ = (\cID|LessThan3~1_combout\ & (\CAP11|v_count\(9) & !\CAP11|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datac => \CAP11|v_count\(9),
	datad => \CAP11|h_count\(9),
	combout => \cID|lastRow~8_combout\);

-- Location: FF_X14_Y17_N1
\cID|lastRow[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~8_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(9));

-- Location: LCCOMB_X16_Y15_N2
\cID|firstRow~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow~11_combout\ = (\CAP11|v_count\(8) & \cID|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(8),
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|firstRow~11_combout\);

-- Location: FF_X16_Y15_N3
\cID|firstRow[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstRow~11_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstRow[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstRow\(8));

-- Location: LCCOMB_X14_Y17_N22
\cID|lastRow~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~9_combout\ = (\CAP11|v_count\(8) & ((\cID|LessThan5~0_combout\) # ((\cID|LessThan3~1_combout\ & !\CAP11|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cID|LessThan3~1_combout\,
	datab => \CAP11|h_count\(9),
	datac => \cID|LessThan5~0_combout\,
	datad => \CAP11|v_count\(8),
	combout => \cID|lastRow~9_combout\);

-- Location: FF_X14_Y17_N23
\cID|lastRow[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~9_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(8));

-- Location: LCCOMB_X16_Y15_N20
\cID|firstRow~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|firstRow~12_combout\ = (\CAP11|v_count\(7) & \cID|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|v_count\(7),
	datad => \cID|LessThan5~0_combout\,
	combout => \cID|firstRow~12_combout\);

-- Location: FF_X16_Y15_N21
\cID|firstRow[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|firstRow~12_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|firstRow[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|firstRow\(7));

-- Location: LCCOMB_X14_Y17_N16
\cID|lastRow~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastRow~10_combout\ = (\CAP11|v_count\(7) & ((\cID|LessThan5~0_combout\) # ((\cID|LessThan3~1_combout\ & !\CAP11|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|v_count\(7),
	datab => \cID|LessThan5~0_combout\,
	datac => \cID|LessThan3~1_combout\,
	datad => \CAP11|h_count\(9),
	combout => \cID|lastRow~10_combout\);

-- Location: FF_X14_Y17_N17
\cID|lastRow[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastRow~10_combout\,
	ena => \cID|lastRow[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastRow\(7));

-- Location: LCCOMB_X15_Y15_N16
\cID|mostLocY[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[7]~23_combout\ = (\cID|firstRow\(7) & ((\cID|lastRow\(7) & (\cID|mostLocY[6]~22\ & VCC)) # (!\cID|lastRow\(7) & (!\cID|mostLocY[6]~22\)))) # (!\cID|firstRow\(7) & ((\cID|lastRow\(7) & (!\cID|mostLocY[6]~22\)) # (!\cID|lastRow\(7) & 
-- ((\cID|mostLocY[6]~22\) # (GND)))))
-- \cID|mostLocY[7]~24\ = CARRY((\cID|firstRow\(7) & (!\cID|lastRow\(7) & !\cID|mostLocY[6]~22\)) # (!\cID|firstRow\(7) & ((!\cID|mostLocY[6]~22\) # (!\cID|lastRow\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstRow\(7),
	datab => \cID|lastRow\(7),
	datad => VCC,
	cin => \cID|mostLocY[6]~22\,
	combout => \cID|mostLocY[7]~23_combout\,
	cout => \cID|mostLocY[7]~24\);

-- Location: LCCOMB_X15_Y15_N18
\cID|mostLocY[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[8]~25_combout\ = ((\cID|firstRow\(8) $ (\cID|lastRow\(8) $ (!\cID|mostLocY[7]~24\)))) # (GND)
-- \cID|mostLocY[8]~26\ = CARRY((\cID|firstRow\(8) & ((\cID|lastRow\(8)) # (!\cID|mostLocY[7]~24\))) # (!\cID|firstRow\(8) & (\cID|lastRow\(8) & !\cID|mostLocY[7]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cID|firstRow\(8),
	datab => \cID|lastRow\(8),
	datad => VCC,
	cin => \cID|mostLocY[7]~24\,
	combout => \cID|mostLocY[8]~25_combout\,
	cout => \cID|mostLocY[8]~26\);

-- Location: LCCOMB_X15_Y15_N20
\cID|mostLocY[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|mostLocY[9]~27_combout\ = \cID|mostLocY[8]~26\ $ (\cID|lastRow\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cID|lastRow\(9),
	cin => \cID|mostLocY[8]~26\,
	combout => \cID|mostLocY[9]~27_combout\);

-- Location: FF_X15_Y15_N21
\cID|mostLocY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocY[9]~27_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocY\(9));

-- Location: FF_X16_Y13_N29
\cID|lastLocY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocY\(9),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocY\(8));

-- Location: FF_X15_Y15_N17
\cID|mostLocY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocY[7]~23_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocY\(7));

-- Location: FF_X16_Y13_N21
\cID|lastLocY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	asdata => \cID|mostLocY\(7),
	clrn => \SW[4]~input_o\,
	sload => VCC,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocY\(6));

-- Location: FF_X15_Y15_N19
\cID|mostLocY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|mostLocY[8]~25_combout\,
	clrn => \SW[4]~input_o\,
	sclr => \cID|ALT_INV_LessThan5~0_combout\,
	ena => \cID|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|mostLocY\(8));

-- Location: LCCOMB_X16_Y13_N10
\cID|lastLocY[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cID|lastLocY[7]~feeder_combout\ = \cID|mostLocY\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cID|mostLocY\(8),
	combout => \cID|lastLocY[7]~feeder_combout\);

-- Location: FF_X16_Y13_N11
\cID|lastLocY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|outCLK~clkctrl_outclk\,
	d => \cID|lastLocY[7]~feeder_combout\,
	clrn => \SW[4]~input_o\,
	ena => \cID|lastLocY[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cID|lastLocY\(7));

-- Location: LCCOMB_X16_Y13_N20
\VGApart|set_color~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~7_combout\ = (\VGApart|v_count\(7) & (\cID|lastLocY\(7) & (\VGApart|v_count\(6) $ (!\cID|lastLocY\(6))))) # (!\VGApart|v_count\(7) & (!\cID|lastLocY\(7) & (\VGApart|v_count\(6) $ (!\cID|lastLocY\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(7),
	datab => \VGApart|v_count\(6),
	datac => \cID|lastLocY\(6),
	datad => \cID|lastLocY\(7),
	combout => \VGApart|set_color~7_combout\);

-- Location: LCCOMB_X16_Y13_N28
\VGApart|set_color~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~8_combout\ = (\VGApart|set_color~7_combout\ & (\VGApart|v_count\(8) $ (!\cID|lastLocY\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(8),
	datac => \cID|lastLocY\(8),
	datad => \VGApart|set_color~7_combout\,
	combout => \VGApart|set_color~8_combout\);

-- Location: LCCOMB_X16_Y13_N18
\VGApart|set_color~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~9_combout\ = (\VGApart|set_color~4_combout\ & (\VGApart|set_color~5_combout\ & (\VGApart|set_color~6_combout\ & \VGApart|set_color~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|set_color~4_combout\,
	datab => \VGApart|set_color~5_combout\,
	datac => \VGApart|set_color~6_combout\,
	datad => \VGApart|set_color~8_combout\,
	combout => \VGApart|set_color~9_combout\);

-- Location: LCCOMB_X16_Y13_N14
\VGApart|set_color~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~13_combout\ = (\VGApart|set_color~9_combout\) # ((!\VGApart|v_count\(5) & ((\VGApart|set_color~12_combout\) # (\VGApart|set_color~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(5),
	datab => \VGApart|set_color~12_combout\,
	datac => \VGApart|set_color~10_combout\,
	datad => \VGApart|set_color~9_combout\,
	combout => \VGApart|set_color~13_combout\);

-- Location: LCCOMB_X17_Y13_N28
\VGApart|set_color~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~14_combout\ = (\VGApart|process_0~11_combout\) # ((\VGApart|process_0~14_combout\) # ((!\VGApart|v_count\(9) & \VGApart|set_color~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~11_combout\,
	datab => \VGApart|process_0~14_combout\,
	datac => \VGApart|v_count\(9),
	datad => \VGApart|set_color~13_combout\,
	combout => \VGApart|set_color~14_combout\);

-- Location: LCCOMB_X17_Y13_N24
\VGApart|set_color~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|set_color~15_combout\ = (\VGApart|set_color~3_combout\) # ((!\VGApart|process_0~7_combout\ & \VGApart|set_color~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~7_combout\,
	datac => \VGApart|set_color~3_combout\,
	datad => \VGApart|set_color~14_combout\,
	combout => \VGApart|set_color~15_combout\);

-- Location: FF_X17_Y13_N25
\VGApart|set_color\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|set_color~15_combout\,
	sclr => \ALT_INV_SW[4]~input_o\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|set_color~q\);

-- Location: LCCOMB_X21_Y11_N24
\VGApart|red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~0_combout\ = (!\VGApart|isColor~q\ & (\VGApart|video_on~q\ & !\VGApart|set_color~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|isColor~q\,
	datab => \VGApart|video_on~q\,
	datad => \VGApart|set_color~q\,
	combout => \VGApart|red~0_combout\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X17_Y13_N2
\VGApart|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|LessThan5~1_combout\ = (\VGApart|v_count\(9)) # (\VGApart|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|v_count\(9),
	datad => \VGApart|LessThan5~0_combout\,
	combout => \VGApart|LessThan5~1_combout\);

-- Location: LCCOMB_X15_Y13_N22
\VGApart|process_0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~17_combout\ = (\VGApart|h_count\(5) & (((\VGApart|set_color~0_combout\) # (\VGApart|h_count\(4))) # (!\VGApart|h_count\(9)))) # (!\VGApart|h_count\(5) & (!\VGApart|h_count\(9) & ((\VGApart|set_color~0_combout\) # 
-- (\VGApart|h_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(5),
	datab => \VGApart|h_count\(9),
	datac => \VGApart|set_color~0_combout\,
	datad => \VGApart|h_count\(4),
	combout => \VGApart|process_0~17_combout\);

-- Location: LCCOMB_X17_Y13_N0
\VGApart|process_0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~16_combout\ = (\VGApart|h_count\(8)) # (\VGApart|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|h_count\(8),
	datad => \VGApart|h_count\(7),
	combout => \VGApart|process_0~16_combout\);

-- Location: LCCOMB_X17_Y13_N6
\VGApart|process_0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~18_combout\ = (\VGApart|h_count\(9) & ((\VGApart|process_0~17_combout\) # ((\VGApart|h_count\(6))))) # (!\VGApart|h_count\(9) & ((\VGApart|process_0~16_combout\) # ((\VGApart|process_0~17_combout\ & \VGApart|h_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~17_combout\,
	datab => \VGApart|h_count\(9),
	datac => \VGApart|h_count\(6),
	datad => \VGApart|process_0~16_combout\,
	combout => \VGApart|process_0~18_combout\);

-- Location: LCCOMB_X21_Y2_N0
\VGApart|process_0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~19_combout\ = (!\VGApart|LessThan5~1_combout\ & ((\VGApart|h_count\(9) & (!\VGApart|process_0~18_combout\ & \VGApart|LessThan10~0_combout\)) # (!\VGApart|h_count\(9) & (\VGApart|process_0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|LessThan5~1_combout\,
	datab => \VGApart|h_count\(9),
	datac => \VGApart|process_0~18_combout\,
	datad => \VGApart|LessThan10~0_combout\,
	combout => \VGApart|process_0~19_combout\);

-- Location: FF_X21_Y2_N1
\VGApart|enarRAMclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|process_0~19_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|enarRAMclk~q\);

-- Location: LCCOMB_X21_Y2_N28
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

-- Location: CLKCTRL_G16
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

-- Location: LCCOMB_X21_Y12_N0
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

-- Location: LCCOMB_X17_Y12_N4
\VGApart|process_0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~15_combout\ = (\VGApart|v_count\(9)) # ((\VGApart|v_count\(0)) # (\VGApart|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(9),
	datab => \VGApart|v_count\(0),
	datad => \VGApart|LessThan5~0_combout\,
	combout => \VGApart|process_0~15_combout\);

-- Location: LCCOMB_X17_Y12_N20
\VGApart|RAM_adr0[15]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0[15]~6_combout\ = (!\SW[1]~input_o\ & (!\VGApart|process_0~15_combout\ & (\VGApart|h_count\(0) & !\VGApart|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \VGApart|process_0~15_combout\,
	datac => \VGApart|h_count\(0),
	datad => \VGApart|process_0~7_combout\,
	combout => \VGApart|RAM_adr0[15]~6_combout\);

-- Location: FF_X21_Y12_N1
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

-- Location: LCCOMB_X21_Y12_N2
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

-- Location: FF_X21_Y12_N3
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

-- Location: LCCOMB_X21_Y12_N4
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

-- Location: FF_X21_Y12_N5
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

-- Location: LCCOMB_X21_Y12_N6
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

-- Location: FF_X21_Y12_N7
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

-- Location: LCCOMB_X21_Y12_N8
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

-- Location: FF_X21_Y12_N9
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

-- Location: LCCOMB_X21_Y12_N10
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

-- Location: FF_X21_Y12_N11
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

-- Location: LCCOMB_X21_Y12_N12
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

-- Location: FF_X21_Y12_N13
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

-- Location: LCCOMB_X21_Y12_N14
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

-- Location: FF_X21_Y12_N15
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

-- Location: LCCOMB_X21_Y12_N16
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

-- Location: LCCOMB_X22_Y12_N22
\VGApart|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~1_combout\ = (\VGApart|RAM_adr0\(5) & (\VGApart|RAM_adr0\(6) & (\VGApart|RAM_adr0\(4) & \VGApart|RAM_adr0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(5),
	datab => \VGApart|RAM_adr0\(6),
	datac => \VGApart|RAM_adr0\(4),
	datad => \VGApart|RAM_adr0\(7),
	combout => \VGApart|Equal2~1_combout\);

-- Location: LCCOMB_X24_Y12_N28
\VGApart|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~2_combout\ = (!\VGApart|RAM_adr0\(10) & (!\VGApart|RAM_adr0\(9) & (!\VGApart|RAM_adr0\(11) & !\VGApart|RAM_adr0\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(10),
	datab => \VGApart|RAM_adr0\(9),
	datac => \VGApart|RAM_adr0\(11),
	datad => \VGApart|RAM_adr0\(8),
	combout => \VGApart|Equal2~2_combout\);

-- Location: LCCOMB_X20_Y12_N2
\VGApart|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~0_combout\ = (\VGApart|RAM_adr0\(3) & (\VGApart|RAM_adr0\(2) & (\VGApart|RAM_adr0\(0) & \VGApart|RAM_adr0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(3),
	datab => \VGApart|RAM_adr0\(2),
	datac => \VGApart|RAM_adr0\(0),
	datad => \VGApart|RAM_adr0\(1),
	combout => \VGApart|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y12_N12
\VGApart|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~3_combout\ = (\VGApart|RAM_adr0\(15) & (!\VGApart|RAM_adr0\(12) & (\VGApart|RAM_adr0\(13) & \VGApart|RAM_adr0\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(15),
	datab => \VGApart|RAM_adr0\(12),
	datac => \VGApart|RAM_adr0\(13),
	datad => \VGApart|RAM_adr0\(14),
	combout => \VGApart|Equal2~3_combout\);

-- Location: LCCOMB_X22_Y12_N18
\VGApart|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal2~4_combout\ = (\VGApart|Equal2~1_combout\ & (\VGApart|Equal2~2_combout\ & (\VGApart|Equal2~0_combout\ & \VGApart|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal2~1_combout\,
	datab => \VGApart|Equal2~2_combout\,
	datac => \VGApart|Equal2~0_combout\,
	datad => \VGApart|Equal2~3_combout\,
	combout => \VGApart|Equal2~4_combout\);

-- Location: LCCOMB_X22_Y12_N2
\VGApart|RAM_adr0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0~5_combout\ = (\VGApart|Add2~16_combout\ & !\VGApart|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add2~16_combout\,
	datad => \VGApart|Equal2~4_combout\,
	combout => \VGApart|RAM_adr0~5_combout\);

-- Location: FF_X22_Y12_N3
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

-- Location: LCCOMB_X21_Y12_N18
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

-- Location: FF_X21_Y12_N19
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

-- Location: LCCOMB_X21_Y12_N20
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

-- Location: FF_X21_Y12_N21
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

-- Location: LCCOMB_X21_Y12_N22
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

-- Location: FF_X21_Y12_N23
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

-- Location: LCCOMB_X21_Y12_N24
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

-- Location: FF_X21_Y12_N25
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

-- Location: LCCOMB_X21_Y12_N26
\VGApart|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add2~26_combout\ = (\VGApart|RAM_adr0\(13) & (!\VGApart|Add2~25\)) # (!\VGApart|RAM_adr0\(13) & ((\VGApart|Add2~25\) # (GND)))
-- \VGApart|Add2~27\ = CARRY((!\VGApart|Add2~25\) # (!\VGApart|RAM_adr0\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(13),
	datad => VCC,
	cin => \VGApart|Add2~25\,
	combout => \VGApart|Add2~26_combout\,
	cout => \VGApart|Add2~27\);

-- Location: LCCOMB_X22_Y12_N4
\VGApart|RAM_adr0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0~4_combout\ = (\VGApart|Add2~26_combout\ & !\VGApart|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGApart|Add2~26_combout\,
	datad => \VGApart|Equal2~4_combout\,
	combout => \VGApart|RAM_adr0~4_combout\);

-- Location: FF_X22_Y12_N5
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

-- Location: LCCOMB_X21_Y12_N28
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

-- Location: LCCOMB_X22_Y12_N10
\VGApart|RAM_adr0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0~3_combout\ = (\VGApart|Add2~28_combout\ & !\VGApart|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Add2~28_combout\,
	datad => \VGApart|Equal2~4_combout\,
	combout => \VGApart|RAM_adr0~3_combout\);

-- Location: FF_X22_Y12_N11
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

-- Location: LCCOMB_X21_Y12_N30
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

-- Location: LCCOMB_X22_Y12_N24
\VGApart|RAM_adr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr0~2_combout\ = (\VGApart|Add2~30_combout\ & !\VGApart|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Add2~30_combout\,
	datad => \VGApart|Equal2~4_combout\,
	combout => \VGApart|RAM_adr0~2_combout\);

-- Location: FF_X22_Y12_N25
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

-- Location: LCCOMB_X23_Y12_N0
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

-- Location: LCCOMB_X17_Y13_N16
\VGApart|RAM_adr1[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1[15]~1_combout\ = (!\SW[1]~input_o\ & \VGApart|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \VGApart|h_count\(0),
	combout => \VGApart|RAM_adr1[15]~1_combout\);

-- Location: LCCOMB_X17_Y13_N30
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

-- Location: FF_X23_Y12_N1
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

-- Location: LCCOMB_X23_Y12_N2
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

-- Location: FF_X23_Y12_N3
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

-- Location: LCCOMB_X23_Y12_N4
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

-- Location: FF_X23_Y12_N5
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

-- Location: LCCOMB_X23_Y12_N6
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

-- Location: FF_X23_Y12_N7
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

-- Location: LCCOMB_X23_Y12_N8
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

-- Location: FF_X23_Y12_N9
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

-- Location: LCCOMB_X23_Y12_N10
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

-- Location: FF_X23_Y12_N11
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

-- Location: LCCOMB_X23_Y12_N12
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

-- Location: FF_X23_Y12_N13
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

-- Location: LCCOMB_X23_Y12_N14
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

-- Location: FF_X23_Y12_N15
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

-- Location: LCCOMB_X23_Y12_N16
\VGApart|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Add3~16_combout\ = (\VGApart|RAM_adr1\(8) & (\VGApart|Add3~15\ $ (GND))) # (!\VGApart|RAM_adr1\(8) & (!\VGApart|Add3~15\ & VCC))
-- \VGApart|Add3~17\ = CARRY((\VGApart|RAM_adr1\(8) & !\VGApart|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(8),
	datad => VCC,
	cin => \VGApart|Add3~15\,
	combout => \VGApart|Add3~16_combout\,
	cout => \VGApart|Add3~17\);

-- Location: LCCOMB_X24_Y12_N4
\VGApart|RAM_adr1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1~5_combout\ = (!\VGApart|Equal3~4_combout\ & \VGApart|Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal3~4_combout\,
	datac => \VGApart|Add3~16_combout\,
	combout => \VGApart|RAM_adr1~5_combout\);

-- Location: FF_X24_Y12_N5
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

-- Location: LCCOMB_X23_Y12_N18
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

-- Location: FF_X23_Y12_N19
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

-- Location: LCCOMB_X23_Y12_N20
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

-- Location: FF_X23_Y12_N21
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

-- Location: LCCOMB_X23_Y12_N22
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

-- Location: FF_X23_Y12_N23
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

-- Location: LCCOMB_X24_Y12_N10
\VGApart|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~2_combout\ = (!\VGApart|RAM_adr1\(10) & (!\VGApart|RAM_adr1\(11) & (!\VGApart|RAM_adr1\(8) & !\VGApart|RAM_adr1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(10),
	datab => \VGApart|RAM_adr1\(11),
	datac => \VGApart|RAM_adr1\(8),
	datad => \VGApart|RAM_adr1\(9),
	combout => \VGApart|Equal3~2_combout\);

-- Location: LCCOMB_X22_Y12_N8
\VGApart|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~1_combout\ = (\VGApart|RAM_adr1\(5) & (\VGApart|RAM_adr1\(4) & (\VGApart|RAM_adr1\(6) & \VGApart|RAM_adr1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(5),
	datab => \VGApart|RAM_adr1\(4),
	datac => \VGApart|RAM_adr1\(6),
	datad => \VGApart|RAM_adr1\(7),
	combout => \VGApart|Equal3~1_combout\);

-- Location: LCCOMB_X20_Y12_N28
\VGApart|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~0_combout\ = (\VGApart|RAM_adr1\(1) & (\VGApart|RAM_adr1\(2) & (\VGApart|RAM_adr1\(0) & \VGApart|RAM_adr1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(1),
	datab => \VGApart|RAM_adr1\(2),
	datac => \VGApart|RAM_adr1\(0),
	datad => \VGApart|RAM_adr1\(3),
	combout => \VGApart|Equal3~0_combout\);

-- Location: LCCOMB_X23_Y12_N24
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

-- Location: FF_X23_Y12_N25
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

-- Location: LCCOMB_X24_Y12_N16
\VGApart|Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~3_combout\ = (\VGApart|RAM_adr1\(14) & (!\VGApart|RAM_adr1\(12) & (\VGApart|RAM_adr1\(15) & \VGApart|RAM_adr1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr1\(14),
	datab => \VGApart|RAM_adr1\(12),
	datac => \VGApart|RAM_adr1\(15),
	datad => \VGApart|RAM_adr1\(13),
	combout => \VGApart|Equal3~3_combout\);

-- Location: LCCOMB_X24_Y12_N30
\VGApart|Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|Equal3~4_combout\ = (\VGApart|Equal3~2_combout\ & (\VGApart|Equal3~1_combout\ & (\VGApart|Equal3~0_combout\ & \VGApart|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal3~2_combout\,
	datab => \VGApart|Equal3~1_combout\,
	datac => \VGApart|Equal3~0_combout\,
	datad => \VGApart|Equal3~3_combout\,
	combout => \VGApart|Equal3~4_combout\);

-- Location: LCCOMB_X23_Y12_N26
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

-- Location: LCCOMB_X24_Y12_N2
\VGApart|RAM_adr1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1~4_combout\ = (!\VGApart|Equal3~4_combout\ & \VGApart|Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|Equal3~4_combout\,
	datac => \VGApart|Add3~26_combout\,
	combout => \VGApart|RAM_adr1~4_combout\);

-- Location: FF_X24_Y12_N3
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

-- Location: LCCOMB_X23_Y12_N28
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

-- Location: LCCOMB_X24_Y12_N0
\VGApart|RAM_adr1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1~3_combout\ = (\VGApart|Add3~28_combout\ & !\VGApart|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Add3~28_combout\,
	datac => \VGApart|Equal3~4_combout\,
	combout => \VGApart|RAM_adr1~3_combout\);

-- Location: FF_X24_Y12_N1
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

-- Location: LCCOMB_X23_Y12_N30
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

-- Location: LCCOMB_X24_Y12_N22
\VGApart|RAM_adr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAM_adr1~0_combout\ = (\VGApart|Add3~30_combout\ & !\VGApart|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|Add3~30_combout\,
	datac => \VGApart|Equal3~4_combout\,
	combout => \VGApart|RAM_adr1~0_combout\);

-- Location: FF_X24_Y12_N23
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

-- Location: LCCOMB_X22_Y12_N20
\VGApart|RAMadr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~0_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(15)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(15),
	datab => \VGApart|RAM_adr1\(15),
	datad => \VGApart|process_0~15_combout\,
	combout => \VGApart|RAMadr~0_combout\);

-- Location: LCCOMB_X17_Y12_N10
\VGApart|RAMadr[12]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr[12]~1_combout\ = (!\SW[1]~input_o\ & (!\VGApart|v_count\(9) & !\VGApart|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \VGApart|v_count\(9),
	datad => \VGApart|LessThan5~0_combout\,
	combout => \VGApart|RAMadr[12]~1_combout\);

-- Location: FF_X22_Y12_N21
\VGApart|RAMadr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~0_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(15));

-- Location: FF_X22_Y11_N21
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

-- Location: LCCOMB_X22_Y12_N0
\VGApart|RAMadr~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~3_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(13)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~15_combout\,
	datab => \VGApart|RAM_adr0\(13),
	datad => \VGApart|RAM_adr1\(13),
	combout => \VGApart|RAMadr~3_combout\);

-- Location: FF_X22_Y12_N1
\VGApart|RAMadr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~3_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(13));

-- Location: FF_X22_Y11_N15
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

-- Location: LCCOMB_X22_Y12_N30
\VGApart|RAMadr~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~2_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(14)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(14),
	datab => \VGApart|RAM_adr1\(14),
	datad => \VGApart|process_0~15_combout\,
	combout => \VGApart|RAMadr~2_combout\);

-- Location: FF_X22_Y12_N31
\VGApart|RAMadr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~2_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(14));

-- Location: FF_X22_Y11_N13
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

-- Location: LCCOMB_X17_Y15_N0
\CAP11|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~0_combout\ = \CAP11|RAM_adr\(0) $ (VCC)
-- \CAP11|Add2~1\ = CARRY(\CAP11|RAM_adr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(0),
	datad => VCC,
	combout => \CAP11|Add2~0_combout\,
	cout => \CAP11|Add2~1\);

-- Location: LCCOMB_X15_Y17_N16
\CAP11|RAM_adr[15]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|RAM_adr[15]~4_combout\ = (!\CAP11|v_count\(0) & \CAP11|RAM_adr[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|v_count\(0),
	datad => \CAP11|RAM_adr[15]~3_combout\,
	combout => \CAP11|RAM_adr[15]~4_combout\);

-- Location: FF_X17_Y15_N1
\CAP11|RAM_adr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(0));

-- Location: LCCOMB_X17_Y15_N2
\CAP11|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~2_combout\ = (\CAP11|RAM_adr\(1) & (!\CAP11|Add2~1\)) # (!\CAP11|RAM_adr\(1) & ((\CAP11|Add2~1\) # (GND)))
-- \CAP11|Add2~3\ = CARRY((!\CAP11|Add2~1\) # (!\CAP11|RAM_adr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(1),
	datad => VCC,
	cin => \CAP11|Add2~1\,
	combout => \CAP11|Add2~2_combout\,
	cout => \CAP11|Add2~3\);

-- Location: FF_X17_Y15_N3
\CAP11|RAM_adr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~2_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(1));

-- Location: LCCOMB_X17_Y15_N4
\CAP11|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~4_combout\ = (\CAP11|RAM_adr\(2) & (\CAP11|Add2~3\ $ (GND))) # (!\CAP11|RAM_adr\(2) & (!\CAP11|Add2~3\ & VCC))
-- \CAP11|Add2~5\ = CARRY((\CAP11|RAM_adr\(2) & !\CAP11|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(2),
	datad => VCC,
	cin => \CAP11|Add2~3\,
	combout => \CAP11|Add2~4_combout\,
	cout => \CAP11|Add2~5\);

-- Location: FF_X17_Y15_N5
\CAP11|RAM_adr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~4_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(2));

-- Location: LCCOMB_X17_Y15_N6
\CAP11|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~6_combout\ = (\CAP11|RAM_adr\(3) & (!\CAP11|Add2~5\)) # (!\CAP11|RAM_adr\(3) & ((\CAP11|Add2~5\) # (GND)))
-- \CAP11|Add2~7\ = CARRY((!\CAP11|Add2~5\) # (!\CAP11|RAM_adr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|RAM_adr\(3),
	datad => VCC,
	cin => \CAP11|Add2~5\,
	combout => \CAP11|Add2~6_combout\,
	cout => \CAP11|Add2~7\);

-- Location: FF_X17_Y15_N7
\CAP11|RAM_adr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~6_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(3));

-- Location: LCCOMB_X17_Y15_N8
\CAP11|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~8_combout\ = (\CAP11|RAM_adr\(4) & (\CAP11|Add2~7\ $ (GND))) # (!\CAP11|RAM_adr\(4) & (!\CAP11|Add2~7\ & VCC))
-- \CAP11|Add2~9\ = CARRY((\CAP11|RAM_adr\(4) & !\CAP11|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(4),
	datad => VCC,
	cin => \CAP11|Add2~7\,
	combout => \CAP11|Add2~8_combout\,
	cout => \CAP11|Add2~9\);

-- Location: FF_X17_Y15_N9
\CAP11|RAM_adr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~8_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(4));

-- Location: LCCOMB_X17_Y15_N10
\CAP11|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~10_combout\ = (\CAP11|RAM_adr\(5) & (!\CAP11|Add2~9\)) # (!\CAP11|RAM_adr\(5) & ((\CAP11|Add2~9\) # (GND)))
-- \CAP11|Add2~11\ = CARRY((!\CAP11|Add2~9\) # (!\CAP11|RAM_adr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|RAM_adr\(5),
	datad => VCC,
	cin => \CAP11|Add2~9\,
	combout => \CAP11|Add2~10_combout\,
	cout => \CAP11|Add2~11\);

-- Location: FF_X17_Y15_N11
\CAP11|RAM_adr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~10_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(5));

-- Location: LCCOMB_X17_Y15_N12
\CAP11|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~12_combout\ = (\CAP11|RAM_adr\(6) & (\CAP11|Add2~11\ $ (GND))) # (!\CAP11|RAM_adr\(6) & (!\CAP11|Add2~11\ & VCC))
-- \CAP11|Add2~13\ = CARRY((\CAP11|RAM_adr\(6) & !\CAP11|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|RAM_adr\(6),
	datad => VCC,
	cin => \CAP11|Add2~11\,
	combout => \CAP11|Add2~12_combout\,
	cout => \CAP11|Add2~13\);

-- Location: FF_X17_Y15_N13
\CAP11|RAM_adr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~12_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(6));

-- Location: LCCOMB_X17_Y15_N14
\CAP11|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~14_combout\ = (\CAP11|RAM_adr\(7) & (!\CAP11|Add2~13\)) # (!\CAP11|RAM_adr\(7) & ((\CAP11|Add2~13\) # (GND)))
-- \CAP11|Add2~15\ = CARRY((!\CAP11|Add2~13\) # (!\CAP11|RAM_adr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(7),
	datad => VCC,
	cin => \CAP11|Add2~13\,
	combout => \CAP11|Add2~14_combout\,
	cout => \CAP11|Add2~15\);

-- Location: FF_X17_Y15_N15
\CAP11|RAM_adr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~14_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(7));

-- Location: LCCOMB_X17_Y15_N16
\CAP11|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~16_combout\ = (\CAP11|RAM_adr\(8) & (\CAP11|Add2~15\ $ (GND))) # (!\CAP11|RAM_adr\(8) & (!\CAP11|Add2~15\ & VCC))
-- \CAP11|Add2~17\ = CARRY((\CAP11|RAM_adr\(8) & !\CAP11|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(8),
	datad => VCC,
	cin => \CAP11|Add2~15\,
	combout => \CAP11|Add2~16_combout\,
	cout => \CAP11|Add2~17\);

-- Location: LCCOMB_X19_Y15_N28
\CAP11|RAM_adr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|RAM_adr~7_combout\ = (!\CAP11|Equal2~5_combout\ & \CAP11|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CAP11|Equal2~5_combout\,
	datad => \CAP11|Add2~16_combout\,
	combout => \CAP11|RAM_adr~7_combout\);

-- Location: FF_X19_Y15_N29
\CAP11|RAM_adr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|RAM_adr~7_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(8));

-- Location: LCCOMB_X17_Y15_N18
\CAP11|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~18_combout\ = (\CAP11|RAM_adr\(9) & (!\CAP11|Add2~17\)) # (!\CAP11|RAM_adr\(9) & ((\CAP11|Add2~17\) # (GND)))
-- \CAP11|Add2~19\ = CARRY((!\CAP11|Add2~17\) # (!\CAP11|RAM_adr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(9),
	datad => VCC,
	cin => \CAP11|Add2~17\,
	combout => \CAP11|Add2~18_combout\,
	cout => \CAP11|Add2~19\);

-- Location: FF_X17_Y15_N19
\CAP11|RAM_adr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~18_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(9));

-- Location: LCCOMB_X17_Y15_N20
\CAP11|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~20_combout\ = (\CAP11|RAM_adr\(10) & (\CAP11|Add2~19\ $ (GND))) # (!\CAP11|RAM_adr\(10) & (!\CAP11|Add2~19\ & VCC))
-- \CAP11|Add2~21\ = CARRY((\CAP11|RAM_adr\(10) & !\CAP11|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(10),
	datad => VCC,
	cin => \CAP11|Add2~19\,
	combout => \CAP11|Add2~20_combout\,
	cout => \CAP11|Add2~21\);

-- Location: FF_X17_Y15_N21
\CAP11|RAM_adr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~20_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(10));

-- Location: LCCOMB_X17_Y15_N22
\CAP11|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~22_combout\ = (\CAP11|RAM_adr\(11) & (!\CAP11|Add2~21\)) # (!\CAP11|RAM_adr\(11) & ((\CAP11|Add2~21\) # (GND)))
-- \CAP11|Add2~23\ = CARRY((!\CAP11|Add2~21\) # (!\CAP11|RAM_adr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|RAM_adr\(11),
	datad => VCC,
	cin => \CAP11|Add2~21\,
	combout => \CAP11|Add2~22_combout\,
	cout => \CAP11|Add2~23\);

-- Location: FF_X17_Y15_N23
\CAP11|RAM_adr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~22_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(11));

-- Location: LCCOMB_X17_Y15_N24
\CAP11|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~24_combout\ = (\CAP11|RAM_adr\(12) & (\CAP11|Add2~23\ $ (GND))) # (!\CAP11|RAM_adr\(12) & (!\CAP11|Add2~23\ & VCC))
-- \CAP11|Add2~25\ = CARRY((\CAP11|RAM_adr\(12) & !\CAP11|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(12),
	datad => VCC,
	cin => \CAP11|Add2~23\,
	combout => \CAP11|Add2~24_combout\,
	cout => \CAP11|Add2~25\);

-- Location: FF_X17_Y15_N25
\CAP11|RAM_adr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|Add2~24_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(12));

-- Location: LCCOMB_X17_Y15_N26
\CAP11|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~26_combout\ = (\CAP11|RAM_adr\(13) & (!\CAP11|Add2~25\)) # (!\CAP11|RAM_adr\(13) & ((\CAP11|Add2~25\) # (GND)))
-- \CAP11|Add2~27\ = CARRY((!\CAP11|Add2~25\) # (!\CAP11|RAM_adr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(13),
	datad => VCC,
	cin => \CAP11|Add2~25\,
	combout => \CAP11|Add2~26_combout\,
	cout => \CAP11|Add2~27\);

-- Location: LCCOMB_X17_Y15_N28
\CAP11|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~28_combout\ = (\CAP11|RAM_adr\(14) & (\CAP11|Add2~27\ $ (GND))) # (!\CAP11|RAM_adr\(14) & (!\CAP11|Add2~27\ & VCC))
-- \CAP11|Add2~29\ = CARRY((\CAP11|RAM_adr\(14) & !\CAP11|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|RAM_adr\(14),
	datad => VCC,
	cin => \CAP11|Add2~27\,
	combout => \CAP11|Add2~28_combout\,
	cout => \CAP11|Add2~29\);

-- Location: LCCOMB_X17_Y11_N30
\CAP11|RAM_adr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|RAM_adr~5_combout\ = (!\CAP11|Equal2~5_combout\ & \CAP11|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|Equal2~5_combout\,
	datad => \CAP11|Add2~28_combout\,
	combout => \CAP11|RAM_adr~5_combout\);

-- Location: FF_X17_Y11_N31
\CAP11|RAM_adr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|RAM_adr~5_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(14));

-- Location: LCCOMB_X17_Y15_N30
\CAP11|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Add2~30_combout\ = \CAP11|Add2~29\ $ (\CAP11|RAM_adr\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CAP11|RAM_adr\(15),
	cin => \CAP11|Add2~29\,
	combout => \CAP11|Add2~30_combout\);

-- Location: LCCOMB_X17_Y11_N16
\CAP11|RAM_adr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|RAM_adr~0_combout\ = (!\CAP11|Equal2~5_combout\ & \CAP11|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|Equal2~5_combout\,
	datad => \CAP11|Add2~30_combout\,
	combout => \CAP11|RAM_adr~0_combout\);

-- Location: FF_X17_Y11_N17
\CAP11|RAM_adr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|RAM_adr~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(15));

-- Location: LCCOMB_X17_Y11_N6
\CAP11|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal2~1_combout\ = (\CAP11|RAM_adr\(13) & (\CAP11|RAM_adr\(15) & (\CAP11|RAM_adr\(14) & !\CAP11|RAM_adr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|RAM_adr\(13),
	datab => \CAP11|RAM_adr\(15),
	datac => \CAP11|RAM_adr\(14),
	datad => \CAP11|RAM_adr\(12),
	combout => \CAP11|Equal2~1_combout\);

-- Location: LCCOMB_X17_Y11_N8
\CAP11|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal2~4_combout\ = (\CAP11|RAM_adr\(3) & (\CAP11|RAM_adr\(0) & (\CAP11|RAM_adr\(1) & \CAP11|RAM_adr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|RAM_adr\(3),
	datab => \CAP11|RAM_adr\(0),
	datac => \CAP11|RAM_adr\(1),
	datad => \CAP11|RAM_adr\(2),
	combout => \CAP11|Equal2~4_combout\);

-- Location: LCCOMB_X17_Y11_N22
\CAP11|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal2~3_combout\ = (\CAP11|RAM_adr\(5) & (\CAP11|RAM_adr\(7) & (\CAP11|RAM_adr\(6) & \CAP11|RAM_adr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|RAM_adr\(5),
	datab => \CAP11|RAM_adr\(7),
	datac => \CAP11|RAM_adr\(6),
	datad => \CAP11|RAM_adr\(4),
	combout => \CAP11|Equal2~3_combout\);

-- Location: LCCOMB_X17_Y11_N0
\CAP11|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal2~2_combout\ = (!\CAP11|RAM_adr\(9) & (!\CAP11|RAM_adr\(11) & (!\CAP11|RAM_adr\(8) & !\CAP11|RAM_adr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|RAM_adr\(9),
	datab => \CAP11|RAM_adr\(11),
	datac => \CAP11|RAM_adr\(8),
	datad => \CAP11|RAM_adr\(10),
	combout => \CAP11|Equal2~2_combout\);

-- Location: LCCOMB_X17_Y11_N10
\CAP11|Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal2~5_combout\ = (\CAP11|Equal2~1_combout\ & (\CAP11|Equal2~4_combout\ & (\CAP11|Equal2~3_combout\ & \CAP11|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|Equal2~1_combout\,
	datab => \CAP11|Equal2~4_combout\,
	datac => \CAP11|Equal2~3_combout\,
	datad => \CAP11|Equal2~2_combout\,
	combout => \CAP11|Equal2~5_combout\);

-- Location: LCCOMB_X17_Y11_N20
\CAP11|RAM_adr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|RAM_adr~6_combout\ = (!\CAP11|Equal2~5_combout\ & \CAP11|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CAP11|Equal2~5_combout\,
	datad => \CAP11|Add2~26_combout\,
	combout => \CAP11|RAM_adr~6_combout\);

-- Location: FF_X17_Y11_N21
\CAP11|RAM_adr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_CAPclk~clkctrl_outclk\,
	d => \CAP11|RAM_adr~6_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	ena => \CAP11|RAM_adr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|RAM_adr\(13));

-- Location: LCCOMB_X17_Y11_N14
\RAM32|altsyncram_component|auto_generated|decode2|w_anode322w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3) = (!\CAP11|RAM_adr\(13) & (!\CAP11|RAM_adr\(14) & !\CAP11|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(13),
	datac => \CAP11|RAM_adr\(14),
	datad => \CAP11|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode322w\(3));

-- Location: LCCOMB_X23_Y11_N4
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3) = (!\VGApart|RAMadr\(15) & (!\VGApart|RAMadr\(13) & !\VGApart|RAMadr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAMadr\(15),
	datac => \VGApart|RAMadr\(13),
	datad => \VGApart|RAMadr\(14),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode322w\(3));

-- Location: IOIBUF_X9_Y0_N1
\GPIO1D26~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D26,
	o => \GPIO1D26~input_o\);

-- Location: FF_X15_Y17_N17
\CAP11|QinReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|ALT_INV_dPCLK~clkctrl_outclk\,
	asdata => \GPIO1D26~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|QinReg\(4));

-- Location: LCCOMB_X15_Y17_N4
\CAP11|B[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|B[0]~0_combout\ = (\CAP11|QinReg\(4) & !\CAP11|takeTurn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|QinReg\(4),
	datac => \CAP11|takeTurn~q\,
	combout => \CAP11|B[0]~0_combout\);

-- Location: FF_X15_Y17_N5
\CAP11|QaddReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CAP11|dPCLK~clkctrl_outclk\,
	d => \CAP11|B[0]~0_combout\,
	clrn => \GPIO1D30~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAP11|QaddReg\(0));

-- Location: LCCOMB_X20_Y12_N4
\VGApart|RAMadr~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~4_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(0)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(0),
	datac => \VGApart|RAM_adr1\(0),
	datad => \VGApart|process_0~15_combout\,
	combout => \VGApart|RAMadr~4_combout\);

-- Location: FF_X20_Y12_N5
\VGApart|RAMadr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~4_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(0));

-- Location: LCCOMB_X20_Y12_N10
\VGApart|RAMadr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~5_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(1)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(1),
	datab => \VGApart|process_0~15_combout\,
	datac => \VGApart|RAM_adr1\(1),
	combout => \VGApart|RAMadr~5_combout\);

-- Location: FF_X20_Y12_N11
\VGApart|RAMadr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~5_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(1));

-- Location: LCCOMB_X20_Y12_N12
\VGApart|RAMadr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~6_combout\ = (\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr1\(2))) # (!\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|process_0~15_combout\,
	datac => \VGApart|RAM_adr1\(2),
	datad => \VGApart|RAM_adr0\(2),
	combout => \VGApart|RAMadr~6_combout\);

-- Location: FF_X20_Y12_N13
\VGApart|RAMadr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~6_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(2));

-- Location: LCCOMB_X20_Y12_N6
\VGApart|RAMadr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~7_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(3)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(3),
	datac => \VGApart|process_0~15_combout\,
	datad => \VGApart|RAM_adr1\(3),
	combout => \VGApart|RAMadr~7_combout\);

-- Location: FF_X20_Y12_N7
\VGApart|RAMadr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~7_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(3));

-- Location: LCCOMB_X22_Y12_N26
\VGApart|RAMadr~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~8_combout\ = (\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr1\(4))) # (!\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~15_combout\,
	datac => \VGApart|RAM_adr1\(4),
	datad => \VGApart|RAM_adr0\(4),
	combout => \VGApart|RAMadr~8_combout\);

-- Location: FF_X22_Y12_N27
\VGApart|RAMadr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~8_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(4));

-- Location: LCCOMB_X22_Y12_N28
\VGApart|RAMadr~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~9_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(5)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(5),
	datac => \VGApart|RAM_adr1\(5),
	datad => \VGApart|process_0~15_combout\,
	combout => \VGApart|RAMadr~9_combout\);

-- Location: FF_X22_Y12_N29
\VGApart|RAMadr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~9_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(5));

-- Location: LCCOMB_X22_Y12_N14
\VGApart|RAMadr~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~10_combout\ = (\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr1\(6))) # (!\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~15_combout\,
	datac => \VGApart|RAM_adr1\(6),
	datad => \VGApart|RAM_adr0\(6),
	combout => \VGApart|RAMadr~10_combout\);

-- Location: FF_X22_Y12_N15
\VGApart|RAMadr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~10_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(6));

-- Location: LCCOMB_X22_Y12_N16
\VGApart|RAMadr~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~11_combout\ = (\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr1\(7))) # (!\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~15_combout\,
	datac => \VGApart|RAM_adr1\(7),
	datad => \VGApart|RAM_adr0\(7),
	combout => \VGApart|RAMadr~11_combout\);

-- Location: FF_X22_Y12_N17
\VGApart|RAMadr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~11_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(7));

-- Location: LCCOMB_X24_Y12_N24
\VGApart|RAMadr~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~12_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(8)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(8),
	datab => \VGApart|RAM_adr1\(8),
	datac => \VGApart|process_0~15_combout\,
	combout => \VGApart|RAMadr~12_combout\);

-- Location: FF_X24_Y12_N25
\VGApart|RAMadr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~12_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(8));

-- Location: LCCOMB_X24_Y12_N14
\VGApart|RAMadr~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~13_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(9)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|RAM_adr0\(9),
	datac => \VGApart|process_0~15_combout\,
	datad => \VGApart|RAM_adr1\(9),
	combout => \VGApart|RAMadr~13_combout\);

-- Location: FF_X24_Y12_N15
\VGApart|RAMadr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~13_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(9));

-- Location: LCCOMB_X24_Y12_N20
\VGApart|RAMadr~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~14_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(10)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(10),
	datac => \VGApart|process_0~15_combout\,
	datad => \VGApart|RAM_adr1\(10),
	combout => \VGApart|RAMadr~14_combout\);

-- Location: FF_X24_Y12_N21
\VGApart|RAMadr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~14_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(10));

-- Location: LCCOMB_X24_Y12_N18
\VGApart|RAMadr~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~15_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(11)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(11),
	datac => \VGApart|process_0~15_combout\,
	datad => \VGApart|RAM_adr1\(11),
	combout => \VGApart|RAMadr~15_combout\);

-- Location: FF_X24_Y12_N19
\VGApart|RAMadr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~15_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(11));

-- Location: LCCOMB_X24_Y12_N8
\VGApart|RAMadr~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|RAMadr~16_combout\ = (\VGApart|process_0~15_combout\ & ((\VGApart|RAM_adr1\(12)))) # (!\VGApart|process_0~15_combout\ & (\VGApart|RAM_adr0\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAM_adr0\(12),
	datac => \VGApart|process_0~15_combout\,
	datad => \VGApart|RAM_adr1\(12),
	combout => \VGApart|RAMadr~16_combout\);

-- Location: FF_X24_Y12_N9
\VGApart|RAMadr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|RAMadr~16_combout\,
	ena => \VGApart|RAMadr[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|RAMadr\(12));

-- Location: M9K_X13_Y13_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X17_Y11_N4
\RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\ = (!\CAP11|RAM_adr\(13) & (\CAP11|RAM_adr\(14) & !\CAP11|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(13),
	datac => \CAP11|RAM_adr\(14),
	datad => \CAP11|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode349w[3]~0_combout\);

-- Location: LCCOMB_X22_Y11_N20
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\ = (!\VGApart|RAMadr\(15) & (\VGApart|RAMadr\(14) & !\VGApart|RAMadr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAMadr\(15),
	datab => \VGApart|RAMadr\(14),
	datad => \VGApart|RAMadr\(13),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode349w[3]~0_combout\);

-- Location: M9K_X13_Y14_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X14_Y11_N18
\RAM32|altsyncram_component|auto_generated|mux3|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) 
-- & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a8~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\);

-- Location: LCCOMB_X17_Y11_N2
\RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\ = (!\CAP11|RAM_adr\(15) & (!\CAP11|RAM_adr\(14) & \CAP11|RAM_adr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(15),
	datac => \CAP11|RAM_adr\(14),
	datad => \CAP11|RAM_adr\(13),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode339w[3]~0_combout\);

-- Location: LCCOMB_X22_Y12_N6
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

-- Location: M9K_X13_Y18_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X17_Y11_N24
\RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\ = (\CAP11|RAM_adr\(13) & (\CAP11|RAM_adr\(14) & !\CAP11|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(13),
	datac => \CAP11|RAM_adr\(14),
	datad => \CAP11|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode359w[3]~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\ = (!\VGApart|RAMadr\(15) & (\VGApart|RAMadr\(13) & \VGApart|RAMadr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAMadr\(15),
	datac => \VGApart|RAMadr\(13),
	datad => \VGApart|RAMadr\(14),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode359w[3]~0_combout\);

-- Location: M9K_X13_Y16_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X14_Y11_N8
\RAM32|altsyncram_component|auto_generated|mux3|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\ & (\RAM32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\)))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (\RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|mux3|_~2_combout\,
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a4~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a12~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\);

-- Location: LCCOMB_X17_Y11_N28
\CAP11|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CAP11|Equal2~0_combout\ = (\CAP11|RAM_adr\(13) & (\CAP11|RAM_adr\(14) & \CAP11|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(13),
	datac => \CAP11|RAM_adr\(14),
	datad => \CAP11|RAM_adr\(15),
	combout => \CAP11|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y11_N2
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\ = (\VGApart|RAMadr\(15) & (\VGApart|RAMadr\(13) & \VGApart|RAMadr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAMadr\(15),
	datac => \VGApart|RAMadr\(13),
	datad => \VGApart|RAMadr\(14),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\);

-- Location: M9K_X13_Y9_N0
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
	portawe => \CAP11|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \CAP11|Equal2~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y11_N18
\RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\ = (!\CAP11|RAM_adr\(13) & (!\CAP11|RAM_adr\(14) & \CAP11|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(13),
	datac => \CAP11|RAM_adr\(14),
	datad => \CAP11|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode369w[3]~0_combout\);

-- Location: LCCOMB_X23_Y11_N24
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\ = (\VGApart|RAMadr\(15) & (!\VGApart|RAMadr\(13) & !\VGApart|RAMadr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAMadr\(15),
	datac => \VGApart|RAMadr\(13),
	datad => \VGApart|RAMadr\(14),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode369w[3]~0_combout\);

-- Location: M9K_X13_Y15_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X17_Y11_N12
\RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\ = (\CAP11|RAM_adr\(13) & (!\CAP11|RAM_adr\(14) & \CAP11|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(13),
	datac => \CAP11|RAM_adr\(14),
	datad => \CAP11|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode379w[3]~0_combout\);

-- Location: LCCOMB_X23_Y11_N30
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\ = (\VGApart|RAMadr\(15) & (\VGApart|RAMadr\(13) & !\VGApart|RAMadr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAMadr\(15),
	datac => \VGApart|RAMadr\(13),
	datad => \VGApart|RAMadr\(14),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode379w[3]~0_combout\);

-- Location: M9K_X13_Y10_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X14_Y11_N30
\RAM32|altsyncram_component|auto_generated|mux3|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1)) # 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\)))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a16~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a20~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\);

-- Location: LCCOMB_X17_Y11_N26
\RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\ = (!\CAP11|RAM_adr\(13) & (\CAP11|RAM_adr\(14) & \CAP11|RAM_adr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CAP11|RAM_adr\(13),
	datac => \CAP11|RAM_adr\(14),
	datad => \CAP11|RAM_adr\(15),
	combout => \RAM32|altsyncram_component|auto_generated|decode2|w_anode389w[3]~0_combout\);

-- Location: LCCOMB_X23_Y11_N0
\RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\ = (\VGApart|RAMadr\(15) & (!\VGApart|RAMadr\(13) & \VGApart|RAMadr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|RAMadr\(15),
	datac => \VGApart|RAMadr\(13),
	datad => \VGApart|RAMadr\(14),
	combout => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode389w[3]~0_combout\);

-- Location: M9K_X13_Y12_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X14_Y11_N0
\RAM32|altsyncram_component|auto_generated|mux3|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\ & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\)) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\ & ((\RAM32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\))))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a28~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~0_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a24~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\);

-- Location: LCCOMB_X14_Y11_N10
\RAM32|altsyncram_component|auto_generated|mux3|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & (\RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(2),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~3_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~1_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\);

-- Location: LCCOMB_X22_Y11_N22
\VGApart|red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~1_combout\ = (\VGApart|green~0_combout\ & ((\SW[6]~input_o\) # ((\VGApart|red~0_combout\ & \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\)))) # (!\VGApart|green~0_combout\ & (\VGApart|red~0_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|green~0_combout\,
	datab => \VGApart|red~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\,
	combout => \VGApart|red~1_combout\);

-- Location: FF_X22_Y11_N5
\VGApart|red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGApart|red~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|red\(0));

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: M9K_X13_Y4_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X13_Y5_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X25_Y14_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X21_Y11_N14
\RAM32|altsyncram_component|auto_generated|mux3|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1)) # 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\)))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a21~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a17~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\);

-- Location: M9K_X25_Y4_N0
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
	portawe => \CAP11|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \CAP11|Equal2~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y11_N8
\RAM32|altsyncram_component|auto_generated|mux3|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\ & (\RAM32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\)))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a25~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~5_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a29~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\);

-- Location: M9K_X25_Y18_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X13_Y8_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X13_Y7_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X14_Y11_N28
\RAM32|altsyncram_component|auto_generated|mux3|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) 
-- & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a1~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a9~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\);

-- Location: M9K_X25_Y16_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X21_Y11_N10
\RAM32|altsyncram_component|auto_generated|mux3|_~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\ & (\RAM32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\)))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|ram_block1a5~portbdataout\,
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~7_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a13~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\);

-- Location: LCCOMB_X21_Y11_N20
\RAM32|altsyncram_component|auto_generated|mux3|_~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & (\RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\)) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) 
-- & ((\RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(2),
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~6_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~8_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\);

-- Location: LCCOMB_X21_Y11_N28
\VGApart|red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~2_combout\ = (\VGApart|green~0_combout\ & ((\SW[7]~input_o\) # ((\VGApart|red~0_combout\ & \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\)))) # (!\VGApart|green~0_combout\ & (\VGApart|red~0_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|green~0_combout\,
	datab => \VGApart|red~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\,
	combout => \VGApart|red~2_combout\);

-- Location: LCCOMB_X21_Y11_N16
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

-- Location: FF_X21_Y11_N17
\VGApart|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red[1]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|red\(1));

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: M9K_X25_Y13_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X25_Y8_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X22_Y11_N14
\RAM32|altsyncram_component|auto_generated|mux3|_~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|address_reg_b\(0)) # 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\)))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (\RAM32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ & 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a2~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a10~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\);

-- Location: M9K_X25_Y15_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X13_Y17_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X22_Y11_N6
\RAM32|altsyncram_component|auto_generated|mux3|_~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\ & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\)) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\ & ((\RAM32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\))))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (\RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|mux3|_~12_combout\,
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a14~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a6~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\);

-- Location: M9K_X13_Y3_N0
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
	portawe => \CAP11|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \CAP11|Equal2~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y3_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X25_Y9_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X25_Y12_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X22_Y11_N2
\RAM32|altsyncram_component|auto_generated|mux3|_~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1)) # 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\)))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a22~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a18~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\);

-- Location: LCCOMB_X22_Y11_N16
\RAM32|altsyncram_component|auto_generated|mux3|_~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\ & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\)) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\ & ((\RAM32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\))))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a30~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a26~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~10_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\);

-- Location: LCCOMB_X22_Y11_N18
\RAM32|altsyncram_component|auto_generated|mux3|_~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & (\RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|mux3|_~13_combout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(2),
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~11_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\);

-- Location: LCCOMB_X22_Y11_N8
\VGApart|red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~3_combout\ = (\VGApart|green~0_combout\ & ((\SW[8]~input_o\) # ((\VGApart|red~0_combout\ & \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\)))) # (!\VGApart|green~0_combout\ & (\VGApart|red~0_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|green~0_combout\,
	datab => \VGApart|red~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\,
	combout => \VGApart|red~3_combout\);

-- Location: FF_X22_Y11_N19
\VGApart|red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGApart|red~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|red\(2));

-- Location: M9K_X13_Y6_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X25_Y7_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X13_Y11_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X22_Y11_N12
\RAM32|altsyncram_component|auto_generated|mux3|_~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (\RAM32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\)) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|ram_block1a11~portbdataout\,
	datac => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a3~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\);

-- Location: LCCOMB_X22_Y11_N30
\RAM32|altsyncram_component|auto_generated|mux3|_~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\ & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\)) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\ & ((\RAM32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\))))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|ram_block1a15~portbdataout\,
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a7~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~17_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\);

-- Location: M9K_X25_Y6_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X25_Y5_N0
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
	portawe => \CAP11|Equal2~0_combout\,
	portbre => VCC,
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
	clk1 => \rRAMclk~clkctrl_outclk\,
	ena0 => \CAP11|Equal2~0_combout\,
	ena1 => \RAM32|altsyncram_component|auto_generated|rden_decode_b|w_anode399w[3]~0_combout\,
	clr1 => GND,
	portadatain => \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RAM32|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y11_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: M9K_X25_Y10_N0
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
	clk0 => \CAP11|outCLK~clkctrl_outclk\,
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

-- Location: LCCOMB_X21_Y11_N30
\RAM32|altsyncram_component|auto_generated|mux3|_~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & ((\RAM32|altsyncram_component|auto_generated|address_reg_b\(1)) # 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\)))) # (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(0) & (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (\RAM32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a19~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|ram_block1a23~portbdataout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\);

-- Location: LCCOMB_X22_Y11_N24
\RAM32|altsyncram_component|auto_generated|mux3|_~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\ & 
-- ((\RAM32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\))) # (!\RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\ & (\RAM32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\)))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(1) & (((\RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|ram_block1a27~portbdataout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \RAM32|altsyncram_component|auto_generated|ram_block1a31~portbdataout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~15_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\);

-- Location: LCCOMB_X22_Y11_N4
\RAM32|altsyncram_component|auto_generated|mux3|_~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\ = (\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & ((\RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\))) # 
-- (!\RAM32|altsyncram_component|auto_generated|address_reg_b\(2) & (\RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM32|altsyncram_component|auto_generated|mux3|_~18_combout\,
	datab => \RAM32|altsyncram_component|auto_generated|address_reg_b\(2),
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~16_combout\,
	combout => \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\);

-- Location: IOIBUF_X0_Y25_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X22_Y11_N10
\VGApart|red~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|red~4_combout\ = (\VGApart|green~0_combout\ & ((\SW[9]~input_o\) # ((\VGApart|red~0_combout\ & \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\)))) # (!\VGApart|green~0_combout\ & (\VGApart|red~0_combout\ & 
-- (\RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|green~0_combout\,
	datab => \VGApart|red~0_combout\,
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\,
	datad => \SW[9]~input_o\,
	combout => \VGApart|red~4_combout\);

-- Location: LCCOMB_X22_Y11_N28
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

-- Location: FF_X22_Y11_N29
\VGApart|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red[3]~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|red\(3));

-- Location: LCCOMB_X14_Y11_N26
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

-- Location: LCCOMB_X14_Y11_N20
\VGApart|green~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~2_combout\ = (\VGApart|green~1_combout\) # ((!\VGApart|isColor~q\ & (\VGApart|video_on~q\ & \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|isColor~q\,
	datab => \VGApart|video_on~q\,
	datac => \VGApart|green~1_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~4_combout\,
	combout => \VGApart|green~2_combout\);

-- Location: FF_X14_Y11_N21
\VGApart|green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|green~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|green\(0));

-- Location: LCCOMB_X21_Y11_N4
\VGApart|green~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~3_combout\ = (\VGApart|video_on~q\ & ((\VGApart|set_color~q\) # ((\VGApart|isColor~q\ & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|isColor~q\,
	datab => \SW[7]~input_o\,
	datac => \VGApart|video_on~q\,
	datad => \VGApart|set_color~q\,
	combout => \VGApart|green~3_combout\);

-- Location: LCCOMB_X21_Y11_N22
\VGApart|green~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~4_combout\ = (\VGApart|green~3_combout\) # ((!\VGApart|isColor~q\ & (\VGApart|video_on~q\ & \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|isColor~q\,
	datab => \VGApart|video_on~q\,
	datac => \VGApart|green~3_combout\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~9_combout\,
	combout => \VGApart|green~4_combout\);

-- Location: FF_X21_Y11_N23
\VGApart|green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|green~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|green\(1));

-- Location: LCCOMB_X21_Y11_N26
\VGApart|green~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~5_combout\ = (\VGApart|video_on~q\ & ((\VGApart|set_color~q\) # ((\VGApart|isColor~q\ & \SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|isColor~q\,
	datab => \SW[8]~input_o\,
	datac => \VGApart|video_on~q\,
	datad => \VGApart|set_color~q\,
	combout => \VGApart|green~5_combout\);

-- Location: LCCOMB_X22_Y11_N26
\VGApart|green~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~6_combout\ = (\VGApart|green~5_combout\) # ((\VGApart|video_on~q\ & (!\VGApart|isColor~q\ & \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|green~5_combout\,
	datab => \VGApart|video_on~q\,
	datac => \VGApart|isColor~q\,
	datad => \RAM32|altsyncram_component|auto_generated|mux3|_~14_combout\,
	combout => \VGApart|green~6_combout\);

-- Location: FF_X22_Y11_N27
\VGApart|green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|green~6_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|green\(2));

-- Location: LCCOMB_X21_Y11_N12
\VGApart|green~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~7_combout\ = (\VGApart|video_on~q\ & ((\VGApart|set_color~q\) # ((\VGApart|isColor~q\ & \SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|isColor~q\,
	datab => \SW[9]~input_o\,
	datac => \VGApart|video_on~q\,
	datad => \VGApart|set_color~q\,
	combout => \VGApart|green~7_combout\);

-- Location: LCCOMB_X22_Y11_N0
\VGApart|green~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|green~8_combout\ = (\VGApart|green~7_combout\) # ((!\VGApart|isColor~q\ & (\RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\ & \VGApart|video_on~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|green~7_combout\,
	datab => \VGApart|isColor~q\,
	datac => \RAM32|altsyncram_component|auto_generated|mux3|_~19_combout\,
	datad => \VGApart|video_on~q\,
	combout => \VGApart|green~8_combout\);

-- Location: FF_X22_Y11_N1
\VGApart|green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|green~8_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|green\(3));

-- Location: FF_X22_Y11_N23
\VGApart|blue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|blue\(0));

-- Location: FF_X21_Y11_N29
\VGApart|blue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|blue\(1));

-- Location: FF_X22_Y11_N9
\VGApart|blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|blue\(2));

-- Location: FF_X22_Y11_N11
\VGApart|blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|red~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|blue\(3));

-- Location: LCCOMB_X17_Y13_N4
\VGApart|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~0_combout\ = (\VGApart|h_count\(9) & (!\VGApart|h_count\(8) & \VGApart|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|h_count\(9),
	datac => \VGApart|h_count\(8),
	datad => \VGApart|h_count\(7),
	combout => \VGApart|process_0~0_combout\);

-- Location: LCCOMB_X14_Y13_N28
\VGApart|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~1_combout\ = (\VGApart|h_count\(3)) # ((\VGApart|h_count\(0) & (!\VGApart|h_count\(5) & \VGApart|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|h_count\(3),
	datab => \VGApart|h_count\(0),
	datac => \VGApart|h_count\(5),
	datad => \VGApart|h_count\(1),
	combout => \VGApart|process_0~1_combout\);

-- Location: LCCOMB_X14_Y13_N26
\VGApart|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~2_combout\ = (\VGApart|h_count\(4) & ((\VGApart|process_0~1_combout\) # (\VGApart|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGApart|process_0~1_combout\,
	datac => \VGApart|h_count\(2),
	datad => \VGApart|h_count\(4),
	combout => \VGApart|process_0~2_combout\);

-- Location: LCCOMB_X14_Y13_N0
\VGApart|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~3_combout\ = ((\VGApart|h_count\(5) & (\VGApart|process_0~2_combout\ & \VGApart|h_count\(6))) # (!\VGApart|h_count\(5) & (!\VGApart|process_0~2_combout\ & !\VGApart|h_count\(6)))) # (!\VGApart|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|process_0~0_combout\,
	datab => \VGApart|h_count\(5),
	datac => \VGApart|process_0~2_combout\,
	datad => \VGApart|h_count\(6),
	combout => \VGApart|process_0~3_combout\);

-- Location: FF_X14_Y13_N1
\VGApart|Hsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|process_0~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|Hsync_aux~q\);

-- Location: LCCOMB_X16_Y12_N0
\VGApart|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~4_combout\ = ((\VGApart|v_count\(0) $ (!\VGApart|v_count\(1))) # (!\VGApart|v_count\(3))) # (!\VGApart|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(2),
	datab => \VGApart|v_count\(3),
	datac => \VGApart|v_count\(0),
	datad => \VGApart|v_count\(1),
	combout => \VGApart|process_0~4_combout\);

-- Location: LCCOMB_X17_Y13_N26
\VGApart|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGApart|process_0~5_combout\ = (\VGApart|v_count\(4)) # ((\VGApart|v_count\(9)) # ((\VGApart|process_0~4_combout\) # (!\VGApart|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGApart|v_count\(4),
	datab => \VGApart|v_count\(9),
	datac => \VGApart|process_0~4_combout\,
	datad => \VGApart|LessThan5~0_combout\,
	combout => \VGApart|process_0~5_combout\);

-- Location: FF_X17_Y13_N27
\VGApart|Vsync_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGApart|process_0~5_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGApart|Vsync_aux~q\);

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

-- Location: IOIBUF_X35_Y0_N22
\GPIO1D2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D2,
	o => \GPIO1D2~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\GPIO1D10~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D10,
	o => \GPIO1D10~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\GPIO1D22~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D22,
	o => \GPIO1D22~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\GPIO1D24~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO1D24,
	o => \GPIO1D24~input_o\);
END structure;


