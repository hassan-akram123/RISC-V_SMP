`timescale 1ns / 1ps

module L1_Icache_tb;

    // Signals
    logic        clk;
    logic        rst_n;
    logic        i_lookup_en;
    logic [31:0] i_lookup_addr;
    logic        i_fill_en;
    logic [31:0] i_fill_addr;
    logic [2:0]  i_fill_way;
    logic [511:0] i_fill_line;
    logic [63:0] i_rdata;
    logic        i_hit;
    logic        i_rvalid;
    logic [2:0]  i_hit_way;
    logic        o_lookup_stalled;

    // Clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // DUT
    L1_Icache dut (
        .clk(clk),
        .rst_n(rst_n),
        .i_lookup_en(i_lookup_en),
        .i_lookup_addr(i_lookup_addr),
        .i_fill_en(i_fill_en),
        .i_fill_addr(i_fill_addr),
        .i_fill_way(i_fill_way),
        .i_fill_line(i_fill_line),
        .i_rdata(i_rdata),
        .i_hit(i_hit),
        .i_rvalid(i_rvalid),
        .i_hit_way(i_hit_way),
        .o_lookup_stalled(o_lookup_stalled)
    );

    // Test
    initial begin
        // Reset
        rst_n = 0;
        i_lookup_en = 0;
        i_fill_en = 0;
        i_lookup_addr = 0;
        i_fill_addr = 0;
        i_fill_way = 0;
        i_fill_line = 0;
        
        #10;
        rst_n = 1;
        #20;
        
        // Fill way 0 with data
        @(posedge clk);
        i_fill_en = 1;
        i_fill_addr = 32'h01111000;
        i_fill_way = 3'd0;
        i_fill_line = {448'h0, 64'hDEADBEEFDEADBEEF};
        
        @(posedge clk);
        i_fill_en = 0;
        #20;
        
        // Lookup
        @(posedge clk);
        i_lookup_en = 1;
        i_lookup_addr = 32'h01111000;
        
        @(posedge clk);
        i_lookup_en = 0;
        
        #30;
        
        @(posedge clk);
                i_fill_en = 1;
                i_fill_addr = 32'h01110000;
                i_fill_way = 3'd0;
                i_fill_line = {448'h0, 64'hDEADBEEFDEADBEEF};
                
                @(posedge clk);
                i_fill_en = 0;
                #20;
                
                // Lookup
                @(posedge clk);
                i_lookup_en = 1;
                i_lookup_addr = 32'h01110000;
                
                @(posedge clk);
                i_lookup_en = 0;
                
                #30;
        
        
        $display("Hit:  %b, Valid: %b, Data: %h", i_hit, i_rvalid, i_rdata);
        
        #50;
        $finish;
    end

endmodule


