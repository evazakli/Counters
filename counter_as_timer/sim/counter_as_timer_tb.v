`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 09:07:13 AM
// Design Name: 
// Module Name: counter_as_timer_tb
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


module counter_as_timer_tb;

        parameter MAX = 4;
        reg clk;
        reg reset_n;
        wire  [$clog2(MAX):0] Q;
        wire tick; // falling edge of tick: k*50ns
        
        counter_as_timer #(.MAX(MAX)) tb(
        
            .clk(clk),
            .reset_n(reset_n),
            .Q(Q),
            .tick(tick)
         
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
       
        end
        
        
        
        
endmodule
