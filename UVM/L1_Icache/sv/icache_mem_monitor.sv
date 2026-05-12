class icache_mem_monitor extends uvm_monitor;
  `uvm_component_utils(icache_mem_monitor)

  virtual mem_if vif;
  int num_pkt_col;

  uvm_analysis_port #(icache_mem_seq_item) ap;

  function new(string name = "icache_mem_monitor", uvm_component parent = null);
    super.new(name, parent);
    num_pkt_col = 0;
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);

    if (!uvm_config_db#(virtual mem_if)::get(this, "", "mem_vif", vif))
      `uvm_fatal("NO_VIF", "mem_if not found")
  endfunction

  task run_phase(uvm_phase phase);
    icache_mem_seq_item item;
    int beat_count;

    @(posedge vif.rst_n);
    `uvm_info(get_type_name(), "Reset dropped", UVM_MEDIUM)

    forever begin
      item = icache_mem_seq_item::type_id::create("item", this);
      item.line_addr  = '0;
      item.line_data  = '0;
      item.gnt_ok     = 0;
      item.resp_delay = 0;

      // Wait for an accepted request handshake
      @(posedge vif.clk);
      while (!(vif.monitor_cb.req_valid && vif.monitor_cb.req_ready))
        @(posedge vif.clk);

      item.line_addr = vif.monitor_cb.req_addr;

      // Wait for the grant decision for this request
      @(posedge vif.clk);
      while (!vif.monitor_cb.gnt_valid)
        @(posedge vif.clk);

      item.gnt_ok = vif.monitor_cb.gnt_ok;

      // Collect returned line only on successful grant
      if (item.gnt_ok) begin
        beat_count = 0;

        while (beat_count < 8) begin
          @(posedge vif.clk);

          if (vif.monitor_cb.dat_valid) begin
            // Optional consistency checks
            if (vif.monitor_cb.dat_addr !== item.line_addr) begin
              `uvm_error(get_type_name(),
                         $sformatf("dat_addr mismatch: expected=0x%08h got=0x%08h",
                                   item.line_addr, vif.monitor_cb.dat_addr))
            end

            if (vif.monitor_cb.dat_beat !== beat_count[2:0]) begin
              `uvm_warning(get_type_name(),
                           $sformatf("Unexpected dat_beat: expected=%0d got=%0d addr=0x%08h",
                                     beat_count, vif.monitor_cb.dat_beat, item.line_addr))
            end

            if (vif.monitor_cb.dat_last && (beat_count != 7)) begin
              `uvm_error(get_type_name(),
                         $sformatf("dat_last asserted early on beat %0d for addr=0x%08h",
                                   beat_count, item.line_addr))
            end

            item.line_data[vif.monitor_cb.dat_beat*64 +: 64] =
              vif.monitor_cb.dat_data;

            beat_count++;
          end
        end
      end

      `uvm_info(get_type_name(),
                $sformatf("Transaction collected :\n%s", item.sprint()),
                UVM_LOW)

      num_pkt_col++;
      ap.write(item);

      // Prevent double-counting the same request if req_valid remains high
      @(posedge vif.clk);
      while (vif.monitor_cb.req_valid)
        @(posedge vif.clk);
    end
  endtask

  function void report_phase(uvm_phase phase);
    `uvm_info(get_type_name(),
              $sformatf("Report: iCache MEM monitor collected %0d transactions",
                        num_pkt_col),
              UVM_LOW)
  endfunction : report_phase

endclass : icache_mem_monitor