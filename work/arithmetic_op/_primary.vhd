library verilog;
use verilog.vl_types.all;
entity arithmetic_op is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        o_add           : out    vl_logic_vector(3 downto 0);
        o_sub           : out    vl_logic_vector(3 downto 0);
        o_prod          : out    vl_logic_vector(4 downto 0);
        o_div           : out    vl_logic_vector(3 downto 0);
        o_modulo        : out    vl_logic_vector(3 downto 0);
        o_power         : out    vl_logic_vector(9 downto 0)
    );
end arithmetic_op;
