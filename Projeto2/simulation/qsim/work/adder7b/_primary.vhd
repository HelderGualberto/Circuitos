library verilog;
use verilog.vl_types.all;
entity adder7b is
    port(
        A               : in     vl_logic_vector(6 downto 0);
        B               : in     vl_logic_vector(6 downto 0);
        S               : out    vl_logic_vector(7 downto 0)
    );
end adder7b;
