`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 06:44:34 PM
// Design Name: 
// Module Name: question_12_tb
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


module question_12_tb;
reg [3:0]a;
reg [1:0]x;
initial begin
a = 4'd10;
x=(a>>1);
end
endmodule
