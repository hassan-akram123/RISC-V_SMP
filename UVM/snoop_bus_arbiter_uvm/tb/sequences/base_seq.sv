class base_seq extends uvm_sequence #(snoop_txn);
  `uvm_object_utils(base_seq)

  function new(string name = "base_seq");
    super.new(name);
  endfunction

  task send_txn(snoop_txn tr);
    start_item(tr);
    finish_item(tr);
  endtask
endclass
