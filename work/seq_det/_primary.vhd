library verilog;
use verilog.vl_types.all;
entity seq_det is
    generic(
        A1              : integer := 0;
        B               : integer := 1;
        C               : integer := 2;
        D               : integer := 3
    );
    port(
        det             : out    vl_logic;
        A               : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end seq_det;
