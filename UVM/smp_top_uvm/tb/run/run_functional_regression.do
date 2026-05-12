do run_bringup_regression.do
do run_foundation_regression.do

set MERGED_UCDB coverage_results/functional_regression_merged.ucdb
set MERGED_TXT  coverage_results/functional_regression_merged_report.txt
set MERGED_HTML coverage_results/functional_regression_merged_html

if {[file exists coverage_results/bringup_regression_merged.ucdb] && \
    [file exists coverage_results/foundation_regression_merged.ucdb]} {
  vcover merge ${MERGED_UCDB} \
    coverage_results/bringup_regression_merged.ucdb \
    coverage_results/foundation_regression_merged.ucdb
  vcover report -details -output ${MERGED_TXT} ${MERGED_UCDB}
  vcover report -html -htmldir ${MERGED_HTML} ${MERGED_UCDB}
}
