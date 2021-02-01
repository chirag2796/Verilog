library verilog;
use verilog.vl_types.all;
entity DLatchWithReset is
    port(
        q               : out    vl_logic;
        q_bar           : out    vl_logic;
        d               : in     vl_logic;
        reset           : in     vl_logic
    );
end DLatchWithReset;
