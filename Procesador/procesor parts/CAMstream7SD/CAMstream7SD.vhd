library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity CAMstream7SD is
	port(
		CLOCK_50		: in std_logic;
		
		SW				: in std_logic_vector(1 downto 0);
		LEDG			: out std_logic_vector(1 downto 0);
		
		GPIO0_D		: out std_logic_vector(2 downto 0);
		--GPIO0_D0	: SIO_C
		--GPIO0_D1	: SIO_D
		--GPIO0_D2	: MCLK
		
		GPIO1_D		: in std_logic_vector(10 downto 0);
		--GPIO1_D0	: D0
		--GPIO1_D1	: D1
		--GPIO1_D2	: D2
		--GPIO1_D3	: D3
		--GPIO1_D4	: D4
		--GPIO1_D5	: D5
		--GPIO1_D6	: D6
		--GPIO1_D7	: D7
		--GPIO1_D8	: PCLK
		--GPIO1_D9	: HREF
		--GPIO1_D10	: VSYNC
		
		HEX0_D		: out std_logic_vector(6 downto 0);
		HEX1_D		: out std_logic_vector(6 downto 0);
		HEX2_D		: out std_logic_vector(6 downto 0);
		HEX3_D		: out std_logic_vector(6 downto 0);
		
		HEX0_DP		: out std_logic;
		HEX1_DP		: out std_logic;
		HEX2_DP		: out std_logic;
		HEX3_DP		: out std_logic
		
	);
end entity;


architecture shape of CAMstream7SD is

component SCCBdrive is
	port(
		clk800	: in std_logic;
		E			: in std_logic; --solo se envian mensajes mientras que este esté prendido
		
		SIO_C		: out std_logic;
		SIO_D		: out std_logic;
		LIVE		: out std_logic --El LIVE corta cuando se enviaron los tres mensajes y no vuelve a enviar hasta que se reinicie E
	);
end component;

component div800k is
	port(
		rst			: in std_logic;
		clk_800k		: out std_logic;
		
		clk_50M		: in std_logic
	);
end component;

component CAPdrive is
	port(
		rst		: in std_logic;
		D_in		: in std_logic_vector(7 downto 0);
		PCLK		: in std_logic;
		HREF		: in std_logic;
		
		D_out		: out std_logic_vector(3 downto 0);
		outCLK	: out std_logic
	);
end component;

component pll1 is
	port(
		areset		: in std_logic  := '0';
		inclk0		: in std_logic  := '0';
		c0				: out std_logic ;
		locked		: out std_logic 
	);
end component;

signal clk24M			: std_logic;
signal clk800k			: std_logic;
signal rstMssg			: std_logic;
signal weLIVE			: std_logic;

signal rstCAP			: std_logic;
signal BWPixel			: std_logic_vector(3 downto 0);

begin
	
	CLK_24M: pll1 port map(areset => open, inclk0 => CLOCK_50, c0 => clk24M, locked => open);
	
	GPIO0_D(2) <= clk24M and SW(1);
	
	rstMssg <= not(SW(0));
	
	DIV800: div800k port map(rst => rstMssg, clk_800k => clk800k, clk_50M => CLOCK_50);

	SCCBdriver: SCCBdrive port map(clk800 => clk800k, E => SW(0), SIO_C => GPIO0_D(0), SIO_D => GPIO0_D(1), LIVE => weLIVE);

	LEDG(0) <= weLIVE;
	LEDG(1) <= GPIO1_D(10);
	
	rstCAP <= not(SW(1));
	CAPdriver: CAPdrive 
		port map(
			rst		=> rstCAP,
			D_in		=> GPIO1_D(7 downto 0),
			PCLK		=> GPIO1_D(8),
			HREF		=> GPIO1_D(9),
			D_out		=> BWPixel,
			outCLK	=> open);
	
	
	HEX0_D <= 
		"1000000" when BWPixel(0)='0' else
		"1111001" when BWPixel(0)='1';
	
	HEX1_D <= 
		"1000000" when BWPixel(1)='0' else
		"1111001" when BWPixel(1)='1';
	
	HEX2_D <= 
		"1000000" when BWPixel(2)='0' else
		"1111001" when BWPixel(2)='1';
		
	HEX3_D <= 
		"1000000" when BWPixel(3)='0' else
		"1111001" when BWPixel(3)='1';
	
	HEX0_DP <= BWPixel(0);
	HEX1_DP <= BWPixel(1);
	HEX2_DP <= BWPixel(2);
	HEX3_DP <= BWPixel(3);
	
end shape;