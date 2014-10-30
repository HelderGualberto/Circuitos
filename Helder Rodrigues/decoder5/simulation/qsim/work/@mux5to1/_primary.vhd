library verilog;
use verilog.vl_types.all;
entity Mux5to1 is
    port(
        u               : in     vl_logic_vector(0 to 2);
        v               : in     vl_logic_vector(0 to 2);
        w               : in     vl_logic_vector(0 to 2);
        x               : in     vl_logic_vector(0 to 2);
        y               : in     vl_logic_vector(0 to 2);
        s               : in     vl_logic_vector(2 downto 0);
        m               : out    vl_logic_vector(0 to 2)
    );
end Mux5to1;
