library verilog;
use verilog.vl_types.all;
entity Comparator_1Bit is
    port(
        c               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end Comparator_1Bit;
