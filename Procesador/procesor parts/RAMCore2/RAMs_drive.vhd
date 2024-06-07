library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity RAMs_drive is
	port(
		clkWrite			: in std_logic;
		clkRead			: in std_logic;
		
		reset				: in std_logic;
		enable			: in std_logic;
		
		h_count_read	: in unsigned (9 downto 0) := (others => '0');
		v_count_read	: in unsigned (9 downto 0) := (others => '0');
	
		clear				: in std_logic;
		
		D_in				: in std_logic_vector(3 downto 0);
		D_out				: out std_logic_vector(3 downto 0);
		
		h_count_write	: out unsigned (9 downto 0) := (others => '0');
		v_count_write	: out unsigned (9 downto 0) := (others => '0');
		
		W_address_32	: out std_logic_vector(15 downto 0):= (others => '0');
		W_address_16	: out std_logic_vector(14 downto 0):= (others => '0');
		W_address_8		: out std_logic_vector(13 downto 0):= (others => '0');
		
		R_address_32	: out std_logic_vector(15 downto 0):= (others => '0');
		R_address_16	: out std_logic_vector(14 downto 0):= (others => '0');
		R_address_8		: out std_logic_vector(13 downto 0):= (others => '0');
		
		Q_32				: out std_logic_vector(3 downto 0);
		Q_16				: out std_logic_vector(3 downto 0);
		Q_8				: out std_logic_vector(3 downto 0)
		
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


component RAM_device_1K is
	port
	(
		aclr			: in std_logic  := '0';
		data			: in std_logic_vector(3 downto 0);
		rdaddress	: in std_logic_vector(9 downto 0);
		rdclock		: in std_logic ;
		rden			: in std_logic  := '1';
		wraddress	: in std_logic_vector(9 downto 0);
		wrclock		: in std_logic ;
		wren			: in std_logic  := '0';
		q				: out std_logic_vector(3 downto 0)
	);
end component;

signal h_count_write_aux					: unsigned (9 downto 0) := (others => '0');
signal v_count_write_aux        		: unsigned (9 downto 0) := (others => '0');	

--signal h_count_read					: unsigned (9 downto 0) := (others => '0');
--signal v_count_read					: unsigned (9 downto 0) := (others => '0');
signal h_count_read_aux				: unsigned (9 downto 0) := (others => '0');

signal writeEna				: std_logic := '0';
signal ReadEna					: std_logic := '0';
signal Parity_register		: std_logic_vector (237 downto 0):= (others => '0');

signal writeEna_32			: std_logic := '0';
signal writeDir_32			: std_logic_vector(15 downto 0):= (others => '0');
signal readEna_32				: std_logic := '0';
signal readDir_32				: std_logic_vector(15 downto 0):= (others => '0');
signal Q_out_32				: std_logic_vector(3 downto 0);

signal writeEna_16			: std_logic := '0';
signal writeDir_16			: std_logic_vector(14 downto 0):= (others => '0');
signal readEna_16				: std_logic := '0';
signal readDir_16				: std_logic_vector(14 downto 0):= (others => '0');
signal Q_out_16				: std_logic_vector(3 downto 0);

signal writeEna_8				: std_logic := '0';
signal writeDir_8				: std_logic_vector(13 downto 0):= (others => '0');
signal readEna_8				: std_logic := '0';
signal readDir_8				: std_logic_vector(13 downto 0):= (others => '0');
signal Q_out_8					: std_logic_vector(3 downto 0);


begin

-- REVISAR LOS ENABLESSS Y LOS ARRANQUES DE ADDRESS O SEA CUANDO PASA DE UNA FILA A OTRA

	h_count_write <= h_count_write_aux;
	v_count_write <= v_count_write_aux;
	
	write_couters: process (clkWrite,reset,enable)
	begin
		
		if reset = '1' then
			h_count_write_aux <= (others => '0');
			v_count_write_aux <= (others => '0');
		
		elsif falling_edge (clkWrite) and enable = '1' then
			
			-- Contador horizontal
			if (h_count_write_aux = 639) then
				h_count_write_aux <= (others => '0');
			else
				h_count_write_aux <= h_count_write_aux + 1;
			end if;
			
			-- Contador vertical 
			if  (v_count_write_aux >= 476) and (h_count_write_aux >= 600) then --(v_count_write_aux > 476) and (h_count_write_aux >= 600)
				v_count_write_aux <= (others => '0');
			elsif (h_count_write_aux = 600) then  -- puse 600 y no 639 porque en VGA hice lo mismo y anduvo, total no importa si lo incrementa antes
				v_count_write_aux <= v_count_write_aux + 1;
			end if;
			
		end if;
		
	end process;
	
	ena_write: process(h_count_write_aux,reset,enable)
	begin
		if (h_count_write_aux >= 79) and (h_count_write_aux < 559) and reset = '0' and enable = '1' then
			writeEna <= '1';
		else
			writeEna 	<= '0';
		end if;
	end process;
	
	Write_addressing: process(h_count_write_aux,v_count_write_aux,writeEna)
	begin
	
		if (v_count_write_aux >= 2) and (v_count_write_aux <= 137) and writeEna = '1' then -- (v_count_write_aux >= 2)and (v_count_write_aux <= 137) and writeEna = '1'
			WriteEna_32 <= '1';
			WriteEna_16 <= '0';
			WriteEna_8  <= '0';
			
			writeDir_32 <= std_logic_vector(resize((h_count_write_aux - 79) + 480 * (v_count_write_aux - 2 ), 16)); --(h_count_write_aux - 79) + 480 * (v_count_write_aux-2)
			writeDir_8 <= (others => '0');
			
		elsif (v_count_write_aux <= 205) and writeEna = '1' then --(v_count_write_aux <= 205) and writeEna = '1'
			WriteEna_32 <= '0';
			WriteEna_16 <= '1';
			WriteEna_8  <= '0';
			
			writeDir_16 <= std_logic_vector(resize((h_count_write_aux - 79) + 480 * (v_count_write_aux - 138), 15)); -- (h_count_write_aux - 79) + 480 * (v_count_write_aux - 138)
			writeDir_32 <= (others => '0');
			
		elsif (v_count_write_aux <= 239) and writeEna = '1' then --(v_count_write_aux <= 239) and writeEna = '1'
			WriteEna_32 <= '0';
			WriteEna_16 <= '0';
			WriteEna_8  <= '1';
			
			writeDir_8  <= std_logic_vector(resize((h_count_write_aux - 79) + 480 * (v_count_write_aux - 206), 14)); -- (h_count_write_aux - 79) + 480 * (v_count_write_aux - 206)
			writeDir_16 <= (others => '0');
		
		elsif (v_count_write_aux <= 375) and writeEna = '1' then --(v_count_write_aux <= 375) and writeEna = '1'
			WriteEna_32 <= '1';
			WriteEna_16 <= '0';
			WriteEna_8  <= '0';
			
			writeDir_32 <= std_logic_vector(resize((h_count_write_aux - 79) + 480 * (v_count_write_aux - 240), 16)); -- (h_count_write_aux - 79) + 480 * (v_count_write_aux - 240)
			writeDir_8 <= (others => '0');
			
		elsif (v_count_write_aux <= 443) and writeEna = '1' then --(v_count_write_aux <= 443) and writeEna = '1'
			WriteEna_32 <= '0';
			WriteEna_16 <= '1';
			WriteEna_8  <= '0';
			
			writeDir_16 <= std_logic_vector(resize((h_count_write_aux - 79) + 480 * (v_count_write_aux - 376), 15)); -- (h_count_write_aux - 79) + 480 * (v_count_write_aux - 376)
			writeDir_32 <= (others => '0');
		
		elsif (v_count_write_aux <= 477) and writeEna = '1' then --(v_count_write_aux <= 477) and writeEna = '1'
			WriteEna_32 <= '0';
			WriteEna_16 <= '0';
			WriteEna_8  <= '1';
			
			writeDir_8  <= std_logic_vector(resize((h_count_write_aux - 79) + 480 * (v_count_write_aux - 444), 14)); -- (h_count_write_aux - 79) + 480 * (v_count_write_aux - 444)
			writeDir_16 <= (others => '0');
			
		else 
			WriteEna_32 <= '0';
			WriteEna_16 <= '0';
			WriteEna_8  <= '0';
			
		end if;
		
	end process;
	
	W_address_32 <= writeDir_32;
	W_address_16 <= writeDir_16;
	W_address_8  <= writeDir_8;
	
	Par_Reg: process(v_count_write_aux,h_count_write_aux)
   begin 
		if (v_count_write_aux >= 240) and (v_count_write_aux <= 477) then 
			Parity_register(to_integer(v_count_write_aux))<= '1';
		else
			Parity_register(to_integer(v_count_write_aux)) <= '0';
      end if;
	end process;
	
	
	h_count_read_aux <= h_count_Read + 2;
	
	ena_read: process(h_count_read_aux,v_count_read,reset,enable)
	begin
		if (h_count_read_aux >= 79) and (h_count_read_aux < 559) and (v_count_read <= 479) and reset = '0' and enable = '1' then
			ReadEna <= '1';
		else
			ReadEna <= '0';
		end if;
	end process;
	
--	read_couters: process (clkRead,reset,enable)
--	begin
--		
--		if reset = '1' then
--			h_count_Read <= (others => '0');
--			v_count_Read <= (others => '0');
--		
--		elsif falling_edge (clkRead) and enable = '1' then
--			
--			-- Contador horizontal
--			if (h_count_Read = 639) then
--				h_count_Read <= (others => '0');
--			else
--				h_count_Read <= h_count_Read + 1;
--			end if;
--			
--			-- Contador vertical 
--			if  (v_count_Read >= 15) and (h_count_Read >= 600) then --(v_count_Read > 476) and (h_count_Read >= 600)
--				v_count_Read <= (others => '0');
--			elsif (h_count_Read = 600) then  -- puse 600 y no 639 porque en VGA hice lo mismo y anduvo, total no importa si lo incrementa antes
--				v_count_Read <= v_count_Read + 1;
--			end if;
--			
--		end if;
--		
--	end process;
	
	read_addressing: process(h_count_read_aux,v_count_read,readEna)
	begin
		
		if (v_count_Read >= 2) and (v_count_Read <= 137) and ReadEna = '1' then --(v_count_Read >= 2) and (v_count_Read <= 137) and ReadEna = '1'
			ReadEna_32 <= '1';
			ReadEna_16 <= '0';
			ReadEna_8  <= '0';
			
			ReadDir_32 <= std_logic_vector(resize((h_count_Read_aux - 79) + 480 * (v_count_Read - 2), 16));
			ReadDir_8 <= (others => '0');
			
		elsif (v_count_Read <= 205) and ReadEna = '1' then --(v_count_Read <= 205) and ReadEna = '1'
			ReadEna_32 <= '0';
			ReadEna_16 <= '1';
			ReadEna_8  <= '0';
			
			ReadDir_16 <= std_logic_vector(resize((h_count_Read_aux - 79) + 480 * (v_count_Read - 138), 15)); -- (h_count_Read - 79) + 480 * (v_count_Read - 138)
			ReadDir_32 <= (others => '0');
			
		elsif (v_count_Read <= 239) and ReadEna = '1' then --(v_count_Read <= 239) and ReadEna = '1'
			ReadEna_32 <= '0';
			ReadEna_16 <= '0';
			ReadEna_8  <= '1';
			
			ReadDir_8  <= std_logic_vector(resize((h_count_Read_aux - 79) + 480 * (v_count_Read - 206), 14)); -- (h_count_Read_aux - 79) + 480 * (v_count_Read - 206)
			ReadDir_16 <= (others => '0');
				
		elsif (v_count_Read <= 375) and ReadEna = '1' then --(v_count_Read <= 375) and ReadEna = '1'
			ReadEna_32 <= '1';
			ReadEna_16 <= '0';
			ReadEna_8  <= '0';

			ReadDir_32 <= std_logic_vector(resize((h_count_Read_aux - 79) + 480 * (v_count_Read - 240), 16)); -- (h_count_Read_aux - 79) + 480 * (v_count_Read - 240)
			ReadDir_8 <= (others => '0');
			
		elsif (v_count_Read <= 443) and ReadEna = '1' then --(v_count_Read <= 443) and ReadEna = '1'
			ReadEna_32 <= '0';
			ReadEna_16 <= '1';
			ReadEna_8  <= '0';
			
			ReadDir_16 <= std_logic_vector(resize((h_count_Read_aux - 79) + 480 * (v_count_Read - 376), 15)); -- (h_count_Read_aux - 79) + 480 * (v_count_Read - 376)
			ReadDir_32 <= (others => '0');
		
		elsif (v_count_Read <= 477) and ReadEna = '1' then --(v_count_Read <= 477) and ReadEna = '1'
			ReadEna_32 <= '0';
			ReadEna_16 <= '0';
			ReadEna_8  <= '1';
			
			ReadDir_8  <= std_logic_vector(resize((h_count_Read_aux - 79) + 480 * (v_count_Read - 444), 14)); -- (h_count_Read_aux - 79) + 480 * (v_count_Read - 444)
			ReadDir_16 <= (others => '0');

		else 
			ReadEna_32 <= '0';
			ReadEna_16 <= '0';
			ReadEna_8  <= '0';
			
		end if;
		
	end process;
	
	output_select: process(Parity_register,v_count_Read,h_count_Read_aux)
	begin
	
		if parity_register(to_integer(v_count_Read)) = '0' then
			
			if (v_count_read < 2) or (v_count_read >=238) then -- (v_count_read < 2) or (v_count_read >=238
				D_out <= (others => '0');
				
			elsif (v_count_read <= 137 ) then --(v_count_read <= 137)
				D_out <= Q_out_32;
			
			elsif (v_count_Read <= 205) then --(v_count_Read <= 205)
				D_out <= Q_out_16;
				
			else
				D_out <= Q_out_8;
				
			end if;
		
		elsif parity_register(to_integer(v_count_Read)) = '1' then
			
			if (v_count_read <= 239) or (v_count_read >= 478) then -- (v_count_read <= 239) or (v_count_read >= 478)
				D_out <= (others => '0');
			
			elsif (v_count_read <= 375) then --(v_count_read <= 375)
				D_out <= Q_out_32;
			
			elsif (v_count_Read <= 443) then --(v_count_Read <= 443)
				D_out <= Q_out_16;
				
			else 
				D_out <= Q_out_8;
				
			end if;
			
		else 
			 D_out <= (others => '0');
			 
		end if;
		
	end process;
			
	R_address_32 <= ReadDir_32;
	R_address_16 <= ReadDir_16;
	R_address_8  <= ReadDir_8;
	
	Q_32 <= Q_out_32;
	Q_16 <= Q_out_16;
	Q_8  <= Q_out_8;
	
	RAMdev_32: RAMdevice_32 port map(
		data			=> D_in,				--: in std_logic_vector(3 downto 0);
		rd_aclr		=> clear,			--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir_32,		--: in std_logic_vector(15 downto 0);
		rdclock		=> clkRead,			--: in std_logic;
		rden			=> readEna_32,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir_32,	--: in std_logic_vector(15 downto 0);
		wrclock		=> clkWrite,		--: in std_logic  := '1';
		wren			=> WriteEna_32,	--: in std_logic  := '0';						--High to enable writing
		q				=> Q_out_32			--: out std_logic_vector(3 downto 0)
	);
	
	RAMdev_16: RAMdevice_16 port map(
		data			=> D_in,				--: in std_logic_vector(3 downto 0);
		rd_aclr		=> clear,			--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir_16,		--: in std_logic_vector(14 downto 0);
		rdclock		=> clkRead,			--: in std_logic;
		rden			=> readEna_16,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir_16,	--: in std_logic_vector(14 downto 0);
		wrclock		=> clkWrite,		--: in std_logic  := '1';
		wren			=> WriteEna_16,	--: in std_logic  := '0';						--High to enable writing
		q				=> Q_out_16			--: out std_logic_vector(3 downto 0)
	);
	
	RAMdev_8: RAMdevice_8 port map(
		data			=> D_in,				--: in std_logic_vector(3 downto 0);
		rd_aclr		=> clear,			--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir_8,		--: in std_logic_vector(13 downto 0);
		rdclock		=> clkRead,			--: in std_logic;
		rden			=> readEna_8,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir_8,		--: in std_logic_vector(13 downto 0);
		wrclock		=> clkWrite,		--: in std_logic  := '1';
		wren			=> WriteEna_8,		--: in std_logic  := '0';						--High to enable writing
		q				=> Q_out_8			--: out std_logic_vector(3 downto 0)
	);
	
	

end shape;