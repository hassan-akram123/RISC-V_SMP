-incdir ./sv
-incdir ./rtl
-incdir ./tb

./tb/behav_model.sv


./rtl/L1_Icache.sv
./rtl/L1_Icache_Controller.sv
./tb/icache_subsystem.sv

./sv/cpu_if.sv
./sv/mem_if.sv

./sv/icache_pkg.sv

./tb/hw_top.sv
./tb/icache_lib_test.sv

./tb/tb_top.sv

//-timescale 1ns/1ps
//+UVM_TESTNAME=icache_base_test
//+UVM_VERBOSITY=UVM_LOW

// xrun -f run.f +UVM_TESTNAME=icache_base_test +UVM_VERBOSITY=UVM_LOW  passed
// xrun -f run.f +UVM_TESTNAME=icache_hit_test +UVM_VERBOSITY=UVM_LOW  passed
// xrun -f run.f +UVM_TESTNAME=icache_miss_test +UVM_VERBOSITY=UVM_LOW  passed
// xrun -f run.f +UVM_TESTNAME=icache_sequential_test +UVM_VERBOSITY=UVM_LOW passed

// xrun -f run.f +UVM_TESTNAME=icache_conflict_test +UVM_VERBOSITY=UVM_LOW passed
// xrun -f run.f +UVM_TESTNAME=icache_nack_test +UVM_VERBOSITY=UVM_LOW passed
// xrun -f run.f +UVM_TESTNAME=icache_delayed_test +UVM_VERBOSITY=UVM_LOW  passed
// xrun -f run.f +UVM_TESTNAME=icache_addr_boundary_test +UVM_VERBOSITY=UVM_LOW passed
// xrun -f run.f +UVM_TESTNAME=icache_evict_reaccess_test +UVM_VERBOSITY=UVM_LOW
// xrun -f run.f +UVM_TESTNAME=icache_hit_miss_alternating_test +UVM_VERBOSITY=UVM_LOW

// xrun -f run.f +UVM_TESTNAME=icache_random_stress_test +UVM_VERBOSITY=UVM_LOW passed
// xrun -f run.f +UVM_TESTNAME=icache_thrash_test +UVM_VERBOSITY=UVM_LOW passed
// xrun -f run.f +UVM_TESTNAME=icache_full_sweep_test +UVM_VERBOSITY=UVM_LOW passed