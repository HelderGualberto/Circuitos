library verilog;
use verilog.vl_types.all;
entity Mux8Bits_vlg_sample_tst is
    port(
        inputX          : in     vl_logic_vector(7 downto 0);
        inputY          : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Mux8Bits_vlg_sample_tst;
