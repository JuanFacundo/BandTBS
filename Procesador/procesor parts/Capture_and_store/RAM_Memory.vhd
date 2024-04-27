LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY RAM_Memory IS 
	GENERIC (
		ADDRESS_WIDTH	: integer := 4;
		DATA_WIDTH		: integer := 4	
		 );
	PORT (
		address	: IN  STD_LOGIC_VECTOR (address_width - 1 DOWNTO 0);  -- Dirección de address_width bits
		clock	: IN  STD_LOGIC := '1';
		data	: IN  STD_LOGIC_VECTOR (data_width - 1 DOWNTO 0);      -- Datos de data_width bits
		wren	: IN  STD_LOGIC;
		q		: OUT STD_LOGIC_VECTOR (data_width - 1 DOWNTO 0)       -- Salida de data_width bits
	);
END RAM_Memory;

architecture SYN of RAM_Memory is
	constant num_words : integer := 2**address_width;  -- Número de palabras basado en el ancho de dirección
	SIGNAL sub_wire0   : STD_LOGIC_VECTOR (data_width - 1 DOWNTO 0);
begin
	q <= sub_wire0;
	
	altsyncram_component : altsyncram
	GENERIC MAP (
		clock_enable_input_a				=> "BYPASS",
		clock_enable_output_a			=> "BYPASS",
		init_file							=> "ram3.hex",
		intended_device_family 			=> "Cyclone III 3C16",
		lpm_hint 							=> "ENABLE_RUNTIME_MOD=NO",
		lpm_type 							=> "altsyncram",
		numwords_a 							=> num_words,
		operation_mode						=> "SINGLE_PORT",
		outdata_aclr_a						=> "NONE",
		outdata_reg_a						=> "UNREGISTERED",
		power_up_uninitialized			=> "FALSE",
		ram_block_type						=> "M9K",
		read_during_write_mode_port_a => "OLD_DATA",
		widthad_a							=> address_width,  
		width_a								=> data_width,     
		width_byteena_a 					=> 1
	)
	PORT MAP (
		address_a	=> address,
		clock0 		=> clock,
		data_a 		=> data,
		wren_a 		=> wren,
		q_a			=> sub_wire0
	);
end SYN;
