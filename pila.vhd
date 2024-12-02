-- Entidad principal
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pila is
    Port (
        clk : in STD_LOGIC;
        clr : in STD_LOGIC;
        s1s0 : in STD_LOGIC_VECTOR(1 downto 0);
        botones : in STD_LOGIC_VECTOR(15 downto 0);
        leds : out STD_LOGIC_VECTOR(15 downto 0)
    );
end pila;

architecture Behavioral of pila is
    component RAM is
        Port (
            clk : in STD_LOGIC;
            we : in STD_LOGIC;
            A : in STD_LOGIC_VECTOR(3 downto 0);
            WD : in STD_LOGIC_VECTOR(15 downto 0);
            RD : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    component program_c is
        Port (
            clk : in STD_LOGIC;
            clr : in STD_LOGIC;
            I : in STD_LOGIC_VECTOR(15 downto 0);
            O : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    component stack_p is
        generic (N : integer := 4);
        Port (
            clk : in STD_LOGIC;
            clr : in STD_LOGIC;
            I_sp : in STD_LOGIC_VECTOR(N-1 downto 0);
            O_sp : out STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;

    component freq_divisor is
        Port (
            clk_in : in STD_LOGIC;
            clr : in STD_LOGIC;
            clk_out : out STD_LOGIC
        );
    end component;

    signal rd_aux, norm_pc_aux, i_pc_aux, o_pc_aux : std_logic_vector(15 downto 0);
    signal i_sp_aux, o_sp_aux, o_sp_ret_aux, call_aux, ret_aux : std_logic_vector(3 downto 0);
    signal slow_clk : STD_LOGIC; -- Señal para el reloj dividido (2 Hz)

begin

    -- Instancia del divisor de frecuencias (usa tu código sin cambios)
    divisor : freq_divisor 
        port map (
            clk_in => clk,      -- Usa el reloj de 100 MHz de entrada
            clr => clr,         -- Señal de limpieza
            clk_out => slow_clk -- Reloj dividido a 2 Hz
        );

    -- Lógica principal
    norm_pc_aux <= o_pc_aux + 1;

    i_pc_aux <= norm_pc_aux when s1s0 = "00" else
                botones when s1s0 = "01" else
                rd_aux;

    i_sp_aux <= o_sp_aux when s1s0 = "00" else
                call_aux when s1s0 = "01" else
                ret_aux;

    call_aux <= o_sp_aux - 2;
    ret_aux <= o_sp_aux + 2;
    o_sp_ret_aux <= o_sp_aux when s1s0(1) = '0' else
                   ret_aux;

    -- Conectar el reloj dividido (2 Hz) a todos los componentes
    cto1: RAM 
        port map (
            clk => slow_clk,    -- Usando el reloj a 2 Hz
            we => s1s0(0),
            A => o_sp_ret_aux,
            WD => norm_pc_aux,
            RD => rd_aux
        );

    cto2: program_c 
        port map (
            clk => slow_clk,    -- Usando el reloj a 2 Hz
            clr => clr,
            I => i_pc_aux,
            O => o_pc_aux
        );

    cto3: stack_p 
        port map (
            clk => slow_clk,    -- Usando el reloj a 2 Hz
            clr => clr,
            I_sp => i_sp_aux,
            O_sp => o_sp_aux
        );

    -- Salida de los LEDs
    leds <= o_pc_aux;

end Behavioral;