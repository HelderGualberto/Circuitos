library verilog;
use verilog.vl_types.all;
entity dataFlux_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(0 to 6);
        B               : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end dataFlux_vlg_check_tst;
