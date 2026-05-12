`timescale 1ns / 1ps

module data_hazard_unit(
input logic [4:0] RS1E,
input logic [4:0] RS2E,
input logic [4:0] RDM,
input logic [4:0] RDW,
input logic [4:0] RDE,
input logic [4:0] RS1D,
input logic [4:0] RS2D,
input logic PC_Mux,
input logic w_enW, w_enM, rd_en,
output logic [1:0] Forward_A,
output logic [1:0] Forward_B,
output logic Stall, Flush
);

       always_comb begin
        if (((RS1E == RDM) && w_enM) && (RS1E != 5'b00000) ) begin
            Forward_A = 2'b10;
        end
        else if ( ((RS1E == RDW) && w_enW) && (RS1E != 5'b00000) ) begin
            Forward_A = 2'b01;
        end
        else begin
            Forward_A = 2'b00;
        end
        
       end
   
        always_comb begin
            if (((RS2E == RDM) && w_enM) && (RS2E != 0) ) begin
                Forward_B = 2'b10;
            end
            else if ( ((RS2E == RDW) && w_enW) && (RS2E != 0) ) begin
                Forward_B = 2'b01;
            end
            else begin
                Forward_B = 2'b00;
            end
            
        end
        
        always_comb begin
            Stall = 1'b0;
            if (rd_en && (RDE != 5'b00000)) begin
                if ((RS1D == RDE) || (RS2D == RDE)) begin
                    Stall = 1'b1;
                end
            end
        end
        
         always_comb begin
                   Flush = PC_Mux; 
         end
       
endmodule
