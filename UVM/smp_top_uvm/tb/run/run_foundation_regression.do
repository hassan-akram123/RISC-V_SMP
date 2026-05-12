do compile.do

foreach TESTNAME {data_path_smoke_test reset_recovery_test sustained_fetch_test} {
  set UCDB_FILE coverage_results/${TESTNAME}.ucdb
  if {[file exists ${UCDB_FILE}]} { file delete -force ${UCDB_FILE} }

  set INNER_DO ${TESTNAME}_inner.do
  vsim -c -coverage -sv_seed 1 -onfinish stop -L mtiUvm work.tb_top \
    +UVM_NO_RELNOTES \
    +UVM_TESTNAME=${TESTNAME} \
    -do ${INNER_DO}
}

set MERGED_UCDB coverage_results/foundation_regression_merged.ucdb
set MERGED_TXT  coverage_results/foundation_regression_merged_report.txt
set MERGED_HTML coverage_results/foundation_regression_merged_html

if {[file exists coverage_results/data_path_smoke_test.ucdb] && \
    [file exists coverage_results/reset_recovery_test.ucdb] && \
    [file exists coverage_results/sustained_fetch_test.ucdb]} {
  vcover merge ${MERGED_UCDB} \
    coverage_results/data_path_smoke_test.ucdb \
    coverage_results/reset_recovery_test.ucdb \
    coverage_results/sustained_fetch_test.ucdb
  vcover report -details -output ${MERGED_TXT} ${MERGED_UCDB}
  vcover report -html -htmldir ${MERGED_HTML} ${MERGED_UCDB}
}
