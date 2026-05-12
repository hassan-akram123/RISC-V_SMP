# SMP Top UVM final baseline package

This package is organized into three validated bins:

1. **Bring-up bin**
   - `boot_sanity_test`
   - `dual_core_fetch_test`
   - regression: `tb/run/run_bringup_regression.do`

2. **Foundation bin**
   - `data_path_smoke_test`
   - `reset_recovery_test`
   - `sustained_fetch_test`
   - regression: `tb/run/run_foundation_regression.do`

3. **Coherence writer/reader bin**
   - `remote_write_read_visibility_test`
   - `cross_core_write_read_exchange_test`
   - `shared_line_update_visibility_smoke_test`
   - `shared_line_write_observe_stability_test`
   - regression: `tb/run/run_coherence_writer_reader_regression.do`

## Main regressions

- Functional baseline: `tb/run/run_functional_regression.do`
- Coherence writer/reader: `tb/run/run_coherence_writer_reader_regression.do`
- Full baseline: `tb/run/run_full_regression.do`

All validated regressions generate merged UCDB output under `tb/run/coverage_results/`.

## Recommended commands

```tcl
cd D:/smp_uvm/smp_top_uvm_final_baseline/tb/run
do run_bringup_regression.do
do run_foundation_regression.do
do run_coherence_writer_reader_regression.do
do run_full_regression.do
```

## Notes

- This final baseline intentionally excludes unstable regression-default tests.
- `shared_line_read_stability_test` is retained as an optional individual coherence check, but it is not part of the default writer/reader regression bundle.


## Coverage push

This package adds an optional `coverage_push` bin aimed at increasing bus-command, D-state, branch, and toggle coverage. Run it with `do run_coverage_push_regression.do`. To merge it with the validated baseline regression, use `do run_coverage_goal_regression.do`.


Official all-in-one regression command from `tb/run`:

```tcl
do run_all_in_one_regression.do
```

Official merged UCDB:

```
coverage_results/all_in_one_regression_merged.ucdb
```
