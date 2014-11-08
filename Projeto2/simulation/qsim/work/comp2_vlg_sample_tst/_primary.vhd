library verilog;
use verilog.vl_types.all;
entity comp2_vlg_sample_tst is
    port(
        data            : in     vl_logic_vector(0 to 7);
        sampler_tx      : out    vl_logic
    );
end comp2_vlg_sample_tst;
