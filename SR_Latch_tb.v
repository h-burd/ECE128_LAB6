`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:23:57 PM
// Design Name: 
// Module Name: SR_Latch_tb
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


module SR_Latch_tb();

    reg r, s;
    wire q, qbar;
    
    SR_Latch DUT(.S(s), .R(r), .Q(q), .Qbar(qbar));
    
    initial
    begin
        r=0; s=0;
        #5 s=1;
        #5 s=0;
        
        #5 r=1;
        #5 s=1;
        #5 s=0;
        
        #5 r=0; s=1;
        #5 s=0; r=1;
        #5 r=0;
        #5 r=1; s=1;
        #5 $stop;
    end
    
endmodule
