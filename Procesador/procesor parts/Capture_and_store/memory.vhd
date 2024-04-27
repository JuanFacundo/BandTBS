library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
	
	Generic (
		ADDRESS_WIDTH	: integer := 4;
		DATA_WIDTH		: integer := 4	
	);
		
	Port (
		clk          : in  std_logic;
		address      : in  std_logic_vector (ADDRESS_WIDTH - 1 downto 0);
		data_in      : in  std_logic_vector (DATA_WIDTH - 1 downto 0);
		data_out     : out std_logic_vector (DATA_WIDTH - 1 downto 0);
		wr           : in  std_logic;
		reset        : in  std_logic;
		enable       : in  std_logic
	);
end memory;

architecture Behavioral of memory is

	constant num_words : integer := 2**address_width;  -- Número de palabras basado en el ancho de dirección
	type ram_array is array (0 to num_words - 1) of std_logic_vector (DATA_WIDTH - 1 downto 0);
	signal ram : ram_array := (others => (others => '0'));
	
begin

	process(clk,reset,enable)
	begin
		
		if reset = '0' then
			ram <= (others => (others => '0'));
		elsif rising_edge(clk) and enable = '1' then
			if wr = '1' then
				ram(conv_integer(address)) <= data_in;
			else
				data_out <= ram(conv_integer(address));
			end if;
		end if;
	end process;
 
end Behavioral;




