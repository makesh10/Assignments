`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 01:31:19 PM
// Design Name: 
// Module Name: part_select_tb
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


module part_select_tb;
reg [7:0]bus;
reg [3:0]y;;
reg [7:4]y1;
initial begin
bus[7:0]=8'b10101010;#10;
y=bus[3:0];#10;
y1=bus[7:4];#10;
$finish;#2;
end
endmodule
