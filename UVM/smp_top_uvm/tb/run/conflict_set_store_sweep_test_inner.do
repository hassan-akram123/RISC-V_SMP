echo ===== VSIM START conflict_set_store_sweep_test =====
run 0 ns
run 65 us
echo ===== VSIM END conflict_set_store_sweep_test =====
coverage save coverage_results/conflict_set_store_sweep_test.ucdb
quit -sim
