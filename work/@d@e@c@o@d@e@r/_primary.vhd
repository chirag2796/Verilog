library verilog;
use verilog.vl_types.all;
entity DECODER is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        o1              : out    vl_logic;
        o2              : out    vl_logic;
        o3              : out    vl_logic;
        o4              : out    vl_logic
    );
end DECODER;
