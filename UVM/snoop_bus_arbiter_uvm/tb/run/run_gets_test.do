do compile.do
vsim -L mtiUvm -voptargs=+acc tb_top +UVM_TESTNAME=gets_test
add wave -r sim:/tb_top/*
run -all
