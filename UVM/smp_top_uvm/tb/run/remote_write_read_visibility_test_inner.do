echo ===== VSIM START remote_write_read_visibility_test =====
run 0 ns
run 45 us
echo ===== VSIM END remote_write_read_visibility_test =====
coverage save coverage_results/remote_write_read_visibility_test.ucdb
quit -sim
