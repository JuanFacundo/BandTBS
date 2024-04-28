library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RegisterPP is
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
end RegisterPP;

architecture Behavioral of RegisterPP is
    signal reg : std_logic_vector(WIDTH-1 downto 0);
	 
begin

    process (CLK,RESET,ENABLE)
    begin
			if RESET = '0' then
				reg <= (others => '0');  		-- Resetear el registro
			elsif rising_edge(CLK) and ENABLE = '1' then
				reg <= D_IN;  				
			end if;
    end process;

    Q_OUT <= reg;
	 
end Behavioral;
