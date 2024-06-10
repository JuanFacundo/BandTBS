library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CAPdrive is
	port(
		rst		: in std_logic;
		D_in		: in std_logic_vector(7 downto 0);
		PCLK		: in std_logic;
		HREF		: in std_logic;
		
		D_out		: out std_logic_vector(3 downto 0);
		Enable	: out std_logic;
		outCLK	: out std_logic
	);
end entity;

architecture shape of CAPdrive is

component Z_1 is
	port(
		rst		: in std_logic;
		clk_in	: in std_logic;
		
		clk_out	: out std_logic
	);
end component;

signal QinReg		: std_logic_vector(7 downto 0);
signal dPCLK		: std_logic;
signal PCLK_aux	: std_logic;
signal ADDed		: unsigned(5 downto 0);
signal A,B			: unsigned(5 downto 0);
signal takeTurn		: std_logic;
signal QaddReg		: unsigned(5 downto 0);
signal HRST			: std_logic;
signal lateTurn		: std_logic;
signal Chewed		: std_logic_vector(3 downto 0);

begin
	
	HRST 		<= not(HREF);
	dPCLK 	<= HREF and not(PCLK);
	PCLK_aux <= HREF and PCLK;
	
	
	QinReg <= (others => '0') when rst= '1' else D_in when falling_edge(dPCLK);
	
	takeTurn <= '0' when HREF='0' else not(takeTurn) when falling_edge(dPCLK);
	
	A <= unsigned("00" & QinReg(7 downto 4));
	
	B <= unsigned("00" & QinReg(3 downto 0)) when takeTurn='1' else
	     unsigned('0' & std_logic_vector(QaddReg(4 downto 0)));
								 
	ADDed <= A + B;
	
	QaddReg <= (others => '0') when HREF='0' or rst= '1' else ADDed when rising_edge(dPCLK);
	
	DEPHASE: Z_1 port map(
		rst => HRST,
		clk_in => PCLK_aux,
		clk_out => lateTurn
	);
	
	
	Chewed <= (others => '0') when HREF='0' or rst= '1' else std_logic_vector(QaddReg(5 downto 2)) when rising_edge(lateTurn);
	
	D_out <= Chewed;
	
	Enable <= Href; -- Deberia en realidad retrasarlo pero outclk ya tiene incluido el retardo asi que creo que no hace falta !!
	
	outCLK <= lateTurn;
	
	-- Asi como esta se pierde el ultimo pixel ¿Importa? 
	
end shape;
