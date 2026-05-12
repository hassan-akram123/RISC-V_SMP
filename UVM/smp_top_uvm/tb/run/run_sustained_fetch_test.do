do compile.do

set TESTNAME sustained_fetch_test
set UCDB_FILE coverage_results/${TESTNAME}.ucdb
set TXT_RPT   coverage_results/${TESTNAME}_coverage_report.txt
set HTML_DIR  coverage_results/${TESTNAME}_html
set RUN_LIMIT "35 us"

puts "Running $TESTNAME with deterministic seed 1 and batch-safe inner do flow (limit $RUN_LIMIT)"

vsim -c -coverage -sv_seed 1 -onfinish stop -L mtiUvm work.tb_top \
  +UVM_NO_RELNOTES \
  +UVM_TESTNAME=${TESTNAME} \
  -do "do sustained_fetch_test_inner.do"

if {[file exists ${UCDB_FILE}]} {
  vcover report -details -output ${TXT_RPT} ${UCDB_FILE}
  vcover report -html -htmldir ${HTML_DIR} ${UCDB_FILE}
}
