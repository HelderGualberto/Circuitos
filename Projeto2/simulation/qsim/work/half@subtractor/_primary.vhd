library verilog;
use verilog.vl_types.all;
entity halfSubtractor is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        S               : out    vl_logic;
        Te              : out    vl_logic
    );
end halfSubtractor;
