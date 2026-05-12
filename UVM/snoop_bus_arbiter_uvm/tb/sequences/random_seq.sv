class random_seq extends base_seq;
  rand int unsigned num_txns;

  constraint c_num_txns { num_txns inside {[8:12]}; }

  `uvm_object_utils(random_seq)

  function new(string name = "random_seq");
    super.new(name);
    num_txns = 8;
  endfunction

  task body();
    snoop_txn tr;
    repeat (num_txns) begin
      tr = snoop_txn::type_id::create($sformatf("tr_%0d", num_txns));
      assert(tr.randomize() with {
        // Keep classic random_test as a safe single-request random sanity test.
        req_id inside {REQ_I0, REQ_I1, REQ_D0, REQ_D1};
        req_mask == 4'b0000;
        src == req_id;
        cmd inside {CMD_GETS, CMD_GETM, CMD_UPGR, CMD_WB};
        num_beats inside {[1:4]};

        // Only data-carrying commands may expect data beats.
        if (cmd inside {CMD_UPGR, CMD_WB}) {
          d0_hit      == 0;
          d1_hit      == 0;
          d0_has_data == 0;
          d1_has_data == 0;
          l2_hit      == 0;
          l2_has_data == 0;
        }

        // For GETS/GETM, keep supplier/hit combinations legal and deterministic.
        if (cmd == CMD_GETS) {
          (d0_has_data + d1_has_data) inside {[0:1]};
          if (d0_has_data) d0_hit == 1;
          if (d1_has_data) d1_hit == 1;
          if (d0_hit || d1_hit) l2_has_data == 0;
        }

        if (cmd == CMD_GETM) {
          (d0_has_data + d1_has_data) inside {[0:1]};
          if (d0_has_data) d0_hit == 1;
          if (d1_has_data) d1_hit == 1;
          if (d0_hit || d1_hit) l2_has_data == 0;
        }
      });
      send_txn(tr);
    end
  endtask
endclass
