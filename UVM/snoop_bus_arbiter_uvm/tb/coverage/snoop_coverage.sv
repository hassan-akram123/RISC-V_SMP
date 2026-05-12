
class snoop_coverage extends uvm_subscriber #(snoop_txn);
  `uvm_component_utils(snoop_coverage)

  requester_e  req_id;
  cmd_e        cmd;
  supplier_e   supplier;
  grant_kind_e grant_kind;
  bit          needs_data;
  bit [1:0]    grant_state;
  int unsigned req_count;

  covergroup cg;
    option.per_instance = 1;

    cp_req : coverpoint req_id {
      bins i0 = {REQ_I0};
      bins i1 = {REQ_I1};
      bins d0 = {REQ_D0};
      bins d1 = {REQ_D1};
    }

    cp_cmd : coverpoint cmd {
      bins gets = {CMD_GETS};
      bins getm = {CMD_GETM};
      bins upgr = {CMD_UPGR};
      bins wb   = {CMD_WB};
    }

    cp_supplier : coverpoint supplier {
      bins none = {SUP_NONE};
      bins d0   = {SUP_D0};
      bins d1   = {SUP_D1};
      bins l2   = {SUP_L2};
    }

    cp_grant_kind : coverpoint grant_kind {
      bins ig = {GNT_I};
      bins dg = {GNT_D};
    }

    cp_needs_data : coverpoint needs_data {
      bins no  = {0};
      bins yes = {1};
    }

    cp_grant_state : coverpoint grant_state {
      bins I = {ST_I};
      bins S = {ST_S};
      bins E = {ST_E};
      bins M = {ST_M};
    }

    cp_req_count : coverpoint req_count {
      bins one   = {1};
      bins two   = {2};
      bins three = {3};
      bins four  = {4};
    }

    // I-side requesters only issue GETS in this DUT model. Ignore unrealistic
    // cross combinations so the reported functional coverage reflects the
    // real verification intent rather than impossible traffic patterns.
    req_x_cmd : cross cp_req, cp_cmd {
      ignore_bins i_invalid =
        (binsof(cp_req) intersect {REQ_I0, REQ_I1}) &&
        (binsof(cp_cmd) intersect {CMD_GETM, CMD_UPGR, CMD_WB});
    }

    // GETS/GETM fetch data from D0/D1/L2. UPGR/WB are no-data commands.
    cmd_x_supplier : cross cp_cmd, cp_supplier {
      ignore_bins data_cmd_none =
        (binsof(cp_cmd) intersect {CMD_GETS, CMD_GETM}) &&
        (binsof(cp_supplier) intersect {SUP_NONE});

      ignore_bins no_data_cmd_sup =
        (binsof(cp_cmd) intersect {CMD_UPGR, CMD_WB}) &&
        (binsof(cp_supplier) intersect {SUP_D0, SUP_D1, SUP_L2});
    }

    // Legal state outcomes for this arbiter:
    // GETS -> S/E, GETM -> M, UPGR -> M, WB -> I
    cmd_x_state : cross cp_cmd, cp_grant_state {
      ignore_bins gets_invalid =
        (binsof(cp_cmd) intersect {CMD_GETS}) &&
        (binsof(cp_grant_state) intersect {ST_I, ST_M});

      ignore_bins getm_invalid =
        (binsof(cp_cmd) intersect {CMD_GETM}) &&
        (binsof(cp_grant_state) intersect {ST_I, ST_S, ST_E});

      ignore_bins upgr_invalid =
        (binsof(cp_cmd) intersect {CMD_UPGR}) &&
        (binsof(cp_grant_state) intersect {ST_I, ST_S, ST_E});

      ignore_bins wb_invalid =
        (binsof(cp_cmd) intersect {CMD_WB}) &&
        (binsof(cp_grant_state) intersect {ST_S, ST_E, ST_M});
    }

    reqcount_x_req   : cross cp_req_count, cp_req;
  endgroup

  function new(string name = "snoop_coverage", uvm_component parent = null);
    super.new(name, parent);
    cg = new();
  endfunction

  function void write(snoop_txn t);
    req_id      = t.req_id;
    cmd         = t.cmd;
    supplier    = t.act_supplier;
    grant_kind  = t.act_grant_kind;
    needs_data  = t.needs_data();
    grant_state = t.act_grant_state;
    req_count   = t.req_count();
    cg.sample();
  endfunction

  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info(get_type_name(),
              $sformatf("Functional coverage = %0.2f%%", cg.get_coverage()),
              UVM_NONE)
  endfunction
endclass
