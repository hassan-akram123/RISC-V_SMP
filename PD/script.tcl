#=========================================================
# Genus Synthesis Script for rv64i_top
# Aligned with NCDC PD Lab #01 flow
#=========================================================

# Optional utility include used in some lab setups
# Uncomment only if your environment provides this file
# include load_etc.tcl

#-------------------------------
# Design setup
#-------------------------------
set DESIGN rv64i_top
set GEN_EFF high
set MAP_OPT_EFF high

#-------------------------------
# Paths
#-------------------------------
set ROOT [pwd]
set RTL_DIR   "$ROOT/rtl"
set LIB_DIR   "$ROOT/libs"
set OUT_DIR   "$ROOT/out"
set RPT_DIR   "$ROOT/RPT"
set SDC_FILE  "$ROOT/constraints/rv64i_top.sdc"

# Create output directories
file mkdir $OUT_DIR
file mkdir $RPT_DIR

#-------------------------------
# Library setup
# Lab manual uses tcbn65lptc.lib
#-------------------------------
set_db / .init_lib_search_path $LIB_DIR
read_libs {./libs/tcbn65lptc.lib}

#-------------------------------
# Read RTL
#-------------------------------
read_verilog -sv {
    ./rtl/ALU.sv
    ./rtl/branch_comp.sv
    ./rtl/control_logic.sv
    ./rtl/data_hazard_unit.sv
    ./rtl/decode.sv
    ./rtl/execute.sv
    ./rtl/fetch.sv
    ./rtl/imm_gen.sv
    ./rtl/memory.sv
    ./rtl/program_counter.sv
    ./rtl/register_file.sv
    ./rtl/writeback.sv
    ./rtl/rv64i_top.sv

    ./rtl/L1_Icache.sv
    ./rtl/L1_Icache_Controller.sv
    ./rtl/L1_Dcache.sv
    ./rtl/L1_Dcache_Controller.sv
    ./rtl/L2_Cache.sv
    ./rtl/L2_Cache_Controller.sv
    ./rtl/snoop_bus_arbiter.sv

    ./rtl/l2_to_axi4_master.sv
    ./rtl/l2_to_axi4_master_axi_full_wrapper.sv

    ./rtl/smp_top.sv
}

#-------------------------------
# Elaborate top
#-------------------------------
elaborate $DESIGN

#-------------------------------
# Check design
#-------------------------------
check_design -unresolved > ./RPT/${DESIGN}_check.rpt

#-------------------------------
# Read constraints
#-------------------------------
read_sdc $SDC_FILE

#-------------------------------
# Synthesis effort
#-------------------------------
set_db / .syn_generic_effort $GEN_EFF
set_db / .syn_map_effort     $MAP_OPT_EFF
set_db / .syn_opt_effort     $MAP_OPT_EFF

#-------------------------------
# Run synthesis
#-------------------------------
syn_generic
syn_map
syn_opt

#-------------------------------
# Write outputs
#-------------------------------
write_hdl > ./out/${DESIGN}_map.v
write_sdc > ./out/${DESIGN}_map.sdc
write_sdf -design $DESIGN > ./out/${DESIGN}_map.sdf

#-------------------------------
# Reports
#-------------------------------
report qor    > ./RPT/${DESIGN}_qor.rpt
report timing -full_pin_names > ./RPT/${DESIGN}_timing.rpt
report area   > ./RPT/${DESIGN}_area.rpt
report gates  > ./RPT/${DESIGN}_gates.rpt
report power  > ./RPT/${DESIGN}_power.rpt

#-------------------------------
# Optional extra reports
#-------------------------------
report summary > ./RPT/${DESIGN}_summary.rpt

exit
