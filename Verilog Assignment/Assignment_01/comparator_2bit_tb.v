`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 04:58:07 PM
// Design Name: 
// Module Name: comparator_2bit_tb
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


module comparator_2bit_tb;
reg a,b;
wire c,d,e;
comparator_2bit uut(.a(a),.b(b),.c(c),.d(d),.e(e));
initial begin
{a,b}=2'b11;#40;
{a,b}=2'b00;#40;
{a,b}=2'b10;#40;
{a,b}=2'b01;#40;
end
endmodule
