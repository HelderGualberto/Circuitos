library verilog;
use verilog.vl_types.all;
entity FluxoDeDados_vlg_check_tst is
    port(
        \OUT\           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end FluxoDeDados_vlg_check_tst;
