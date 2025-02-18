`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2025 06:01:03 PM
// Design Name: 
// Module Name: timer_xor
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


module timer_logic(
    input CE_in,
    input time_stop,
    output reg CE_out
    );
    
    //Allows for the timer to be active if only CE_in is true while if time_stop is true the timer will stop
    always @(*) begin
        CE_out = (CE_in) & (CE_in ^ time_stop);
    end
    
endmodule
