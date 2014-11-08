library verilog;
use verilog.vl_types.all;
entity Calculator_vlg_check_tst is
    port(
        H1              : in     vl_logic_vector(0 to 6);
        H2              : in     vl_logic_vector(0 to 6);
        H3              : in     vl_logic_vector(0 to 6);
        sign            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Calculator_vlg_check_tst;
