# Validated test bins

## Bin 1: Bring-up

Purpose: make sure the environment, reset flow, and dual-core instruction-side behavior are alive before deeper checks.

Included tests:
- `boot_sanity_test`
- `dual_core_fetch_test`

Regression script:
- `tb/run/run_bringup_regression.do`

Artifacts generated:
- `coverage_results/bringup_regression_merged.ucdb`
- `coverage_results/bringup_regression_merged_report.txt`
- `coverage_results/bringup_regression_merged_html/`

## Bin 2: Foundation

Purpose: keep the stable data-path and reset-recovery checks separate from bring-up.

Included tests:
- `data_path_smoke_test`
- `reset_recovery_test`
- `sustained_fetch_test`

Regression script:
- `tb/run/run_foundation_regression.do`

Artifacts generated:
- `coverage_results/foundation_regression_merged.ucdb`
- `coverage_results/foundation_regression_merged_report.txt`
- `coverage_results/foundation_regression_merged_html/`

## Bin 3: Coherence writer/reader

Purpose: validated cross-core coherence-style visibility checks centered on one-core write / other-core observe flows.

Included tests:
- `remote_write_read_visibility_test`
- `cross_core_write_read_exchange_test`
- `shared_line_update_visibility_smoke_test`
- `shared_line_write_observe_stability_test`

Regression script:
- `tb/run/run_coherence_writer_reader_regression.do`

Artifacts generated:
- `coverage_results/coherence_writer_reader_regression_merged.ucdb`
- `coverage_results/coherence_writer_reader_regression_merged_report.txt`
- `coverage_results/coherence_writer_reader_regression_merged_html/`

## Optional retained single test

- `shared_line_read_stability_test`

This test is kept in-package as an optional individual run, but it is not part of the default writer/reader regression bundle for this final baseline.

## Full baseline regression

Script:
- `tb/run/run_full_regression.do`

This runs all three validated bins and merges their UCDBs into:
- `coverage_results/full_baseline_regression_merged.ucdb`
- `coverage_results/full_baseline_regression_merged_report.txt`
- `coverage_results/full_baseline_regression_merged_html/`


## Coverage Push (optional)

- `symmetric_store_ping_pong_test`
- `conflict_set_store_sweep_test`
- `dirty_eviction_writeback_test`

These tests are intended to push `cp_bus_cmd`, `cp_d_state`, grant, and structural coverage beyond the validated baseline.


## Overall regression

- `run_all_in_one_regression.do`
- `run_final_regression.do`

These run every validated bin in this package and generate:

- `coverage_results/all_in_one_regression_merged.ucdb`
