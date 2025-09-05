`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 10:21:07 AM
// Design Name: 
// Module Name: fsm_10_tb
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


module fsm_10_tb();
reg clk,rst,x,y;
wire z;

reg[7:0]test1,test2;
integer i;
fsm_10 uut(.clk(clk),.rst(rst),.x(x),.y(y),.z(z));

always #10 clk=~clk;

initial begin
clk=0;rst=1;
test1=8'b11001100;
test2=8'b10101010;
#10 rst=0;
for(i=7;i>=0;i=i-1)begin
#10 x=test1[i];
#10 y=test2[i];
end
#10 $finish;
end
endmodule