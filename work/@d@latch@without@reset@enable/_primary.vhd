library verilog;
use verilog.vl_types.all;
entity DLatchWithoutResetEnable is
    port(
        q               : out    vl_logic;
        q_bar           : out    vl_logic;
        d               : in     vl_logic;
        clk             : in     vl_logic
    );
end DLatchWithoutResetEnable;
