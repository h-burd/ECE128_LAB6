`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:56:31 PM
// Design Name: 
// Module Name: clk_divider_tb
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


module clk_divider_tb;

    reg clk;
    wire dividedClk;

    clk_divider uut (.clk(clk),.newClk(dividedClk));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        #200;
        $finish;
    end

endmodule