library verilog;
use verilog.vl_types.all;
entity FluxoDeDados is
    port(
        \OUT\           : out    vl_logic_vector(3 downto 0);
        \IN\            : in     vl_logic_vector(3 downto 0);
        En1             : in     vl_logic;
        Clr1            : in     vl_logic;
        CLK             : in     vl_logic;
        En2             : in     vl_logic;
        Clr2            : in     vl_logic;
        SEL             : in     vl_logic;
        En3             : in     vl_logic;
        Clr3            : in     vl_logic
    );
end FluxoDeDados;
