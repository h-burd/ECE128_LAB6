`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 01:51:59 PM
// Design Name: 
// Module Name: D_Flip_Flop_async
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



// module for D flip flop with async reset
module D_Flip_Flop_async(input d, input rstn, input clk, output reg q);

always @(posedge clk or negedge rstn)
    if(!rstn)
        q <= 0;
    else
        q <= d;

endmodule
