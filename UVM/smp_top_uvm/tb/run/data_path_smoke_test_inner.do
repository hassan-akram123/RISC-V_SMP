echo ===== VSIM START data_path_smoke_test =====
run 0 ns
run 30 us
echo ===== VSIM END data_path_smoke_test =====
coverage save coverage_results/data_path_smoke_test.ucdb
quit -sim
