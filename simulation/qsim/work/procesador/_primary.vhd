library verilog;
use verilog.vl_types.all;
entity procesador is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        portb           : out    vl_logic_vector(7 downto 0)
    );
end procesador;
