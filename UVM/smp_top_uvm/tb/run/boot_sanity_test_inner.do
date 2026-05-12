echo ===== VSIM START boot_sanity_test =====
run 0 ns
run 25 us
echo ===== VSIM END boot_sanity_test =====
coverage save coverage_results/boot_sanity_test.ucdb
quit -sim
