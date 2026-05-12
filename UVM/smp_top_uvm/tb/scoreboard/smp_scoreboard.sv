class smp_scoreboard extends uvm_component;
  `uvm_component_utils(smp_scoreboard)

  uvm_analysis_imp #(smp_obs_item, smp_scoreboard) analysis_export;
  smp_test_cfg cfg;

  int unsigned c0_pc_progress;
  int unsigned c1_pc_progress;

  int unsigned ar_count;
  int unsigned r_last_count;
  int unsigned aw_count;
  int unsigned w_last_count;
  int unsigned b_count;

  int unsigned i_req_count;
  int unsigned d_req_count;
  int unsigned gets_count;
  int unsigned getm_count;
  int unsigned upgr_count;
  int unsigned wb_count;
  int unsigned i_grant_count;
  int unsigned d_grant_count;
  int unsigned line_fill_count;

  bit observed_boot_fetch;
  bit observed_i0_fetch;
  bit observed_i1_fetch;
  bit observed_shared_d0;
  bit observed_shared_d1;
  bit observed_axi_read;
  bit observed_bus_refill;
  bit observed_data_contention;
  bit observed_both_shared_state;
  bit saw_inferred_i_to_m;
  bit saw_inferred_m_to_i;
  bit saw_inferred_share_or_upgrade;
  bit saw_modified_to_shared;
  bit saw_shared_to_modified;
  bit observed_c0_success_pc;
  bit observed_c1_success_pc;
  bit observed_c0_fail_pc;
  bit observed_c1_fail_pc;

  logic [31:0] last_pc0;
  logic [31:0] last_pc1;

  int c0_state;
  int c1_state;

  function new(string name = "smp_scoreboard", uvm_component parent = null);
    super.new(name, parent);
    analysis_export = new("analysis_export", this);
    reset_counters();
  endfunction

  function void reset_counters();
    c0_pc_progress = 0;
    c1_pc_progress = 0;
    ar_count = 0;
    r_last_count = 0;
    aw_count = 0;
    w_last_count = 0;
    b_count = 0;
    i_req_count = 0;
    d_req_count = 0;
    gets_count = 0;
    getm_count = 0;
    upgr_count = 0;
    wb_count = 0;
    i_grant_count = 0;
    d_grant_count = 0;
    line_fill_count = 0;

    observed_boot_fetch = 0;
    observed_i0_fetch = 0;
    observed_i1_fetch = 0;
    observed_shared_d0 = 0;
    observed_shared_d1 = 0;
    observed_axi_read = 0;
    observed_bus_refill = 0;
    observed_data_contention = 0;
    observed_both_shared_state = 0;
    saw_inferred_i_to_m = 0;
    saw_inferred_m_to_i = 0;
    saw_inferred_share_or_upgrade = 0;
    saw_modified_to_shared = 0;
    saw_shared_to_modified = 0;
    observed_c0_success_pc = 0;
    observed_c1_success_pc = 0;
    observed_c0_fail_pc = 0;
    observed_c1_fail_pc = 0;

    last_pc0 = BOOT_BASE;
    last_pc1 = BOOT_BASE;
    c0_state = MESI_I;
    c1_state = MESI_I;
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(smp_test_cfg)::get(this, "", "cfg", cfg))
      `uvm_fatal("NOCFG", "smp_scoreboard requires smp_test_cfg")
  endfunction

  function void write(smp_obs_item t);
    case (t.kind)
      OBS_PC_PROGRESS: begin
        if (t.core_id == 0) begin
          c0_pc_progress++;
          last_pc0 = t.pc;
          if (cfg.require_c0_success_pc && (t.pc == cfg.c0_success_pc)) observed_c0_success_pc = 1'b1;
          if (cfg.forbid_c0_fail_pc   && (t.pc == cfg.c0_fail_pc))       observed_c0_fail_pc    = 1'b1;
        end
        else if (t.core_id == 1) begin
          c1_pc_progress++;
          last_pc1 = t.pc;
          if (cfg.require_c1_success_pc && (t.pc == cfg.c1_success_pc)) observed_c1_success_pc = 1'b1;
          if (cfg.forbid_c1_fail_pc   && (t.pc == cfg.c1_fail_pc))       observed_c1_fail_pc    = 1'b1;
        end
      end

      OBS_AXI_AR: begin
        ar_count++;
        observed_axi_read = 1'b1;
      end

      OBS_AXI_R_LAST: r_last_count++;
      OBS_AXI_AW:     aw_count++;
      OBS_AXI_W_LAST: w_last_count++;
      OBS_AXI_B:      b_count++;

      OBS_BUS_REQ: begin
        if (t.src inside {REQ_I0, REQ_I1}) begin
          i_req_count++;
          if (t.addr == BOOT_BASE)
            observed_boot_fetch = 1'b1;
          if (t.src == REQ_I0)
            observed_i0_fetch = 1'b1;
          if (t.src == REQ_I1)
            observed_i1_fetch = 1'b1;
        end
        else begin
          d_req_count++;
        end

        case (t.cmd)
          CMD_GETS: gets_count++;
          CMD_GETM: getm_count++;
          CMD_UPGR: upgr_count++;
          CMD_WB  : wb_count++;
          default : begin end
        endcase

        if ((t.src == REQ_D0) && (t.addr == SHARED_ADDR)) begin
          observed_shared_d0 = 1'b1;
          if (observed_shared_d1)
            observed_data_contention = 1'b1;
        end

        if ((t.src == REQ_D1) && (t.addr == SHARED_ADDR)) begin
          observed_shared_d1 = 1'b1;
          if (observed_shared_d0)
            observed_data_contention = 1'b1;
        end
      end

      OBS_I_GRANT: i_grant_count++;

      OBS_D_GRANT: begin
        d_grant_count++;
        if (t.ok && (t.addr == SHARED_ADDR)) begin
          if (t.dst == REQ_D0) begin
            case (t.state)
              2'd3: begin
                if (c1_state == MESI_M) saw_inferred_m_to_i = 1'b1;
                if (c0_state == MESI_I) saw_inferred_i_to_m = 1'b1;
                if (c1_state == MESI_S) begin
                  saw_inferred_share_or_upgrade = 1'b1;
                  saw_shared_to_modified = 1'b1;
                end
                c0_state = MESI_M;
                c1_state = MESI_I;
              end
              2'd1: begin
                if (c1_state == MESI_M) begin
                  saw_inferred_share_or_upgrade = 1'b1;
                  saw_modified_to_shared = 1'b1;
                end
                c0_state = MESI_S;
                c1_state = MESI_S;
                observed_both_shared_state = 1'b1;
              end
              default: begin end
            endcase
          end

          if (t.dst == REQ_D1) begin
            case (t.state)
              2'd3: begin
                if (c0_state == MESI_M) saw_inferred_m_to_i = 1'b1;
                if (c1_state == MESI_I) saw_inferred_i_to_m = 1'b1;
                if (c0_state == MESI_S) begin
                  saw_inferred_share_or_upgrade = 1'b1;
                  saw_shared_to_modified = 1'b1;
                end
                c1_state = MESI_M;
                c0_state = MESI_I;
              end
              2'd1: begin
                if (c0_state == MESI_M) begin
                  saw_inferred_share_or_upgrade = 1'b1;
                  saw_modified_to_shared = 1'b1;
                end
                c0_state = MESI_S;
                c1_state = MESI_S;
                observed_both_shared_state = 1'b1;
              end
              default: begin end
            endcase
          end
        end
      end

      OBS_BUS_DATA: begin
        line_fill_count++;
        observed_bus_refill = 1'b1;
      end

      default: begin end
    endcase
  endfunction

  protected function void fail_if(bit condition, string msg);
    if (condition)
      `uvm_error(get_type_name(), msg)
  endfunction

  function void check_phase(uvm_phase phase);
    super.check_phase(phase);

    `uvm_info(get_type_name(),
      $sformatf({"Summary for %s | core_progress=(%0d,%0d) | req I/D=(%0d/%0d) | ",
                 "grants I/D=(%0d/%0d) | GETS/GETM/UPGR/WB=(%0d/%0d/%0d/%0d) | ",
                 "AXI AR/R/AW/W/B=(%0d/%0d/%0d/%0d/%0d) | fills=%0d"},
                 cfg.test_id,
                 c0_pc_progress, c1_pc_progress,
                 i_req_count, d_req_count,
                 i_grant_count, d_grant_count,
                 gets_count, getm_count, upgr_count, wb_count,
                 ar_count, r_last_count, aw_count, w_last_count, b_count,
                 line_fill_count),
      UVM_LOW)

    fail_if(cfg.require_core0_progress && (c0_pc_progress == 0),
            "Core0 made no forward progress");
    fail_if(cfg.require_core1_progress && (c1_pc_progress == 0),
            "Core1 made no forward progress");
    fail_if(cfg.require_boot_fetch && !observed_boot_fetch,
            "Boot fetch at BOOT_BASE was not observed");
    fail_if(cfg.require_i0_fetch && !observed_i0_fetch,
            "Instruction traffic from core0 was not observed");
    fail_if(cfg.require_i1_fetch && !observed_i1_fetch,
            "Instruction traffic from core1 was not observed");
    fail_if(cfg.require_axi_read && !observed_axi_read,
            "AXI read activity was not observed");
    fail_if(cfg.require_bus_refill && !observed_bus_refill,
            "Shared data refill completion was not observed");
    fail_if(cfg.require_shared_d0 && !observed_shared_d0,
            "Shared-line D-cache traffic from core0 was not observed");
    fail_if(cfg.require_shared_d1 && !observed_shared_d1,
            "Shared-line D-cache traffic from core1 was not observed");
    fail_if(cfg.require_data_contention && !observed_data_contention,
            "Shared-line contention was not observed");
    fail_if(cfg.require_i_to_m && !saw_inferred_i_to_m,
            "Expected inferred I->M transition was not observed");
    fail_if(cfg.require_m_to_i && !saw_inferred_m_to_i,
            "Expected inferred M->I transition was not observed");
    fail_if(cfg.require_share_or_upgrade && !saw_inferred_share_or_upgrade,
            "Expected inferred share/upgrade behavior was not observed");
    fail_if(cfg.require_both_shared_state && !observed_both_shared_state,
            "Expected both caches to reach shared state on the shared line");
    fail_if(cfg.require_modified_to_shared && !saw_modified_to_shared,
            "Expected modified-to-shared downgrade behavior was not observed");
    fail_if(cfg.require_shared_to_modified && !saw_shared_to_modified,
            "Expected shared-to-modified upgrade behavior was not observed");
    fail_if(cfg.require_no_getm && (getm_count != 0),
            $sformatf("Expected zero GETM transactions, observed %0d", getm_count));
    fail_if(cfg.require_c0_success_pc && !observed_c0_success_pc,
            $sformatf("Core0 did not reach success PC 0x%08h", cfg.c0_success_pc));
    fail_if(cfg.require_c1_success_pc && !observed_c1_success_pc,
            $sformatf("Core1 did not reach success PC 0x%08h", cfg.c1_success_pc));
    fail_if(cfg.forbid_c0_fail_pc && observed_c0_fail_pc,
            $sformatf("Core0 reached fail PC 0x%08h", cfg.c0_fail_pc));
    fail_if(cfg.forbid_c1_fail_pc && observed_c1_fail_pc,
            $sformatf("Core1 reached fail PC 0x%08h", cfg.c1_fail_pc));

    fail_if(i_req_count < cfg.min_i_req_count,
            $sformatf("Instruction request count below minimum: got %0d need %0d",
                      i_req_count, cfg.min_i_req_count));
    fail_if(d_req_count < cfg.min_d_req_count,
            $sformatf("Data request count below minimum: got %0d need %0d",
                      d_req_count, cfg.min_d_req_count));
    fail_if(i_grant_count < cfg.min_i_grant_count,
            $sformatf("Instruction grant count below minimum: got %0d need %0d",
                      i_grant_count, cfg.min_i_grant_count));
    fail_if(d_grant_count < cfg.min_d_grant_count,
            $sformatf("Data grant count below minimum: got %0d need %0d",
                      d_grant_count, cfg.min_d_grant_count));
    fail_if(gets_count < cfg.min_gets_count,
            $sformatf("GETS count below minimum: got %0d need %0d",
                      gets_count, cfg.min_gets_count));
    fail_if(getm_count < cfg.min_getm_count,
            $sformatf("GETM count below minimum: got %0d need %0d",
                      getm_count, cfg.min_getm_count));
    fail_if(line_fill_count < cfg.min_line_fill_count,
            $sformatf("Completed line fills below minimum: got %0d need %0d",
                      line_fill_count, cfg.min_line_fill_count));
  endfunction
endclass
