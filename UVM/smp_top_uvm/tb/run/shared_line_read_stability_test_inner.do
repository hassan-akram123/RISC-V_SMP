echo ===== VSIM START shared_line_read_stability_test =====
run 0 ns
run 50 us
echo ===== VSIM END shared_line_read_stability_test =====
coverage save coverage_results/shared_line_read_stability_test.ucdb
quit -sim
