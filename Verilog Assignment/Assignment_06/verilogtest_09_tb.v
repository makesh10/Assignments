`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:18:05 PM
// Design Name: 
// Module Name: verilogtest_09_tb
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


module verilogtest_09_tb();
reg clk,rst,x;
wire y;
verilogtest_09 uut(.clk(clk),.rst(rst),.x(x),.y(y));
always #5 clk=~clk;
initial begin
rst=1;clk=0;x=0;#10;
rst=0;#10;
x=1;#10;
x=0;#10;
x=1;#10;
x=1;#10;
x=0;#10;
x=0;#10;
x=1;#10;
#10 $finish;
end
endmodule
