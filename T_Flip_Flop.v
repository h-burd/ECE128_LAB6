`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:04:15 PM
// Design Name: 
// Module Name: T_Flip_Flop
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
module counter(clk, c0, c1, c2);
    input clk;
    output c0, c1, c2;
    
    wire w1, w2;
    
    T_Flip_Flop mod1(.clk(clk), .t(1'b1), .q(w1));
    
    T_Flip_Flop mod2(.clk(clk),  .t(w1), .q(w2));
    
    T_Flip_Flop mod3(.clk(clk),  .t(w1 & w2), .q(c2));

    assign c0 = w1;
    assign c1 = w2;

endmodule


module T_Flip_Flop(clk, t, q);
    input clk, t;
    output reg q = 1'b0;
    
    always @(posedge clk) begin
        if (t) 
            q <= ~q;
    end
endmodule
