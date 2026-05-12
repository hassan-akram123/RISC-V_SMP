# Windows + Questa quick start

This project uses **Questa built-in UVM**.  
You do **not** need to set `UVM_HOME` anymore.

## Folder
Extract the zip so this folder exists:

`D:/uvm_projects/snoop_bus_arbiter_uvm`

## First smoke run
Open Questa, then in the Transcript run:

```tcl
cd D:/uvm_projects/snoop_bus_arbiter_uvm/tb/run
do run_smoke.do
```

## Generic directed-test run
You can run any test by name with:

```tcl
cd D:/uvm_projects/snoop_bus_arbiter_uvm/tb/run
do run_test.do reset_idle_test
do run_test.do single_i0_test
do run_test.do gets_test
do run_test.do supplier_l2_test
```

## Important
The scripts automatically use the UVM files that match your Questa installation.
That avoids version-mismatch problems.

## New arbitration wrappers
```tcl
do run_arb_2way_i_test.do
do run_arb_2way_d_test.do
do run_arb_3way_test.do
do run_arb_4way_test.do
do run_back_to_back_req_test.do
do run_round_robin_fairness_test.do
```
