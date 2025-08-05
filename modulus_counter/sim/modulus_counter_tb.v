`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 01:25:58 PM
// Design Name: 
// Module Name: modulus_counter_tb
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


module modulus_counter_tb;

        parameter bit = 6, MAX = 53;
    
        
        reg clk;
        reg reset_n;
        reg enable_n;
        wire [bit-1:0]Q;
        
        
        modulus_counter #(.bit(bit), .MAX(MAX)) tb(
        
            .clk(clk),
            .reset_n(reset_n),
            .enable_n(enable_n),
            .Q(Q)
            
        );
        
             
        
        
        always begin
            
            clk = 1'b0;
            #5;
            clk = 1'b1;
            #5;
            
        end 
        
        
        
        
        
        initial begin
        
            enable_n = 1'b1;
            reset_n = 1'b1;
            #1;
            reset_n = 1'b0;
            #1
            reset_n = 1'b1;
            

        end 
        
    
endmodule
