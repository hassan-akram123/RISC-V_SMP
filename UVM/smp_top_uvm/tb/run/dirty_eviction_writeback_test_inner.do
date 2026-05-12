echo ===== VSIM START dirty_eviction_writeback_test =====
run 0 ns
run 70 us
echo ===== VSIM END dirty_eviction_writeback_test =====
coverage save coverage_results/dirty_eviction_writeback_test.ucdb
quit -sim
