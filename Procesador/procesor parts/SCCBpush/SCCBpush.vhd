library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity SCCBpush is
	port(
		clk					: in std_logic;
		SELmssg				: in std_logic_vector(3 downto 0);
		push					: in std_logic;
		
		SIO_C					: out std_logic;
		SIO_D					: out std_logic
	);
end entity;



architecture shape of SCCBpush is




begin
	
	