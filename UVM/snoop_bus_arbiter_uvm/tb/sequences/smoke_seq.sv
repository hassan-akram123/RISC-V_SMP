class smoke_seq extends base_seq;
  `uvm_object_utils(smoke_seq)

  function new(string name = "smoke_seq");
    super.new(name);
  endfunction

  task body();
    snoop_txn tr;

    // 1) i0 GETS, miss in L1s, data from L2
    tr = snoop_txn::type_id::create("tr_i0_gets_l2");
    tr.req_id       = REQ_I0;
    tr.cmd          = CMD_GETS;
    tr.addr         = 32'h1000_0040;
    tr.src          = 2'd0;
    tr.d0_hit       = 0;
    tr.d1_hit       = 0;
    tr.d0_has_data  = 0;
    tr.d1_has_data  = 0;
    tr.l2_hit       = 1;
    tr.l2_has_data  = 1;
    tr.num_beats    = 2;
    send_txn(tr);

    // 2) d0 GETM, d1 has the line and supplies data
    tr = snoop_txn::type_id::create("tr_d0_getm_d1");
    tr.req_id       = REQ_D0;
    tr.cmd          = CMD_GETM;
    tr.addr         = 32'h2000_0100;
    tr.src          = 2'd2;
    tr.d0_hit       = 0;
    tr.d1_hit       = 1;
    tr.d0_has_data  = 0;
    tr.d1_has_data  = 1;
    tr.l2_hit       = 0;
    tr.l2_has_data  = 0;
    tr.num_beats    = 3;
    send_txn(tr);

    // 3) d1 UPGR, no data transfer path
    tr = snoop_txn::type_id::create("tr_d1_upgr");
    tr.req_id       = REQ_D1;
    tr.cmd          = CMD_UPGR;
    tr.addr         = 32'h3000_0020;
    tr.src          = 2'd3;
    tr.d0_hit       = 1;
    tr.d1_hit       = 0;
    tr.d0_has_data  = 0;
    tr.d1_has_data  = 0;
    tr.l2_hit       = 0;
    tr.l2_has_data  = 0;
    tr.num_beats    = 1;
    send_txn(tr);

    // 4) i1 GETS, d0 supplies data
    tr = snoop_txn::type_id::create("tr_i1_gets_d0");
    tr.req_id       = REQ_I1;
    tr.cmd          = CMD_GETS;
    tr.addr         = 32'h4000_0008;
    tr.src          = 2'd1;
    tr.d0_hit       = 1;
    tr.d1_hit       = 0;
    tr.d0_has_data  = 1;
    tr.d1_has_data  = 0;
    tr.l2_hit       = 0;
    tr.l2_has_data  = 0;
    tr.num_beats    = 1;
    send_txn(tr);
  endtask
endclass
