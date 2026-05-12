echo ===== VSIM START cross_core_write_read_exchange_test =====
run 0 ns
run 45 us
echo ===== VSIM END cross_core_write_read_exchange_test =====
coverage save coverage_results/cross_core_write_read_exchange_test.ucdb
quit -sim
