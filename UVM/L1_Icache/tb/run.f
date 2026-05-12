-incdir ./sv
-incdir ./rtl
-incdir ./tb
-64bit

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

-timescale 1ns/1ps
+UVM_TESTNAME=icache_base_test
+UVM_VERBOSITY=UVM_LOW