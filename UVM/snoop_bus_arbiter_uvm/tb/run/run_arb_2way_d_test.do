do compile.do
vsim -L mtiUvm -voptargs=+acc tb_top +UVM_TESTNAME=arb_2way_d_test
add wave -r sim:/tb_top/*
run -all
