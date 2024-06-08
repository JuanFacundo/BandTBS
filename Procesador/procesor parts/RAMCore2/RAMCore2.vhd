library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity RAMCore2 is
	
	port(
		CLOCK_50		: in std_logic;
		--Enable		: in std_logic;
		--Reset			: in std_logic;
		--Clear			: in std_logic;
		--Data_in		: in std_logic_vector(3 downto 0);
		
		SW				: in std_logic_vector(6 downto 0);
		--LEDG			: out std_logic_vector(2 downto 0);
		--GPIO0_D		: out std_logic_vector(3 downto 0);
		
		VGA_R			: out std_logic_vector(3 downto 0);
		VGA_G			: out std_logic_vector(3 downto 0);
		VGA_B			: out std_logic_vector(3 downto 0);
		VGA_HS		: out std_logic;
		VGA_VS		: out std_logic
	);
end entity;



architecture shape of RAMCore2 is

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
		
--		h_count_write	: out unsigned (9 downto 0) := (others => '0');
--		v_count_write	: out unsigned (9 downto 0) := (others => '0');
		
--		W_address_32	: out std_logic_vector(15 downto 0):= (others => '0');
--		W_address_16	: out std_logic_vector(14 downto 0):= (others => '0');
--		W_address_8		: out std_logic_vector(13 downto 0):= (others => '0');
--		
--		R_address_32	: out std_logic_vector(15 downto 0):= (others => '0');
--		R_address_16	: out std_logic_vector(14 downto 0):= (others => '0');
--		R_address_8		: out std_logic_vector(13 downto 0):= (others => '0');
--		
--		Q_32				: out std_logic_vector(3 downto 0);
--		Q_16				: out std_logic_vector(3 downto 0);
--		Q_8				: out std_logic_vector(3 downto 0)
	);
end component;

signal video_on,clk24M,clk25M,clk12M: std_logic;
signal Hsync, Vsync					: std_logic;
signal h_count, v_count        	: unsigned (9 downto 0) := (others => '0');
signal data							 	: std_logic_vector(3 downto 0):= (others => '0');
signal h_count_w,v_count_w			: unsigned (9 downto 0) := (others => '0');
signal W_add_32,R_add_32			: std_logic_vector(15 downto 0):= (others => '0');
signal W_add_16,R_add_16			: std_logic_vector(14 downto 0):= (others => '0');
signal W_add_8,R_add_8				: std_logic_vector(13 downto 0):= (others => '0');
signal Q_32,Q_16,Q_8					: std_logic_vector(3 downto 0);			

begin
	
	
	CLK_24M: pll1 port map(areset => SW(0), inclk0 => CLOCK_50, c0 => clk24M, locked => open);
	
	CLK25: pll2 port map(
		areset		=> SW(0),
		inclk0		=> CLOCK_50,
		c0				=> clk25M
	);
	
	div_clk: process(clk24M)
	begin
		if rising_edge(clk24M) then
			clk12M <= not(clk12M);
		end if;
	end process;

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
			VideoOn	  	=> video_on
		 );

	 RAM_controller : Rams_drive port map(
			clkWrite		 	=> clk12M,		-- : in std_logic;
			clkRead		 	=> clk25M,		-- : in std_logic;
			reset			 	=> SW(0),		--	: in std_logic;
			enable		 	=> SW(2),		--	: in std_logic;
			h_count_read 	=> h_count,		-- : in unsigned (9 downto 0) := (others => '0');
			v_count_read 	=> v_count,		-- : in unsigned (9 downto 0) := (others => '0');
			clear			 	=> SW(1),		--	: in std_logic;
			D_in			 	=> SW(6 downto 3),-- : in std_logic_vector(3 downto 0);
			D_out				=> data			--	: out std_logic_vector(3 downto 0)
--			W_address_32	=> W_add_32,	-- : out std_logic_vector(15 downto 0):= (others => '0');
--			W_address_16	=> W_add_16,	-- : out std_logic_vector(14 downto 0):= (others => '0');
--			W_address_8		=> W_add_8,		-- : out std_logic_vector(13 downto 0):= (others => '0');
--			
--			R_address_32	=> R_add_32,	-- : out std_logic_vector(15 downto 0):= (others => '0');
--			R_address_16	=> R_add_16,	-- : out std_logic_vector(14 downto 0):= (others => '0');
--			R_address_8		=> R_add_8,		-- : out std_logic_vector(13 downto 0):= (others => '0');
--			
--			Q_32				=> Q_32,			--	: out std_logic_vector(3 downto 0);
--			Q_16				=> Q_16,			-- : out std_logic_vector(3 downto 0);
--			Q_8				=> Q_8			-- : out std_logic_vector(3 downto 0)
		);
	 
end shape;