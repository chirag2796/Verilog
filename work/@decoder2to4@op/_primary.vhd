library verilog;
use verilog.vl_types.all;
entity Decoder2to4Op is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        o0              : out    vl_logic;
        o1              : out    vl_logic;
        o2              : out    vl_logic;
        o3              : out    vl_logic
    );
end Decoder2to4Op;
