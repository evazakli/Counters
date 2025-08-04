`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 02:49:38 PM
// Design Name: 
// Module Name: asynchronous_counter_beh
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


module asynchronous_counter_beh(

        input clk,
        input T,
        input reset_n,
        output [3:0] Q

    );
    
    reg [3:0] Q_reg;
    
    always @(posedge clk) begin
    
        if(!reset_n) begin
            
            Q_reg <= 4'b0;
    
        end
        else begin
        
            if(T)           
                Q_reg[0] <= ~Q_reg[0];
            else
                Q_reg[0] <= Q_reg[0];

        end 
    end 
    
    
    always @(posedge ~Q[0]) begin
    
        if(!reset_n) begin
            
            Q_reg <= 4'b0;
    
        end
        else begin
            if(T)
                Q_reg[1] <= ~Q_reg[1];
            else 
                Q_reg[1] <= Q_reg[1];
        end
    end
    
    
    
    always @(posedge ~Q[1]) begin
    
        if(!reset_n) begin
            
            Q_reg <= 4'b0;
    
        end
        else begin
            if(T)
                Q_reg[2] <= ~Q_reg[2];
            else 
                Q_reg[2] <= Q_reg[2];
        end
    end
    
    
    
    always @(posedge ~Q[2]) begin
    
        if(!reset_n) begin
            
            Q_reg <= 4'b0;
    
        end
        else begin
            if(T)
                Q_reg[3] <= ~Q_reg[3];
            else 
                Q_reg[3] <= Q_reg[3];
        end
    end
    
 
    assign Q = Q_reg;
    
endmodule
