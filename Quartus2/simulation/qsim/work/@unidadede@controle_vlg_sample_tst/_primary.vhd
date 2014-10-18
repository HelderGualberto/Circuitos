library verilog;
use verilog.vl_types.all;
entity UnidadedeControle_vlg_sample_tst is
    port(
        CLKUC           : in     vl_logic;
        M1              : in     vl_logic;
        M2              : in     vl_logic;
        N1              : in     vl_logic;
        N2              : in     vl_logic;
        RES             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end UnidadedeControle_vlg_sample_tst;
