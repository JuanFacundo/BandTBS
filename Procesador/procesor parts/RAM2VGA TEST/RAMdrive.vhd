library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity RAMdrive is
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
end entity;



architecture shape of RAMdrive is

component RAMdevice is
	port(
		data			: in std_logic_vector(31 downto 0);
		rd_aclr		: in std_logic  := '0';						--High to clear?
		rdaddress	: in std_logic_vector(18 downto 0);
		rdclock		: in std_logic;
		rden			: in std_logic  := '1';						--High to enable reading?
		wraddress	: in std_logic_vector(15 downto 0);
		wrclock		: in std_logic  := '1';
		wren			: in std_logic  := '0';						--High to enable writing
		q				: out std_logic_vector(3 downto 0)
	);
end component;

component counterSync16 is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		
		count		: out std_logic_vector(15 downto 0)
	);
end component;

component counterSync19 is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		
		count		: out std_logic_vector(18 downto 0)
	);
end component;



signal writeDir			: std_logic_vector(15 downto 0);
signal readDir				: std_logic_vector(18 downto 0);



begin
	
	wC: counterSync16 port map(
		clk	=> clkWrite,
		rst	=>	rstCount16,
		count => writeDir
	);
	
	
	rC: counterSync19 port map(
		clk	=> clkRead,
		rst	=> rstCount19,
		count => readDir
	);

	
	RAMdev: RAMdevice port map(
		data			=> D_in,			--: in std_logic_vector(31 downto 0);
		rd_aclr		=> clear,		--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir,		--std_logic_vector(readDir),		--: in std_logic_vector(18 downto 0);
		rdclock		=> clkRead,		--: in std_logic;
		rden			=> readEna,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir,	--: in std_logic_vector(15 downto 0);
		wrclock		=> clkWrite,	--: in std_logic  := '1';
		wren			=> writeEna,	--: in std_logic  := '0';						--High to enable writing
		q				=> D_out			--: out std_logic_vector(3 downto 0)
	);
	
	--che ojo que esto lo hice con los ojos cerrados, falta analizar uno a uno las señales
	
end shape;