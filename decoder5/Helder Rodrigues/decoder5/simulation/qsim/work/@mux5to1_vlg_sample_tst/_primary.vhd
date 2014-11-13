library verilog;
use verilog.vl_types.all;
entity Mux5to1_vlg_sample_tst is
    port(
        s               : in     vl_logic_vector(2 downto 0);
        u               : in     vl_logic_vector(0 to 2);
        v               : in     vl_logic_vector(0 to 2);
        w               : in     vl_logic_vector(0 to 2);
        x               : in     vl_logic_vector(0 to 2);
        y               : in     vl_logic_vector(0 to 2);
        sampler_tx      : out    vl_logic
    );
end Mux5to1_vlg_sample_tst;
