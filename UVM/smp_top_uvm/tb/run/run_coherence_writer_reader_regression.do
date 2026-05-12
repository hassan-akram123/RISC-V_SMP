do run_remote_write_read_visibility_test.do
do run_cross_core_write_read_exchange_test.do
do run_shared_line_update_visibility_smoke_test.do
do run_shared_line_write_observe_stability_test.do

set MERGED_UCDB coverage_results/coherence_writer_reader_regression_merged.ucdb
set MERGED_TXT  coverage_results/coherence_writer_reader_regression_merged_report.txt
set MERGED_HTML coverage_results/coherence_writer_reader_regression_merged_html

if {[file exists coverage_results/remote_write_read_visibility_test.ucdb] && \
    [file exists coverage_results/cross_core_write_read_exchange_test.ucdb] && \
    [file exists coverage_results/shared_line_update_visibility_smoke_test.ucdb] && \
    [file exists coverage_results/shared_line_write_observe_stability_test.ucdb]} {
  vcover merge ${MERGED_UCDB} \
    coverage_results/remote_write_read_visibility_test.ucdb \
    coverage_results/cross_core_write_read_exchange_test.ucdb \
    coverage_results/shared_line_update_visibility_smoke_test.ucdb \
    coverage_results/shared_line_write_observe_stability_test.ucdb
  vcover report -details -output ${MERGED_TXT} ${MERGED_UCDB}
  vcover report -html -htmldir ${MERGED_HTML} ${MERGED_UCDB}
}
