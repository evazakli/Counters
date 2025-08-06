`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 04:32:51 PM
// Design Name: 
// Module Name: counter_as_timer
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


module counter_as_timer
    // 50ns/10ns = 5    5-1=4 --> MAX  [0 1 2 3 4] 
    #(parameter MAX = 4)
    (
    
        input clk,
        input reset_n,
        output [$clog2(MAX):0] Q,
        output tick
    );
        
    reg [$clog2(MAX):0] Q_next, Q_reg;
    reg tick;
    
    always @(negedge clk, negedge reset_n) begin
    
        if(!reset_n) begin
        
            Q_reg <= 'b0;
            tick <= 1'b0;
        
        end
        else begin
            
            Q_reg <= Q_next;
            
        end

    end 
    
    always @(*) begin
    
        if(Q_reg == MAX) begin
        
            Q_next = 'b0;
            tick = 1'b1;
        
        end 
        
        else begin
        
            Q_next = Q_reg + 1;
            tick = 1'b0;
        end
        

    end
     
    assign Q = Q_reg;
    
endmodule
