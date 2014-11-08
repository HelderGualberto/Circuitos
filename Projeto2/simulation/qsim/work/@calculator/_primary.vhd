library verilog;
use verilog.vl_types.all;
entity Calculator is
    port(
        data            : in     vl_logic_vector(0 to 6);
        CLK             : in     vl_logic;
        RES             : in     vl_logic;
        M0              : in     vl_logic;
        M1              : in     vl_logic;
        EN              : in     vl_logic;
        SEL             : in     vl_logic_vector(0 to 1);
        result          : out    vl_logic_vector(0 to 7)
    );
end Calculator;
