library verilog;
use verilog.vl_types.all;
entity ULA is
    port(
        A               : in     vl_logic_vector(0 to 6);
        B               : in     vl_logic_vector(0 to 6);
        result          : out    vl_logic_vector(0 to 7);
        CLK             : in     vl_logic;
        EN              : in     vl_logic;
        RES             : in     vl_logic;
        S               : in     vl_logic_vector(0 to 1)
    );
end ULA;
