library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity packer is
	port(
		rst		: in std_logic;
		D_in		: in std_logic_vector(3 downto 0);
		clk_in	: in std_logic;
		
		RAMpack	: out std_logic_vector(31 downto 0);
		clk_out	: out std_logic
	);
end entity;



architecture shape of packer is

component Z_1 is
	port(
		rst		: in std_logic;
		clk_in	: in std_logic;
		
		clk_out	: out std_logic
	);
end component;

signal clk_chain			: std_logic_vector(2 downto 0);
signal late_chain			: std_logic_vector(1 downto 0);
signal packet				: std_logic_vector(31 downto 0);
signal clk_pack			: std_logic;
	
begin

	clk_chain(0) <=
		'0' when rst='1' else
		not(clk_chain(0)) when rising_edge(clk_in);
	
	clk_chain(1) <=
		'0' when rst='1' else
		not(clk_chain(1)) when rising_edge(clk_chain(0));
		
	clk_chain(2) <=
		'0' when rst='1' else
		not(clk_chain(2)) when rising_edge(clk_chain(1));
	
	CLKPK: Z_1 port map(
		rst		=> rst,
		clk_in	=> clk_chain(1),
		clk_out	=> clk_pack
	);
	
	packet <=
		packet(31 downto 4) 	& D_in 								when clk_chain = "111" else
		packet(31 downto 8) 	& D_in & packet(3 downto 0) 	when clk_chain = "110" else
		packet(31 downto 12) & D_in & packet(7 downto 0) 	when clk_chain = "101" else
		packet(31 downto 16) & D_in & packet(11 downto 0) 	when clk_chain = "100" else
		packet(31 downto 20) & D_in & packet(15 downto 0) 	when clk_chain = "011" else
		packet(31 downto 24) & D_in & packet(19 downto 0) 	when clk_chain = "010" else
		packet(31 downto 28) & D_in & packet(23 downto 0) 	when clk_chain = "001" else
		D_in & packet(27 downto 0) 								when clk_chain = "000";
		
	
		
	RAMpack <=
		"00000000000000000000000000000000" when rst='1' else
		packet when rising_edge(clk_pack);
		
	
	CLKOUT0: Z_1 port map(
		rst		=> rst,
		clk_in	=> clk_chain(0),
		clk_out	=> late_chain(0)
	);
	
	CLKOUT1: Z_1 port map(
		rst		=> rst,
		clk_in	=> late_chain(0),
		clk_out	=> late_chain(1)
	);
	
	clk_out <= late_chain(1);

end shape;