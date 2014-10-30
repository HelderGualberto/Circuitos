library verilog;
use verilog.vl_types.all;
entity halfAdder is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        S               : out    vl_logic;
        Co              : out    vl_logic
    );
end halfAdder;
