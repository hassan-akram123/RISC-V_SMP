# TEST CATALOG

This file lists all runnable UVM tests available in the environment.

## Bring-up / Basic
- smoke_test
- reset_idle_test
- random_test

## Single-request tests
- single_i0_test
- single_i1_test
- single_d0_test
- single_d1_test

## Command tests
- gets_test
- getm_test
- upgr_test
- wb_test

## Supplier tests
- supplier_d0_test
- supplier_d1_test
- supplier_l2_test
- supplier_none_test

## Arbitration tests
- arb_2way_i_test
- arb_2way_d_test
- arb_3way_test
- arb_4way_test
- back_to_back_req_test
- round_robin_fairness_test

## Snoop-response tests
- snoop_no_hit_test
- snoop_d0_hit_test
- snoop_d1_hit_test
- snoop_both_hit_data_test
- snoop_both_hit_no_data_test
- snoop_delayed_ack_test
- snoop_staggered_mix_test

## Grant / state tests
- i_grant_i0_test
- i_grant_i1_test
- d_gets_s_state_test
- d_gets_e_state_test
- d_getm_m_state_test
- d_upgr_m_state_test
- d_wb_i_state_test
- grant_addr_consistency_test

## Phase F random / coverage tests
- rand_basic_phasef_test
- rand_arb_mix_phasef_test
- coverage_closure_test
- phasef_regression_test

## Total runnable named tests
40

## Generic launcher
You can also run any individual test through:

```tcl
do run_test.do <test_name>
```

Example:

```tcl
do run_test.do arb_4way_test
```
