`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 10:12:19 AM
// Design Name: 
// Module Name: up_counters_tb
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


module up_counters_tb;

    parameter N = 8;
    
    reg clk;
    reg reset_n;
    wire [N-1:0] Q;
    
    
    up_counters #(.N(N))tb (
    
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q)
 
 
    );
    
    
    always begin
    
        clk = 1'b0;
        #5;
        clk = 1'b1;
        #5;
        
    end 
    
    
    initial begin
    
        reset_n = 1'b1;
        #1;
        reset_n = 1'b0;
        #1;
        reset_n = 1'b1;
        #50;
    
    
    end 



endmodule
