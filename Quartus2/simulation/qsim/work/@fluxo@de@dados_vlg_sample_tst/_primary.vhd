library verilog;
use verilog.vl_types.all;
entity FluxoDeDados_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Clr1            : in     vl_logic;
        Clr2            : in     vl_logic;
        Clr3            : in     vl_logic;
        En1             : in     vl_logic;
        En2             : in     vl_logic;
        En3             : in     vl_logic;
        \IN\            : in     vl_logic_vector(3 downto 0);
        SEL             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FluxoDeDados_vlg_sample_tst;
