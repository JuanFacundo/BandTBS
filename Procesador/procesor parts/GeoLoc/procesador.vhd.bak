library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity procesador is
	port(
		CLOCK_50		: in std_logic;
		SW				: in std_logic_vector(10 downto 0);
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
		
		-- displays
		HEX0_D 	: out std_logic_vector(6 downto 0);
		HEX1_D	: out std_logic_vector(6 downto 0);
		HEX2_D 	: out std_logic_vector(6 downto 0);
		HEX3_D 	: out std_logic_vector(6 downto 0);
		-- puntito
		HEX2_DP 	: out std_logic
	);
end entity;

architecture shape of procesador is

component CAPdiez is
	port(
		rst		: in std_logic;
		D_in		: in std_logic_vector(7 downto 0);
		PCLK		: in std_logic;
		HREF		: in std_logic;
		
		D_out		: out std_logic_vector(3 downto 0);
		RAMadr	: out std_logic_vector(15 downto 0);
		Hcount	: out std_logic_vector (9 downto 0);
		Vcount	: out std_logic_vector (9 downto 0);
		outCLK	: out std_logic
	);
end component;

component GeoLoc is
	port(
		clk		: in std_logic;
		Vsync		: in std_logic;
		Pixel		: in std_logic_vector(3 downto 0);
		h_count	: in std_logic_vector(9 downto 0);
		v_count	: in std_logic_vector(9 downto 0);
		
		X_loc		: out std_logic_vector(7 downto 0);
		Y_loc		: out std_logic_vector(7 downto 0)
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

component div800k is
	port(
		rst			: in std_logic;
		clk_800k		: out std_logic;
		
		clk_50M		: in std_logic
	);
end component;

component deco is
	port(
		num : in integer range 0 to 9;
		decoded : out std_logic_vector(6 downto 0)
	);
end component;

signal clk24M				: std_logic;
signal clk800k				: std_logic;
signal rstMssg				: std_logic;

signal pixel				: std_logic_vector(3 downto 0);
signal h_count				: std_logic_vector (9 downto 0);
signal v_count				: std_logic_vector (9 downto 0);
signal cap_clock			: std_logic;
signal y_loc				: std_logic_vector(7 downto 0);
signal centena				: integer range 0 to 9;
signal decena				: integer range 0 to 9;
signal unidad				: integer range 0 to 9;

begin

	CLK_24M: pll1 port map(areset => SW(1), inclk0 => CLOCK_50, c0 => clk24M, locked => open);
	
	GPIO0_D(2) <= clk24M; -- MCLK
	
	rstMssg <= not(SW(0));
	
	DIV800: div800k port map(rst => rstMssg, clk_800k => clk800k, clk_50M => CLOCK_50);
	
	SCCBdriver: SCCBdrive port map(clk800 => clk800k, E => SW(0), SIO_C => GPIO0_D(0), SIO_D => GPIO0_D(1), LIVE => LEDG(0));
	
	GPIO0_D(3) <= SW(2);		--PWDN
	GPIO0_D(4) <= SW(3);		--RST
	
	CAP10: CAPdiez port map(
		rst		=> not(SW(3)),					--: in std_logic;
		D_in		=> GPIO1_D(7 downto 0),		--: in std_logic_vector(7 downto 0);
		PCLK		=> GPIO1_D(8),					--: in std_logic;
		HREF		=> GPIO1_D(9),					--: in std_logic;
		
		D_out		=> pixel,						--: out std_logic_vector(3 downto 0);
		RAMadr	=> open,							--: out std_logic_vector(15 downto 0);
		outCLK	=> cap_clock,					--: out std_logic
		Hcount	=> h_count,						--: out std_logic_vector (9 downto 0);
		Vcount	=> v_count 						--: out std_logic_vector (9 downto 0);
	);
	
	
	Geo_Loc: GeoLoc port map(
		clk		=> cap_clock,					--: in std_logic;
		Vsync		=> GPIO1_D(10),				--: in std_logic;
		Pixel		=> pixel,						--: in std_logic_vector(3 downto 0);
		h_count	=> h_count,						--: in std_logic_vector(9 downto 0);
		v_count	=> v_count,						--: in std_logic_vector(9 downto 0);
		
		X_loc		=> open,							--: out std_logic_vector(7 downto 0);
		Y_loc		=> y_loc							--: out std_logic_vector(7 downto 0)
	);
	
	-- Descomposición del valor y_loc
	process(y_loc)
   begin
       centena <= to_integer(unsigned(y_loc)) / 100;
       decena  <= (to_integer(unsigned(y_loc)) mod 100 ) / 10;
       unidad  <= to_integer(unsigned(y_loc)) mod 10;
   end process;
	 
	deco_centena	: deco port map(num=>centena, decoded=>HEX0_D);
	deco_decena		: deco port map(num=>decena , decoded=>HEX1_D);
	deco_unidad		: deco port map(num=>unidad , decoded=>HEX2_D);
	
end shape;