`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 06:13:27 PM
// Design Name: 
// Module Name: question_9_tb
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


module question_9_tb;
reg [2:0]a,b;
reg y;
initial begin
a=3'd7;
b=3'b111;
y=a&&b;
end
endmodule
