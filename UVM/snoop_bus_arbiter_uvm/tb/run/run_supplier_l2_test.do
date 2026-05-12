do compile.do
vsim -L mtiUvm -voptargs=+acc tb_top +UVM_TESTNAME=supplier_l2_test
add wave -r sim:/tb_top/*
run -all
