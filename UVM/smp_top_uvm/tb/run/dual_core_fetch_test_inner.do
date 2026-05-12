echo ===== VSIM START dual_core_fetch_test =====
run 0 ns
run 30 us
echo ===== VSIM END dual_core_fetch_test =====
coverage save coverage_results/dual_core_fetch_test.ucdb
quit -sim
