library verilog;
use verilog.vl_types.all;
entity Mux8Bits is
    port(
        s               : in     vl_logic;
        inputX          : in     vl_logic_vector(7 downto 0);
        inputY          : in     vl_logic_vector(7 downto 0);
        output          : out    vl_logic_vector(7 downto 0)
    );
end Mux8Bits;
