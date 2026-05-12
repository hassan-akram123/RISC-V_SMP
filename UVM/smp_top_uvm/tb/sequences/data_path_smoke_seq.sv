class data_path_smoke_seq extends smp_base_seq;
  `uvm_object_utils(data_path_smoke_seq)

  function new(string name = "data_path_smoke_seq");
    super.new(name);
  endfunction

  task body();
    if (cfg == null)
      `uvm_fatal("NOCFG", "data_path_smoke_seq requires cfg")

    case (cfg.test_id)
      "shared_line_read_sharing_test"            : build_shared_line_read_sharing_program();
      "shared_line_read_stability_test"          : build_shared_line_read_sharing_program();
      "remote_write_read_visibility_test"        : build_remote_write_read_visibility_program();
      "cross_core_write_read_exchange_test"      : build_remote_write_read_visibility_program();
      "shared_line_update_visibility_smoke_test" : build_remote_write_read_visibility_program();
      "shared_line_write_observe_stability_test" : build_remote_write_read_visibility_program();
      "shared_line_upgrade_visibility_test"      : build_shared_to_modified_upgrade_program();
      "ownership_handoff_visibility_test"   : build_modified_ownership_transfer_program();
      "remote_read_downgrade_test"          : build_remote_read_downgrade_program();
      "shared_to_modified_upgrade_test"     : build_shared_to_modified_upgrade_program();
      "modified_ownership_transfer_test"    : build_modified_ownership_transfer_program();
      "symmetric_store_ping_pong_test"      : build_symmetric_store_ping_pong_program();
      "conflict_set_store_sweep_test"       : build_conflict_set_store_sweep_program();
      "dirty_eviction_writeback_test"       : build_dirty_eviction_writeback_program();
      default                                : build_data_path_smoke_program();
    endcase

    if ((cfg.test_id == "shared_line_read_sharing_test") ||
        (cfg.test_id == "shared_line_read_stability_test")) begin
      startup_without_roles();
    end else if ((cfg.test_id == "shared_line_upgrade_visibility_test") ||
                 (cfg.test_id == "ownership_handoff_visibility_test") ||
                 (cfg.test_id == "remote_read_downgrade_test") ||
                 (cfg.test_id == "shared_to_modified_upgrade_test") ||
                 (cfg.test_id == "modified_ownership_transfer_test")) begin
      startup_with_roles_from_reset(64'd0, 64'd1);
    end else if ((cfg.test_id == "remote_write_read_visibility_test") ||
                 (cfg.test_id == "cross_core_write_read_exchange_test") ||
                 (cfg.test_id == "shared_line_update_visibility_smoke_test") ||
                 (cfg.test_id == "shared_line_write_observe_stability_test") ||
                 (cfg.test_id == "symmetric_store_ping_pong_test") ||
                 (cfg.test_id == "conflict_set_store_sweep_test") ||
                 (cfg.test_id == "dirty_eviction_writeback_test")) begin
      startup_without_roles();
    end else begin
      startup_with_roles(64'd0, 64'd1);
    end
  endtask
endclass
