library verilog;
use verilog.vl_types.all;
entity Integracao is
    port(
        \OUT\           : out    vl_logic_vector(3 downto 0);
        N1              : in     vl_logic;
        N2              : in     vl_logic;
        M1              : in     vl_logic;
        M2              : in     vl_logic;
        RES             : in     vl_logic;
        CLK             : in     vl_logic;
        \IN\            : in     vl_logic_vector(3 downto 0)
    );
end Integracao;
