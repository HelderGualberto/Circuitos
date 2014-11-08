library verilog;
use verilog.vl_types.all;
entity dataFlux is
    port(
        data            : in     vl_logic_vector(0 to 6);
        m0              : in     vl_logic;
        m1              : in     vl_logic;
        CLR             : in     vl_logic;
        CLK             : in     vl_logic;
        A               : out    vl_logic_vector(0 to 6);
        B               : out    vl_logic_vector(0 to 6);
        CLKout          : out    vl_logic
    );
end dataFlux;
