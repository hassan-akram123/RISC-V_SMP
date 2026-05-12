class snoop_scoreboard extends uvm_component;
  `uvm_component_utils(snoop_scoreboard)

  uvm_analysis_imp_exp #(snoop_txn, snoop_scoreboard) exp_imp;
  uvm_analysis_imp_act #(snoop_txn, snoop_scoreboard) act_imp;

  snoop_txn exp_q[$];
  snoop_txn act_q[$];
  int pass_count;
  int fail_count;

  function new(string name = "snoop_scoreboard", uvm_component parent = null);
    super.new(name, parent);
    exp_imp = new("exp_imp", this);
    act_imp = new("act_imp", this);
    pass_count = 0;
    fail_count = 0;
  endfunction

  function void write_exp(snoop_txn t);
    snoop_txn c;
    $cast(c, t.clone());
    exp_q.push_back(c);
    compare_if_possible();
  endfunction

  function void write_act(snoop_txn t);
    snoop_txn c;
    $cast(c, t.clone());
    act_q.push_back(c);
    compare_if_possible();
  endfunction

  function void compare_if_possible();
    snoop_txn exp;
    snoop_txn act;
    supplier_e exp_sup;
    bit this_failed;

    while ((exp_q.size() > 0) && (act_q.size() > 0)) begin
      exp = exp_q.pop_front();
      act = act_q.pop_front();
      this_failed = 0;

      if (act.req_id != exp.req_id) begin
        this_failed = 1;
        `uvm_error("SCB", $sformatf("Requester mismatch exp=%s act=%s", exp.req_id.name(), act.req_id.name()))
      end
      if (act.cmd != exp.cmd) begin
        this_failed = 1;
        `uvm_error("SCB", $sformatf("CMD mismatch exp=%s act=%s", exp.cmd.name(), act.cmd.name()))
      end
      if (act.addr != exp.addr) begin
        this_failed = 1;
        `uvm_error("SCB", $sformatf("ADDR mismatch exp=0x%08h act=0x%08h", exp.addr, act.addr))
      end
      if (act.src != exp.src) begin
        this_failed = 1;
        `uvm_error("SCB", $sformatf("SRC mismatch exp=%0d act=%0d", exp.src, act.src))
      end

      exp_sup = exp.expected_supplier();
      if (act.act_supplier != exp_sup) begin
        this_failed = 1;
        `uvm_error("SCB", $sformatf("Supplier mismatch exp=%s act=%s", exp_sup.name(), act.act_supplier.name()))
      end

      if (exp.needs_data()) begin
        if (act.act_num_beats != exp.num_beats) begin
          this_failed = 1;
          `uvm_error("SCB", $sformatf("Beat count mismatch exp=%0d act=%0d", exp.num_beats, act.act_num_beats))
        end
      end else begin
        if (act.act_num_beats != 0) begin
          this_failed = 1;
          `uvm_error("SCB", $sformatf("Expected no data beats, got %0d", act.act_num_beats))
        end
      end

      if ((exp.req_id inside {REQ_I0, REQ_I1}) && (act.act_grant_kind != GNT_I)) begin
        this_failed = 1;
        `uvm_error("SCB", "Expected I grant but saw different grant")
      end

      if ((exp.req_id inside {REQ_D0, REQ_D1}) && (act.act_grant_kind != GNT_D)) begin
        this_failed = 1;
        `uvm_error("SCB", "Expected D grant but saw different grant")
      end

      if ((act.act_grant_kind == GNT_I) || (act.act_grant_kind == GNT_D)) begin
        // DUT drives grant destination using the original requester source encoding:
        // I0=0, I1=1, D0=2, D1=3. So compare against exp.src rather than collapsing
        // D0/D1 down to 0/1.
        if (act.act_grant_dst != exp.src[1:0]) begin
          this_failed = 1;
          `uvm_error("SCB", $sformatf("Grant dst mismatch exp_src=%0d act=%0d", exp.src[1:0], act.act_grant_dst))
        end
      end

      if (exp.req_id inside {REQ_D0, REQ_D1}) begin
        if (act.act_grant_state != exp.expected_grant_state()) begin
          this_failed = 1;
          `uvm_error("SCB", $sformatf("Grant state mismatch exp=%0d act=%0d", exp.expected_grant_state(), act.act_grant_state))
        end
        if (act.act_grant_addr != exp.addr) begin
          this_failed = 1;
          `uvm_error("SCB", $sformatf("Grant addr mismatch exp=0x%08h act=0x%08h", exp.addr, act.act_grant_addr))
        end
      end

      if (this_failed) begin
        fail_count++;
        `uvm_info("SCB", {"FAIL: ", act.convert2string()}, UVM_LOW)
      end else begin
        pass_count++;
        `uvm_info("SCB", {"PASS: ", act.convert2string()}, UVM_LOW)
      end
    end
  endfunction

  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("SCB", $sformatf("Scoreboard summary: pass_count=%0d fail_count=%0d pending_exp=%0d pending_act=%0d",
              pass_count, fail_count, exp_q.size(), act_q.size()), UVM_NONE)
  endfunction
endclass
