echo ===== VSIM START symmetric_store_ping_pong_test =====
run 0 ns
run 55 us
echo ===== VSIM END symmetric_store_ping_pong_test =====
coverage save coverage_results/symmetric_store_ping_pong_test.ucdb
quit -sim
