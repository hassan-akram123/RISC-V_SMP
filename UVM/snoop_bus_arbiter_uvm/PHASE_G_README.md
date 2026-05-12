# PHASE G — Final Polish / Regression / Sign-off Pack

Phase G does **not** replace the earlier verification work. It keeps the whole working Phase A–F environment and adds final polish for day-to-day use in Questa.

## What Phase G adds

- A **test catalog** that lists every runnable test in the environment
- A **quick regression** script for a representative sanity suite
- A **full regression** script that runs the whole project test list in one place
- A **suggested execution order** for demos, submission, and viva

## Important note about this phase

Phase G is intentionally conservative.
It does **not** modify the core RTL/UVM checking logic that is already passing.
It mainly adds final packaging and execution helpers so you can use the project more comfortably.

## Main new scripts

Inside `tb/run/`:

- `run_phaseg_quick_regression.do`
- `run_phaseg_full_regression.do`
- `run_phaseg_phasef_suite.do`

## Suggested use

### 1) Quick sanity run

```tcl
cd D:/uvm_projects/snoop_bus_arbiter_uvm/tb/run
do run_phaseg_quick_regression.do
```

### 2) Phase F only

```tcl
cd D:/uvm_projects/snoop_bus_arbiter_uvm/tb/run
do run_phaseg_phasef_suite.do
```

### 3) Full project regression

```tcl
cd D:/uvm_projects/snoop_bus_arbiter_uvm/tb/run
do run_phaseg_full_regression.do
```

## Recommended order for presentation/demo

1. `run_smoke_test.do`
2. `run_arb_4way_test.do`
3. `run_snoop_staggered_mix_test.do`
4. `run_grant_addr_consistency_test.do`
5. `run_phasef_regression_test.do`

## Final status after Phase G

At this point the project contains:

- bring-up tests
- requester and command tests
- supplier tests
- arbitration tests
- snoop-response tests
- grant/state tests
- constrained-random / closure tests
- final regression helper scripts

See `TEST_CATALOG.md` for the complete list.


Phase G v2 fix: regression scripts now use `vsim -onfinish stop` instead of calling `onfinish` before elaboration.


Phase G v4 note: full-regression wrapper scripts are stable, and random_test was tightened to a single-request constrained-random sanity test so it can participate safely in full regression.
