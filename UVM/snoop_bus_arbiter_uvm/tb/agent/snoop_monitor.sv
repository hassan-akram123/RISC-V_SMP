class snoop_monitor extends uvm_component;
  `uvm_component_utils(snoop_monitor)

  virtual snoop_bus_if vif;
  uvm_analysis_port #(snoop_txn) ap;

  function new(string name = "snoop_monitor", uvm_component parent = null);
    super.new(name, parent);
    ap = new("ap", this);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual snoop_bus_if)::get(this, "", "vif", vif))
      `uvm_fatal("NOVIF", "virtual interface snoop_bus_if not set")
  endfunction

  task run_phase(uvm_phase phase);
    snoop_txn tr;
    wait (vif.rst_n === 1'b1);
    forever begin
      tr = snoop_txn::type_id::create("mon_tr");
      @(posedge vif.clk);
      while (vif.bus_req_valid !== 1'b1) @(posedge vif.clk);

      if (vif.i0_req_ready) tr.req_id = REQ_I0;
      else if (vif.i1_req_ready) tr.req_id = REQ_I1;
      else if (vif.d0_req_ready) tr.req_id = REQ_D0;
      else tr.req_id = REQ_D1;

      tr.cmd    = cmd_e'(vif.bus_req_cmd);
      tr.addr   = vif.bus_req_addr;
      tr.src    = vif.bus_req_src;
      tr.act_supplier   = SUP_NONE;
      tr.act_num_beats  = 0;
      tr.act_grant_kind = GNT_NONE;

      forever begin
        @(posedge vif.clk);

        if (vif.d0_sup_ready) tr.act_supplier = SUP_D0;
        else if (vif.d1_sup_ready) tr.act_supplier = SUP_D1;
        else if (vif.l2_sup_ready) tr.act_supplier = SUP_L2;

        if (vif.bus_dat_valid) tr.act_num_beats++;

        if (vif.i_bus_gnt_valid) begin
          tr.act_grant_kind = GNT_I;
          tr.act_grant_dst  = vif.i_bus_gnt_dst;
          break;
        end
        if (vif.d_bus_gnt_valid) begin
          tr.act_grant_kind  = GNT_D;
          tr.act_grant_dst   = vif.d_bus_gnt_dst;
          tr.act_grant_addr  = vif.d_bus_gnt_addr;
          tr.act_grant_state = vif.d_bus_gnt_state;
          break;
        end
      end

      ap.write(tr);
      `uvm_info(get_type_name(), {"Observed: ", tr.convert2string()}, UVM_MEDIUM)
    end
  endtask
endclass
