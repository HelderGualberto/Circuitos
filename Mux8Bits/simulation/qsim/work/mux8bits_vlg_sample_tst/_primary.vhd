library verilog;
use verilog.vl_types.all;
entity mux8bits_vlg_sample_tst is
    port(
        s               : in     vl_logic;
        x               : in     vl_logic_vector(0 to 7);
        y               : in     vl_logic_vector(0 to 7);
        sampler_tx      : out    vl_logic
    );
end mux8bits_vlg_sample_tst;
