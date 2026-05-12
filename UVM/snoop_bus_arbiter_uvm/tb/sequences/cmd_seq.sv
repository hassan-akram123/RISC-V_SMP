class cmd_seq extends base_seq;
  `uvm_object_utils(cmd_seq)

  cmd_e target_cmd;

  function new(string name = "cmd_seq");
    super.new(name);
    target_cmd = CMD_GETS;
  endfunction

  task body();
    snoop_txn tr;
    tr = snoop_txn::type_id::create("tr_cmd");

    case (target_cmd)
      CMD_GETS: begin
        tr.req_id       = REQ_I0;
        tr.cmd          = CMD_GETS;
        tr.addr         = 32'h3100_0008;
        tr.src          = 2'd0;
        tr.d0_hit       = 0;
        tr.d1_hit       = 0;
        tr.d0_has_data  = 0;
        tr.d1_has_data  = 0;
        tr.l2_hit       = 1;
        tr.l2_has_data  = 1;
        tr.num_beats    = 2;
      end

      CMD_GETM: begin
        tr.req_id       = REQ_D0;
        tr.cmd          = CMD_GETM;
        tr.addr         = 32'h3200_0020;
        tr.src          = 2'd2;
        tr.d0_hit       = 0;
        tr.d1_hit       = 1;
        tr.d0_has_data  = 0;
        tr.d1_has_data  = 1;
        tr.l2_hit       = 0;
        tr.l2_has_data  = 0;
        tr.num_beats    = 3;
      end

      CMD_UPGR: begin
        tr.req_id       = REQ_D1;
        tr.cmd          = CMD_UPGR;
        tr.addr         = 32'h3300_0040;
        tr.src          = 2'd3;
        tr.d0_hit       = 1;
        tr.d1_hit       = 0;
        tr.d0_has_data  = 0;
        tr.d1_has_data  = 0;
        tr.l2_hit       = 0;
        tr.l2_has_data  = 0;
        tr.num_beats    = 1;
      end

      default: begin // CMD_WB
        tr.req_id       = REQ_D0;
        tr.cmd          = CMD_WB;
        tr.addr         = 32'h3400_0080;
        tr.src          = 2'd2;
        tr.d0_hit       = 0;
        tr.d1_hit       = 0;
        tr.d0_has_data  = 0;
        tr.d1_has_data  = 0;
        tr.l2_hit       = 0;
        tr.l2_has_data  = 0;
        tr.num_beats    = 1;
      end
    endcase

    send_txn(tr);
  endtask
endclass
