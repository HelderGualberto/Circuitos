library verilog;
use verilog.vl_types.all;
entity Calculator_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        data            : in     vl_logic_vector(0 to 6);
        EN              : in     vl_logic;
        M0              : in     vl_logic;
        M1              : in     vl_logic;
        RES             : in     vl_logic;
        SEL             : in     vl_logic_vector(0 to 1);
        sampler_tx      : out    vl_logic
    );
end Calculator_vlg_sample_tst;
