`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 01:10:35 PM
// Design Name: 
// Module Name: taskfun_05
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


module taskfun_05;
reg [7:0]a,b;
reg [7:0]mul;
reg [7:0]div;

function [7:0]multiply;
input [7:0]a,b;
begin
multiply=a*b;
end
endfunction

function [7:0]division;
input [7:0]a,b;
begin
division=a/b;
end
endfunction

initial begin
a=8'd20;b=8'd10;#10;
mul=multiply(a,b);
div=division(a,b);
a=8'd10;b=8'd2;#10;
mul=multiply(a,b);
div=division(a,b);
end
endmodule
