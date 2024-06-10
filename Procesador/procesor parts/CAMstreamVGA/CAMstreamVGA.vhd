library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity CAMstreamVGA is
	port(
		CLOCK_50		: in std_logic;
		
		SW				: in std_logic_vector(10 downto 0);
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
		Enable	: out std_logic;
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

component pll2 is
	port(
		areset		: in std_logic := '0';
		inclk0		: in std_logic := '0';
		c0				: out std_logic
	);
end component;

component VGA_generator is
    port(
        clock_25MHz : in std_logic;
        data_in	  : in std_logic_vector(3 downto 0);
		  rst			  : in std_logic;
		  ena			  : in std_logic;
        red         : out std_logic_vector(3 downto 0);
        green       : out std_logic_vector(3 downto 0);
        blue        : out std_logic_vector(3 downto 0);
        Hsync       : out std_logic;
        Vsync       : out std_logic;
		  Hcount		  : out unsigned (9 downto 0);
		  Vcount		  : out unsigned (9 downto 0);
		  VideoOn	  : out std_logic
    );
end component;

component RAMs_drive is
	port(
		clkWrite			: in std_logic;
		clkRead			: in std_logic;
		
		reset				: in std_logic;
		enable			: in std_logic;
		
		h_count_read	: in unsigned (9 downto 0) := (others => '0');
		v_count_read	: in unsigned (9 downto 0) := (others => '0');
		
		clear				: in std_logic;
		
		D_in				: in std_logic_vector(3 downto 0);
		D_out				: out std_logic_vector(3 downto 0)
	
	);
end component;

signal clk24M,clk25M,clk12M,Enable	: std_logic;
signal Hsync, Vsync						: std_logic;
signal h_count, v_count        		: unsigned (9 downto 0) := (others => '0');
signal h_countCAM, v_countCAM   		: unsigned (9 downto 0) := (others => '0');
signal data							 		: std_logic_vector(3 downto 0):= (others => '0');

signal clk800k			: std_logic;
signal rstMssg			: std_logic;
signal weLIVE			: std_logic;

signal rstCAP			: std_logic;
signal BWPixel			: std_logic_vector(3 downto 0);


begin

	-- Uso de Switches:
		-- SW(0) : Resetea PLL1, PLL2, el mensaje a enviar a la camara y E (Habilitación? ) o sea en '1' para programar la camara y dsp siempre en '0'
		-- SW(1) : Clear CAPdrive y RAM (limpia en bajo). En alto dispara MCLK 
		-- SW(2) : habilita VGA 
		-- SW(3) : Resetea RAMs_drive
		
	-- Generación de MCLK para la cámara (24MHz)
	CLK_24M: pll1 port map(areset => SW(0), inclk0 => CLOCK_50, c0 => clk24M, locked => open);
	
	GPIO0_D(2) <= clk24M and SW(1); -- GPIO0_D2	: MCLK 
	
	
	-- Programación de la camara 
	rstMssg <= not(SW(0));
	
	DIV800: div800k port map(rst => rstMssg, clk_800k => clk800k, clk_50M => CLOCK_50);

	SCCBdriver: SCCBdrive port map(clk800 => clk800k, E => SW(0), SIO_C => GPIO0_D(0), SIO_D => GPIO0_D(1), LIVE => weLIVE);

	LEDG(0) <= weLIVE;
	LEDG(1) <= GPIO1_D(9);	--GPIO1_D9	: HREF
		
	LEDG(2) <= GPIO1_D(10);	--GPIO1_D10	: VSYNC
	
	
	-- Captura de datos de la camara
	rstCAP <= not(SW(1));
	
	CAPdriver: CAPdrive port map(
			rst		=> rstCAP,
			D_in		=> GPIO1_D(7 downto 0), -- o bien poner SW (10 downto 3) para probar.  GPIO1_D: (D7,D6,D5,D4,D3,D2,D1 y D0)
			PCLK		=> GPIO1_D(8), -- PCLK
			HREF		=> GPIO1_D(9), -- Href
			D_out		=> BWPixel,
			Enable	=> Enable,
			outCLK	=> clk12M
		);
	
	GPIO0_D(3) <= clk12M; --GPIO0_D3	: multipurpose
	
	-- Generación de MCLK para VGA (25.175 MHz)
	CLK25: pll2 port map(
		areset		=> SW(0),
		inclk0		=> CLOCK_50,
		c0				=> clk25M
	);
	
	-- Manejador de memoria RAM
	RAM_controller : Rams_drive port map(
			clkWrite		 	=> clk12M,			-- : in std_logic;
			clkRead		 	=> clk25M,			-- : in std_logic;
			reset			 	=> SW(3),			-- : in std_logic;
			enable		 	=> Enable,			-- : in std_logic;
			h_count_read 	=> h_count,		-- : in unsigned (9 downto 0) := (others => '0');
			v_count_read 	=> v_count,		-- : in unsigned (9 downto 0) := (others => '0');
			clear			 	=> rstCAP,			-- : in std_logic;
			D_in			 	=> BWPixel, 		-- : in std_logic_vector(3 downto 0);
			D_out				=> data				-- : out std_logic_vector(3 downto 0);
		);
	
	
	VGA_controller : VGA_generator port map(
			clock_25MHz => clk25M, 
			data_in 		=> data,
			rst			=> SW(0),
			ena			=> SW(2),
			red 			=> VGA_R, 
			green 		=> VGA_G, 
			blue 			=> VGA_B, 
			Hsync 		=> VGA_HS, 
			Vsync 		=> VGA_VS,
			Hcount		=> h_count,
			Vcount		=> v_count,  
			VideoOn	  	=> open
		 );
		 
end shape;