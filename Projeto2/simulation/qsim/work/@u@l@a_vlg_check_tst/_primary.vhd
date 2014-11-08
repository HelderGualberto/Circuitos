library verilog;
use verilog.vl_types.all;
entity ULA_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(0 to 7);
        teste           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ULA_vlg_check_tst;
