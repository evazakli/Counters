`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 04:55:11 PM
// Design Name: 
// Module Name: synchronous_counter_beh
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


module synchronous_counter_beh(

        input clk,
        input reset_n,
        input T,
        output [3:0] Q
        
    );
    
    reg [3:0] Q_reg;
    reg Q1_T, Q2_T, Q3_T;
    
    
        always @(posedge clk) begin
        
            if(!reset_n) begin  
                Q_reg = 4'b0;
            end
            else begin   
            
            // 1. T Flip-Flop         
                if(T) begin             
                    Q_reg[0] <= ~Q_reg[0];
                end
                else begin
                    Q_reg[0] <= Q_reg[0];
                end
            
            // 2. T Flip-Flop    
                
                if(Q1_T) begin               
                    Q_reg[1] <= ~Q_reg[1];                
                end
                else begin
                    Q_reg[1] <= Q_reg[2];
                end 
                
            // 3. T Flip-Flop    
                
                if(Q2_T) begin               
                    Q_reg[2] <= ~Q_reg[2];                
                end
                else begin
                    Q_reg[2] <= Q_reg[2];
                end 
                
             // 4. T Flip-Flop    
                
                if(Q3_T) begin               
                    Q_reg[3] <= ~Q_reg[3];                
                end
                else begin
                    Q_reg[3] <= Q_reg[3];
                end 
                       
            end 

        end 
        
        always @(*)begin
        
            Q1_T = T & Q_reg[0];
            Q2_T = Q1_T & Q_reg[1];
            Q3_T = Q2_T & Q_reg[2];
            
        end 
 
    assign Q = Q_reg; 
    
endmodule
