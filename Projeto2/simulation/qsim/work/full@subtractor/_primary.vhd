library verilog;
use verilog.vl_types.all;
entity fullSubtractor is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Ta              : in     vl_logic;
        S               : out    vl_logic;
        Te              : out    vl_logic
    );
end fullSubtractor;
