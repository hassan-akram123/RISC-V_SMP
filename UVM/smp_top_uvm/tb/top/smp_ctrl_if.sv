interface smp_ctrl_if(input logic clk);

  logic rst_n_drv;

  logic        clear_mem_req;
  logic        clear_mem_ack;

  logic        write_req;
  logic        write_ack;
  logic [31:0] write_addr;
  logic [31:0] write_instr;

  logic        force_roles_req;
  logic        force_roles_ack;
  logic [63:0] core0_role_value;
  logic [63:0] core1_role_value;

  logic        release_roles_req;
  logic        release_roles_ack;

  initial begin
    rst_n_drv          = 1'b0;
    clear_mem_req      = 1'b0;
    write_req          = 1'b0;
    write_addr         = '0;
    write_instr        = '0;
    force_roles_req    = 1'b0;
    force_roles_ack    = 1'b0;
    core0_role_value   = '0;
    core1_role_value   = '0;
    release_roles_req  = 1'b0;
    release_roles_ack  = 1'b0;
  end

  task automatic assert_reset(int unsigned cycles = 1);
    rst_n_drv <= 1'b0;
    repeat (cycles) @(posedge clk);
  endtask

  task automatic release_reset();
    rst_n_drv <= 1'b1;
    @(posedge clk);
  endtask

  task automatic wait_cycles(int unsigned cycles);
    repeat (cycles) @(posedge clk);
  endtask

  task automatic clear_memory();
    @(posedge clk);
    clear_mem_req <= 1'b1;
    do @(posedge clk); while (clear_mem_ack !== 1'b1);
    clear_mem_req <= 1'b0;
    @(posedge clk);
  endtask

  task automatic write_instr_dup(logic [31:0] addr, logic [31:0] instr);
    @(posedge clk);
    write_addr  <= addr;
    write_instr <= instr;
    write_req   <= 1'b1;
    do @(posedge clk); while (write_ack !== 1'b1);
    write_req   <= 1'b0;
    @(posedge clk);
  endtask

  task automatic force_roles(logic [63:0] core0_value, logic [63:0] core1_value);
    @(posedge clk);
    core0_role_value <= core0_value;
    core1_role_value <= core1_value;
    force_roles_req  <= 1'b1;
    do @(posedge clk); while (force_roles_ack !== 1'b1);
    force_roles_req  <= 1'b0;
    @(posedge clk);
  endtask

  task automatic release_roles();
    @(posedge clk);
    release_roles_req <= 1'b1;
    do @(posedge clk); while (release_roles_ack !== 1'b1);
    release_roles_req <= 1'b0;
    @(posedge clk);
  endtask

endinterface
