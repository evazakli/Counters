`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 02:20:48 PM
// Design Name: 
// Module Name: asynchronous_and_synchronous_counters_tb
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


module asynchronous_counters_tb;

    reg clk;
    reg T;
    reg reset_n;
    wire [3:0] Q;
    
    
    asynchronous_counters tb(
    
        .clk(clk),
        .T(T),
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
    
        T = 1'b1;
        reset_n = 1'b0;
        #6;
        reset_n = 1'b1;
        #50;
 
    end 
    
endmodule   
