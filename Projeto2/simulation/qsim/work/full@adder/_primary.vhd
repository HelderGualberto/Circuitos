library verilog;
use verilog.vl_types.all;
entity fullAdder is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Ci              : in     vl_logic;
        S               : out    vl_logic;
        Co              : out    vl_logic
    );
end fullAdder;
