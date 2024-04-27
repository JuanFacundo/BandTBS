library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity capture_driver is
	
--	generic (
--	  N_PIXELS	: integer := 4;
--	  N_LINES	: integer := 4
--	);
	port (
		PCLK    : in  std_logic;   
		RST     : in  std_logic;
--		Vsync	 : in  std_logic;
		HREF	 : in  std_logic;
		D_IN    : in  std_logic_vector(7 downto 0); 
		pixel_per_line_counter: out std_logic_vector(1 downto 0):= (others => '0');
		line_counter : out std_logic_vector(1 downto 0):= (others => '0');
		CLK_DIV : out std_logic;
		Q_OUT   : out std_logic_vector(3 downto 0)  
	);
end entity capture_driver;

architecture Behavioral of capture_driver is

	component RegisterPP 
		 generic (
			  WIDTH : integer := 8    -- Ancho del registro
		 );
		 port (
			  CLK     : in  std_logic;     -- Reloj de entrada
			  RESET   : in  std_logic;     -- Señal de reset (activo en bajo)
			  ENABLE  : in  std_logic;     -- Habilitador del registro
			  D_IN    : in  std_logic_vector(WIDTH-1 downto 0); -- Datos de entrada
			  Q_OUT   : out std_logic_vector(WIDTH-1 downto 0)  -- Datos de salida
		 );	 
	end component;
	
	component div_clk 
		 generic (
			  DIVIDER_VALUE : integer :=  1  	-- Valor del divisor 
		 );
		 port (
			  Clk_In		: in  std_logic;  		-- Reloj de entrada
			  Clk_Out 	: out std_logic			-- Reloj de salida dividido
		 );
	end component;
	
	component DelayedOutput 
		generic(
			COUNTER_LIMIT : natural := 2
		);
		port (
			clock   : in  std_logic;  -- Reloj de entrada
			reset   : in  std_logic;  -- Señal de reset (activo en bajo)
			output  : out std_logic   -- Salida retrasada
		);
	end component;
	
    signal sel       : std_logic := '0';
    signal Qaux      : std_logic_vector(7 downto 0) := (others => '0');
    signal sum       : std_logic_vector(5 downto 0) := (others => '0');
    signal acc_aux   : std_logic_vector(5 downto 0) := (others => '0');
    signal mux_out   : std_logic_vector(5 downto 0) := (others => '0');
    signal Qaux2     : std_logic_vector(3 downto 0) := (others => '0');
	 signal pixel_per_line_counter_aux: std_logic_vector( 1 downto 0):= (others => '0');
	 signal line_counter_aux : std_logic_vector( 1 downto 0):= (others => '0');
	 signal npclk: std_logic;
	 signal start: std_logic := '0';

begin
	 
	 npclk <= not (PCLK);
	 
    ER: RegisterPP generic map (WIDTH => 8) 
	 port map (CLK => PCLK, RESET => RST, ENABLE => HREF, D_IN => D_IN, Q_OUT => Qaux);

    ACC: RegisterPP generic map (WIDTH => 6)
	 port map (CLK => npclk, RESET => RST, ENABLE => HREF, D_IN => sum, Q_OUT => acc_aux);

    BUF: RegisterPP generic map (WIDTH => 4)
	 port map (CLK => SEL, RESET => RST, ENABLE => HREF, D_IN => acc_aux(5 downto 2), Q_OUT => Qaux2);

    DIV: div_clk 
	 PORT MAP (CLK_In => PCLK, CLK_Out => sel );
	 
	 start_counting: DelayedOutput generic map (COUNTER_LIMIT => 1)
	 port map (clock => npclk, reset => RST , output => start);

    mux_out <= "00" & Qaux(3 downto 0) when sel = '1' else acc_aux;

    sum <= std_logic_vector(unsigned(Qaux(7 downto 4)) + unsigned(mux_out));

    Pixel_counter : process(SEL, Href, start) is
    begin
	 
        if rising_edge(SEL) and Href = '1' and start = '1' then 
				
				if pixel_per_line_counter_aux = "11" then
                line_counter_aux <= line_counter_aux + 1;
            end if;
				
            pixel_per_line_counter_aux <= pixel_per_line_counter_aux + 1;
			
        end if;
		  
    end process;

    pixel_per_line_counter <= pixel_per_line_counter_aux;

    line_counter <= line_counter_aux;

	 CLK_DIV <= sel;
	 
    Q_OUT <= Qaux2;

end Behavioral;


