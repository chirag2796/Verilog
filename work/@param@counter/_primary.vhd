library verilog;
use verilog.vl_types.all;
entity ParamCounter is
    generic(
        n               : integer := 4
    );
    port(
        count           : out    vl_logic_vector;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end ParamCounter;
