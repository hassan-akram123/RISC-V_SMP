class smp_ctrl_driver extends uvm_driver #(smp_ctrl_item);
  `uvm_component_utils(smp_ctrl_driver)

  virtual smp_ctrl_if vif;

  function new(string name = "smp_ctrl_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual smp_ctrl_if)::get(this, "", "ctrl_vif", vif))
      `uvm_fatal("NOVIF", "virtual interface smp_ctrl_if not set")
  endfunction

  task run_phase(uvm_phase phase);
    smp_ctrl_item tr;
    forever begin
      seq_item_port.get_next_item(tr);
      case (tr.cmd)
        CTRL_ASSERT_RESET: begin
          `uvm_info(get_type_name(), $sformatf("Asserting reset for %0d cycles", tr.cycles), UVM_MEDIUM)
          vif.assert_reset((tr.cycles == 0) ? 1 : tr.cycles);
        end
        CTRL_RELEASE_RESET: begin
          `uvm_info(get_type_name(), "Releasing reset", UVM_MEDIUM)
          vif.release_reset();
        end
        CTRL_CLEAR_MEMORY: begin
          `uvm_info(get_type_name(), "Clearing SRAM image to NOPs", UVM_MEDIUM)
          vif.clear_memory();
        end
        CTRL_WRITE_INSTR: begin
          `uvm_info(get_type_name(),
                    $sformatf("Backdoor write duplicated instruction addr=0x%08h instr=0x%08h",
                              tr.addr, tr.instr), UVM_HIGH)
          vif.write_instr_dup(tr.addr, tr.instr);
        end
        CTRL_FORCE_ROLES: begin
          `uvm_info(get_type_name(),
                    $sformatf("Forcing x31 role split core0=%0d core1=%0d",
                              tr.core0_role_value, tr.core1_role_value), UVM_MEDIUM)
          vif.force_roles(tr.core0_role_value, tr.core1_role_value);
        end
        CTRL_RELEASE_ROLES: begin
          `uvm_info(get_type_name(), "Releasing forced roles", UVM_MEDIUM)
          vif.release_roles();
        end
        CTRL_WAIT_CYCLES: begin
          `uvm_info(get_type_name(), $sformatf("Waiting %0d cycles", tr.cycles), UVM_HIGH)
          vif.wait_cycles(tr.cycles);
        end
        default: `uvm_warning(get_type_name(), $sformatf("Unknown ctrl cmd %0d", tr.cmd))
      endcase
      seq_item_port.item_done();
    end
  endtask
endclass
