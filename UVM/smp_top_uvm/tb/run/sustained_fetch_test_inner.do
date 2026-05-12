echo ===== VSIM START sustained_fetch_test =====
run 0 ns
run 35 us
echo ===== VSIM END sustained_fetch_test =====
coverage save coverage_results/sustained_fetch_test.ucdb
quit -sim
