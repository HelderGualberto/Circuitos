library verilog;
use verilog.vl_types.all;
entity UFA_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end UFA_vlg_check_tst;
