
# Phase F - Constrained Random + Coverage Closure

This phase builds on the stable Phase E base and keeps **all previous tests** runnable.

## New tests
- `rand_basic_phasef_test`
- `rand_arb_mix_phasef_test`
- `coverage_closure_test`
- `phasef_regression_test`

## What is new here
- legal constrained-random style traffic for requester/command/supplier combinations
- random multi-request arbitration traffic that still respects round-robin winner ordering
- a directed `coverage_closure_test` that hits the most important functional bins in one run
- coverage model cleanup using ignore bins for **unrealistic** cross combinations, so the reported percentage matches the real DUT intent better

## Suggested run order
1. `run_smoke_test.do`
2. `run_arb_4way_test.do`
3. `run_grant_addr_consistency_test.do`
4. `run_rand_basic_phasef_test.do`
5. `run_rand_arb_mix_phasef_test.do`
6. `run_coverage_closure_test.do`
7. `run_phasef_regression_test.do`

## Notes
- Extract this zip on top of the same `snoop_bus_arbiter_uvm` folder.
- The old Phase B/C/D/E tests remain available.
- The `coverage_closure_test` is the best first check for Phase F coverage progress.
