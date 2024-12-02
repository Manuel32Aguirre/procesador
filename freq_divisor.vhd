library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entidad del divisor de frecuencias
entity freq_divisor is
    Port (
        clk_in : in STD_LOGIC;        -- Reloj de entrada (100 MHz)
        clr : in STD_LOGIC;           -- Señal de limpieza
        clk_out : out STD_LOGIC       -- Reloj de salida (2 Hz)
    );
end freq_divisor;

architecture Behavioral of freq_divisor is
    signal counter : integer := 0;    -- Contador para el ciclo
    signal clk_out_aux : STD_LOGIC;
    constant DIVISOR : integer := 25000000; -- Contador para alcanzar 2 Hz desde 100 MHz
begin
    process(clk_in, clr)
    begin
        if clr = '1' then
            counter <= 0;                -- Reiniciar el contador
            clk_out_aux <= '0';           -- Inicializar la salida a 0
        elsif rising_edge(clk_in) then
            if counter = DIVISOR - 1 then
                counter <= 0;             -- Reiniciar el contador
                clk_out_aux <= not clk_out_aux;  -- Invertir la señal de salida
            else
                counter <= counter + 1;   -- Incrementar el contador
            end if;
        end if;
    end process;
    clk_out <= clk_out_aux;
end Behavioral;