`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 10:30:46 AM
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter
    #(parameter N = 8)
    (
    
        input clk,
        input reset_n, 
        input enable_n,        // if enable_n = 1  Q <- Q_next else Q <- Q
        input up,              // if up = 1 counts up else counts  down
        output [N-1:0]Q

    );
    
    reg[N-1:0] Q_reg, Q_next;
    
    always @(posedge clk, negedge reset_n) begin
    
        if(!reset_n)begin
            
                Q_reg <= 'b0;
        
        end         
        else if (enable_n) begin
        
            Q_reg <= Q_next;
        
        end    
        else begin
        
            Q_reg <= Q_reg;
        
        end 
        
    end    
    
    
    always @(*) begin
    
        if(up) begin
            
            Q_next = Q_reg + 1;
        
        end 
        
        else begin
        
            Q_next = Q_reg - 1;
        
        end  

    end     
    

    assign Q = Q_reg; 
    
endmodule
