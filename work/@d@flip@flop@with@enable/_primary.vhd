library verilog;
use verilog.vl_types.all;
entity DFlipFlopWithEnable is
    port(
        q               : out    vl_logic;
        q_bar           : out    vl_logic;
        d               : in     vl_logic
    );
end DFlipFlopWithEnable;
