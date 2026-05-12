class supplier_seq extends base_seq;
  `uvm_object_utils(supplier_seq)

  supplier_e target_supplier;

  function new(string name = "supplier_seq");
    super.new(name);
    target_supplier = SUP_L2;
  endfunction

  task body();
    snoop_txn tr;
    tr = snoop_txn::type_id::create("tr_supplier");

    case (target_supplier)
      SUP_D0: begin
        tr.req_id       = REQ_I1;
        tr.cmd          = CMD_GETS;
        tr.addr         = 32'h4100_0008;
        tr.src          = 2'd1;
        tr.d0_hit       = 1;
        tr.d1_hit       = 0;
        tr.d0_has_data  = 1;
        tr.d1_has_data  = 0;
        tr.l2_hit       = 0;
        tr.l2_has_data  = 0;
        tr.num_beats    = 2;
      end

      SUP_D1: begin
        tr.req_id       = REQ_D0;
        tr.cmd          = CMD_GETM;
        tr.addr         = 32'h4200_0010;
        tr.src          = 2'd2;
        tr.d0_hit       = 0;
        tr.d1_hit       = 1;
        tr.d0_has_data  = 0;
        tr.d1_has_data  = 1;
        tr.l2_hit       = 0;
        tr.l2_has_data  = 0;
        tr.num_beats    = 2;
      end

      SUP_L2: begin
        tr.req_id       = REQ_I0;
        tr.cmd          = CMD_GETS;
        tr.addr         = 32'h4300_0020;
        tr.src          = 2'd0;
        tr.d0_hit       = 0;
        tr.d1_hit       = 0;
        tr.d0_has_data  = 0;
        tr.d1_has_data  = 0;
        tr.l2_hit       = 1;
        tr.l2_has_data  = 1;
        tr.num_beats    = 2;
      end

      default: begin // SUP_NONE
        tr.req_id       = REQ_D1;
        tr.cmd          = CMD_UPGR;
        tr.addr         = 32'h4400_0040;
        tr.src          = 2'd3;
        tr.d0_hit       = 1;
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
