class data_path_smoke_test extends smp_base_test;
  `uvm_component_utils(data_path_smoke_test)

  function new(string name = "data_path_smoke_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void configure_cfg();
    string scenario;
    super.configure_cfg();

    if ($value$plusargs("SMP_SCENARIO=%s", scenario)) begin
      case (scenario)
        "shared_line_read_sharing_test"      : cfg.apply_shared_line_read_sharing_profile();
        "shared_line_read_stability_test"       : cfg.apply_shared_line_read_stability_profile();
        "remote_write_read_visibility_test"     : cfg.apply_remote_write_read_visibility_profile();
        "cross_core_write_read_exchange_test"   : cfg.apply_cross_core_write_read_exchange_profile();
        "shared_line_update_visibility_smoke_test" : cfg.apply_shared_line_update_visibility_smoke_profile();
        "shared_line_write_observe_stability_test" : cfg.apply_shared_line_write_observe_stability_profile();
        "shared_line_upgrade_visibility_test"   : cfg.apply_shared_line_upgrade_visibility_profile();
        "ownership_handoff_visibility_test"  : cfg.apply_ownership_handoff_visibility_profile();
        "remote_read_downgrade_test"         : cfg.apply_remote_read_downgrade_profile();
        "shared_to_modified_upgrade_test"    : cfg.apply_shared_to_modified_upgrade_profile();
        "modified_ownership_transfer_test"   : cfg.apply_modified_ownership_transfer_profile();
        "symmetric_store_ping_pong_test"     : cfg.apply_symmetric_store_ping_pong_profile();
        "conflict_set_store_sweep_test"      : cfg.apply_conflict_set_store_sweep_profile();
        "dirty_eviction_writeback_test"      : cfg.apply_dirty_eviction_writeback_profile();
        default                               : cfg.apply_data_path_smoke_profile();
      endcase
    end
    else begin
      cfg.apply_data_path_smoke_profile();
    end
  endfunction

  task run_phase(uvm_phase phase);
    data_path_smoke_seq seq;
    phase.raise_objection(this);
    seq = data_path_smoke_seq::type_id::create("seq");
    seq.cfg = cfg;
    seq.start(env.ctrl_agent.seqr);
    phase.drop_objection(this);
  endtask
endclass
