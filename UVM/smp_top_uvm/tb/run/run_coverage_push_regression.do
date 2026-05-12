do run_symmetric_store_ping_pong_test.do
do run_conflict_set_store_sweep_test.do
do run_dirty_eviction_writeback_test.do

set MERGED_UCDB coverage_results/coverage_push_regression_merged.ucdb
set MERGED_TXT  coverage_results/coverage_push_regression_merged_report.txt
set MERGED_HTML coverage_results/coverage_push_regression_merged_html

if {[file exists coverage_results/symmetric_store_ping_pong_test.ucdb] &&         [file exists coverage_results/conflict_set_store_sweep_test.ucdb] &&         [file exists coverage_results/dirty_eviction_writeback_test.ucdb]} {
  vcover merge ${MERGED_UCDB}         coverage_results/symmetric_store_ping_pong_test.ucdb         coverage_results/conflict_set_store_sweep_test.ucdb         coverage_results/dirty_eviction_writeback_test.ucdb
  vcover report -details -output ${MERGED_TXT} ${MERGED_UCDB}
  vcover report -html -htmldir ${MERGED_HTML} ${MERGED_UCDB}
}
