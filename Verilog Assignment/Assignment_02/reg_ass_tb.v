`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 11:59:33 AM
// Design Name: 
// Module Name: reg_ass_tb
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


module reg_ass_tb;
reg[7:0]a;
wire[7:0]y;
assign y=a;
initial begin
a=8'b10101010;#20;
$display("time=%0t y=%0b a=%0b",$time,y,a);
$finish;#2;
end
endmodule
