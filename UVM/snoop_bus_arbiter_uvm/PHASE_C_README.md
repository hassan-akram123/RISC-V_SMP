# Phase C / Batch 2 - Arbitration Tests

This package builds on top of the working Phase B project and **keeps all old tests**.

## Old tests still included
- smoke_test
- reset_idle_test
- single_i0_test
- single_i1_test
- single_d0_test
- single_d1_test
- gets_test
- getm_test
- upgr_test
- wb_test
- supplier_d0_test
- supplier_d1_test
- supplier_l2_test
- supplier_none_test
- random_test

## New arbitration tests
- arb_2way_i_test
- arb_2way_d_test
- arb_3way_test
- arb_4way_test
- back_to_back_req_test
- round_robin_fairness_test

## Main idea
The transaction class now supports `req_mask[3:0]` for simultaneous requesters.
The expected winner is still stored in `req_id`, so the scoreboard checks the
observed broadcast/grant against the expected arbitration result.

Bit mapping for req_mask:
- bit0 = i0
- bit1 = i1
- bit2 = d0
- bit3 = d1

## Suggested run order
1. smoke_test
2. reset_idle_test
3. single_* tests
4. command tests
5. supplier tests
6. arbitration tests
7. random_test

## Quick commands in Questa
```tcl
cd D:/uvm_projects/snoop_bus_arbiter_uvm/tb/run
do run_smoke_test.do
do run_arb_2way_i_test.do
do run_arb_2way_d_test.do
do run_arb_3way_test.do
do run_arb_4way_test.do
do run_back_to_back_req_test.do
do run_round_robin_fairness_test.do
```
