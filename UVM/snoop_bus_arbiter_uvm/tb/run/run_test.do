do compile.do

# Questa/ModelSim macro arguments come in as $1, $2, ...
# Do NOT use Tcl argv here, otherwise -gui becomes the fake test name.
set TESTNAME smoke_test
if {[info exists 1] && [string length $1] > 0} {
  set TESTNAME $1
}

echo "Running UVM test: $TESTNAME"
vsim -L mtiUvm -voptargs=+acc tb_top +UVM_TESTNAME=$TESTNAME
add wave -r sim:/tb_top/*
run -all
