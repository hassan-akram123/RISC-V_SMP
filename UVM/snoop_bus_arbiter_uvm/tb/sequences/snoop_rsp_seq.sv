class snoop_rsp_base_seq extends base_seq;
  `uvm_object_utils(snoop_rsp_base_seq)

  function new(string name = "snoop_rsp_base_seq");
    super.new(name);
  endfunction

  task send_rsp_txn(requester_e req_id,
                    cmd_e       cmd,
                    bit [31:0]  addr,
                    bit [1:0]   src,
                    bit         d0_hit,
                    bit         d1_hit,
                    bit         d0_has_data,
                    bit         d1_has_data,
                    bit         l2_hit,
                    bit         l2_has_data,
                    int unsigned beats = 2,
                    int unsigned d0_ack_delay = 0,
                    int unsigned d1_ack_delay = 0,
                    int unsigned l2_ack_delay = 0);
    snoop_txn tr;
    tr = snoop_txn::type_id::create($sformatf("tr_rsp_%08h", addr));
    tr.req_id        = req_id;
    tr.cmd           = cmd;
    tr.addr          = addr;
    tr.src           = src;
    tr.d0_hit        = d0_hit;
    tr.d1_hit        = d1_hit;
    tr.d0_has_data   = d0_has_data;
    tr.d1_has_data   = d1_has_data;
    tr.l2_hit        = l2_hit;
    tr.l2_has_data   = l2_has_data;
    tr.num_beats     = beats;
    tr.d0_ack_delay  = d0_ack_delay;
    tr.d1_ack_delay  = d1_ack_delay;
    tr.l2_ack_delay  = l2_ack_delay;

    if (!tr.needs_data()) begin
      tr.num_beats = 1;
      tr.d0_has_data = 0;
      tr.d1_has_data = 0;
      tr.l2_has_data = 0;
    end

    send_txn(tr);
  endtask
endclass

class snoop_no_hit_seq extends snoop_rsp_base_seq;
  `uvm_object_utils(snoop_no_hit_seq)
  function new(string name = "snoop_no_hit_seq"); super.new(name); endfunction
  task body();
    send_rsp_txn(REQ_I0, CMD_GETS, 32'h6100_0010, 2'd0, 0, 0, 0, 0, 1, 1, 2, 0, 0, 0);
  endtask
endclass

class snoop_d0_hit_seq extends snoop_rsp_base_seq;
  `uvm_object_utils(snoop_d0_hit_seq)
  function new(string name = "snoop_d0_hit_seq"); super.new(name); endfunction
  task body();
    send_rsp_txn(REQ_I1, CMD_GETS, 32'h6200_0020, 2'd1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0);
  endtask
endclass

class snoop_d1_hit_seq extends snoop_rsp_base_seq;
  `uvm_object_utils(snoop_d1_hit_seq)
  function new(string name = "snoop_d1_hit_seq"); super.new(name); endfunction
  task body();
    send_rsp_txn(REQ_D0, CMD_GETM, 32'h6300_0030, 2'd2, 0, 1, 0, 1, 0, 0, 2, 0, 0, 0);
  endtask
endclass

class snoop_both_hit_data_seq extends snoop_rsp_base_seq;
  `uvm_object_utils(snoop_both_hit_data_seq)
  function new(string name = "snoop_both_hit_data_seq"); super.new(name); endfunction
  task body();
    // Both L1s claim data. Arbiter should prefer D0 supplier.
    send_rsp_txn(REQ_I1, CMD_GETS, 32'h6400_0040, 2'd1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0);
  endtask
endclass

class snoop_both_hit_no_data_seq extends snoop_rsp_base_seq;
  `uvm_object_utils(snoop_both_hit_no_data_seq)
  function new(string name = "snoop_both_hit_no_data_seq"); super.new(name); endfunction
  task body();
    // Both caches hit, neither supplies data. Grant state should still reflect an L1 hit.
    send_rsp_txn(REQ_D1, CMD_GETS, 32'h6500_0050, 2'd3, 1, 1, 0, 0, 1, 1, 2, 0, 0, 0);
  endtask
endclass

class snoop_delayed_ack_seq extends snoop_rsp_base_seq;
  `uvm_object_utils(snoop_delayed_ack_seq)
  function new(string name = "snoop_delayed_ack_seq"); super.new(name); endfunction
  task body();
    // Facts are reported immediately, but ACKs arrive at different times.
    send_rsp_txn(REQ_D0, CMD_GETM, 32'h6600_0060, 2'd2, 0, 0, 0, 0, 1, 1, 3, 2, 4, 1);
  endtask
endclass

class snoop_staggered_mix_seq extends snoop_rsp_base_seq;
  `uvm_object_utils(snoop_staggered_mix_seq)
  function new(string name = "snoop_staggered_mix_seq"); super.new(name); endfunction
  task body();
    send_rsp_txn(REQ_I0, CMD_GETS, 32'h6700_0070, 2'd0, 1, 0, 0, 0, 1, 1, 2, 3, 1, 5);
    send_rsp_txn(REQ_D1, CMD_UPGR, 32'h6700_0080, 2'd3, 1, 0, 0, 0, 0, 0, 1, 1, 2, 3);
  endtask
endclass
