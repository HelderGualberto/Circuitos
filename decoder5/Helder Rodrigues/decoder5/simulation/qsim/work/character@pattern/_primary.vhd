library verilog;
use verilog.vl_types.all;
entity characterPattern is
    port(
        input           : in     vl_logic_vector(0 to 14);
        s               : in     vl_logic_vector(0 to 2);
        out0            : out    vl_logic_vector(0 to 6);
        out1            : out    vl_logic_vector(0 to 6);
        out2            : out    vl_logic_vector(0 to 6);
        out3            : out    vl_logic_vector(0 to 6);
        out4            : out    vl_logic_vector(0 to 6);
        out5            : out    vl_logic_vector(0 to 6);
        out6            : out    vl_logic_vector(0 to 6);
        out7            : out    vl_logic_vector(0 to 6)
    );
end characterPattern;
