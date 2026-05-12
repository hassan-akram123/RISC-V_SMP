class snoop_txn extends uvm_sequence_item;
  rand requester_e req_id;
  rand cmd_e       cmd;
  rand bit [31:0]  addr;
  rand bit [1:0]   src;

  // Optional multi-request mask for arbitration tests.
  // Bit mapping: [0]=i0, [1]=i1, [2]=d0, [3]=d1
  rand bit [3:0]   req_mask;

  // What snoop side should respond with for this request
  rand bit         d0_hit;
  rand bit         d1_hit;
  rand bit         d0_has_data;
  rand bit         d1_has_data;
  rand bit         l2_hit;
  rand bit         l2_has_data;
  rand int unsigned num_beats;

  // Optional response/ack timing controls for snoop-response tests
  rand int unsigned d0_ack_delay;
  rand int unsigned d1_ack_delay;
  rand int unsigned l2_ack_delay;

  // Filled by monitor / scoreboard side
  requester_e      act_req_id;
  cmd_e            act_cmd;
  bit [31:0]       act_addr;
  bit [1:0]        act_src;
  supplier_e       act_supplier;
  int unsigned     act_num_beats;
  grant_kind_e     act_grant_kind;
  bit [1:0]        act_grant_state;
  bit [1:0]        act_grant_dst;
  bit [31:0]       act_grant_addr;

  constraint c_basic {
    src inside {[0:3]};
    num_beats inside {[1:4]};
    d0_ack_delay inside {[0:8]};
    d1_ack_delay inside {[0:8]};
    l2_ack_delay inside {[0:8]};
  }

  `uvm_object_utils_begin(snoop_txn)
    `uvm_field_enum(requester_e, req_id, UVM_DEFAULT)
    `uvm_field_enum(cmd_e,       cmd, UVM_DEFAULT)
    `uvm_field_int(addr,         UVM_DEFAULT)
    `uvm_field_int(src,          UVM_DEFAULT)
    `uvm_field_int(req_mask,     UVM_DEFAULT)
    `uvm_field_int(d0_hit,       UVM_DEFAULT)
    `uvm_field_int(d1_hit,       UVM_DEFAULT)
    `uvm_field_int(d0_has_data,  UVM_DEFAULT)
    `uvm_field_int(d1_has_data,  UVM_DEFAULT)
    `uvm_field_int(l2_hit,       UVM_DEFAULT)
    `uvm_field_int(l2_has_data,  UVM_DEFAULT)
    `uvm_field_int(num_beats,    UVM_DEFAULT)
    `uvm_field_int(d0_ack_delay, UVM_DEFAULT)
    `uvm_field_int(d1_ack_delay, UVM_DEFAULT)
    `uvm_field_int(l2_ack_delay, UVM_DEFAULT)

    // Observed fields must also be registered, otherwise clone()/copy()
    // will drop them when monitor/scoreboard pass transactions around.
    `uvm_field_enum(supplier_e,   act_supplier,     UVM_DEFAULT)
    `uvm_field_int(act_num_beats, UVM_DEFAULT)
    `uvm_field_enum(grant_kind_e, act_grant_kind,   UVM_DEFAULT)
    `uvm_field_int(act_grant_state, UVM_DEFAULT)
    `uvm_field_int(act_grant_dst,   UVM_DEFAULT)
    `uvm_field_int(act_grant_addr,  UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "snoop_txn");
    super.new(name);
    req_mask        = 4'b0000;
    d0_ack_delay    = 0;
    d1_ack_delay    = 0;
    l2_ack_delay    = 0;
    act_supplier    = SUP_NONE;
    act_grant_kind  = GNT_NONE;
  endfunction

  function bit needs_data();
    return (cmd == CMD_GETS) || (cmd == CMD_GETM);
  endfunction

  function bit [3:0] effective_req_mask();
    bit [3:0] mask;
    mask = req_mask;
    if (mask == 4'b0000)
      mask = (4'b0001 << req_id);
    if (!mask[req_id])
      mask[req_id] = 1'b1;
    return mask;
  endfunction

  function int unsigned req_count();
    bit [3:0] mask;
    mask = effective_req_mask();
    return mask[0] + mask[1] + mask[2] + mask[3];
  endfunction

  function supplier_e expected_supplier();
    if (!needs_data()) return SUP_NONE;
    if (d0_has_data)   return SUP_D0;
    if (d1_has_data)   return SUP_D1;
    return SUP_L2;
  endfunction

  function bit any_l1_hit();
    return (d0_hit || d1_hit);
  endfunction

  function bit [1:0] expected_grant_state();
    case (cmd)
      CMD_GETS: return any_l1_hit() ? ST_S : ST_E;
      CMD_GETM: return ST_M;
      CMD_UPGR: return ST_M;
      CMD_WB  : return ST_I;
      default : return ST_I;
    endcase
  endfunction

  function string convert2string();
    return $sformatf("req_id=%s mask=%04b cmd=%s addr=0x%08h src=%0d d0_hit=%0b d1_hit=%0b d0_data=%0b d1_data=%0b l2_data=%0b beats=%0d ack_delays={%0d,%0d,%0d} act_supplier=%s act_grant_kind=%s act_state=%0d",
                     req_id.name(), effective_req_mask(), cmd.name(), addr, src,
                     d0_hit, d1_hit, d0_has_data, d1_has_data, l2_has_data,
                     num_beats, d0_ack_delay, d1_ack_delay, l2_ack_delay,
                     act_supplier.name(), act_grant_kind.name(), act_grant_state);
  endfunction
endclass
