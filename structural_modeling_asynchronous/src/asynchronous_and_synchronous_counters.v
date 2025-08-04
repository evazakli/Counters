`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 11:18:44 AM
// Design Name: 
// Module Name: asynchronous_and_synchronous_counters
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

// structural design 
module asynchronous_counters(

        input clk,
        input T,
        input reset_n,
        output [3:0] Q
    );
    
        
            t_ff syn0(
                .clk(clk),
                .T(T),
                .reset_n(reset_n),
                .Q(Q[0])
            );
            
            
            t_ff syn1(
                .clk(~Q[0]),
                .T(T),
                .reset_n(reset_n),
                .Q(Q[1])
            );
        
        
            t_ff syn2(
                .clk(~Q[1]),
                .T(T),
                .reset_n(reset_n),
                .Q(Q[2])
            );
        

            t_ff syn3(
                .clk(~Q[2]),
                .T(T),
                .reset_n(reset_n),
                .Q(Q[3])
            );
         
    
endmodule
