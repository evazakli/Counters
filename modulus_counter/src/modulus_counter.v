`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 01:24:21 PM
// Design Name: 
// Module Name: modulus_counter
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


module modulus_counter
    #(parameter  MAX = 53)
    (       
        input clk,
        input reset_n,
        input enable_n,
        output [$clog2(MAX)-1:0]Q
    
    );
    
    reg [$clog2(MAX)-1:0] Q_reg, Q_next;
    
    always @(posedge clk, negedge reset_n) begin
    
        if(!reset_n) begin
        
            Q_reg <= 'b0;
        
        end 
        else begin
        
            if(enable_n) begin
            
                Q_reg <= Q_next;
            
            
            end 
            
            else begin
            
                Q_reg <= Q_reg;
            
            end 
        
        
        end 

    end 
    
  
    always @(*) begin
    
        if(Q_reg == MAX) begin
            
            Q_next = 'b0;
          
            
        end 
        else begin
        
            Q_next = Q_reg + 1;
        
        end
        
    end 
    

    assign Q = Q_reg;
  
endmodule
