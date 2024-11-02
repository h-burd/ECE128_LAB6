`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:25:04 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb;

    reg clk;
    wire c0, c1, c2;

    counter uut (.clk(clk),.c0(c0),.c1(c1),.c2(c2));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        #200;
        $finish;
    end

endmodule
