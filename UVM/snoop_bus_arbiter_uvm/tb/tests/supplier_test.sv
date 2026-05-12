class supplier_test extends base_test;
  `uvm_component_utils(supplier_test)

  supplier_e target_supplier;

  function new(string name = "supplier_test", uvm_component parent = null);
    super.new(name, parent);
    target_supplier = SUP_L2;
  endfunction

  task run_phase(uvm_phase phase);
    supplier_seq seq;
    phase.raise_objection(this);
    seq = supplier_seq::type_id::create("seq");
    seq.target_supplier = target_supplier;
    `uvm_info(get_type_name(),
              $sformatf("Running supplier test for %s", target_supplier.name()),
              UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class supplier_d0_test extends supplier_test;
  `uvm_component_utils(supplier_d0_test)
  function new(string name = "supplier_d0_test", uvm_component parent = null);
    super.new(name, parent);
    target_supplier = SUP_D0;
  endfunction
endclass

class supplier_d1_test extends supplier_test;
  `uvm_component_utils(supplier_d1_test)
  function new(string name = "supplier_d1_test", uvm_component parent = null);
    super.new(name, parent);
    target_supplier = SUP_D1;
  endfunction
endclass

class supplier_l2_test extends supplier_test;
  `uvm_component_utils(supplier_l2_test)
  function new(string name = "supplier_l2_test", uvm_component parent = null);
    super.new(name, parent);
    target_supplier = SUP_L2;
  endfunction
endclass

class supplier_none_test extends supplier_test;
  `uvm_component_utils(supplier_none_test)
  function new(string name = "supplier_none_test", uvm_component parent = null);
    super.new(name, parent);
    target_supplier = SUP_NONE;
  endfunction
endclass
