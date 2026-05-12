do run_full_regression.do
do run_coverage_push_regression.do

set MERGED_UCDB coverage_results/coverage_goal_regression_merged.ucdb
set MERGED_TXT  coverage_results/coverage_goal_regression_merged_report.txt
set MERGED_HTML coverage_results/coverage_goal_regression_merged_html

if {[file exists coverage_results/full_baseline_regression_merged.ucdb] &&         [file exists coverage_results/coverage_push_regression_merged.ucdb]} {
  vcover merge ${MERGED_UCDB}         coverage_results/full_baseline_regression_merged.ucdb         coverage_results/coverage_push_regression_merged.ucdb
  vcover report -details -output ${MERGED_TXT} ${MERGED_UCDB}
  vcover report -html -htmldir ${MERGED_HTML} ${MERGED_UCDB}
}
