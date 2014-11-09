library verilog;
use verilog.vl_types.all;
entity decoder_vlg_check_tst is
    port(
        H1              : in     vl_logic_vector(0 to 6);
        H2              : in     vl_logic_vector(0 to 6);
        H3              : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end decoder_vlg_check_tst;
