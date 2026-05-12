# Phase B Pack - Directed Tests (Fixed)

This version fixes the Questa `run_test.do` argument bug.

## What was broken in the previous zip

The old `run_test.do` accidentally read Questa's own `-gui` startup argument as the UVM test name.
That caused errors like:

- `Running UVM test: -gui`
- `Requested test from command line +UVM_TESTNAME=-gui not found`

So the directed tests themselves were not actually running.

## Fixed in this version

- `run_test.do` now correctly reads the macro argument using `$1`
- Added direct wrapper scripts for every Phase B test

## How to run in Questa

From the Transcript:

```tcl
cd D:/uvm_projects/snoop_bus_arbiter_uvm/tb/run
do run_test.do reset_idle_test
do run_test.do single_i0_test
do run_test.do getm_test
do run_test.do supplier_d1_test
```

Or use direct wrapper scripts:

```tcl
do run_reset_idle_test.do
do run_single_i0_test.do
do run_getm_test.do
do run_supplier_d1_test.do
```

## Included Phase B tests

- `reset_idle_test`
- `single_i0_test`
- `single_i1_test`
- `single_d0_test`
- `single_d1_test`
- `gets_test`
- `getm_test`
- `upgr_test`
- `wb_test`
- `supplier_d0_test`
- `supplier_d1_test`
- `supplier_l2_test`
- `supplier_none_test`
- `smoke_test`
- `random_test`
