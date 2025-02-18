`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2025 10:41:14 PM
// Design Name: 
// Module Name: inverter
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


(* dont_tocuh = "yes" *) module compare_counter(
        (* dont_touch = "yes" *) input [31:0] count_a,
        (* dont_touch = "yes" *) input [31:0] count_b,
        (* dont_touch = "yes" *) input enable,
        (* dont_tocuh = "yes" *) output reg x
    );
    
   
    
    always @(posedge enable) begin
        x <= count_a > count_b ? 1 : 0; 
        
    end
    
    
    
    
endmodule
