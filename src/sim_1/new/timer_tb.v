`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2025 04:12:04 PM
// Design Name: 
// Module Name: timer_tb
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


module timer_tb;


    reg CLK;
    reg SCLR;
    reg CE;
    wire [3:0] Q;
    wire time_stop;


timer_wrapper uut
       (.CLK(CLK),
        .Q(Q),
        .CE(CE),
        .SCLR(SCLR),
        .time_stop(time_stop)
        );
        



    always #1 CLK = ~CLK;        
        
    initial begin
    
        //Reset
        CLK = 0;
        SCLR = 1;
        CE = 0;
        
        //Start timer
        #1 
        SCLR = 0;
        CE = 1;
        
        //Stop timer
        #50
        CE = 0;
        
        //Reset timer (Check if time_stop logic stopped counter)
        #25        
        SCLR = 1;
        
        //Turn off Reset
        #5
        SCLR = 0;
        
        //Turn counter back on
        #5
        CE = 1;
        #50
        
        //Reset timer (Check if time_stop logic stopped counter)
        #25        
        SCLR = 1;
        
        //see if counter is still at 0 (time_stop logic should still be active) then stop CE
        #5
        CE = 0;
        
        #10
        
        
        $stop;
        
    end
        
endmodule
