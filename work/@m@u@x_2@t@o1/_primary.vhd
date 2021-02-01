library verilog;
use verilog.vl_types.all;
entity MUX_2TO1 is
    port(
        i0              : in     vl_logic;
        i1              : in     vl_logic;
        s               : in     vl_logic;
        o               : out    vl_logic
    );
end MUX_2TO1;
