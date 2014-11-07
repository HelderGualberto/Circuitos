library verilog;
use verilog.vl_types.all;
entity UFA is
    port(
        A               : in     vl_logic_vector(0 to 6);
        B               : in     vl_logic_vector(0 to 6);
        result          : out    vl_logic_vector(0 to 7);
        S               : in     vl_logic_vector(0 to 1);
        EN              : in     vl_logic
    );
end UFA;
