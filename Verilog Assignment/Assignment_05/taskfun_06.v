`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 03:04:35 PM
// Design Name: 
// Module Name: taskfun_06
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


module taskfun_06;
reg [7:0]a,b;
reg [7:0]add_out,sub_out,mul_out,div_out;

task add;
input [7:0]a,b;
output [7:0]add_out;
begin
add_out=a+b;
end
endtask

task sub;
input [7:0]a,b;
output [7:0]sub_out;
begin
sub_out=a-b;
end
endtask

task mul;
input [7:0]a,b;
output [7:0]mul_out;
begin
mul_out=a*b;
end
endtask

task div;
input [7:0]a,b;
output [7:0]div_out;
begin
div_out=a/b;
end
endtask

initial begin
a=10;b=5;
add(a,b,add_out);
sub(a,b,sub_out);
mul(a,b,mul_out);
div(a,b,div_out);
end
endmodule
