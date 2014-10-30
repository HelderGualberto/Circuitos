library verilog;
use verilog.vl_types.all;
entity dataFlux_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        data            : in     vl_logic_vector(0 to 6);
        m0              : in     vl_logic;
        m1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dataFlux_vlg_sample_tst;
