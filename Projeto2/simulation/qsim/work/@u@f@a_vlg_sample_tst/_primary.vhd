library verilog;
use verilog.vl_types.all;
entity UFA_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(0 to 6);
        B               : in     vl_logic_vector(0 to 6);
        EN              : in     vl_logic;
        S               : in     vl_logic_vector(0 to 1);
        sampler_tx      : out    vl_logic
    );
end UFA_vlg_sample_tst;
