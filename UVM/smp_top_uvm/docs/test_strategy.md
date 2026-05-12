# Verification strategy for the current stable baseline

This delivery focuses on a **professional stable baseline** that you can keep re-running while we grow functionality in controlled steps.

## Stable regression tests

### `boot_sanity_test`
Bring-up gate.
If this fails, the environment is not ready for trusted growth.

### `dual_core_fetch_test`
First SMP-aware instruction-side test.
It proves we can:
- distinguish core behavior
- control deterministic role split
- observe both cores under one UVM environment

### `data_path_smoke_test`
First stable D-side gate.
It proves the environment can observe:
- shared-line data-side request generation
- data grant completion
- GETM activity
- refill behavior while dual-core execution remains alive

## Advanced test retained in-package

### `shared_line_contention_test`
This remains the next coherence target, but it is not yet a regression gate.
It is kept in the package so the next delivery can harden it into a stable ownership-transfer/coherence test.

## Growth path after this package
Recommended next additions, in order:
1. shared read-only line test
2. shared read-then-write upgrade test
3. stable two-core shared-line contention test
4. repeated ping-pong ownership handoff test
5. writeback-visible eviction test
6. mixed I-side and D-side pressure test
7. reset-and-recovery regression test
8. constrained-random traffic test
9. long regression with merged UCDB
