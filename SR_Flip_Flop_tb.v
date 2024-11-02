`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:46:54 PM
// Design Name: 
// Module Name: SR_Flip_Flop_tb
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


module SR_Flip_Flop_tb();

reg s, r, clk;
wire q, qbar;

SR_Flip_Flop DUT(.E(clk), .S(s), .R(r), .Q(q), .Qbar(qbar));

initial begin
    clk=0;
    forever #10 clk=~clk;
end
    
initial begin
    s=1; r=0;
    #100; s=0; r=1;
    #100; s=0; r=0;
    #100; s=1; r=1;
    #100; $stop;
end

endmodule
