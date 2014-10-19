library verilog;
use verilog.vl_types.all;
entity mux8bits is
    port(
        x               : in     vl_logic_vector(0 to 7);
        y               : in     vl_logic_vector(0 to 7);
        s               : in     vl_logic;
        m               : out    vl_logic_vector(0 to 7)
    );
end mux8bits;
