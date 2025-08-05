`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 12:36:20 PM
// Design Name: 
// Module Name: question_8_tb
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


module question_8_tb();
reg[11*8:1]s;
initial
begin
$display("Value of s=%s",s[88:40]);
s="hello world";
end
endmodule