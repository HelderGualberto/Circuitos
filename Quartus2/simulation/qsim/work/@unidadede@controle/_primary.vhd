library verilog;
use verilog.vl_types.all;
entity UnidadedeControle is
    port(
        SEL             : out    vl_logic;
        M1              : in     vl_logic;
        N1              : in     vl_logic;
        N2              : in     vl_logic;
        M2              : in     vl_logic;
        CLKUC           : in     vl_logic;
        RES             : in     vl_logic;
        EN3             : out    vl_logic;
        CLR1            : out    vl_logic;
        CLR2            : out    vl_logic;
        CLR3            : out    vl_logic;
        CLKout          : out    vl_logic;
        EN1             : out    vl_logic;
        EN2             : out    vl_logic
    );
end UnidadedeControle;
