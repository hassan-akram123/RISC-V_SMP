-uvmhome $UVMHOME

-incdir .
-incdir ./rtl
-incdir ./tb
-incdir ./sv

// Behavioral BRAM model (replaces Xilinx blk_mem_gen_1)
./tb/behav_model.sv

// RTL - DUT
./rtl/L2_Cache.sv
./rtl/L2_Cache_Controller.sv

// Testbench subsystem wrapper
./tb/l2_subsystem.sv

// Interface
./sv/l2_snoop_if.sv

// UVM package (includes all sv/ and tb/ classes)
./sv/l2_pkg.sv

// Hardware top + testbench top
./tb/hw_top.sv
./tb/tb_top.sv

-timescale 1ns/1ps

// Enable functional coverage collection
-coverage all

// Fix covergroup instance naming and DB dumping
-covoverwrite
-covdut hw_top
-covtest l2_miss_test

// Suppress informational coverage notes
-nowarn COVNSM
-nowarn COVCGN

// Uncomment the test you want to run:
//+UVM_TESTNAME=l2_gets_single_test
//+UVM_TESTNAME=l2_getm_single_test
//+UVM_TESTNAME=l2_gets_hit_test
//+UVM_TESTNAME=l2_getm_hit_test
//+UVM_TESTNAME=l2_upgr_test
//+UVM_TESTNAME=l2_wb_test
//+UVM_TESTNAME=l2_miss_test
//+UVM_TESTNAME=l2_conflict_test
+UVM_TESTNAME=l2_dirty_evict_test
//+UVM_TESTNAME=l2_delayed_mem_test
//+UVM_TESTNAME=l2_mixed_test
//+UVM_TESTNAME=l2_base_test
//+UVM_TESTNAME=l2_cov_closure_test
+UVM_VERBOSITY=UVM_LOW