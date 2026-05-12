do compile.do
vsim -L mtiUvm -voptargs=+acc tb_top +UVM_TESTNAME=back_to_back_req_test
add wave -r sim:/tb_top/*
run -all
