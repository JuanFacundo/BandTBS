library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity LoQritas is
	port(
		CLOCK_50		: in std_logic;
		
		SW				: in std_logic_vector(9 downto 0);
		LEDG			: out std_logic_vector(2 downto 0);
		
		GPIO0_D		: out std_logic_vector(4 downto 0);
		--GPIO0_D0	: SIO_C
		--GPIO0_D1	: SIO_D
		--GPIO0_D2	: MCLK
		--GPIO0_D3	: PWDN
		--GPIO0_D4  : RST
		
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




architecture shape of LoQritas is


component RAMx32 is
	port(
		data				: in std_logic_vector (3 downto 0);
		rd_aclr			: in std_logic := '0';
		rdaddress		: in std_logic_vector (15 downto 0);
		rdclock			: in std_logic ;
		rden				: in std_logic  := '1';
		wraddress		: in std_logic_vector  (15 downto 0);
		wrclock			: in std_logic  := '1';
		wren				: in std_logic  := '0';
		q					: out std_logic_vector (3 downto 0)
	);
end component;

component VGA_generator is
	port(
		clock_25MHz : in std_logic;
		data_in	  	: in std_logic_vector(3 downto 0);
		rst			: in std_logic;
		ena			: in std_logic;
		enaSquare	: in std_logic;
		color			: in std_logic_vector(3 downto 0);
		red         : out std_logic_vector(3 downto 0);
		green       : out std_logic_vector(3 downto 0);
		blue        : out std_logic_vector(3 downto 0);
		Hsync       : out std_logic;
		Vsync       : out std_logic;
		Hcount		: out unsigned (9 downto 0);
		Vcount		: out unsigned (9 downto 0);
		RAMadr		: out std_logic_vector (15 downto 0);
		enarRAMclk	: out std_logic;
		VideoOn	  	: out std_logic
	);
end component;

component pll2 is
	port(
		areset		: in std_logic  := '0';
		inclk0		: in std_logic  := '0';
		c0				: out std_logic
	);
end component;

component CAPdiez is
	port(
		rst		: in std_logic;
		D_in		: in std_logic_vector(7 downto 0);
		PCLK		: in std_logic;
		HREF		: in std_logic;
		
		D_out		: out std_logic_vector(3 downto 0);
		RAMadr	: out std_logic_vector(15 downto 0);
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

component SCCBdrive is
	port(
		clk800	: in std_logic;
		E			: in std_logic; --solo se envian mensajes mientras que este esté prendido
		
		SIO_C		: out std_logic;
		SIO_D		: out std_logic;
		LIVE		: out std_logic --El LIVE corta cuando se enviaron los tres mensajes y no vuelve a enviar hasta que se reinicie E
	);
end component;

component pll3 is
	port(
		areset		: in std_logic  := '0';
		inclk0		: in std_logic  := '0';
		c0				: out std_logic 
	);
end component;

component div800k is
	port(
		rst			: in std_logic;
		clk_800k		: out std_logic;
		
		clk_50M		: in std_logic
	);
end component;

--clocks
signal clk25M				: std_logic;
signal clk24M				: std_logic;
signal rRAMclk				: std_logic;
signal wRAMclk				: std_logic;

--vectors
signal wRAM					: std_logic_vector(3 downto 0);
signal rRAM					: std_logic_vector(3 downto 0);

--ena & rst & flags
signal rstVGA				: std_logic;
signal enaVGA				: std_logic;
signal vgaLive				: std_logic;
signal rst25				: std_logic;
signal clcRAM				: std_logic;
signal rstRadr				: std_logic;
signal IShcntPAR			: std_logic;
signal enarRAM				: std_logic;
signal enawRAM				: std_logic;
signal enarRAMclk			: std_logic;

--counters
signal HvgaCnt				: unsigned (9 downto 0);
signal VvgaCnt				: unsigned (9 downto 0);
signal rRAMadr				: std_logic_vector(15 downto 0);
signal wRAMadr				: std_logic_vector(15 downto 0);


signal clk800k			: std_logic;
signal rstMssg			: std_logic;
signal weLIVE			: std_logic;

begin
	
	VGApart: VGA_generator port map(
		clock_25MHz => clk25M,				--: in std_logic;
		data_in	  	=>	rRAM,					--: in std_logic_vector(3 downto 0);
		rst			=> rstVGA,				--: in std_logic;
		ena			=> enaVGA,				--: in std_logic;
		enaSquare	=> SW(4),				--: in std_logic;
		color			=> SW(9 downto 6),	--: in std_logic_vector(3 downto 0);
		red         =>	VGA_R,				--: out std_logic_vector(3 downto 0);
		green       => VGA_G,				--: out std_logic_vector(3 downto 0);
		blue        => VGA_B,				--: out std_logic_vector(3 downto 0);
		Hsync       => VGA_HS,				--: out std_logic;
		Vsync       => VGA_VS,				--: out std_logic;
		Hcount		=> HvgaCnt,				--: out unsigned (9 downto 0);
		Vcount		=> VvgaCnt,				--: out unsigned (9 downto 0);
		RAMadr		=> rRAMadr,				--: out unsigned (15 downto 0);
		enarRAMclk	=> enarRAMclk,			--: out std_logic;
		VideoOn	  	=> vgaLive				--: out std_logic
	);

	CLK_25M: pll2 port map(
		areset		=> rst25,				--: in std_logic  := '0';
		inclk0		=> CLOCK_50,			--: in std_logic  := '0';
		c0				=> clk25M				--: out std_logic
	);
	
	--GPIO0_D(3) <= clk25M;
	--GPIO0_D(4) <= enarRAMclk;
	
	rstVGA <= SW(1);
	enaVGA <= not(SW(1));
	rst25 <= SW(1);
	
	
	rRAMclk <= not(clk25M) and enarRAMclk;
	
	
	RAM32: RAMx32 port map(
		data				=> wRAM,										--: in std_logic_vector (3 downto 0);
		rd_aclr			=> '0',--clcRAM,									--: in std_logic := '0';
		rdaddress		=> rRAMadr,			--: in std_logic_vector (15 downto 0);
		rdclock			=> rRAMclk,									--: in std_logic ;
		rden				=> '1',--enarRAM,									--: in std_logic  := '1';
		wraddress		=> wRAMadr,			--: in std_logic_vector  (15 downto 0);
		wrclock			=> wRAMclk,									--: in std_logic  := '1';
		wren				=> '1',--enawRAM,									--: in std_logic  := '0';
		q					=> rRAM										--: out std_logic_vector (3 downto 0)
	);
	
	-----------------------------
	
	CAP10: CAPdiez port map(
		rst		=> not(SW(3)),--GPIO1_D(10),						--: in std_logic;
		D_in		=> GPIO1_D(7 downto 0),		--: in std_logic_vector(7 downto 0);
		PCLK		=> GPIO1_D(8),					--: in std_logic;
		HREF		=> GPIO1_D(9),					--: in std_logic;
		
		D_out		=> wRAM,							--: out std_logic_vector(3 downto 0);
		RAMadr	=> wRAMadr,						--: out std_logic_vector(15 downto 0);
		outCLK	=> wRAMclk						--: out std_logic
	);
	
	CLK_24M: pll1 port map(areset => SW(1), inclk0 => CLOCK_50, c0 => clk24M, locked => open);
	
	GPIO0_D(2) <= clk24M;
	
	rstMssg <= not(SW(0));
	
	DIV800: pll3 port map(areset => rstMssg, inclk0 => CLOCK_50, c0 => clk800k);-------div800k port map(rst => rstMssg, clk_800k => clk800k, clk_50M => CLOCK_50);
	
	SCCBdriver: SCCBdrive port map(clk800 => clk800k, E => SW(0), SIO_C => GPIO0_D(0), SIO_D => GPIO0_D(1), LIVE => LEDG(0));
	
	GPIO0_D(3) <= SW(2);		--PWDN
	GPIO0_D(4) <= SW(3);		--RST
	
end shape;