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

signal not_clk_Read					: std_logic;
signal h_count_write					: unsigned (9 downto 0) := (others => '0');
signal v_count_write        		: unsigned (9 downto 0) := (others => '0');	
signal h_count_read_aux				: unsigned (9 downto 0) := (others => '0');

signal writeEna				: std_logic := '0';
signal ReadEna					: std_logic := '0';
signal Parity_register		: std_logic_vector (237 downto 0):= (others => '0');
signal parity_check			: std_logic;

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

signal Rclk, Wclk				: std_logic;

begin

	write_couunters: process(clkWrite,reset,enable)
	begin
		if reset = '1' then
			
			h_count_write <= (others => '0');
			v_count_write <= (others => '0');
		
		elsif rising_edge(clkWrite) and enable = '1' then
			
			h_count_write <= h_count_write + 1;
			
			if h_count_write >= 640 then
				
				h_count_write <= (others => '0');
				v_count_write <= v_count_write + 1;
				
				if v_count_write >= 480 then
					v_count_write <= (others => '0');
				end if;
			
			end if;
		end if;
	end process;

	--write_couters: process (clkWrite,reset,enable)
	--begin
		
	--	if reset = '1' then
	--		h_count_write 		<= (others => '0');
	--		v_count_write 		<= (others => '0');
		
	--	elsif falling_edge (clkWrite) and enable = '1' then
			
			-- Contador vertical 
	--		if  (v_count_write = 479) and (h_count_write = 639) then 
	--			v_count_write <= (others => '0');
	--		elsif (h_count_write = 639) then 
	--			v_count_write <= v_count_write + 1;
	--		end if;
			
			-- Contador horizontal
	--		if (h_count_write = 639) then
	--			h_count_write <= (others => '0');
	--		else
	--			h_count_write <= h_count_write + 1;
	--		end if;
			
	--	end if;
		
	--end process;
	
	ena_write: process(h_count_write,reset,enable)
	begin
		if (h_count_write >= 80) and (h_count_write <= 559)  and (v_count_write >= 2)  and (v_count_write <= 477) and reset = '0' and enable = '1' then
			writeEna <= '1';
		else
			writeEna <= '0';
		end if;
	end process;
	
	Write_addressing: process(h_count_write,v_count_write,writeEna)
	begin
	
		if (v_count_write >= 2) and (v_count_write <= 137) and writeEna = '1' then -- (v_count_write >= 2)and (v_count_write <= 137) and writeEna = '1'
			WriteEna_32 <= '1';
			WriteEna_16 <= '0';
			WriteEna_8  <= '0';
			
			writeDir_32 <= std_logic_vector(resize((h_count_write - 80) + 480 * (v_count_write - 2), 16)); --(h_count_write - 80) + 480 * (v_count_write-2)
			writeDir_8 <= (others => '0');
			
		elsif (v_count_write <= 205) and writeEna = '1' then --(v_count_write <= 205) and writeEna = '1'
			WriteEna_32 <= '0';
			WriteEna_16 <= '1';
			WriteEna_8  <= '0';
			
			writeDir_16 <= std_logic_vector(resize((h_count_write - 80) + 480 * (v_count_write - 138), 15)); -- (h_count_write - 80) + 480 * (v_count_write - 138)
			writeDir_32 <= (others => '0');
			
		elsif (v_count_write <= 239) and writeEna = '1' then --(v_count_write <= 239) and writeEna = '1'
			WriteEna_32 <= '0';
			WriteEna_16 <= '0';
			WriteEna_8  <= '1';
			
			writeDir_8  <= std_logic_vector(resize((h_count_write - 80) + 480 * (v_count_write - 206), 14)); -- (h_count_write - 80) + 480 * (v_count_write - 206)
			writeDir_16 <= (others => '0');
		
		elsif (v_count_write <= 375) and writeEna = '1' then --(v_count_write <= 375) and writeEna = '1'
			WriteEna_32 <= '1';
			WriteEna_16 <= '0';
			WriteEna_8  <= '0';
			
			writeDir_32 <= std_logic_vector(resize((h_count_write - 80) + 480 * (v_count_write - 240), 16)); -- (h_count_write - 80) + 480 * (v_count_write - 240)
			writeDir_8 <= (others => '0');
			
		elsif (v_count_write <= 443) and writeEna = '1' then --(v_count_write <= 443) and writeEna = '1'
			WriteEna_32 <= '0';
			WriteEna_16 <= '1';
			WriteEna_8  <= '0';
			
			writeDir_16 <= std_logic_vector(resize((h_count_write - 80) + 480 * (v_count_write - 376), 15)); -- (h_count_write - 80) + 480 * (v_count_write - 376)
			writeDir_32 <= (others => '0');
		
		elsif (v_count_write <= 477) and writeEna = '1' then --(v_count_write <= 477) and writeEna = '1'
			WriteEna_32 <= '0';
			WriteEna_16 <= '0';
			WriteEna_8  <= '1';
			
			writeDir_8  <= std_logic_vector(resize((h_count_write - 80) + 480 * (v_count_write - 444), 14)); -- (h_count_write - 80) + 480 * (v_count_write - 444)
			writeDir_16 <= (others => '0');
			
		else 
			WriteEna_32 <= '0';
			WriteEna_16 <= '0';
			WriteEna_8  <= '0';
			
		end if;
		
	end process;
	
	Par_Reg: process(v_count_write) --actualizo el PAR_Reg luego de completar la fila
   begin 
		
		if (v_count_write >= 3) and (v_count_write <= 240) and reset = '0' then 
			Parity_register(to_integer(v_count_write - 3 )) <= '0';
		
		elsif (v_count_write >= 241) and (v_count_write <= 478) and reset = '0' then
			Parity_register(to_integer(v_count_write - 241)) <= '1';
		
		elsif clear = '1' then 
			Parity_register <= (others => '0');
      end if;
		
	end process;
	
	not_clk_Read <= not(clkRead);
	
	h_count_read_aux <= h_count_Read;
	
	ena_read: process(h_count_read_aux,v_count_read,reset,enable)
	begin
		if (h_count_read_aux >= 80) and (h_count_read_aux <= 559) and (v_count_read >= 2) and (v_count_read <= 477) and enable = '1' then-- and reset = '0'  then --(v_count_read >= 2) and (v_count_read <= 477)
			ReadEna <= '1';
		else
			ReadEna <= '0';
		end if;
	end process;
	
	read_addressing: process(h_count_read_aux,v_count_read,readEna)
	begin
		
		if (v_count_Read <= 137) and ReadEna = '1' then --(v_count_Read <= 137) 
			ReadEna_32 <= '1';
			ReadEna_16 <= '0';
			ReadEna_8  <= '0';
			
			ReadDir_32 <= std_logic_vector(resize((h_count_Read_aux - 80) + 480 * (v_count_Read - 2), 16));
			ReadDir_8 <= (others => '0');
			
		elsif (v_count_Read <= 205) and ReadEna = '1' then --(v_count_Read <= 205) and ReadEna = '1'
			ReadEna_32 <= '0';
			ReadEna_16 <= '1';
			ReadEna_8  <= '0';
			
			ReadDir_16 <= std_logic_vector(resize((h_count_Read_aux - 80) + 480 * (v_count_Read - 138), 15)); -- (h_count_Read - 80) + 480 * (v_count_Read - 138)
			ReadDir_32 <= (others => '0');
			
		elsif (v_count_Read <= 239) and ReadEna = '1' then --(v_count_Read <= 239) and ReadEna = '1'
			ReadEna_32 <= '0';
			ReadEna_16 <= '0';
			ReadEna_8  <= '1';
			
			ReadDir_8  <= std_logic_vector(resize((h_count_Read_aux - 80) + 480 * (v_count_Read - 206), 14)); -- (h_count_Read_aux - 80) + 480 * (v_count_Read - 206)
			ReadDir_16 <= (others => '0');
				
		elsif (v_count_Read <= 375) and ReadEna = '1' then --(v_count_Read <= 375) and ReadEna = '1'
			ReadEna_32 <= '1';
			ReadEna_16 <= '0';
			ReadEna_8  <= '0';

			ReadDir_32 <= std_logic_vector(resize((h_count_Read_aux - 80) + 480 * (v_count_Read - 240), 16)); -- (h_count_Read_aux - 80) + 480 * (v_count_Read - 240)
			ReadDir_8 <= (others => '0');
			
		elsif (v_count_Read <= 443) and ReadEna = '1' then --(v_count_Read <= 443) and ReadEna = '1'
			ReadEna_32 <= '0';
			ReadEna_16 <= '1';
			ReadEna_8  <= '0';
			
			ReadDir_16 <= std_logic_vector(resize((h_count_Read_aux - 80) + 480 * (v_count_Read - 376), 15)); -- (h_count_Read_aux - 80) + 480 * (v_count_Read - 376)
			ReadDir_32 <= (others => '0');
		
		elsif (v_count_Read <= 477) and ReadEna = '1' then --(v_count_Read <= 477) and ReadEna = '1'
			ReadEna_32 <= '0';
			ReadEna_16 <= '0';
			ReadEna_8  <= '1';
			
			ReadDir_8  <= std_logic_vector(resize((h_count_Read_aux - 80) + 480 * (v_count_Read - 444), 14)); -- (h_count_Read_aux - 80) + 480 * (v_count_Read - 444)
			ReadDir_16 <= (others => '0');

		else 
			ReadEna_32 <= '0';
			ReadEna_16 <= '0';
			ReadEna_8  <= '0';
			
		end if;
		
	end process;
	
	Checking_parity : parity_check <= '1' when (v_count_read >= 2   and v_count_read <= 239 and  Parity_register(to_integer(v_count_Read - 2 ))  = '0') or
															 (v_count_read >= 240 and v_count_read <= 477 and  Parity_register(to_integer(v_count_Read - 240)) = '1') else
												 '0';
												 
	Select_output : D_out <= Q_out_32 when (v_count_read >= 2   and v_count_read <= 137  and parity_check = '1' and ReadEna = '1') else
									 Q_out_16 when (v_count_read >= 138 and v_count_read <= 205  and parity_check = '1' and ReadEna = '1') else
									 Q_out_8	 when (v_count_read >= 206 and v_count_read <= 239  and parity_check = '1' and ReadEna = '1') else
									 Q_out_32 when (v_count_read >= 240	and v_count_read <= 375  and parity_check = '1' and ReadEna = '1') else
									 Q_out_16 when (v_count_read >= 376 and v_count_read <= 443  and parity_check = '1' and ReadEna = '1') else
									 Q_out_8	 when (v_count_read >= 444 and v_count_read <= 477  and parity_check = '1' and ReadEna = '1') else
									 "0000";											 
	
	Wclk <= clkWrite and WriteEna;
	
	Rclk <= not_clk_Read and ReadEna;
	
	RAMdev_32: RAMdevice_32 port map(
		data			=> D_in,				--: in std_logic_vector(3 downto 0);
		rd_aclr		=> clear,			--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir_32,		--: in std_logic_vector(15 downto 0);
		rdclock		=> Rclk ,	--: in std_logic;
		rden			=> readEna_32,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir_32,	--: in std_logic_vector(15 downto 0);
		wrclock		=> Wclk,		--: in std_logic  := '1';
		wren			=> WriteEna_32,	--: in std_logic  := '0';						--High to enable writing
		q				=> Q_out_32			--: out std_logic_vector(3 downto 0)
	);
	
	RAMdev_16: RAMdevice_16 port map(
		data			=> D_in,				--: in std_logic_vector(3 downto 0);
		rd_aclr		=> clear,			--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir_16,		--: in std_logic_vector(14 downto 0);
		rdclock		=> Rclk ,	--: in std_logic;
		rden			=> readEna_16,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir_16,	--: in std_logic_vector(14 downto 0);
		wrclock		=> Wclk,		--: in std_logic  := '1';
		wren			=> WriteEna_16,	--: in std_logic  := '0';						--High to enable writing
		q				=> Q_out_16			--: out std_logic_vector(3 downto 0)
	);
	
	RAMdev_8: RAMdevice_8 port map(
		data			=> D_in,				--: in std_logic_vector(3 downto 0);
		rd_aclr		=> clear,			--: in std_logic  := '0';						--High to clear?
		rdaddress	=>	readDir_8,		--: in std_logic_vector(13 downto 0);
		rdclock		=> Rclk ,	--: in std_logic;
		rden			=> readEna_8,		--: in std_logic  := '1';						--High to enable reading?
		wraddress	=> writeDir_8,		--: in std_logic_vector(13 downto 0);
		wrclock		=> Wclk,		--: in std_logic  := '1';
		wren			=> WriteEna_8,		--: in std_logic  := '0';						--High to enable writing
		q				=> Q_out_8			--: out std_logic_vector(3 downto 0)
	);
	
end shape;