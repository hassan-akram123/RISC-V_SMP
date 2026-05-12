class grant_base_seq extends base_seq;
  `uvm_object_utils(grant_base_seq)

  function new(string name = "grant_base_seq");
    super.new(name);
  endfunction

  task send_grant_txn(requester_e req_id,
                      cmd_e       cmd,
                      bit [31:0]  addr,
                      bit [1:0]   src,
                      bit         d0_hit,
                      bit         d1_hit,
                      bit         d0_has_data,
                      bit         d1_has_data,
                      bit         l2_hit,
                      bit         l2_has_data,
                      int unsigned beats = 2);
    snoop_txn tr;
    tr = snoop_txn::type_id::create($sformatf("tr_grant_%08h", addr));
    tr.req_id       = req_id;
    tr.cmd          = cmd;
    tr.addr         = addr;
    tr.src          = src;
    tr.d0_hit       = d0_hit;
    tr.d1_hit       = d1_hit;
    tr.d0_has_data  = d0_has_data;
    tr.d1_has_data  = d1_has_data;
    tr.l2_hit       = l2_hit;
    tr.l2_has_data  = l2_has_data;
    tr.num_beats    = beats;

    if (!tr.needs_data()) begin
      tr.num_beats    = 1;
      tr.d0_has_data  = 0;
      tr.d1_has_data  = 0;
      tr.l2_has_data  = 0;
    end

    send_txn(tr);
  endtask
endclass

class i_grant_i0_seq extends grant_base_seq;
  `uvm_object_utils(i_grant_i0_seq)
  function new(string name = "i_grant_i0_seq"); super.new(name); endfunction
  task body();
    send_grant_txn(REQ_I0, CMD_GETS, 32'h7100_0010, 2'd0, 0, 0, 0, 0, 1, 1, 2);
  endtask
endclass

class i_grant_i1_seq extends grant_base_seq;
  `uvm_object_utils(i_grant_i1_seq)
  function new(string name = "i_grant_i1_seq"); super.new(name); endfunction
  task body();
    send_grant_txn(REQ_I1, CMD_GETS, 32'h7100_0020, 2'd1, 1, 0, 1, 0, 0, 0, 1);
  endtask
endclass

class d_gets_s_state_seq extends grant_base_seq;
  `uvm_object_utils(d_gets_s_state_seq)
  function new(string name = "d_gets_s_state_seq"); super.new(name); endfunction
  task body();
    send_grant_txn(REQ_D0, CMD_GETS, 32'h7200_0010, 2'd2, 0, 1, 0, 1, 0, 0, 2);
  endtask
endclass

class d_gets_e_state_seq extends grant_base_seq;
  `uvm_object_utils(d_gets_e_state_seq)
  function new(string name = "d_gets_e_state_seq"); super.new(name); endfunction
  task body();
    send_grant_txn(REQ_D1, CMD_GETS, 32'h7200_0020, 2'd3, 0, 0, 0, 0, 1, 1, 2);
  endtask
endclass

class d_getm_m_state_seq extends grant_base_seq;
  `uvm_object_utils(d_getm_m_state_seq)
  function new(string name = "d_getm_m_state_seq"); super.new(name); endfunction
  task body();
    send_grant_txn(REQ_D0, CMD_GETM, 32'h7200_0030, 2'd2, 0, 0, 0, 0, 1, 1, 3);
  endtask
endclass

class d_upgr_m_state_seq extends grant_base_seq;
  `uvm_object_utils(d_upgr_m_state_seq)
  function new(string name = "d_upgr_m_state_seq"); super.new(name); endfunction
  task body();
    send_grant_txn(REQ_D1, CMD_UPGR, 32'h7200_0040, 2'd3, 1, 0, 0, 0, 0, 0, 1);
  endtask
endclass

class d_wb_i_state_seq extends grant_base_seq;
  `uvm_object_utils(d_wb_i_state_seq)
  function new(string name = "d_wb_i_state_seq"); super.new(name); endfunction
  task body();
    send_grant_txn(REQ_D0, CMD_WB, 32'h7200_0050, 2'd2, 0, 0, 0, 0, 0, 0, 1);
  endtask
endclass

class grant_addr_consistency_seq extends grant_base_seq;
  `uvm_object_utils(grant_addr_consistency_seq)
  function new(string name = "grant_addr_consistency_seq"); super.new(name); endfunction
  task body();
    send_grant_txn(REQ_D0, CMD_GETS, 32'h7300_0010, 2'd2, 1, 0, 0, 0, 1, 1, 2);
    send_grant_txn(REQ_D1, CMD_GETM, 32'h7300_0020, 2'd3, 0, 0, 0, 0, 1, 1, 2);
    send_grant_txn(REQ_D0, CMD_WB,   32'h7300_0030, 2'd2, 0, 0, 0, 0, 0, 0, 1);
  endtask
endclass
