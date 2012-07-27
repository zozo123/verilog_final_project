library verilog;
use verilog.vl_types.all;
entity sp_ram is
    generic(
        add_wd          : integer := 4;
        data_wd         : integer := 32;
        depth           : integer := 16;
        t_access        : integer := 15
    );
    port(
        clk             : in     vl_logic;
        cs              : in     vl_logic;
        rnw             : in     vl_logic;
        add             : in     vl_logic_vector;
        wr_data         : in     vl_logic_vector;
        rd_data         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of add_wd : constant is 1;
    attribute mti_svvh_generic_type of data_wd : constant is 1;
    attribute mti_svvh_generic_type of depth : constant is 1;
    attribute mti_svvh_generic_type of t_access : constant is 1;
end sp_ram;
