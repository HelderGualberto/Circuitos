library verilog;
use verilog.vl_types.all;
entity adder7b_vlg_check_tst is
    port(
        S               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end adder7b_vlg_check_tst;
