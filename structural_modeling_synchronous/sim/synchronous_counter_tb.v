`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 04:19:41 PM
// Design Name: 
// Module Name: synchronous_counter_tb
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


module synchronous_counter_tb;
 
     reg clk;
     reg reset_n;
     reg T;
     wire [3:0] Q;
     
     synchronous_counter tb(
     
        .clk(clk),
        .reset_n(reset_n),
        .T(T),
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
