class reset_idle_test extends base_test;
  `uvm_component_utils(reset_idle_test)

  function new(string name = "reset_idle_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    int idle_cycles = 12;

    phase.raise_objection(this);
    wait (vif.rst_n === 1'b1);

    repeat (idle_cycles) begin
      @(posedge vif.clk);
      if (vif.bus_req_valid || vif.bus_dat_valid ||
          vif.i_bus_gnt_valid || vif.d_bus_gnt_valid ||
          vif.i0_req_ready || vif.i1_req_ready ||
          vif.d0_req_ready || vif.d1_req_ready ||
          vif.d0_sup_ready || vif.d1_sup_ready || vif.l2_sup_ready) begin
        `uvm_error(get_type_name(),
                   $sformatf("Unexpected activity while idle at time %0t", $time))
      end
    end

    `uvm_info(get_type_name(),
              $sformatf("PASS: DUT stayed idle for %0d cycles after reset release", idle_cycles),
              UVM_LOW)
    #20;
    phase.drop_objection(this);
  endtask
endclass
