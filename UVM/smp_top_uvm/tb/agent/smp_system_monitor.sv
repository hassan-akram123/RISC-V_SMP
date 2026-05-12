class smp_system_monitor extends uvm_component;
  `uvm_component_utils(smp_system_monitor)

  virtual smp_mon_if vif;
  uvm_analysis_port #(smp_obs_item) ap;

  logic [31:0] last_pc0;
  logic [31:0] last_pc1;

  function new(string name = "smp_system_monitor", uvm_component parent = null);
    super.new(name, parent);
    ap = new("ap", this);
    last_pc0 = BOOT_BASE;
    last_pc1 = BOOT_BASE;
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual smp_mon_if)::get(this, "", "mon_vif", vif))
      `uvm_fatal("NOVIF", "virtual interface smp_mon_if not set")
  endfunction

  protected function void emit_pc_progress(int unsigned core_id, logic [31:0] pc_value);
    smp_obs_item item;
    item = smp_obs_item::type_id::create($sformatf("pc_progress_c%0d", core_id), this);
    item.kind      = OBS_PC_PROGRESS;
    item.core_id   = core_id;
    item.pc        = pc_value;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  protected function void emit_axi_ar();
    smp_obs_item item;
    item = smp_obs_item::type_id::create("axi_ar", this);
    item.kind      = OBS_AXI_AR;
    item.axi_id    = vif.M_AXI_ARID;
    item.addr      = vif.M_AXI_ARADDR;
    item.len       = vif.M_AXI_ARLEN;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  protected function void emit_axi_r_last();
    smp_obs_item item;
    item = smp_obs_item::type_id::create("axi_r_last", this);
    item.kind      = OBS_AXI_R_LAST;
    item.axi_id    = vif.M_AXI_RID;
    item.resp      = vif.M_AXI_RRESP;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  protected function void emit_axi_aw();
    smp_obs_item item;
    item = smp_obs_item::type_id::create("axi_aw", this);
    item.kind      = OBS_AXI_AW;
    item.axi_id    = vif.M_AXI_AWID;
    item.addr      = vif.M_AXI_AWADDR;
    item.len       = vif.M_AXI_AWLEN;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  protected function void emit_axi_w_last();
    smp_obs_item item;
    item = smp_obs_item::type_id::create("axi_w_last", this);
    item.kind      = OBS_AXI_W_LAST;
    item.wstrb     = vif.M_AXI_WSTRB;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  protected function void emit_axi_b();
    smp_obs_item item;
    item = smp_obs_item::type_id::create("axi_b", this);
    item.kind      = OBS_AXI_B;
    item.axi_id    = vif.M_AXI_BID;
    item.resp      = vif.M_AXI_BRESP;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  protected function void emit_bus_req();
    smp_obs_item item;
    item = smp_obs_item::type_id::create("bus_req", this);
    item.kind      = OBS_BUS_REQ;
    item.src       = vif.bus_req_src;
    item.cmd       = vif.bus_req_cmd;
    item.addr      = vif.bus_req_addr;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  protected function void emit_i_grant();
    smp_obs_item item;
    item = smp_obs_item::type_id::create("i_grant", this);
    item.kind      = OBS_I_GRANT;
    item.dst       = vif.i_bus_gnt_dst;
    item.ok        = vif.i_bus_gnt_ok;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  protected function void emit_d_grant();
    smp_obs_item item;
    item = smp_obs_item::type_id::create("d_grant", this);
    item.kind      = OBS_D_GRANT;
    item.dst       = vif.d_bus_gnt_dst;
    item.addr      = vif.d_bus_gnt_addr;
    item.state     = vif.d_bus_gnt_state;
    item.ok        = vif.d_bus_gnt_ok;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  protected function void emit_bus_data();
    smp_obs_item item;
    item = smp_obs_item::type_id::create("bus_data", this);
    item.kind      = OBS_BUS_DATA;
    item.dst       = vif.bus_dat_dst;
    item.addr      = vif.bus_dat_addr;
    item.beat      = vif.bus_dat_beat;
    item.timestamp = $time;
    ap.write(item);
  endfunction

  task run_phase(uvm_phase phase);
    forever begin
      @(posedge vif.clk);

      if (!vif.rst_n) begin
        last_pc0 = BOOT_BASE;
        last_pc1 = BOOT_BASE;
        continue;
      end

      if (vif.c0_imem_addr != last_pc0) begin
        last_pc0 = vif.c0_imem_addr;
        emit_pc_progress(0, vif.c0_imem_addr);
      end

      if (vif.c1_imem_addr != last_pc1) begin
        last_pc1 = vif.c1_imem_addr;
        emit_pc_progress(1, vif.c1_imem_addr);
      end

      if (vif.M_AXI_ARVALID && vif.M_AXI_ARREADY) emit_axi_ar();
      if (vif.M_AXI_RVALID  && vif.M_AXI_RREADY && vif.M_AXI_RLAST) emit_axi_r_last();
      if (vif.M_AXI_AWVALID && vif.M_AXI_AWREADY) emit_axi_aw();
      if (vif.M_AXI_WVALID  && vif.M_AXI_WREADY && vif.M_AXI_WLAST) emit_axi_w_last();
      if (vif.M_AXI_BVALID  && vif.M_AXI_BREADY) emit_axi_b();

      if (vif.bus_req_valid)   emit_bus_req();
      if (vif.i_bus_gnt_valid) emit_i_grant();
      if (vif.d_bus_gnt_valid) emit_d_grant();
      if (vif.bus_dat_valid && vif.bus_dat_last) emit_bus_data();
    end
  endtask
endclass
