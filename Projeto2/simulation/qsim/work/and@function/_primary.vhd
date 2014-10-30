library verilog;
use verilog.vl_types.all;
entity andFunction is
    port(
        A               : in     vl_logic_vector(0 to 6);
        B               : in     vl_logic_vector(0 to 6);
        S               : out    vl_logic_vector(0 to 6)
    );
end andFunction;
