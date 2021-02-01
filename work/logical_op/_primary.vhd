library verilog;
use verilog.vl_types.all;
entity logical_op is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        o_Land          : out    vl_logic_vector(3 downto 0);
        o_Lor           : out    vl_logic_vector(3 downto 0);
        o_Anot          : out    vl_logic_vector(3 downto 0)
    );
end logical_op;
