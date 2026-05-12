do compile.do

proc run_one {testname} {
  echo "============================================================"
  echo "PHASE-G REGRESSION: $testname"
  echo "============================================================"
  vsim -onfinish stop -L mtiUvm -voptargs=+acc tb_top +UVM_TESTNAME=$testname
  add wave -r sim:/tb_top/*
  run -all
  catch {quit -sim}
}

run_one smoke_test
run_one reset_idle_test
run_one getm_test
run_one supplier_d1_test
run_one arb_4way_test
run_one snoop_staggered_mix_test
run_one grant_addr_consistency_test
run_one coverage_closure_test
run_one phasef_regression_test
echo "PHASE-G REGRESSION COMPLETE"
