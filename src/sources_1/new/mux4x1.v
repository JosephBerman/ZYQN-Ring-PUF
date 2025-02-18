`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2025 10:21:43 PM
// Design Name: 
// Module Name: mux4x1
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


(* dont_touch = "yes" *) module mux4x1(
    (* dont_touch = "yes" *) input a,
    (* dont_touch = "yes" *) input b,
    (* dont_touch = "yes" *) input c,
    (* dont_touch = "yes" *) input d,
    (* dont_touch = "yes" *) output reg x,
    (* dont_touch = "yes" *) input [1:0] mux_enable
    );
    
    always @(*) begin 
        case (mux_enable) 
            2'b00 : x <=a;
            2'b01 : x <=b;
            2'b10 : x <=c;
            2'b11 : x <=d;
            default: x<=a;
        endcase
    end
    
    
endmodule
