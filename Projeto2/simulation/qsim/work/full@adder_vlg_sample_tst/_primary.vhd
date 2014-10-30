library verilog;
use verilog.vl_types.all;
entity fullAdder_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Ci              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fullAdder_vlg_sample_tst;
