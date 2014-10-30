library verilog;
use verilog.vl_types.all;
entity register7b is
    port(
        D               : in     vl_logic_vector(0 to 6);
        CLR             : in     vl_logic;
        CLK             : in     vl_logic;
        EN              : in     vl_logic;
        Q               : out    vl_logic_vector(0 to 6)
    );
end register7b;
