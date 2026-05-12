echo ===== VSIM START shared_line_update_visibility_smoke_test =====
run 0 ns
run 45 us
echo ===== VSIM END shared_line_update_visibility_smoke_test =====
coverage save coverage_results/shared_line_update_visibility_smoke_test.ucdb
quit -sim
