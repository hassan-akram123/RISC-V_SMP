if {[file exists work]} {
  vdel -lib work -all
}

vlib work
vmap work work

set QUESTA_BIN  [file dirname [info nameofexecutable]]
set QUESTA_HOME [file dirname $QUESTA_BIN]
set UVM_SRC     $QUESTA_HOME/verilog_src/uvm-1.1d/src

if {![file exists $UVM_SRC/uvm_macros.svh]} {
  echo "ERROR: Built-in UVM source folder not found at $UVM_SRC"
  quit -code 1
}

if {![file exists coverage_results]} {
  file mkdir coverage_results
}

echo "Using built-in Questa UVM library: mtiUvm"
echo "Using UVM source path           : $UVM_SRC"
echo "Compiling SMP Top UVM package with coverage instrumentation"

vlog -sv -cover bcefst -L mtiUvm \
  +incdir+$UVM_SRC \
  +incdir+../pkg \
  +incdir+../seq_item \
  +incdir+../sequences \
  +incdir+../agent \
  +incdir+../env \
  +incdir+../scoreboard \
  +incdir+../coverage \
  +incdir+../tests \
  +incdir+../top \
  -f ../../rtl/rtl_files.f \
  -f ../tb_files.f
