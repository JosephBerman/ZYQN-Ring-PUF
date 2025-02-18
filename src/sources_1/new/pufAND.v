`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2025 11:04:02 PM
// Design Name: 
// Module Name: pufNAND
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


(* dont_touch = "yes" *) module pufAND(
    (* dont_touch = "yes" *) input a,
    (* dont_touch = "yes" *) input b,
    (* dont_touch = "yes" *) output reg x
    );
    
    always @(a or b)
        x <= (a & b);
    
endmodule
