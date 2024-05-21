library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ONEHOTshift is
	port(
		--mssg		: in std_logic_vector(26 downto 0);
		E			: in std_logic;
		clk		: in std_logic;
		
		S			: out std_logic;
		sending	: out std_logic
	);
end entity;


architecture shape of ONEHOTshift is

signal mssg						: std_logic_vector(307199 downto 0);
signal ZEROmssg, ONEmssg	: std_logic_vector(307199 downto 0);
signal D 						: std_logic_vector(307199 downto 0);
signal Q							: std_logic_vector(307199 downto 0);
signal Esync 					: std_logic;
signal cD, cQ					: std_logic_vector(307199 downto 0);

begin
	Esync <=
		'0' when (E = '0') else
		E when rising_edge(clk);
	
	cstVecs: for n in 0 to 307199 generate
		ZEROmssg(n) <= '0';
		ONEmssg(n) <= '1';
	end generate;
	
	mssg(0) <= '1';
	theMssg: for n in 1 to 307199 generate
		mssg(n) <= '0';
	end generate;
	
	
	Q <=
		ZEROmssg when (E = '0') else
		D when rising_edge(clk);
	
	D(307199 downto 0) <=
		Q(307198 downto 0) & '0' when (Esync='1') else
		mssg	when (Esync='0');
	
	S <= 
		'0' when E='0' else
		Q(307199);
	
	
	
	
	cQ <=
		ZEROmssg when (E = '0') else
		cD when rising_edge(clk);
		
	cD <=
		cQ(307198 downto 0) & '0' when (Esync='1') else
		ONEmssg when (Esync='0');
	
	sending <= 
		'0' when E='0' else
		cQ(307199);
	

end shape;