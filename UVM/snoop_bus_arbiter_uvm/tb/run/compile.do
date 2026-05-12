vlib work
vmap work work

# Use Questa's built-in precompiled UVM library and its matching macro/source files.
# This avoids mixing UVM 1.1d built-in package with external UVM 1.2 macros.
set QUESTA_BIN  [file dirname [info nameofexecutable]]
set QUESTA_HOME [file dirname $QUESTA_BIN]
set UVM_SRC     $QUESTA_HOME/verilog_src/uvm-1.1d/src

if {![file exists $UVM_SRC/uvm_macros.svh]} {
  echo "ERROR: Built-in UVM source folder not found at $UVM_SRC"
  echo "Please check your Questa installation path."
  quit -code 1
}

echo "Using built-in Questa UVM library: mtiUvm"
echo "Using matching UVM macro/source path: $UVM_SRC"

vlog -sv -L mtiUvm \
  +incdir+$UVM_SRC \
  +incdir+../seq_item \
  +incdir+../sequences \
  +incdir+../agent \
  +incdir+../scoreboard \
  +incdir+../coverage \
  +incdir+../env \
  +incdir+../tests \
  +incdir+../pkg \
  ../top/snoop_bus_if.sv \
  ../../rtl/snoop_bus_arbiter.sv \
  ../pkg/snoop_arbiter_pkg.sv \
  ../top/tb_top.sv
