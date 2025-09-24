`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 05:08:47 PM
// Design Name: 
// Module Name: verilogtest_10_tb
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


module verilogtest_10_tb();
integer random_num;
integer i;
initial begin
for(i=0;i<50;i=i+1)begin
random_num=$urandom_range(-100,100);
$display("Random number[%0d]=%0d",i,random_num);
#10;
end
$finish;
end
endmodule
