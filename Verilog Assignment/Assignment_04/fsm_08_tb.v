`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 06:30:23 PM
// Design Name: 
// Module Name: fsm_08_tb
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


module fsm_08_tb();
reg clk,reset,x;
wire y;

fsm_08 uut(.clk(clk),.reset(reset),.x(x),.y(y));

always #5 clk=~clk;

initial begin
reset=1;clk=0;x=0;
end
initial begin
#10 reset=0;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=1;
#10 x=1;
#10 x=1;
#10 x=0;
#10 x=1;
#20 $finish;
end
endmodule
