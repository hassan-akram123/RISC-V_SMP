# -------------------------------------------------------------
# Makefile – Verilator simulation for rv32i_core + tb_top
# -------------------------------------------------------------
# Usage:
#   make          -> compile design & run sim
#   make run      -> run simulation again (skip compilation)
#   make clean    -> remove obj_dir and binary
# -------------------------------------------------------------

# Top-level testbench and filelist
#TB_TOP       ?= tb_adder_4bit
TB_TOP       ?= tb_top
FILELIST     ?= filelist.f

# Verilator options
VERILATOR_FLAGS = \
  --timing --binary -Wall \
  --Wno-fatal \
  --top-module $(TB_TOP) \
  --cc --exe \
  --Wno-PROCASSWIRE --Wno-SYNCASYNCNET --Wno-BLKSEQ \
  --Wno-WIDTHEXPAND --Wno-UNUSEDSIGNAL --Wno-UNUSEDPARAM --trace \
  -CFLAGS "-std=c++17" \
  -f $(FILELIST) \
  +define+tracer

SIM     = obj_dir/V$(TB_TOP)
TARGET  = $(SIM)

.PHONY: all clean run

all: $(TARGET) run

$(TARGET): $(FILELIST)
	verilator $(VERILATOR_FLAGS)
	$(MAKE) -C obj_dir -j -f V$(TB_TOP).mk

compile: $(TARGET)

run: $(TARGET)
	$(SIM)

clean:
	rm -rf obj_dir V$(TB_TOP) trace_core_*.log
