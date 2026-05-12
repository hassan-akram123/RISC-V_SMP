class phasef_rand_base_seq extends base_seq;
  int unsigned rr_ptr;
  int unsigned txn_idx;

  `uvm_object_utils(phasef_rand_base_seq)

  function new(string name = "phasef_rand_base_seq");
    super.new(name);
    rr_ptr  = 0;
    txn_idx = 0;
  endfunction

  function int unsigned popcount(bit [3:0] mask);
    return mask[0] + mask[1] + mask[2] + mask[3];
  endfunction

  function bit [3:0] random_mask(int unsigned min_count = 1,
                                 int unsigned max_count = 4);
    bit [3:0] mask;
    int unsigned target;
    mask   = 4'b0000;
    target = $urandom_range(max_count, min_count);
    while (popcount(mask) < target) begin
      mask[$urandom_range(3,0)] = 1'b1;
    end
    return mask;
  endfunction

  function requester_e winner_for_mask(bit [3:0] mask);
    int unsigned idx;
    for (int unsigned ofs = 0; ofs < 4; ofs++) begin
      idx = (rr_ptr + ofs) % 4;
      if (mask[idx])
        return requester_e'(idx[1:0]);
    end
    return REQ_I0;
  endfunction

  function void update_rr(requester_e winner);
    rr_ptr = (winner + 1) % 4;
  endfunction

  function bit [31:0] next_addr(requester_e req_id, cmd_e cmd);
    bit [31:0] a;
    a = 32'h8000_0000 + (txn_idx << 8) + (req_id << 4) + cmd;
    txn_idx++;
    return a;
  endfunction

  function supplier_e choose_supplier(requester_e req_id, cmd_e cmd);
    if (!(cmd inside {CMD_GETS, CMD_GETM}))
      return SUP_NONE;

    if (req_id inside {REQ_I0, REQ_I1}) begin
      case ($urandom_range(2,0))
        0: return SUP_D0;
        1: return SUP_D1;
        default: return SUP_L2;
      endcase
    end

    if (req_id == REQ_D0) begin
      if ($urandom_range(1,0))
        return SUP_D1;
      else
        return SUP_L2;
    end

    if ($urandom_range(1,0))
      return SUP_D0;
    return SUP_L2;
  endfunction

  task automatic init_txn(ref snoop_txn tr,
                          requester_e req_id,
                          bit [3:0] mask,
                          cmd_e cmd);
    tr = snoop_txn::type_id::create($sformatf("tr_%0d", txn_idx));
    tr.req_id       = req_id;
    tr.req_mask     = mask;
    tr.cmd          = cmd;
    tr.src          = req_id;
    tr.addr         = next_addr(req_id, cmd);
    tr.num_beats    = $urandom_range(3,1);
    tr.d0_hit       = 1'b0;
    tr.d1_hit       = 1'b0;
    tr.d0_has_data  = 1'b0;
    tr.d1_has_data  = 1'b0;
    tr.l2_hit       = 1'b0;
    tr.l2_has_data  = 1'b0;
    tr.d0_ack_delay = $urandom_range(2,0);
    tr.d1_ack_delay = $urandom_range(2,0);
    tr.l2_ack_delay = $urandom_range(2,0);
  endtask

  task automatic apply_supplier_policy(ref snoop_txn tr,
                                       supplier_e sup,
                                       input bit any_l1_hit = 0);
    case (sup)
      SUP_D0: begin
        tr.d0_hit      = 1'b1;
        tr.d0_has_data = 1'b1;
      end
      SUP_D1: begin
        tr.d1_hit      = 1'b1;
        tr.d1_has_data = 1'b1;
      end
      SUP_L2: begin
        tr.l2_hit      = 1'b1;
        tr.l2_has_data = tr.needs_data();
        if (any_l1_hit) begin
          if (tr.req_id == REQ_D0)
            tr.d1_hit = 1'b1;
          else if (tr.req_id == REQ_D1)
            tr.d0_hit = 1'b1;
          else
            tr.d0_hit = 1'b1;
        end
      end
      default: begin
      end
    endcase

    if (!tr.needs_data())
      tr.num_beats = 1;
  endtask

  task automatic send_randomized(input bit [3:0] mask,
                                 input cmd_e cmd,
                                 input supplier_e sup = SUP_NONE,
                                 input bit any_l1_hit = 0);
    snoop_txn tr;
    requester_e winner;
    winner = winner_for_mask(mask);
    init_txn(tr, winner, mask, cmd);
    apply_supplier_policy(tr, sup, any_l1_hit);
    send_txn(tr);
    update_rr(winner);
  endtask
endclass

class rand_basic_phasef_seq extends phasef_rand_base_seq;
  rand int unsigned num_txns;
  constraint c_num { num_txns inside {[8:12]}; }

  `uvm_object_utils(rand_basic_phasef_seq)

  function new(string name = "rand_basic_phasef_seq");
    super.new(name);
    num_txns = 10;
  endfunction

  task body();
    bit [3:0]  mask;
    requester_e winner;
    cmd_e      cmd;
    supplier_e sup;
    repeat (num_txns) begin
      mask   = random_mask(1,1);
      winner = winner_for_mask(mask);

      if (winner inside {REQ_I0, REQ_I1})
        cmd = CMD_GETS;
      else
        cmd = cmd_e'($urandom_range(3,0));

      if (cmd inside {CMD_GETS, CMD_GETM})
        sup = choose_supplier(winner, cmd);
      else
        sup = SUP_NONE;

      send_randomized(mask, cmd, sup,
                      (cmd == CMD_GETS) &&
                      (winner inside {REQ_D0, REQ_D1}) &&
                      (sup == SUP_L2) &&
                      ($urandom_range(1,0) == 1));
    end
  endtask
endclass

class rand_arb_mix_phasef_seq extends phasef_rand_base_seq;
  rand int unsigned num_txns;
  constraint c_num { num_txns inside {[8:12]}; }

  `uvm_object_utils(rand_arb_mix_phasef_seq)

  function new(string name = "rand_arb_mix_phasef_seq");
    super.new(name);
    num_txns = 10;
  endfunction

  task body();
    bit [3:0]  mask;
    requester_e winner;
    cmd_e      cmd;
    supplier_e sup;

    repeat (num_txns) begin
      mask   = random_mask(2,4);
      winner = winner_for_mask(mask);

      // Keep multi-request traffic legal: I winners issue GETS only.
      if (winner inside {REQ_I0, REQ_I1})
        cmd = CMD_GETS;
      else
        cmd = cmd_e'($urandom_range(3,0));

      if (cmd inside {CMD_GETS, CMD_GETM})
        sup = choose_supplier(winner, cmd);
      else
        sup = SUP_NONE;

      send_randomized(mask, cmd, sup,
                      (cmd == CMD_GETS) &&
                      (winner inside {REQ_D0, REQ_D1}) &&
                      (sup == SUP_L2) &&
                      ($urandom_range(1,0) == 1));
    end
  endtask
endclass

class coverage_closure_seq extends phasef_rand_base_seq;
  `uvm_object_utils(coverage_closure_seq)

  function new(string name = "coverage_closure_seq");
    super.new(name);
  endfunction

  task body();
    // Deterministic, legal closure sequence. No manual RR forcing.
    // The masks are chosen so the predicted winner remains aligned with DUT RR.

    // req_count = 1 basic feature closure
    send_randomized(4'b0001, CMD_GETS, SUP_L2,   0); // I0 GETS -> L2
    send_randomized(4'b0010, CMD_GETS, SUP_D0,   0); // I1 GETS -> D0
    send_randomized(4'b0100, CMD_GETS, SUP_D1,   0); // D0 GETS -> S
    send_randomized(4'b1000, CMD_GETS, SUP_L2,   0); // D1 GETS -> E
    send_randomized(4'b0100, CMD_GETM, SUP_L2,   0); // D0 GETM -> M
    send_randomized(4'b1000, CMD_GETM, SUP_D0,   0); // D1 GETM -> M
    send_randomized(4'b0100, CMD_UPGR, SUP_NONE, 0); // D0 UPGR -> M
    send_randomized(4'b1000, CMD_WB,   SUP_NONE, 0); // D1 WB   -> I

    // req_count = 2
    send_randomized(4'b0011, CMD_GETS, SUP_L2,   0); // I0 wins
    send_randomized(4'b0110, CMD_GETS, SUP_D0,   0); // I1 wins
    send_randomized(4'b1100, CMD_GETS, SUP_L2,   1); // D0 wins, S-state via L2 fallback with hit

    // req_count = 3
    send_randomized(4'b1110, CMD_GETS, SUP_L2,   0); // D1 wins

    // req_count = 4
    send_randomized(4'b1111, CMD_GETS, SUP_D1,   0); // I0 wins
  endtask
endclass
