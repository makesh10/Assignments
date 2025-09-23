`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:34:12 PM
// Design Name: 
// Module Name: verilogtest_08_tb
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


module verilogtest_08_tb;
reg clk,rst,x;
wire y;

verilogtest_08 uut(.clk(clk),.rst(rst),.x(x),.y(y));

initial begin
clk=0;
forever #5 clk=~clk;
end

reg[15:0]t;
integer i;

initial begin
rst=1;x=0;#10;
rst=0;#10;
t=16'b1000111010101010;
for(i=15;i>=0;i=i-1)begin
x=t[i];#10;
end
#10 $finish;
end
endmodule
