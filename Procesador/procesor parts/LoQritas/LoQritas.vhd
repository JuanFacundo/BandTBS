library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity LoQritas is
	port(
		CLOCK_50		: in std_logic;
		
		SW				: in std_logic_vector(9 downto 0);
		LEDG			: out std_logic_vector(2 downto 0);
		
		--GPIO0D0		: out std_logic
		GPIO0_D		: out std_logic_vector(30 downto 0);
		--GPIO0_D	: SIO_C
		--GPIO0_D	: SIO_D
		--GPIO0_D	: MCLK
		--GPIO0_D	: PWDN
		--GPIO0_D 	: RST
		
		GPIO1D0		: out std_logic;
		GPIO1D1		: out std_logic;
		GPIO1D2		: in std_logic;
		GPIO1D3		: out std_logic;
		GPIO1D4		: in std_logic;
		GPIO1D6		: in std_logic;
		GPIO1D8		: in std_logic;
		GPIO1D10		: in std_logic;
		GPIO1D22		: in std_logic;
		GPIO1D24		: in std_logic;
		GPIO1D26		: in std_logic;
		GPIO1D28		: in std_logic;
		GPIO1D30		: in std_logic;
		
		GPIO1D13		: in std_logic;
		--GPIO1_D	: D0
		--GPIO1_D	: D1
		--GPIO1_D	: D2
		--GPIO1_D	: D3
		--GPIO1_D	: D4
		--GPIO1_D	: D5
		--GPIO1_D	: D6
		--GPIO1_D	: D7
		--GPIO1_D	: PCLK
		--GPIO1_D	: HREF
		--GPIO1_D	: VSYNC
		
		-- displays
		--HEX0_D 	: out std_logic_vector(6 downto 0);
		--HEX1_D	: out std_logic_vector(6 downto 0);
		--HEX2_D 	: out std_logic_vector(6 downto 0);
		--HEX3_D 	: out std_logic_vector(6 downto 0);
		
		VGA_R			: out std_logic_vector(3 downto 0);
		VGA_G			: out std_logic_vector(3 downto 0);
		VGA_B			: out std_logic_vector(3 downto 0);
		VGA_HS		: out std_logic;
		VGA_VS		: out std_logic
	);
end entity;




architecture shape of LoQritas is

component COMdriver is
	port(
		rst				: in std_logic;
		clk50M			: in std_logic;
		coord_x  		: in std_logic_vector(7 downto 0);
		coord_y  		: in std_logic_vector(7 downto 0);
		
		outSerial		: out std_logic_vector(2 downto 0)
	);
end component;

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
		c_X			: in std_logic_vector(9 downto 0);
		c_Y			: in std_logic_vector(9 downto 0);
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

component CAPonce is
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

component centroID is
	port(
		rst							: in std_logic;
		newPix						: in std_logic_vector(3 downto 0);
		pixCLK						: in std_logic;
		HREF							: in std_logic;
		h_count							: in std_logic_vector(9 downto 0);
		v_count						: in std_logic_vector(9 downto 0);
		
		c_X							: out std_logic_vector(9 downto 0);
		c_Y							: out std_logic_vector(9 downto 0)
	);
end component;

component deco is
	port(
		num : in integer range 0 to 9;
		decoded : out std_logic_vector(6 downto 0)
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



--IO signals
--signal GPIO1_D				: std_logic_vector(30 downto 0);
--out signals
signal SIO_C				: std_logic;	--GPIO0_D0	: SIO_C
signal SIO_D				: std_logic;	--GPIO0_D29	: SIO_D
signal MCLK					: std_logic;	--GPIO0_D17	: MCLK
signal PWDN					: std_logic;	--GPIO0_D15	: PWDN
signal camRST				: std_logic;	--GPIO0_D13 : RST
signal outSerial			: std_logic_vector(2 downto 0);
--in signals
signal camData				: std_logic_vector(7 downto 0);  --6 28 8 26 open 24 10 22
signal camPCLK				: std_logic;	--GPIO1_D4
signal camHREF				: std_logic;	--GPIO1_D30
signal camVsync			: std_logic;	--GPIO1_D2


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
signal h_count				: std_logic_vector (9 downto 0);
signal v_count				: std_logic_vector (9 downto 0);


signal clk800k			: std_logic;
signal rstMssg			: std_logic;
signal weLIVE			: std_logic;



-- GEOLoc signals 
--signal y_loc				: std_logic_vector(7 downto 0);
--signal centena				: integer range 0 to 9;
--signal decena				: integer range 0 to 9;
--signal unidad				: integer range 0 to 9;
--signal clk_aux				: std_logic := '0';

-- centroID signals
signal rstID				: std_logic;
signal c_X					: std_logic_vector(9 downto 0);
signal c_Y					: std_logic_vector(9 downto 0);
signal c_Xaux				: std_logic_vector(9 downto 0);


--signal counter_aux		: std_logic_vector (25 downto 0);




begin
	
	--out signals
	GPIO0_D(0) <= SIO_C;
	GPIO0_D(29) <= SIO_D;
	GPIO0_D(17) <= MCLK;
	GPIO0_D(15) <= PWDN;
	GPIO0_D(14) <= camRST;
	GPIO1D0 <= outSerial(2); -- coord y PD4
	GPIO1D3 <= outSerial(0); -- Alert PD2
	GPIO1D1 <= outSerial(1); -- coord x PD3
	--in signals
	camData(7 downto 0)	<= GPIO1D6 & GPIO1D28 & GPIO1D8 & GPIO1D26 & '0' & GPIO1D24 & GPIO1D10 & GPIO1D22;  --6 28 8 26 open 24 10 22
	camPCLK	<=	GPIO1D4;
	camHREF	<=	GPIO1D30;
	camVsync	<= GPIO1D2;
	
	
	
	
	
	c_Xaux <= 
		c_X - 80 when (c_X > 79) else
		(others => '0');
	
	uCOM: COMdriver port map(
		rst				=> SW(1),								--: in std_logic;
		clk50M			=> CLOCK_50,							--: in std_logic;
		coord_x  		=> c_Xaux(8 downto 1),				--: in std_logic_vector(7 downto 0);
		coord_y  		=> c_Y(8 downto 1),					--: in std_logic_vector(7 downto 0);
		
		outSerial		=> outSerial							--: out std_logic_vector(2 downto 0)
	);
	
	--interconections from screen to cam
	VGApart: VGA_generator port map(
		clock_25MHz => clk25M,				--: in std_logic;
		data_in	  	=>	rRAM,					--: in std_logic_vector(3 downto 0);
		rst			=> rstVGA,				--: in std_logic;
		ena			=> enaVGA,				--: in std_logic;
		enaSquare	=> SW(4),				--: in std_logic;
		color			=> SW(9 downto 6),	--: in std_logic_vector(3 downto 0);
		c_X			=> c_X,					--: in std_logic_vector(9 downto 0);
		c_Y			=> c_Y,					--: in std_logic_vector(9 downto 0);
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
	
	rstVGA <= '0';--SW(1);
	enaVGA <= not(SW(1));
	rst25 <= SW(1);
	
	
	rRAMclk <= not(clk25M) and enarRAMclk;
	
	RAM32: RAMx32 port map(
		data				=> wRAM,										--: in std_logic_vector (3 downto 0);
		rd_aclr			=> '0',--clcRAM,							--: in std_logic := '0';
		rdaddress		=> rRAMadr,									--: in std_logic_vector (15 downto 0);
		rdclock			=> rRAMclk,									--: in std_logic ;
		rden				=> '1',--enarRAM,							--: in std_logic  := '1';
		wraddress		=> wRAMadr,									--: in std_logic_vector  (15 downto 0);
		wrclock			=> wRAMclk,									--: in std_logic  := '1';
		wren				=> '1',--enawRAM,							--: in std_logic  := '0';
		q					=> rRAM										--: out std_logic_vector (3 downto 0)
	);
	
	-----------------------------
	
	CAP11: CAPonce port map(
		rst		=> not(SW(3)) or SW(2),		--: in std_logic;
		D_in		=> camData,						--: in std_logic_vector(7 downto 0);
		PCLK		=> camPCLK,						--: in std_logic;
		HREF		=> camHREF,						--: in std_logic;
		
		D_out		=> wRAM,							--: out std_logic_vector(3 downto 0);
		RAMadr	=> wRAMadr,						--: out std_logic_vector(15 downto 0);
		outCLK	=> wRAMclk,						--: out std_logic
		Hcount	=> h_count,						--: out std_logic_vector (9 downto 0);
		Vcount	=> v_count 						--: out std_logic_vector (9 downto 0);
	);
	
	--Geo_Loc: GeoLoc port map(
	--	clk		=> wRAMclk,						--: in std_logic;
	--	Vsync		=> camVsync,					--: in std_logic;
	--	Pixel		=> wRAM,							--: in std_logic_vector(3 downto 0);
	--	h_count	=> h_count,						--: in std_logic_vector(9 downto 0);
	--	v_count	=> v_count,						--: in std_logic_vector(9 downto 0);
	--	
	-- X_loc		=> open,							--: out std_logic_vector(7 downto 0);
	--	Y_loc		=> y_loc							--: out std_logic_vector(7 downto 0)
	--);
	
	cID: centroID port map(
		rst		=> not(SW(4)),					--: in std_logic;
		newPix	=> wRAM,							--: in std_logic_vector(3 downto 0);
		pixCLK	=> wRAMclk,						--: in std_logic;
		HREF		=> camHREF,						--: in std_logic;
		h_count	=> h_count,						--: in std_logic_vector(9 downto 0);
		v_count	=> v_count,						--: in std_logic_vector(9 downto 0);
		
		c_X		=> c_X,							--: out std_logic_vector(9 downto 0);
		c_Y		=> c_Y							--: out std_logic_vector(9 downto 0)
	);
	
	
	--clk_div: process (CLOCK_50)
   -- begin
   --     if rising_edge(CLOCK_50) then
   --         if counter_aux = 24999999 then -- Cuando el contador alcance el valor deseado
   --            counter_aux <= (others => '0');  						-- Reiniciar el contador
   --            clk_aux <= not clk_aux;  		 	-- Cambiar el estado del reloj 
   --         else 
	--				counter_aux <= counter_aux + 1;
	--			end if;
   --     end if;
   -- end process;
	 
	-- Descomposición del valor y_loc
	--process(clk_aux)
   --begin
	
	--	if rising_edge(clk_aux) then
	--		centena <= to_integer(unsigned(y_loc)) / 100;
	--		decena  <= (to_integer(unsigned(y_loc)) mod 100 ) / 10;
	--		unidad  <= to_integer(unsigned(y_loc)) mod 10;
	--	end if;
		
   --end process;
	 
	--deco_centena	: deco port map(num=>centena, decoded=>HEX0_D);
	--deco_decena		: deco port map(num=>decena , decoded=>HEX1_D);
	--deco_unidad		: deco port map(num=>unidad , decoded=>HEX2_D);
	
	
	CLK_24M: pll1 port map(
		areset => SW(1), 
		inclk0 => CLOCK_50, 
		c0 => clk24M, 
		locked => open
	);
	
	MCLK <= clk24M;
	
	rstMssg <= not(SW(0));
	
	DIV800: pll3 port map(
		areset => rstMssg,
		inclk0 => CLOCK_50, 
		c0 => clk800k
	);-------div800k port map(rst => rstMssg, clk_800k => clk800k, clk_50M => CLOCK_50);
	
	SCCBdriver: SCCBdrive port map(clk800 => clk800k, E => SW(0), SIO_C => SIO_C, SIO_D => SIO_D, LIVE => LEDG(0));
	
	PWDN <= SW(2);		--PWDN
	camRST <= SW(3);	--RST
	
end shape;