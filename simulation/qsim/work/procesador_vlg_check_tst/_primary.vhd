library verilog;
use verilog.vl_types.all;
entity procesador_vlg_check_tst is
    port(
        portb           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end procesador_vlg_check_tst;
