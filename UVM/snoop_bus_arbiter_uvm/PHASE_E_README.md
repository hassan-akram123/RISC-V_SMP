Phase E v2 fix: scoreboard now checks grant destination against the DUT source encoding (I0=0, I1=1, D0=2, D1=3), which matches active_src in the RTL.

# Phase E - Grant/State Checks

This phase is built on top of all previous working phases.
All earlier tests are still present and reproducible.

## New tests
- i_grant_i0_test
- i_grant_i1_test
- d_gets_s_state_test
- d_gets_e_state_test
- d_getm_m_state_test
- d_upgr_m_state_test
- d_wb_i_state_test
- grant_addr_consistency_test

## What this phase adds
- explicit grant destination checking (dst 0 vs dst 1)
- explicit D-side state checks for GETS/GETM/UPGR/WB
- repeated D-side grant-address consistency checks
- a slightly stricter scoreboard
- extra functional coverage crosses

## Suggested run order
1. do run_smoke_test.do
2. do run_reset_idle_test.do
3. do run_single_i0_test.do
4. do run_getm_test.do
5. do run_supplier_d1_test.do
6. do run_arb_4way_test.do
7. do run_snoop_staggered_mix_test.do
8. do run_i_grant_i0_test.do
9. do run_i_grant_i1_test.do
10. do run_d_gets_s_state_test.do
11. do run_d_gets_e_state_test.do
12. do run_d_getm_m_state_test.do
13. do run_d_upgr_m_state_test.do
14. do run_d_wb_i_state_test.do
15. do run_grant_addr_consistency_test.do
