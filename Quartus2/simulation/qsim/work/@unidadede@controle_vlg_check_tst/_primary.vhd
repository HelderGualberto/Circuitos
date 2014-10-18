library verilog;
use verilog.vl_types.all;
entity UnidadedeControle_vlg_check_tst is
    port(
        CLKout          : in     vl_logic;
        CLR1            : in     vl_logic;
        CLR2            : in     vl_logic;
        CLR3            : in     vl_logic;
        EN1             : in     vl_logic;
        EN2             : in     vl_logic;
        EN3             : in     vl_logic;
        SEL             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end UnidadedeControle_vlg_check_tst;
