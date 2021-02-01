library verilog;
use verilog.vl_types.all;
entity HALFSUBTRACTOR is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        d               : out    vl_logic;
        bor             : out    vl_logic
    );
end HALFSUBTRACTOR;
