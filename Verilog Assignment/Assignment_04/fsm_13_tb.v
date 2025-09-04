`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 05:03:45 PM
// Design Name: 
// Module Name: fsm_13_tb
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


module fsm_13_tb();
reg clk,rst,x;
wire y;

fsm_13 uut(.clk(clk),.rst(rst),.x(x),.y(y));

initial begin
clk=0;
forever #10 clk=~clk;
end

initial begin
rst=1;x=0;
#12
rst=0;
x=0;#10;
x=1;#10;
x=0;#10;
x=1;#10;
x=0;#10;
x=1;#10;
#10 $finish;
end
 
endmodule
