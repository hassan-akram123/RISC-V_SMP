class smp_coverage extends uvm_subscriber #(smp_obs_item);
  `uvm_component_utils(smp_coverage)

  obs_kind_e sample_kind;
  logic [1:0] sample_src;
  logic [2:0] sample_cmd;
  logic [1:0] sample_dst;
  logic [1:0] sample_state;
  int unsigned sample_core_id;
  logic sample_ok;

  covergroup smp_cg;
    option.per_instance = 1;

    cp_kind : coverpoint sample_kind {
      bins pc_progress = {OBS_PC_PROGRESS};
      bins axi_reads   = {OBS_AXI_AR, OBS_AXI_R_LAST};
      bins axi_writes  = {OBS_AXI_AW, OBS_AXI_W_LAST, OBS_AXI_B};
      bins bus_req     = {OBS_BUS_REQ};
      bins i_grant     = {OBS_I_GRANT};
      bins d_grant     = {OBS_D_GRANT};
      bins bus_data    = {OBS_BUS_DATA};
    }

    cp_bus_src : coverpoint sample_src iff (sample_kind == OBS_BUS_REQ) {
      bins i0 = {REQ_I0};
      bins i1 = {REQ_I1};
      bins d0 = {REQ_D0};
      bins d1 = {REQ_D1};
    }

    cp_bus_cmd : coverpoint sample_cmd iff (sample_kind == OBS_BUS_REQ) {
      bins gets = {CMD_GETS};
      bins getm = {CMD_GETM};
      bins upgr = {CMD_UPGR};
      bins wb   = {CMD_WB};
    }

    cp_grant_dst : coverpoint sample_dst iff (sample_kind inside {OBS_I_GRANT, OBS_D_GRANT}) {
      bins i0 = {REQ_I0};
      bins i1 = {REQ_I1};
      bins d0 = {REQ_D0};
      bins d1 = {REQ_D1};
    }

    cp_d_state : coverpoint sample_state iff (sample_kind == OBS_D_GRANT) {
      bins state_i = {2'd0};
      bins state_s = {2'd1};
      bins state_e = {2'd2};
      bins state_m = {2'd3};
    }

    cp_pc_core : coverpoint sample_core_id iff (sample_kind == OBS_PC_PROGRESS) {
      bins core0 = {0};
      bins core1 = {1};
    }

    cp_grant_ok : coverpoint sample_ok iff (sample_kind inside {OBS_I_GRANT, OBS_D_GRANT}) {
      bins grant_ok     = {1'b1};
      bins grant_not_ok = {1'b0};
    }

    cr_bus_cmd_src : cross cp_bus_cmd, cp_bus_src;
  endgroup

  function new(string name = "smp_coverage", uvm_component parent = null);
    super.new(name, parent);
    smp_cg = new();
  endfunction

  virtual function void write(smp_obs_item t);
    sample_kind    = t.kind;
    sample_src     = t.src;
    sample_cmd     = t.cmd;
    sample_dst     = t.dst;
    sample_state   = t.state;
    sample_core_id = t.core_id;
    sample_ok      = t.ok;
    smp_cg.sample();
  endfunction
endclass
