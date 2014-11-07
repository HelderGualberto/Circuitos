library verilog;
use verilog.vl_types.all;
entity FFT is
    port(
        T               : in     vl_logic;
        CLK             : in     vl_logic;
        CLKout          : out    vl_logic
    );
end FFT;
