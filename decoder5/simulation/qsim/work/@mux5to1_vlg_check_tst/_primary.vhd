library verilog;
use verilog.vl_types.all;
entity Mux5to1_vlg_check_tst is
    port(
        m               : in     vl_logic_vector(0 to 2);
        sampler_rx      : in     vl_logic
    );
end Mux5to1_vlg_check_tst;
