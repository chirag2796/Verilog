library verilog;
use verilog.vl_types.all;
entity bit_counter is
    port(
        data            : in     vl_logic_vector(7 downto 0);
        count           : out    vl_logic_vector(3 downto 0)
    );
end bit_counter;
