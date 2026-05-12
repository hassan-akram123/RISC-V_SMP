echo ===== VSIM START reset_recovery_test =====
run 0 ns
run 25 us
echo ===== VSIM END reset_recovery_test =====
coverage save coverage_results/reset_recovery_test.ucdb
quit -sim
