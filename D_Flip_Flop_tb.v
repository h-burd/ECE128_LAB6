`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:12:36 PM
// Design Name: 
// Module Name: D_Flip_Flop_tb
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


module D_Flip_Flop_tb();
    reg clk;
    reg d;
    reg rstn;
    reg [2:0] delay;
    integer i;
    
    D_Flip_Flop dut(.d(d), .rstn(rstn), .clk(clk), .q(q));
    
    always #10 clk=~clk;
    
    initial begin
        clk <= 0;
        d <= 0;
        rstn <= 0;
        
        #15 d <= 1;
        #10 rstn <= 1;
        
        for(i = 0; i < 5; i=i+1) begin
            delay = $random;
            #(delay) d <= i;
            rstn = 0;
            #10;
            rstn = 1;
        end
     end      

endmodule
