library verilog;
use verilog.vl_types.all;
entity comp2_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end comp2_vlg_check_tst;
