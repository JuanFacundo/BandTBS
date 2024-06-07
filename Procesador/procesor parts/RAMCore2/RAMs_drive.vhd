library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity RAMs_drive is
	port(
		clkWrite			: in std_logic;
		clkRead			: in std_logic;
		
		readEna			: in std_logic;
		clear				: in std_logic;
		
		h_count			: in unsigned (9 downto 0) := (others => '0');
		v_count        : in unsigned (9 downto 0) := (others => '0');
		
		D_in				: in std_logic_vector(3 downto 0);
		D_out				: out std_logic_vector(3 downto 0)
		
	);
end entity;


architecture shape of RAMs_drive is

component RAMdevice_32 is
	port(
		data			: in std_logic_vector(3 downto 0);
		rd_aclr		: in std_logic  := '0';						--High to clear?
		rdaddress	: in std_logic_vector(15 downto 0);
		rdclock		: in std_logic;
		rden			: in std_logic  := '1';						--High to enable reading?
		wraddress	: in std_logic_vector(15 downto 0);
		wrclock		: in std_logic  := '1';
		wren			: in std_logic  := '0';						--High to enable writing
		q				: out std_logic_vector(3 downto 0)
	);
end component;

component RAMdevice_16 is
	port(
		data			: in std_logic_vector(3 downto 0);
		rd_aclr		: in std_logic  := '0';						--High to clear?
		rdaddress	: in std_logic_vector(14 downto 0);
		rdclock		: in std_logic;
		rden			: in std_logic  := '1';						--High to enable reading?
		wraddress	: in std_logic_vector(14 downto 0);
		wrclock		: in std_logic  := '1';
		wren			: in std_logic  := '0';						--High to enable writing
		q				: out std_logic_vector(3 downto 0)
	);
end component;

component RAMdevice_8 is
	port(
		data			: in std_logic_vector(3 downto 0);
		rd_aclr		: in std_logic  := '0';						--High to clear?
		rdaddress	: in std_logic_vector(13 downto 0);
		rdclock		: in std_logic;
		rden			: in std_logic  := '1';						--High to enable reading?
		wraddress	: in std_logic_vector(13 downto 0);
		wrclock		: in std_logic  := '1';
		wren			: in std_logic  := '0';						--High to enable writing
		q				: out std_logic_vector(3 downto 0)
	);
end component;

signal writeEna				: std_logic;
signal init_raw				: unsigned (6 downto 0) := (others => '0');
signal count_cycle			: unsigned (6 downto 0) := (others => '0'); -- Mepa que es ciclo es de 96 pero revisarrrrrrr
signal v_count_aux			: unsigned (7 downto 0) := (others => '0');

signal writeEna_32			: std_logic;
signal writeDir_32			: std_logic_vector(15 downto 0);
signal readDir_32				: std_logic_vector(15 downto 0);

signal writeEna_16			: std_logic;
signal writeDir_16			: std_logic_vector(14 downto 0);
signal readDir_16				: std_logic_vector(14 downto 0);

signal writeEna_8				: std_logic;
signal writeDir_8				: std_logic_vector(13 downto 0);
signal readDir_8				: std_logic_vector(13 downto 0);

begin

	ena_write: process(h_count)
	begin
		if (h_count >= 79) and (h_count < 559) then
			writeEna <= '1';
		end if;
	end process;
	
	raw_addressing: process(v_count)
	begin
		
		v_count_aux <= v_count - 238 * init_raw - 480 * count_cycle;
		
		if v_count_aux = 237 then
			init_raw <= init_raw + 1;
		end if
	end process;
	
	Write_addressing: process(h_count,v_count_aux)
	begin
		if (v_count_aux <= 135) and writeEna = '1' then
			WriteEna_32 <= '1';
			WriteEna_16 <= '0';
			WriteEna_8  <= '0';
			writeDir_32 <= (h_count - 480) + 480 * v_count_aux;
		elsif (v_count_aux <= 203) and writeEna = '1' then
			WriteEna_32 <= '0';
			WriteEna_16 <= '1';
			WriteEna_8  <= '0';
			writeDir_16 <= (h_count - 480) + 480 * (v_count_aux - 136);
			-- multiplicar por 480 es equivalente a: 480 * A = 2^8 * A + 2^7 * A + 2^6 * A + 2^5 * A 
		elsif (v_count_aux <= 237) and writeEna = '1' then
			WriteEna_32 <= '0';
			WriteEna_16 <= '0';
			WriteEna_8 <= '1';
			writeDir_8 <= (h_count - 480) + 480 * (v_count_aux - 204);
		else 
			WriteEna_32 <= '0';
			WriteEna_16 <= '0';
			WriteEna_8  <= '0';
		end if;
	end process;
	
	RAMdev_32: RAMdevice_32 port map(
		data			=> D_in,			--: in std_logic_vector(3 downto 0);
		rd_aclr		=> clear,		--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir_32,	--: in std_logic_vector(15 downto 0);
		rdclock		=> clkRead,		--: in std_logic;
		rden			=> readEna,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir_32,--: in std_logic_vector(15 downto 0);
		wrclock		=> clkWrite,	--: in std_logic  := '1';
		wren			=> writeEna,	--: in std_logic  := '0';						--High to enable writing
		q				=> D_out			--: out std_logic_vector(3 downto 0)
	);
	
	RAMdev_16: RAMdevice_16 port map(
		data			=> D_in,			--: in std_logic_vector(3 downto 0);
		rd_aclr		=> clear,		--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir_16,	--: in std_logic_vector(14 downto 0);
		rdclock		=> clkRead,		--: in std_logic;
		rden			=> readEna,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir_16,	--: in std_logic_vector(14 downto 0);
		wrclock		=> clkWrite,	--: in std_logic  := '1';
		wren			=> writeEna,	--: in std_logic  := '0';						--High to enable writing
		q				=> D_out			--: out std_logic_vector(3 downto 0)
	);
	
	RAMdev_8: RAMdevice_8 port map(
		data			=> D_in,			--: in std_logic_vector(3 downto 0);
		rd_aclr		=> clear,		--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir_8,	--: in std_logic_vector(13 downto 0);
		rdclock		=> clkRead,		--: in std_logic;
		rden			=> readEna,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir_8,	--: in std_logic_vector(13 downto 0);
		wrclock		=> clkWrite,	--: in std_logic  := '1';
		wren			=> writeEna,	--: in std_logic  := '0';						--High to enable writing
		q				=> D_out			--: out std_logic_vector(3 downto 0)
	);
	
end shape;