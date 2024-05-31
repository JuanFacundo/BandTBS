library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity CAMstreamVGA is
	port(
		CLOCK_50		: in std_logic;
		
		SW				: in std_logic_vector(5 downto 0);
		LEDG			: out std_logic_vector(2 downto 0);
		
		GPIO0_D		: out std_logic_vector(3 downto 0);
		--GPIO0_D0	: SIO_C
		--GPIO0_D1	: SIO_D
		--GPIO0_D2	: MCLK
		--GPIO0_D3	: multipurpose
		
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
		
		VGA_R			: out std_logic_vector(3 downto 0);
		VGA_G			: out std_logic_vector(3 downto 0);
		VGA_B			: out std_logic_vector(3 downto 0);
		VGA_HS		: out std_logic;
		VGA_VS		: out std_logic
		
	);
end entity;


architecture shape of CAMstreamVGA is

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

component packer is
	port(
		rst		: in std_logic;
		D_in		: in std_logic_vector(3 downto 0);
		clk_in	: in std_logic;
		
		RAMpack	: out std_logic_vector(31 downto 0);
		clk_out	: out std_logic
	);
end component;

component RAMdrive is
	port(
		clkWrite			: in std_logic;
		clkRead			: in std_logic;
		
		D_in				: in std_logic_vector(31 downto 0);
		D_out				: out std_logic_vector(3 downto 0);
		
		writeEna			: in std_logic;
		readEna			: in std_logic;
		
		clear				: in std_logic;
		rstCount16		: in std_logic;
		rstCount19		: in std_logic
		
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

component pll2 is
	port(
		areset		: in std_logic := '0';
		inclk0		: in std_logic := '0';
		c0				: out std_logic
	);
end component;


signal clk24M			: std_logic;
signal clk25M			: std_logic;
signal clk800k			: std_logic;
signal rstMssg			: std_logic;
signal weLIVE			: std_logic;

signal rstCAP			: std_logic;
signal BWPixel			: std_logic_vector(3 downto 0);
signal MDR				: std_logic_vector(31 downto 0);

signal sel				: std_logic;
signal clkWriter		: std_logic;
signal cleanUp			: std_logic;

signal RAMin			: std_logic_vector(31 downto 0);

begin
	
	CLK_24M: pll1 port map(areset => open, inclk0 => CLOCK_50, c0 => clk24M, locked => open);
	
	GPIO0_D(2) <= clk24M and SW(1);
	
	rstMssg <= not(SW(0));
	
	DIV800: div800k port map(rst => rstMssg, clk_800k => clk800k, clk_50M => CLOCK_50);

	SCCBdriver: SCCBdrive port map(clk800 => clk800k, E => SW(0), SIO_C => GPIO0_D(0), SIO_D => GPIO0_D(1), LIVE => weLIVE);

	LEDG(0) <= weLIVE;
	LEDG(1) <= GPIO1_D(9);
	LEDG(2) <= GPIO1_D(10);
	
	
	
	
	rstCAP <= not(SW(1));
	CAPdriver: CAPdrive 
		port map(
			rst		=> rstCAP,
			D_in		=> GPIO1_D(7 downto 0),
			PCLK		=> GPIO1_D(8),
			HREF		=> GPIO1_D(9),
			D_out		=> BWPixel,
			outCLK	=> sel);
	
	GPIO0_D(3) <= sel;
	
	
	
	
	
	
	
	packing: packer port map(
		rst			=>	GPIO1_D(10),	--: in std_logic;
		D_in			=> BWPixel,			--: in std_logic_vector(3 downto 0);
		clk_in		=> sel,				--: in std_logic;
		
		RAMpack		=> RAMin,				--: out std_logic_vector(31 downto 0);
		clk_out		=> clkWriter			--: out std_logic
	);
	
	 
	cleanUp <= not(SW(1));
	RAMmy: RAMdrive port map(
		clkWrite			=> clkWriter,		--: in std_logic;
		clkRead			=> '0',				--: in std_logic;
	
		D_in				=>	RAMin,			--: in std_logic_vector(31 downto 0);
		D_out				=> open,				--: out std_logic_vector(3 downto 0);
		
		writeEna			=> GPIO1_D(9),		--: in std_logic;
		readEna			=> SW(1), 			--: in std_logic;
		
		clear				=> cleanUp,			--: in std_logic;
		rstCount16		=> cleanUp,			--: in std_logic;
		rstCount19		=> cleanUp			--: in std_logic
	);
	
	
	
	CLK25: pll2 port map(
		areset		=> SW(1),
		inclk0		=> CLOCK_50,
		c0				=> clk25M
	);
	
	
	
	
	
	
	
	
	
	VGA_R <= SW(5) & SW(4) & SW(3) & SW(2);
	VGA_G <= BWPixel;
	VGA_B <= BWPixel;
	
	
	VGA_HS <= GPIO1_D(9);
	VGA_VS <= GPIO1_D(10);
	
	
end shape;