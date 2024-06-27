library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity Driver_com is
	port(
		clk50M			: in std_logic;
		coord_x  		: in std_logic_vector(7 downto 0)
		coord_y  		: in std_logic_vector(7 downto 0)
		GPIO0_D			: out std_logic_vector(2 downto 0)
	);
end entity;

architecture shape of Driver_com is


	signal coord_x     : std_logic_vector(DATA_WIDTH-1 downto 0) := "10000111";
	signal coord_y     : std_logic_vector(DATA_WIDTH-1 downto 0) := "11010011";
	signal bit_counter : integer range 0 to 400000 := 0;
	signal send_aux    : std_logic := '0';
	signal clk_20K     : std_logic := '0';
	signal rst         : std_logic := '0';
	
	component com_serie is
		generic (
        DATA_WIDTH : integer := 8 -- Ancho del dato a enviar, por defecto 8 bits
    );
    port (
        clk       : in std_logic;
        reset     : in std_logic;
        data_in   : in std_logic_vector(DATA_WIDTH-1 downto 0);
        send      : in std_logic;
        data_out  : out std_logic
    );
	end component;
	
	component div_clk 
		 generic (
			  DIVIDER_VALUE : integer :=  2500  	-- Valor del divisor 
		 );
		 port (
			  Clk_In		: in  std_logic;  		-- Reloj de entrada
			  Clk_Out 	: out std_logic			-- Reloj de salida dividido
		 );
	end component;
	

begin
	
	DIV: div_clk generic map (DIVIDER_VALUE => 1250)
	     port map (Clk_In => CLOCK_50, Clk_Out => clk_20K);
		  
   COM_X: com_serie generic map (DATA_WIDTH => 8) 
	     port map (clk => clk_20K, reset => rst, data_in => coord_x, send => send_aux, data_out => GPIO0_D(1));
		  
	COM_Y: com_serie generic map (DATA_WIDTH => 8) 
	     port map (clk => clk_20K, reset => rst, data_in => coord_y, send => send_aux, data_out => GPIO0_D(2));
		  
  process(clk_20K)
    begin
        if rising_edge(clk_20K) then
				if bit_counter = 0 then
					send_aux <= '1';
					GPIO0_D(0) <= '1';
				end if;
				
				if bit_counter = 3 then
					send_aux <= '0';
				end if;
				
				if bit_counter = DATA_WIDTH+2 then
					GPIO0_D(0) <= '0';
				end if;
				
				if bit_counter = 25000 then
					bit_counter <= 0;
				else 
					bit_counter <= bit_counter +1;
				end if;
				
        end if;

    end process;
	
end shape;
