# Coherence-directed scenarios (profiled on top of data_path_smoke_test)

These runs intentionally reuse the known-good `data_path_smoke_test` UVM class and sequence path.
The scenario is selected with `+SMP_SCENARIO=<scenario_name>` from the run script so the prior stable
functional tests remain unchanged.

Scenarios added in this package:
- shared_line_read_sharing_test
- remote_read_downgrade_test
- shared_to_modified_upgrade_test
- modified_ownership_transfer_test


## Added visibility-oriented coherence scenarios

These scenarios are layered on top of the stable `data_path_smoke_test` flow so they reuse the known-good UVM class and Questa launch path.

- `shared_line_read_stability_test`: longer shared-read loop on the same line for both cores, expecting repeated GETS and no GETM.
- `remote_write_read_visibility_test`: core0 writes the shared line, core1 later reads it back and must reach the success PC.
- `shared_line_upgrade_visibility_test`: both cores read first, then the writer updates the line and the peer must observe the new value at the success PC.
- `ownership_handoff_visibility_test`: one core writes first, the peer writes later, and the first core must eventually observe the peer's value at the success PC.


Validated writer/reader coherence combo tests in this package:
- shared_line_read_stability_test
- remote_write_read_visibility_test
- cross_core_write_read_exchange_test
- shared_line_update_visibility_smoke_test
- shared_line_write_observe_stability_test
