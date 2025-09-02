`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 12:47:35 PM
// Design Name: 
// Module Name: fsm_01_tb
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


module fsm_01_tb();
reg clk;
reg reset;
reg x;
wire y;

fsm_01 uut(.clk(clk),.reset(reset),.x(x),.y(y));

always #10 clk=~clk;

reg[15:0]test;
integer i;

initial begin
  clk=0; reset=1; x=0;
  #10 reset=0;
  test=16'b1010101010101010;
  for(i=15; i>=0; i=i-1) begin
  #10 x=test[i];
  end
  #10 $finish;
  end
endmodule
