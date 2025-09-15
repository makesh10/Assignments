`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 03:22:07 PM
// Design Name: 
// Module Name: taskfun_07
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


module taskfun_07;
reg [7:0]in;
reg [7:0]out;

function [7:0] right_shift;
input [7:0]in;
begin
right_shift=in>>1;
end
endfunction

initial begin
in=8'b10101010;
out=right_shift(in);
end
endmodule
