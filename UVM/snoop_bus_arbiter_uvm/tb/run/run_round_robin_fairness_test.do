do compile.do
vsim -L mtiUvm -voptargs=+acc tb_top +UVM_TESTNAME=round_robin_fairness_test
add wave -r sim:/tb_top/*
run -all
