`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 04:07:43 PM
// Design Name: 
// Module Name: synchronous_counter
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


module synchronous_counter(

        input clk,
        input reset_n,
        input T,
        output [3:0] Q

    );
    
    wire Q1_T, Q2_T, Q3_T;
    
    assign Q0_T = T;
    assign Q1_T = Q[0] & T;
    assign Q2_T = Q[1] & Q1_T;
    assign Q3_T = Q[2] & Q2_T;
    
    
     t_ff ff0(
     
        .clk(clk),
        .T(T),
        .reset_n(reset_n),
        .Q(Q[0])
 
     );
     
     
     
     t_ff ff1(
     
        .clk(clk),
        .T(Q1_T),
        .reset_n(reset_n),
        .Q(Q[1])
 
     );
     
     
     
     t_ff ff2(
     
        .clk(clk),
        .T(Q2_T),
        .reset_n(reset_n),
        .Q(Q[2])
 
     );
     
     
     
     t_ff ff3(
     
        .clk(clk),
        .T(Q3_T),
        .reset_n(reset_n),
        .Q(Q[3])
 
     );
    

endmodule
