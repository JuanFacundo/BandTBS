 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity capture_and_store is
--	generic (
--			N_PIXELS	: integer := 4;
--			N_LINES	: integer := 4
--		);
    port (
        PCLK    : in  std_logic;   
        RST     : in  std_logic;
--		  Vsync	 : in  std_logic;
		  HREF	 : in  std_logic;
        D_IN    : in  std_logic_vector(7 downto 0); 
        Q_OUT   : out std_logic_vector(3 downto 0)  
    );
end entity capture_and_store;

architecture Behavioral of capture_and_store is

	component capture_driver	
--		generic (
--			N_PIXELS	: integer := 4;
--			N_LINES	: integer := 4
--		);
		port (
			  PCLK    : in  std_logic;   
			  RST     : in  std_logic;
--			  Vsync	 : in  std_logic;
			  HREF	 : in  std_logic;
			  D_IN    : in  std_logic_vector(7 downto 0); 
			  pixel_per_line_counter: out std_logic_vector(1 downto 0):= (others => '0');
			  line_counter : out std_logic_vector(1 downto 0):= (others => '0');
			  CLK_DIV : out std_logic;
			  Q_OUT   : out std_logic_vector(3 downto 0)  
		 );
	end component;
	
	component memory 
		Generic (
			ADDRESS_WIDTH	: integer := 2;
			DATA_WIDTH		: integer := 4	
		);	
		Port (
			clk          : in  std_logic;
			address      : in  std_logic_vector (ADDRESS_WIDTH - 1 downto 0);
			data_in      : in  std_logic_vector (DATA_WIDTH - 1 downto 0);
			data_out     : out std_logic_vector (DATA_WIDTH - 1 downto 0);
			wr           : in  std_logic;
			reset        : in  std_logic;
			enable       : in  std_logic
		);
	end component;
	
--	constant ADDRESS_MAX : integer := N_LINES * N_PIXELS;  
	
	signal Qaux1	: std_logic_vector (3 downto 0) := (others => '0');
	signal Qaux2	: std_logic_vector (3 downto 0) := (others => '0');
	signal address	: std_logic_vector (3 downto 0) := (others => '0');
	signal pixel_per_line_counter_aux: std_logic_vector( 1 downto 0):= (others => '0');
   signal line_counter_aux : std_logic_vector( 1 downto 0):= (others => '0');
	signal wr		: std_logic := '0';
	signal clk_div : std_logic;

begin

	Cap: capture_driver --generic map (N_PIXELS => N_PIXELS, N_LINES => N_LINES) 
	port map (PCLK => PCLK, RST => RST, HREF => HREF, D_IN => D_IN, pixel_per_line_counter => pixel_per_line_counter_aux, 
				 line_counter => line_counter_aux, CLK_DIV => clk_div, Q_OUT => Qaux1);
	
	maping: process (clk_div) is
	begin 
		if rising_edge (clk_div) then 
			address <= line_counter_aux(1) & line_counter_aux(0) & pixel_per_line_counter_aux(1) & pixel_per_line_counter_aux(0);
		end if;
	end process;
	
	R_W: process (PCLK) is
	begin 
		if falling_edge (PCLK) then
			wr <= not(wr);
		end if;
	end process;
	
	Load_Store: memory generic map (ADDRESS_WIDTH => 4, DATA_WIDTH => 4) 
	port map (clk => PCLK, address=> address, data_in => Qaux1,data_out => Qaux2, wr => wr, reset => RST, enable => '1');
	
	Q_OUT <= Qaux2;
	
end Behavioral;