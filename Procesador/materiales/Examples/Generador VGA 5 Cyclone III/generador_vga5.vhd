--Generador de caracteres para monitor VGA
--Incluye:
--         PLL para generar un reloj de 12.175 MHz en base a 50 MHz.
--         ROM de 128 caracteres con inicializacion en archivo ascii_rom.mif.
--Archivo: generador_vga5.vhd 
--Genera texto previamente cargado en el proyecto y fondo de pantalla que puede ser
--modificado con el pulsador "button1". 
--Resultado: OK.
-- Sergio Noriega 2016
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

LIBRARY altera_mf;
USE altera_mf.all;

entity generador_vga5 is
		port( clock_50MHz                      	: in std_logic;
				button1                             : in std_logic;
				red_out, green_out, blue_out   		: out std_logic_vector(3 downto 0);--Salidas al conector DB9.
				sync_horiz_out, sync_vert_out			: out std_logic--Salidas al conector DB9
				);
		end generador_vga5;

architecture behavior of generador_vga5 is

--Este componente genera 25,175 MHz en base a los 50 MHz del oscilador de la placa DE0.
	component pll1
	PORT   (  inclk0 : in  std_logic;
             c0     : out std_logic
	        );
  end component;

--Este componente tiene almacenado 128 caracteres ascii en formato de 8x16 pixeles.
--Con address(10..4) se direcciona un bloque de 128 posibles.
--Con address(3..0) se direcciona dentro de un bloque, uno byte de 16 posibles. 
	component ascii_rom_vga  
	PORT
	(  
		address	: in std_logic_vector (10 downto 0);
		clock		: in std_logic;
		q		   : out std_logic_vector (7 downto 0)
	);
  end component;    
  
signal rojo, verde, azul                  : std_logic := '0';
signal rojo_out, verde_out, azul_out		: std_logic := '0';  
signal sync_horiz, sync_vert, clock_25MHz : std_logic := '0';
signal video_on, video_on_v, video_on_h   : std_logic;
signal h_count, v_count 						: unsigned (9 downto 0); 
signal linea_counter                      : unsigned ( 5 downto 0);--30 lineas maximo
signal caracter_counter                   : unsigned ( 6 downto 0);--80 caracteres maximo 
signal inclk0, c0                         : std_logic;
signal clock                              : std_logic;
signal pixel_columna, pixel_linea			: unsigned (9 downto 0); 
signal address          						: std_logic_vector(10 downto 0);
signal q                						: std_logic_vector( 7 downto 0);
signal pixel_out                          : std_logic;
signal Mensaje_actual : string(1 to 80);
signal index_car									: integer range 1 to 80 := 1;
signal codigo_ascii 								: std_logic_vector(6 downto 0);
signal salida_color 								: std_logic_vector (2 downto 0) := "000";

constant Mensaje1 : String(1 to 80) := " ///////////////////////===============================\\\\\\\\\\\\\\\\\\\\\\\\ ";
constant Mensaje2 : String(1 to 80) := "                        TECNICAS DIGITALES 2022 Curso de Micro en VHDL          ";
constant Mensaje3 : String(1 to 80) := " Esto es una prueba ......!!!                                                   ";
constant Mensaje4 : String(1 to 80) := " A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ( ) = - ? < > $ % &        ";  
constant Mensaje5 : String(1 to 80) := " a b c d e f g h i j k l m n o p q r s t u v w x y z + { } / \ : ; , . @        "; 
constant Mensaje6 : String(1 to 80) := " 1 2 3 4 5 6 7 8 9 0                                                            ";
constant Mensaje7 : String(1 to 80) := " ------------------------------------------------------------------------------ ";       
constant Mensaje8 : String(1 to 80) := "                                                                                ";       
begin

	U01 : pll1 port map ( inclk0 => inclk0, c0 => c0 );

	U02 : ascii_rom_vga port map ( address => address, clock => clock, q => q);

   inclk0 <= clock_50MHz;
	
	video_on <= video_on_H and video_on_V;

	clock_25MHz <= c0;
	
	clock <= c0; --Reloj para la memoria ROM
	
	address (10 downto 4) <= codigo_ascii;

   address(3 downto 0) <= std_logic_vector (v_count(3 downto 0));  	

	pixel_out <= q(8 - to_integer(h_count(2 downto 0)));

	codigo_ascii <= std_logic_vector(to_unsigned(character'pos(Mensaje_actual(index_car)),7));

	linea_counter <= v_count (9 downto 4);--Indica el numero de linea de texto (cambia cada 16 pixeles).

	caracter_counter <= h_count (9 downto 3);--Indica el numero de caracter en la linea (cambia cada 8 pixeles).

	index_car <= to_integer (caracter_counter);
	
--Proceso que selecciona el texto a visualizar segun la linea en la que se encuentra.
--"Mensaje_actual" es lo que se debe visualizar en pantalla al seleccionarse alguno de los textos ya
--pre-escritos. La senial "linea_counter" es generada en otro proceso independiente mas arriba.	
	process (linea_counter)
     begin	
		case linea_counter is

			when "001001" =>
				Mensaje_actual <= Mensaje1;
			when "001010" =>
				Mensaje_actual <= Mensaje2;
			when "001011" =>
				Mensaje_actual <= Mensaje3;		  
			when "001100" =>
				Mensaje_actual <= Mensaje4;
			when "001101" =>
			   Mensaje_actual <= Mensaje5;
			when "001110" =>
			   Mensaje_actual <= Mensaje6;				
			when "001111" =>
				Mensaje_actual <= Mensaje7;
			when others =>
				Mensaje_actual <= Mensaje8;				
    end case;
end process;
	
	process (button1)
		begin
			if (button1'event and button1 = '1') then
				salida_color <= salida_color + 1;
			end if;	
	end process;	
	
	
---------------------------------------------------------------------------------------------------
--Bloque para la generacion de seniales de sincronismo 	
process
	begin
		wait until( clock_25MHz'event ) and ( clock_25MHz = '1' );

		if ( h_count = 799 ) then
			h_count <= "0000000000";
		else
			h_count <= h_count + 1;
		end if;	

--Genera sincronismo horizontal
--Define un pulso negativo de sincronismo para horizontal.
		if  (h_count <= 755)  and (h_count >= 659) then 
			sync_horiz <= '0';
		else
			sync_horiz <= '1';
		end if;

		if ( v_count >= 524 ) and ( h_count >= 699 ) then
			v_count <= "0000000000";
		elsif ( h_count = 699 ) then
			v_count <= v_count + 1;
		end if;

--Genera sincronismo vertical
--Define un pulso negativo de sincronismo para vertical.
		if ( v_count >= 493 ) and ( v_count <= 494 ) then
			sync_vert <= '0';
		else
			sync_vert <= '1';
		end if;

-- Genera referencia de posicion del pixel
		if ( h_count <= 639 ) then
			video_on_h <= '1';
			pixel_columna <= h_count;
		else
			video_on_h <= '0';
		end if;
		if ( v_count <= 479 ) then
			video_on_v <= '1';
			pixel_linea <= v_count;
		else
			video_on_v <= '0';
		end if;

		rojo  <= pixel_out;
		verde <= pixel_out;
		azul <= pixel_out;

		rojo_out <= (rojo or salida_color(2))and video_on;
		verde_out <= (verde or salida_color(1))and video_on;
		azul_out <= (azul or salida_color(0))and video_on;
		red_out(3) <= '0';		
		red_out(2) <= '0';
		red_out(1) <= rojo_out;
		red_out(0) <= rojo_out;		
		green_out(3) <= '0';		
		green_out(2) <= '0';
		green_out(1) <= verde_out;
		green_out(0) <= verde_out;
		blue_out(3) <= '0';		
		blue_out(2) <= '0';
		blue_out(1) <= azul_out;
		blue_out(0) <= azul_out;		
		
		sync_horiz_out <= sync_horiz;
		sync_vert_out <= sync_vert;
		
end process;

end behavior;

-- Letra "A" => codigo ASCII numero 65 en decimal/(41 en hexa).
-- Letra "B" => codigo ASCII numero 66 en decimal/(42 en hexa).
-- Letra "C" => codigo ASCII numero 67 en decimal/(43 en hexa).
-- ............................................................
-- ............................................................
-- Letra "Z" => codigo ASCII numero 90 en decimal/(5A en hexa).
-- ............................................................
-- Letra "a" => codigo ASCII numero 97 en decimal/(61 en hexa).
-- Letra "b" => codigo ASCII numero 98 en decimal/(62 en hexa).
-- Letra "c" => codigo ASCII numero 99 en decimal/(63 en hexa).
-- ............................................................
-- ............................................................
-- Letra "z" => codigo ASCII numero 122 en decimal/(7A en hexa).



