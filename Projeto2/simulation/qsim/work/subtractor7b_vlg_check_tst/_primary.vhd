library verilog;
use verilog.vl_types.all;
entity subtractor7b_vlg_check_tst is
    port(
        S               : in     vl_logic_vector(6 downto 0);
        signalBit       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end subtractor7b_vlg_check_tst;
