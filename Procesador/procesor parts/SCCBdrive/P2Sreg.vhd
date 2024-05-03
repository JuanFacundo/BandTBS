library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity P2Sreg is
	port(
		mssg		: in std_logic_vector(26 downto 0);
		E			: in std_logic;
		clk		: in std_logic;
		
		S			: out std_logic;
		sending	: out std_logic
	);
end entity;


architecture shape of P2Sreg is

signal D 		: std_logic_vector(26 downto 0);
signal Q			: std_logic_vector(26 downto 0);
signal Esync 	: std_logic;
signal cD, cQ	: std_logic_vector(26 downto 0);

begin
	Esync <=
		'0' when (E = '0') else
		E when rising_edge(clk);
	
	Q <=
		"000000000000000000000000000" when (E = '0') else
		D when rising_edge(clk);
	
	D(26 downto 0) <=
		Q(25 downto 0) & '0' when (Esync='1') else
		mssg	when (Esync='0');
	
	S <= 
		'0' when E='0' else
		Q(26);
	
	
	
	
	cQ <=
		"000000000000000000000000000" when (E = '0') else
		cD when rising_edge(clk);
		
	cD <=
		cQ(25 downto 0) & '0' when (Esync='1') else
		"111111111111111111111111111" when (Esync='0');
	
	sending <= 
		'0' when E='0' else
		cQ(26);
	

end shape;