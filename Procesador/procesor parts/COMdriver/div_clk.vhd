library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity div_clk is
    generic (
        DIVIDER_VALUE : integer := 3 		-- Valor del divisor 
    );
    port (
        Clk_In		: in  std_logic;  		-- Reloj de entrada
        Clk_Out 	: out std_logic			-- Reloj de salida dividido
    );
end entity div_clk;

architecture Behavioral of div_clk is
    signal counter : integer range 0 to DIVIDER_VALUE - 1 := 0;  -- Contador para el divisor
    signal Clk_aux : std_logic := '0';  
	 
begin
    
    process (Clk_In)
    begin
        if rising_edge(Clk_In) then
            if counter = DIVIDER_VALUE - 1 then -- Cuando el contador alcance el valor deseado
                counter <= 0;  						-- Reiniciar el contador
                Clk_aux <= not Clk_aux;  		 	-- Cambiar el estado del reloj 
            else 
					counter <= counter + 1;
				end if;
        end if;
    end process;
	 
	 Clk_Out <= Clk_aux;  
end architecture Behavioral;