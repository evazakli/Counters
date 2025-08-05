`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 09:54:50 AM
// Design Name: 
// Module Name: up_counters
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module up_counters

    #(parameter N = 4)
    (
        input clk,
        input reset_n,
        output [N-1:0] Q
    );
    
    reg [N-1:0] Q_next, Q_reg;
    
    always @(posedge clk, negedge reset_n ) begin
    
        if(~reset_n) begin
        
            Q_reg <= 'b0;
            
        end
        else begin
            
            Q_reg <= Q_next;
        
        end
        
    end 
    
    always @(*) begin
    
        Q_next = Q_reg+1;
        
    end
    
    assign Q = Q_reg;
   
    
       
endmodule
