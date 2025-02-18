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


(* dont_touch = "yes" *) module inverter(
        (* dont_touch = "yes" *) input a,
        (* dont_touch = "yes" *) output reg x
    );
    
    always @(a)
        x <= ~a;
    
    
    
endmodule
