library verilog;
use verilog.vl_types.all;
entity register7b_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end register7b_vlg_check_tst;
