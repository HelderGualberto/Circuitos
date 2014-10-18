library verilog;
use verilog.vl_types.all;
entity Integracao_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        \IN\            : in     vl_logic_vector(3 downto 0);
        M1              : in     vl_logic;
        M2              : in     vl_logic;
        N1              : in     vl_logic;
        N2              : in     vl_logic;
        RES             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Integracao_vlg_sample_tst;
