library verilog;
use verilog.vl_types.all;
entity register7b_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        D               : in     vl_logic_vector(0 to 6);
        EN              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end register7b_vlg_sample_tst;
