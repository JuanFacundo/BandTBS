library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity CAMstreamVGA is
	port(
		CLOCK_50		: in std_logic;
		
		SW				: in std_logic_vector(1 downto 0);
		
		GPIO0_D0		: out std_logic;	--SIO_C
		GPIO0_D1		: out std_logic;	--SIO_D
		
		GPIO0_D2		: in std_logic;	--D0
		GPIO0_D3		: in std_logic;	--D1
		GPIO0_D4		: in std_logic;	--D2
		GPIO0_D5		: in std_logic;	--D3
		GPIO0_D6		: in std_logic;	--D4
		GPIO0_D7		: in std_logic;	--D5
		GPIO0_D8		: in std_logic;	--D6
		GPIO0_D9		: in std_logic;	--D7
		
		GPIO0_D10	: out std_logic;	--MCLK
		GPIO0_D11	: in std_logic;	--PCLK
		GPIO0_D12	: in std_logic;	--HREF
		GPIO0_D13	: in std_logic;	--VREF
		
		GPIO0_D		: out std_logic_vector(2 downto 0);
		GPIO1_D		: in std_logic_vector(10 downto 0)
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

signal clk800k			: std_logic;
signal rstMssg			: std_logic;
signal SIOC, SIOD		: std_logic;
signal weLIVE			: std_logic;

begin
	
	rstMssg <= not(SW(0));
	
	DIV800: div800k port map(rst => rstMssg, clk_800k => clk800k, clk_50M => CLOCK_50);

	SCCBdriver: SCCBdrive port map(clk800 => clk800k, E => SW(0), SIO_C => SIOC, SIO_D => SIOD, LIVE => weLIVE);

	GPIO0_D(0) <= SIOC;
	GPIO0_D(1) <= SIOD;
	GPIO0_D(2) <= weLIVE;
end shape;