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

run_one rand_basic_phasef_test
run_one rand_arb_mix_phasef_test
run_one coverage_closure_test
run_one phasef_regression_test
echo "PHASE-G REGRESSION COMPLETE"
