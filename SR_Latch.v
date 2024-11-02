`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:21:22 PM
// Design Name: 
// Module Name: SR_Latch
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


module SR_Latch(input S, input R, output Q, output Qbar);
nor #1 N1(Q, R, Qbar);
nor #1 N2(Qbar, S, Q);
endmodule
