`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 10:31:14 AM
// Design Name: 
// Module Name: up_down_counter_tb
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


module up_down_counter_tb;

    parameter N = 8;
    reg clk;
    reg reset_n;
    reg enable_n;        // if enable_n = 1  Q <- Q_next else Q <- Q
    reg up;              // if up = 1 counts up else counts  down
    wire [N-1:0]Q;

    
    up_down_counter #(.N(N)) tb(
    
        .clk(clk),
        .reset_n(reset_n),
        .enable_n(enable_n),
        .up(up),
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
        enable_n = 1'b1;
        up = 1'b1;
        #2;
        reset_n = 1'b0;
        #1;
        reset_n = 1'b1;
        #500;
        enable_n = 1'b0;
        #100;
        enable_n = 1'b1;
        #15;
        up = 1'b0;
        #400;
        
        $finish;
        
    end 
    

endmodule
