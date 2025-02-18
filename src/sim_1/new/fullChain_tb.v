`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2025 01:15:03 AM
// Design Name: 
// Module Name: fullChain_tb
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


module fullChain_tb;
    
  reg [1:0]mux_enable;
  reg puf_enable;
  reg reset_counter;
  wire [31:0]count_out;

    

  fullChain_wrapper uut(
        .count_out(count_out),
        .mux_enable(mux_enable),
        .reset_counter(reset_counter),
        .puf_enable(puf_enable)
        );
        

   
   initial begin
   
        //Set mux to first input
        reset_counter = 0;
        puf_enable = 0;
        mux_enable = 2'b00;

        //turn on the puf
        #1 
        puf_enable = 1;
        #20

        //turn off puf
        puf_enable = 0;
        mux_enable = 2'b01;

        //Currently enteres an infinite loop (as intended right now) and ends early
    end

   
   
   

endmodule
