`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 01:46:56 PM
// Design Name: 
// Module Name: vector_partselect_tb
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


module vector_partselect_tb;
reg[7:0]bus;
reg[7:0]busA;
integer i;
initial begin
bus=8'b11101111;#10;
for (i=0;i<8;i=i+1)
busA[i]=bus[i];
$display("time%0t bus=%0b busA=%0b",$time,bus,busA);
busA=bus[3:0];#10;
$finish;#10;
end
endmodule
