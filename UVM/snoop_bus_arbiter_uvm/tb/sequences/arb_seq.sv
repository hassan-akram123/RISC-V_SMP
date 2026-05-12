class arb_base_seq extends base_seq;
  `uvm_object_utils(arb_base_seq)

  function new(string name = "arb_base_seq");
    super.new(name);
  endfunction

  task send_arb_txn(requester_e winner,
                    bit [3:0] mask,
                    cmd_e cmd,
                    bit [31:0] addr,
                    bit [1:0] src,
                    supplier_e supplier = SUP_L2,
                    int unsigned beats = 2,
                    bit any_l1_hit = 0);
    snoop_txn tr;
    tr = snoop_txn::type_id::create($sformatf("tr_%s_%08h", winner.name(), addr));
    tr.req_id    = winner;
    tr.req_mask  = mask;
    tr.cmd       = cmd;
    tr.addr      = addr;
    tr.src       = src;
    tr.num_beats = beats;

    tr.d0_hit       = 1'b0;
    tr.d1_hit       = 1'b0;
    tr.d0_has_data  = 1'b0;
    tr.d1_has_data  = 1'b0;
    tr.l2_hit       = 1'b0;
    tr.l2_has_data  = 1'b0;

    case (supplier)
      SUP_D0: begin
        tr.d0_has_data = 1'b1;
        tr.d0_hit      = 1'b1;
      end
      SUP_D1: begin
        tr.d1_has_data = 1'b1;
        tr.d1_hit      = 1'b1;
      end
      SUP_L2: begin
        tr.l2_hit      = 1'b1;
        tr.l2_has_data = tr.needs_data();
      end
      default: begin
      end
    endcase

    if (!tr.needs_data())
      tr.num_beats = 1;

    if (any_l1_hit) begin
      if (supplier == SUP_L2) begin
        tr.d0_hit = 1'b1;
      end
    end

    send_txn(tr);
  endtask
endclass

class arb_2way_i_seq extends arb_base_seq;
  `uvm_object_utils(arb_2way_i_seq)
  function new(string name = "arb_2way_i_seq");
    super.new(name);
  endfunction

  task body();
    // Start rr_ptr=0, so i0 should win first, then i1 on the second turn.
    send_arb_txn(REQ_I0, 4'b0011, CMD_GETS, 32'h5100_0010, 2'd0, SUP_L2, 2);
    send_arb_txn(REQ_I1, 4'b0011, CMD_GETS, 32'h5100_0020, 2'd1, SUP_L2, 2);
  endtask
endclass

class arb_2way_d_seq extends arb_base_seq;
  `uvm_object_utils(arb_2way_d_seq)
  function new(string name = "arb_2way_d_seq");
    super.new(name);
  endfunction

  task body();
    // Start rr_ptr=0. With only d0/d1 valid, d0 wins first, then d1 next.
    send_arb_txn(REQ_D0, 4'b1100, CMD_GETM, 32'h5200_0100, 2'd2, SUP_L2, 2);
    send_arb_txn(REQ_D1, 4'b1100, CMD_GETM, 32'h5200_0200, 2'd3, SUP_L2, 2);
  endtask
endclass

class arb_3way_seq extends arb_base_seq;
  `uvm_object_utils(arb_3way_seq)
  function new(string name = "arb_3way_seq");
    super.new(name);
  endfunction

  task body();
    // Valid set is {i1,d0,d1}. Start rr_ptr=0 => i1 first, then d0, then d1.
    send_arb_txn(REQ_I1, 4'b1110, CMD_GETS, 32'h5300_0010, 2'd1, SUP_L2, 2);
    send_arb_txn(REQ_D0, 4'b1110, CMD_GETM, 32'h5300_0020, 2'd2, SUP_D1, 2);
    send_arb_txn(REQ_D1, 4'b1110, CMD_UPGR, 32'h5300_0030, 2'd3, SUP_NONE, 1, 1'b1);
  endtask
endclass

class arb_4way_seq extends arb_base_seq;
  `uvm_object_utils(arb_4way_seq)
  function new(string name = "arb_4way_seq");
    super.new(name);
  endfunction

  task body();
    // All four requesters valid. Expected round-robin order from reset is i0,i1,d0,d1.
    send_arb_txn(REQ_I0, 4'b1111, CMD_GETS, 32'h5400_0010, 2'd0, SUP_L2, 2);
    send_arb_txn(REQ_I1, 4'b1111, CMD_GETS, 32'h5400_0020, 2'd1, SUP_D0, 1);
    send_arb_txn(REQ_D0, 4'b1111, CMD_GETM, 32'h5400_0030, 2'd2, SUP_D1, 2);
    send_arb_txn(REQ_D1, 4'b1111, CMD_UPGR, 32'h5400_0040, 2'd3, SUP_NONE, 1, 1'b1);
  endtask
endclass

class back_to_back_req_seq extends arb_base_seq;
  `uvm_object_utils(back_to_back_req_seq)
  function new(string name = "back_to_back_req_seq");
    super.new(name);
  endfunction

  task body();
    // Mixed masks to make sure rr_ptr carries correctly between back-to-back transactions.
    // Reset rr=0
    send_arb_txn(REQ_D0, 4'b1100, CMD_GETM, 32'h5500_0010, 2'd2, SUP_L2, 2); // rr->3
    send_arb_txn(REQ_D1, 4'b1001, CMD_GETS, 32'h5500_0020, 2'd3, SUP_D0, 1); // rr->0
    send_arb_txn(REQ_I0, 4'b0011, CMD_GETS, 32'h5500_0030, 2'd0, SUP_L2, 2); // rr->1
    send_arb_txn(REQ_I1, 4'b0011, CMD_GETS, 32'h5500_0040, 2'd1, SUP_L2, 2); // rr->2
    send_arb_txn(REQ_D0, 4'b1110, CMD_GETM, 32'h5500_0050, 2'd2, SUP_D1, 2); // rr->3
    send_arb_txn(REQ_D1, 4'b1110, CMD_UPGR, 32'h5500_0060, 2'd3, SUP_NONE, 1, 1'b1); // rr->0
  endtask
endclass

class round_robin_fairness_seq extends arb_base_seq;
  `uvm_object_utils(round_robin_fairness_seq)
  function new(string name = "round_robin_fairness_seq");
    super.new(name);
  endfunction

  task body();
    // Two full rotations with all requesters constantly contending.
    send_arb_txn(REQ_I0, 4'b1111, CMD_GETS, 32'h5600_0010, 2'd0, SUP_L2, 2);
    send_arb_txn(REQ_I1, 4'b1111, CMD_GETS, 32'h5600_0020, 2'd1, SUP_L2, 2);
    send_arb_txn(REQ_D0, 4'b1111, CMD_GETM, 32'h5600_0030, 2'd2, SUP_L2, 2);
    send_arb_txn(REQ_D1, 4'b1111, CMD_UPGR, 32'h5600_0040, 2'd3, SUP_NONE, 1, 1'b1);

    send_arb_txn(REQ_I0, 4'b1111, CMD_GETS, 32'h5600_0050, 2'd0, SUP_D0, 1);
    send_arb_txn(REQ_I1, 4'b1111, CMD_GETS, 32'h5600_0060, 2'd1, SUP_D1, 1);
    send_arb_txn(REQ_D0, 4'b1111, CMD_GETM, 32'h5600_0070, 2'd2, SUP_L2, 3);
    send_arb_txn(REQ_D1, 4'b1111, CMD_WB,   32'h5600_0080, 2'd3, SUP_NONE, 1);
  endtask
endclass
