class single_req_seq extends base_seq;
  `uvm_object_utils(single_req_seq)

  requester_e target_req;

  function new(string name = "single_req_seq");
    super.new(name);
    target_req = REQ_I0;
  endfunction

  task body();
    snoop_txn tr;
    tr = snoop_txn::type_id::create("tr_single_req");

    tr.req_id = target_req;
    case (target_req)
      REQ_I0: begin
        tr.cmd         = CMD_GETS;
        tr.addr        = 32'h1100_0040;
        tr.src         = 2'd0;
        tr.d0_hit      = 0;
        tr.d1_hit      = 0;
        tr.d0_has_data = 0;
        tr.d1_has_data = 0;
        tr.l2_hit      = 1;
        tr.l2_has_data = 1;
        tr.num_beats   = 2;
      end
      REQ_I1: begin
        tr.cmd         = CMD_GETS;
        tr.addr        = 32'h1200_0040;
        tr.src         = 2'd1;
        tr.d0_hit      = 0;
        tr.d1_hit      = 0;
        tr.d0_has_data = 0;
        tr.d1_has_data = 0;
        tr.l2_hit      = 1;
        tr.l2_has_data = 1;
        tr.num_beats   = 2;
      end
      REQ_D0: begin
        tr.cmd         = CMD_GETM;
        tr.addr        = 32'h2200_0100;
        tr.src         = 2'd2;
        tr.d0_hit      = 0;
        tr.d1_hit      = 0;
        tr.d0_has_data = 0;
        tr.d1_has_data = 0;
        tr.l2_hit      = 1;
        tr.l2_has_data = 1;
        tr.num_beats   = 2;
      end
      default: begin // REQ_D1
        tr.cmd         = CMD_GETM;
        tr.addr        = 32'h2300_0100;
        tr.src         = 2'd3;
        tr.d0_hit      = 0;
        tr.d1_hit      = 0;
        tr.d0_has_data = 0;
        tr.d1_has_data = 0;
        tr.l2_hit      = 1;
        tr.l2_has_data = 1;
        tr.num_beats   = 2;
      end
    endcase

    send_txn(tr);
  endtask
endclass
