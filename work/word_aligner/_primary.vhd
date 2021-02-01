library verilog;
use verilog.vl_types.all;
entity word_aligner is
    port(
        w_in            : in     vl_logic_vector(7 downto 0);
        w_out           : out    vl_logic_vector(7 downto 0)
    );
end word_aligner;
