-uvmhome $UVMHOME

-incdir .
-incdir ./rtl
-incdir ./tb


./tb/behav_model.sv

./rtl/L1_Dcache.sv
./rtl/L1_Dcache_Controller.sv
./tb/dcache_subsystem.sv

./sv/cpu_if.sv
./sv/mem_if.sv

./sv/dcache_pkg.sv

./tb/hw_top.sv
./tb/tb_top.sv

// Enable functional coverage collection
-coverage all

// Fix covergroup instance naming and DB dumping
-covoverwrite
-covdut hw_top
-covtest l2_miss_test

// Suppress informational coverage notes
-nowarn COVNSM
-nowarn COVCGN

-timescale 1ns/1ps
+UVM_TESTNAME=dcache_coverage_close_test
+UVM_VERBOSITY=UVM_LOW