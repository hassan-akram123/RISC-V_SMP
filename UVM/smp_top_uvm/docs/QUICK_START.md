# Quick start

## Run one bin at a time

```tcl
cd D:/smp_uvm/smp_top_uvm_final_baseline/tb/run

do run_bringup_regression.do
do run_foundation_regression.do
do run_coherence_writer_reader_regression.do
```

## Run the full validated baseline

```tcl
do run_full_regression.do
```

## Useful individual tests

```tcl
do run_boot_sanity_test.do
do run_dual_core_fetch_test.do
do run_data_path_smoke_test.do
do run_remote_write_read_visibility_test.do
do run_cross_core_write_read_exchange_test.do
do run_shared_line_update_visibility_smoke_test.do
do run_shared_line_write_observe_stability_test.do
```

## Optional retained single test

```tcl
do run_shared_line_read_stability_test.do
```


## Coverage push flow

```tcl
cd D:/smp_uvm/smp_top_uvm_coverage_goal_v1/tb/run
do run_coverage_push_regression.do
do run_coverage_goal_regression.do
```


## Official overall coverage regression

Run this from `tb/run` for one overall merged UCDB across bring-up, foundation, writer/reader coherence, and coverage-push tests:

```tcl
do run_all_in_one_regression.do
```

Final merged UCDB:

```
coverage_results/all_in_one_regression_merged.ucdb
```
