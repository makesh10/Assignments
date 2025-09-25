`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:34:12 PM
// Design Name: 
// Module Name: verilogtest_03
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


module verilogtest_03 #(parameter N=8)
(input [N-1:0]A,B,
input Cin,
output [N-1:0]Sum,
output Cout);

assign {Cout,Sum}=A+B+Cin;
endmodule
