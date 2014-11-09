library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        data            : in     vl_logic_vector(0 to 7);
        H1              : out    vl_logic_vector(0 to 6);
        H2              : out    vl_logic_vector(0 to 6);
        H3              : out    vl_logic_vector(0 to 6)
    );
end decoder;
