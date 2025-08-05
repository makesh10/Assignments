`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 06:32:24 PM
// Design Name: 
// Module Name: question_10_tb
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


module question_10_tb;
reg [2:0]a,b;
reg [2:0]x;
initial begin
a=3'd5;
b=3'b111;
x=a|b;
end
endmodule
