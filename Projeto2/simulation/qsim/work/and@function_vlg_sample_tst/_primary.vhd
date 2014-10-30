library verilog;
use verilog.vl_types.all;
entity andFunction_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(0 to 6);
        B               : in     vl_logic_vector(0 to 6);
        sampler_tx      : out    vl_logic
    );
end andFunction_vlg_sample_tst;
