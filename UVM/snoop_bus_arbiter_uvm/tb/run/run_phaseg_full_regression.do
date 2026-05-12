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
run_one random_test
run_one single_i0_test
run_one single_i1_test
run_one single_d0_test
run_one single_d1_test
run_one gets_test
run_one getm_test
run_one upgr_test
run_one wb_test
run_one supplier_d0_test
run_one supplier_d1_test
run_one supplier_l2_test
run_one supplier_none_test
run_one arb_2way_i_test
run_one arb_2way_d_test
run_one arb_3way_test
run_one arb_4way_test
run_one back_to_back_req_test
run_one round_robin_fairness_test
run_one snoop_no_hit_test
run_one snoop_d0_hit_test
run_one snoop_d1_hit_test
run_one snoop_both_hit_data_test
run_one snoop_both_hit_no_data_test
run_one snoop_delayed_ack_test
run_one snoop_staggered_mix_test
run_one i_grant_i0_test
run_one i_grant_i1_test
run_one d_gets_s_state_test
run_one d_gets_e_state_test
run_one d_getm_m_state_test
run_one d_upgr_m_state_test
run_one d_wb_i_state_test
run_one grant_addr_consistency_test
run_one rand_basic_phasef_test
run_one rand_arb_mix_phasef_test
run_one coverage_closure_test
run_one phasef_regression_test
echo "PHASE-G REGRESSION COMPLETE"
