do compile.do

set TESTNAME dirty_eviction_writeback_test
set BASETEST data_path_smoke_test
set UCDB_FILE coverage_results/${TESTNAME}.ucdb
set TXT_RPT   coverage_results/${TESTNAME}_coverage_report.txt
set HTML_DIR  coverage_results/${TESTNAME}_html
set RUN_LIMIT "70 us"

puts "Running $TESTNAME on top of ${BASETEST} with deterministic seed 1 (limit $RUN_LIMIT)"

vsim -c -coverage -sv_seed 1 -onfinish stop -L mtiUvm work.tb_top       +UVM_NO_RELNOTES       +UVM_TESTNAME=${BASETEST}       +SMP_SCENARIO=${TESTNAME}       -do "do dirty_eviction_writeback_test_inner.do"

if {[file exists ${UCDB_FILE}]} {
  vcover report -details -output ${TXT_RPT} ${UCDB_FILE}
  vcover report -html -htmldir ${HTML_DIR} ${UCDB_FILE}
}
