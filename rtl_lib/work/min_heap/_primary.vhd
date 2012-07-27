library verilog;
use verilog.vl_types.all;
entity min_heap is
    generic(
        data_wd         : integer := 16;
        capacity        : integer := 8;
        addr            : integer := 3
    );
    port(
        clk             : in     vl_logic;
        cs              : in     vl_logic;
        rnw             : in     vl_logic;
        wr_data         : in     vl_logic_vector;
        rd_data         : out    vl_logic_vector;
        valid           : out    vl_logic;
        ready           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of data_wd : constant is 1;
    attribute mti_svvh_generic_type of capacity : constant is 1;
    attribute mti_svvh_generic_type of addr : constant is 1;
end min_heap;
