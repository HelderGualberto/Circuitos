library verilog;
use verilog.vl_types.all;
entity comp2 is
    port(
        data            : in     vl_logic_vector(0 to 7);
        result          : out    vl_logic_vector(0 to 7)
    );
end comp2;
