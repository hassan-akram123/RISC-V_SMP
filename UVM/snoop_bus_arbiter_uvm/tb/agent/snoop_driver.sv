class snoop_driver extends uvm_driver #(snoop_txn);
  `uvm_component_utils(snoop_driver)

  virtual snoop_bus_if vif;
  uvm_analysis_port #(snoop_txn) exp_ap;

  function new(string name = "snoop_driver", uvm_component parent = null);
    super.new(name, parent);
    exp_ap = new("exp_ap", this);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual snoop_bus_if)::get(this, "", "vif", vif))
      `uvm_fatal("NOVIF", "virtual interface snoop_bus_if not set")
  endfunction

  task run_phase(uvm_phase phase);
    snoop_txn tr;
    vif.drive_idle();
    wait (vif.rst_n === 1'b1);
    forever begin
      seq_item_port.get_next_item(tr);
      drive_one(tr);
      begin
        snoop_txn sent;
        $cast(sent, tr.clone());
        exp_ap.write(sent);
      end
      seq_item_port.item_done();
    end
  endtask

  function automatic bit [3:0] req_mask_for(snoop_txn tr);
    return tr.effective_req_mask();
  endfunction

  function automatic cmd_e filler_cmd(requester_e r);
    if (r inside {REQ_D0, REQ_D1})
      return CMD_GETM;
    return CMD_GETS;
  endfunction

  function automatic bit [31:0] filler_addr(requester_e r);
    case (r)
      REQ_I0: return 32'hA000_0010;
      REQ_I1: return 32'hA100_0020;
      REQ_D0: return 32'hA200_0030;
      default: return 32'hA300_0040;
    endcase
  endfunction

  function automatic bit [1:0] filler_src(requester_e r);
    return r;
  endfunction

  task automatic drive_req_line(requester_e r, bit valid, cmd_e cmd, bit [31:0] addr, bit [1:0] src);
    case (r)
      REQ_I0: begin
        vif.i0_req_valid <= valid;
        vif.i0_req_cmd   <= cmd;
        vif.i0_req_addr  <= addr;
        vif.i0_req_src   <= src;
      end
      REQ_I1: begin
        vif.i1_req_valid <= valid;
        vif.i1_req_cmd   <= cmd;
        vif.i1_req_addr  <= addr;
        vif.i1_req_src   <= src;
      end
      REQ_D0: begin
        vif.d0_req_valid <= valid;
        vif.d0_req_cmd   <= cmd;
        vif.d0_req_addr  <= addr;
        vif.d0_req_src   <= src;
      end
      default: begin
        vif.d1_req_valid <= valid;
        vif.d1_req_cmd   <= cmd;
        vif.d1_req_addr  <= addr;
        vif.d1_req_src   <= src;
      end
    endcase
  endtask

  task drive_one(snoop_txn tr);
    drive_request(tr);
    drive_snoop_responses(tr);
    if (tr.needs_data()) begin
      drive_supplier_data(tr);
    end
    wait_for_grant();
    @(posedge vif.clk);
    vif.drive_idle();
  endtask

  task drive_request(snoop_txn tr);
    bit [3:0] mask;
    requester_e r;
    mask = req_mask_for(tr);

    @(posedge vif.clk);

    for (int i = 0; i < 4; i++) begin
      r = requester_e'(i[1:0]);
      if (mask[i]) begin
        if (r == tr.req_id)
          drive_req_line(r, 1'b1, tr.cmd, tr.addr, tr.src);
        else
          drive_req_line(r, 1'b1, filler_cmd(r), filler_addr(r), filler_src(r));
      end
      else begin
        drive_req_line(r, 1'b0, filler_cmd(r), filler_addr(r), filler_src(r));
      end
    end

    do @(posedge vif.clk);
    while ((vif.i0_req_ready !== 1'b1) &&
           (vif.i1_req_ready !== 1'b1) &&
           (vif.d0_req_ready !== 1'b1) &&
           (vif.d1_req_ready !== 1'b1));

    vif.i0_req_valid <= 1'b0;
    vif.i1_req_valid <= 1'b0;
    vif.d0_req_valid <= 1'b0;
    vif.d1_req_valid <= 1'b0;
  endtask

  task drive_snoop_responses(snoop_txn tr);
    int unsigned max_delay;

    max_delay = tr.d0_ack_delay;
    if (tr.d1_ack_delay > max_delay) max_delay = tr.d1_ack_delay;
    if (tr.l2_ack_delay > max_delay) max_delay = tr.l2_ack_delay;

    for (int unsigned cyc = 0; cyc <= max_delay; cyc++) begin
      @(posedge vif.clk);

      // Report hit/data facts once, then allow independent delayed ACKs.
      vif.d0_snp_rsp_valid    <= (cyc == 0);
      vif.d0_snp_rsp_hit      <= tr.d0_hit;
      vif.d0_snp_rsp_state    <= tr.d0_hit ? ST_S : ST_I;
      vif.d0_snp_rsp_has_data <= tr.d0_has_data;
      vif.d0_snp_rsp_ack      <= (cyc == tr.d0_ack_delay);

      vif.d1_snp_rsp_valid    <= (cyc == 0);
      vif.d1_snp_rsp_hit      <= tr.d1_hit;
      vif.d1_snp_rsp_state    <= tr.d1_hit ? ST_S : ST_I;
      vif.d1_snp_rsp_has_data <= tr.d1_has_data;
      vif.d1_snp_rsp_ack      <= (cyc == tr.d1_ack_delay);

      vif.l2_snp_valid        <= (cyc == 0);
      vif.l2_snp_hit          <= tr.l2_hit;
      vif.l2_snp_has_data     <= tr.l2_has_data;
      vif.l2_snp_ack          <= (cyc == tr.l2_ack_delay);
    end

    @(posedge vif.clk);
    vif.d0_snp_rsp_valid    <= 1'b0;
    vif.d0_snp_rsp_hit      <= 1'b0;
    vif.d0_snp_rsp_has_data <= 1'b0;
    vif.d0_snp_rsp_ack      <= 1'b0;

    vif.d1_snp_rsp_valid    <= 1'b0;
    vif.d1_snp_rsp_hit      <= 1'b0;
    vif.d1_snp_rsp_has_data <= 1'b0;
    vif.d1_snp_rsp_ack      <= 1'b0;

    vif.l2_snp_valid        <= 1'b0;
    vif.l2_snp_hit          <= 1'b0;
    vif.l2_snp_has_data     <= 1'b0;
    vif.l2_snp_ack          <= 1'b0;
  endtask

  task drive_supplier_data(snoop_txn tr);
    supplier_e sup;
    sup = tr.expected_supplier();
    case (sup)
      SUP_D0: wait (vif.d0_sup_ready === 1'b1);
      SUP_D1: wait (vif.d1_sup_ready === 1'b1);
      default: wait (vif.l2_sup_ready === 1'b1);
    endcase

    for (int i = 0; i < tr.num_beats; i++) begin
      @(posedge vif.clk);
      case (sup)
        SUP_D0: begin
          vif.d0_sup_valid <= 1'b1;
          vif.d0_sup_data  <= 64'hD000_0000_0000_0000 + i;
          vif.d0_sup_beat  <= i[2:0];
          vif.d0_sup_last  <= (i == (tr.num_beats-1));
        end
        SUP_D1: begin
          vif.d1_sup_valid <= 1'b1;
          vif.d1_sup_data  <= 64'hD100_0000_0000_0000 + i;
          vif.d1_sup_beat  <= i[2:0];
          vif.d1_sup_last  <= (i == (tr.num_beats-1));
        end
        default: begin
          vif.l2_sup_valid <= 1'b1;
          vif.l2_sup_data  <= 64'hA200_0000_0000_0000 + i;
          vif.l2_sup_beat  <= i[2:0];
          vif.l2_sup_last  <= (i == (tr.num_beats-1));
        end
      endcase
    end

    @(posedge vif.clk);
    vif.d0_sup_valid <= 1'b0;
    vif.d0_sup_last  <= 1'b0;
    vif.d1_sup_valid <= 1'b0;
    vif.d1_sup_last  <= 1'b0;
    vif.l2_sup_valid <= 1'b0;
    vif.l2_sup_last  <= 1'b0;
  endtask

  task wait_for_grant();
    do @(posedge vif.clk);
    while ((vif.i_bus_gnt_valid !== 1'b1) && (vif.d_bus_gnt_valid !== 1'b1));
  endtask
endclass
