library verilog;
use verilog.vl_types.all;
entity FULLSUBTRACTOR is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        diff            : out    vl_logic;
        bor             : out    vl_logic
    );
end FULLSUBTRACTOR;
