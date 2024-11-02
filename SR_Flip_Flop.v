`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:13:58 PM
// Design Name: 
// Module Name: SR_Flip_Flop
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


module SR_Flip_Flop(input E, input S, input R, output Q, output Qbar);

wire r_wire;
wire s_wire;

and (r_wire, E, R);
and (s_wire, E, S);

nor N1(Q, r_wire, Qbar);
nor N2(Qbar, s_wire, Q);


endmodule
