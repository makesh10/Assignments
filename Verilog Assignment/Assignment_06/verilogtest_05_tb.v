`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 12:27:24 PM
// Design Name: 
// Module Name: verilogtest_05_tb
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


module verilogtest_05_tb();
reg clk;
reg reset;
wire clk_out;

verilogtest_05 uut(.clk(clk),.reset(reset),.clk_out(clk_out));
always #10 clk=~clk;

initial begin
clk=0;reset=1;#50;
reset=0;#50;
#5000000;
$finish;
end
endmodule