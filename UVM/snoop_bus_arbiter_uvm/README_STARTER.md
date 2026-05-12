# Snoop Bus Arbiter UVM Starter + Phase B Pack

This is a beginner-friendly UVM environment for your snoop bus arbiter.

## Folder summary
- `rtl/` : DUT RTL
- `tb/top/` : interface and top testbench
- `tb/pkg/` : package that includes all classes
- `tb/seq_item/` : transaction class
- `tb/sequences/` : smoke, directed, and random sequences
- `tb/agent/` : sequencer, driver, monitor, agent
- `tb/scoreboard/` : checking
- `tb/coverage/` : functional coverage collector
- `tb/env/` : environment
- `tb/tests/` : UVM tests
- `tb/run/` : Questa `.do` scripts

## This version adds Phase B directed tests
- reset/idle test
- single requester tests
- command tests
- supplier tests

## First run
Open Questa, go to `tb/run`, then run:

```tcl
cd D:/uvm_projects/snoop_bus_arbiter_uvm/tb/run
do run_smoke.do
```

## Run any named test
```tcl
do run_test.do reset_idle_test
do run_test.do single_d0_test
do run_test.do getm_test
do run_test.do supplier_d1_test
```

## Important note
This setup uses **Questa built-in UVM** so you do not have to manage a separate UVM package for compilation.
