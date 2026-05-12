# Phase D: Snoop response and delayed-ack tests

This package builds on the working starter + Phase B + Phase C project.
All previous tests remain runnable, and the following new tests are added:

- `snoop_no_hit_test`
- `snoop_d0_hit_test`
- `snoop_d1_hit_test`
- `snoop_both_hit_data_test`
- `snoop_both_hit_no_data_test`
- `snoop_delayed_ack_test`
- `snoop_staggered_mix_test`

## Windows / Questa
Extract this zip on top of your existing project folder so the path stays:

`D:/uvm_projects/snoop_bus_arbiter_uvm`

Then in Transcript:

```tcl
cd D:/uvm_projects/snoop_bus_arbiter_uvm/tb/run
do run_smoke_test.do
do run_reset_idle_test.do
do run_single_i0_test.do
do run_getm_test.do
do run_supplier_d1_test.do
do run_arb_2way_i_test.do
do run_arb_4way_test.do
do run_snoop_no_hit_test.do
do run_snoop_d0_hit_test.do
do run_snoop_d1_hit_test.do
do run_snoop_both_hit_data_test.do
do run_snoop_both_hit_no_data_test.do
do run_snoop_delayed_ack_test.do
do run_snoop_staggered_mix_test.do
```

## Notes
- Previous tests are preserved.
- This phase adds per-source snoop ACK delays in the transaction/driver.
- The delayed-ack test is specifically meant to check that the arbiter waits for all ACKs before moving on.
