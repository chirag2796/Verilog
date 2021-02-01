library verilog;
use verilog.vl_types.all;
entity DLatchWithEnable is
    port(
        q               : out    vl_logic;
        q_bar           : out    vl_logic;
        d               : in     vl_logic;
        enable          : in     vl_logic
    );
end DLatchWithEnable;
