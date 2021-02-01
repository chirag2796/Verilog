library verilog;
use verilog.vl_types.all;
entity fulladder_delay is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        s               : out    vl_logic;
        cout            : out    vl_logic
    );
end fulladder_delay;
