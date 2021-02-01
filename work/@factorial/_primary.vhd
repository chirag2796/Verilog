library verilog;
use verilog.vl_types.all;
entity Factorial is
    port(
        n               : in     vl_logic_vector(3 downto 0);
        res             : out    vl_logic_vector(31 downto 0)
    );
end Factorial;
