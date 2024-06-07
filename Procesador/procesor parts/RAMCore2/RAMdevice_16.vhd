-- megafunction wizard: %RAM: 2-PORT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altsyncram 

-- ============================================================
-- File Name: RAMdevice_16.vhd
-- Megafunction Name(s):
-- 			altsyncram
--
-- Simulation Library Files(s):
-- 			altera_mf
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.1.0 Build 162 10/23/2013 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY RAMdevice_16 IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		rd_aclr		: IN STD_LOGIC  := '0';
		rdaddress		: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		rden		: IN STD_LOGIC  := '1';
		wraddress		: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END RAMdevice_16;


ARCHITECTURE SYN OF ramdevice_16 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN
	q    <= sub_wire0(3 DOWNTO 0);

	altsyncram_component : altsyncram
	GENERIC MAP (
		address_aclr_b => "CLEAR1",
		address_reg_b => "CLOCK1",
		clock_enable_input_a => "BYPASS",
		clock_enable_input_b => "BYPASS",
		clock_enable_output_b => "BYPASS",
		intended_device_family => "Cyclone III",
		lpm_type => "altsyncram",
		numwords_a => 32768,
		numwords_b => 32768,
		operation_mode => "DUAL_PORT",
		outdata_aclr_b => "CLEAR1",
		outdata_reg_b => "CLOCK1",
		power_up_uninitialized => "FALSE",
		ram_block_type => "M9K",
		rdcontrol_reg_b => "CLOCK1",
		widthad_a => 15,
		widthad_b => 15,
		width_a => 4,
		width_b => 4,
		width_byteena_a => 1
	)
	PORT MAP (
		clock0 => wrclock,
		wren_a => wren,
		aclr1 => rd_aclr,
		address_b => rdaddress,
		clock1 => rdclock,
		address_a => wraddress,
		data_a => data,
		rden_b => rden,
		q_b => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
-- Retrieval info: PRIVATE: ADDRESSSTALL_B NUMERIC "0"
-- Retrieval info: PRIVATE: BYTEENA_ACLR_A NUMERIC "0"
-- Retrieval info: PRIVATE: BYTEENA_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_ENABLE_A NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_ENABLE_B NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
-- Retrieval info: PRIVATE: BlankMemory NUMERIC "1"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_B NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_B NUMERIC "0"
-- Retrieval info: PRIVATE: CLRdata NUMERIC "0"
-- Retrieval info: PRIVATE: CLRq NUMERIC "1"
-- Retrieval info: PRIVATE: CLRrdaddress NUMERIC "1"
-- Retrieval info: PRIVATE: CLRrren NUMERIC "0"
-- Retrieval info: PRIVATE: CLRwraddress NUMERIC "0"
-- Retrieval info: PRIVATE: CLRwren NUMERIC "0"
-- Retrieval info: PRIVATE: Clock NUMERIC "1"
-- Retrieval info: PRIVATE: Clock_A NUMERIC "0"
-- Retrieval info: PRIVATE: Clock_B NUMERIC "0"
-- Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0"
-- Retrieval info: PRIVATE: INDATA_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: INDATA_REG_B NUMERIC "0"
-- Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_B"
-- Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
-- Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
-- Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
-- Retrieval info: PRIVATE: MEMSIZE NUMERIC "131072"
-- Retrieval info: PRIVATE: MEM_IN_BITS NUMERIC "0"
-- Retrieval info: PRIVATE: MIFfilename STRING ""
-- Retrieval info: PRIVATE: OPERATION_MODE NUMERIC "2"
-- Retrieval info: PRIVATE: OUTDATA_ACLR_B NUMERIC "1"
-- Retrieval info: PRIVATE: OUTDATA_REG_B NUMERIC "1"
-- Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "2"
-- Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_MIXED_PORTS NUMERIC "2"
-- Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_PORT_A NUMERIC "3"
-- Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_PORT_B NUMERIC "3"
-- Retrieval info: PRIVATE: REGdata NUMERIC "1"
-- Retrieval info: PRIVATE: REGq NUMERIC "0"
-- Retrieval info: PRIVATE: REGrdaddress NUMERIC "1"
-- Retrieval info: PRIVATE: REGrren NUMERIC "1"
-- Retrieval info: PRIVATE: REGwraddress NUMERIC "1"
-- Retrieval info: PRIVATE: REGwren NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: USE_DIFF_CLKEN NUMERIC "0"
-- Retrieval info: PRIVATE: UseDPRAM NUMERIC "1"
-- Retrieval info: PRIVATE: VarWidth NUMERIC "1"
-- Retrieval info: PRIVATE: WIDTH_READ_A NUMERIC "4"
-- Retrieval info: PRIVATE: WIDTH_READ_B NUMERIC "4"
-- Retrieval info: PRIVATE: WIDTH_WRITE_A NUMERIC "4"
-- Retrieval info: PRIVATE: WIDTH_WRITE_B NUMERIC "4"
-- Retrieval info: PRIVATE: WRADDR_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: WRADDR_REG_B NUMERIC "0"
-- Retrieval info: PRIVATE: WRCTRL_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: enable NUMERIC "0"
-- Retrieval info: PRIVATE: rden NUMERIC "1"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: ADDRESS_ACLR_B STRING "CLEAR1"
-- Retrieval info: CONSTANT: ADDRESS_REG_B STRING "CLOCK1"
-- Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_A STRING "BYPASS"
-- Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_B STRING "BYPASS"
-- Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_B STRING "BYPASS"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
-- Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "32768"
-- Retrieval info: CONSTANT: NUMWORDS_B NUMERIC "32768"
-- Retrieval info: CONSTANT: OPERATION_MODE STRING "DUAL_PORT"
-- Retrieval info: CONSTANT: OUTDATA_ACLR_B STRING "CLEAR1"
-- Retrieval info: CONSTANT: OUTDATA_REG_B STRING "CLOCK1"
-- Retrieval info: CONSTANT: POWER_UP_UNINITIALIZED STRING "FALSE"
-- Retrieval info: CONSTANT: RAM_BLOCK_TYPE STRING "M9K"
-- Retrieval info: CONSTANT: RDCONTROL_REG_B STRING "CLOCK1"
-- Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "15"
-- Retrieval info: CONSTANT: WIDTHAD_B NUMERIC "15"
-- Retrieval info: CONSTANT: WIDTH_A NUMERIC "4"
-- Retrieval info: CONSTANT: WIDTH_B NUMERIC "4"
-- Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
-- Retrieval info: USED_PORT: data 0 0 4 0 INPUT NODEFVAL "data[3..0]"
-- Retrieval info: USED_PORT: q 0 0 4 0 OUTPUT NODEFVAL "q[3..0]"
-- Retrieval info: USED_PORT: rd_aclr 0 0 0 0 INPUT GND "rd_aclr"
-- Retrieval info: USED_PORT: rdaddress 0 0 15 0 INPUT NODEFVAL "rdaddress[14..0]"
-- Retrieval info: USED_PORT: rdclock 0 0 0 0 INPUT NODEFVAL "rdclock"
-- Retrieval info: USED_PORT: rden 0 0 0 0 INPUT VCC "rden"
-- Retrieval info: USED_PORT: wraddress 0 0 15 0 INPUT NODEFVAL "wraddress[14..0]"
-- Retrieval info: USED_PORT: wrclock 0 0 0 0 INPUT VCC "wrclock"
-- Retrieval info: USED_PORT: wren 0 0 0 0 INPUT GND "wren"
-- Retrieval info: CONNECT: @aclr1 0 0 0 0 rd_aclr 0 0 0 0
-- Retrieval info: CONNECT: @address_a 0 0 15 0 wraddress 0 0 15 0
-- Retrieval info: CONNECT: @address_b 0 0 15 0 rdaddress 0 0 15 0
-- Retrieval info: CONNECT: @clock0 0 0 0 0 wrclock 0 0 0 0
-- Retrieval info: CONNECT: @clock1 0 0 0 0 rdclock 0 0 0 0
-- Retrieval info: CONNECT: @data_a 0 0 4 0 data 0 0 4 0
-- Retrieval info: CONNECT: @rden_b 0 0 0 0 rden 0 0 0 0
-- Retrieval info: CONNECT: @wren_a 0 0 0 0 wren 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 4 0 @q_b 0 0 4 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL RAMdevice_16.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL RAMdevice_16.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL RAMdevice_16.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL RAMdevice_16.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL RAMdevice_16_inst.vhd FALSE
-- Retrieval info: LIB_FILE: altera_mf
