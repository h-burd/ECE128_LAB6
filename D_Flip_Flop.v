`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:09:56 PM
// Design Name: 
// Module Name: D_Flip_Flop
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


// module for D flip flop with sync reset
module D_Flip_Flop(input d, input rstn, input clk, output reg q);

always @(posedge clk)
    if(!rstn)
        q <= 0;
    else
        q <= d;

endmodule
