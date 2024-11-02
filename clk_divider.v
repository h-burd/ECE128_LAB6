`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:43:10 PM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(input clk, output reg newClk);
    reg [1:0] counter; 
    
    initial begin
        counter = 0;   
        newClk = 0;   
    end

    always @(posedge clk) begin
        counter <= counter + 1; 
        if (counter == 2'b01) begin
            newClk <= ~newClk;
            counter <= 0;
        end
    end
endmodule

