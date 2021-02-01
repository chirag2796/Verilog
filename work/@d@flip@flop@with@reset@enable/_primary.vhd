library verilog;
use verilog.vl_types.all;
entity DFlipFlopWithResetEnable is
    port(
        q               : out    vl_logic;
        q_bar           : out    vl_logic;
        d               : in     vl_logic
    );
end DFlipFlopWithResetEnable;
