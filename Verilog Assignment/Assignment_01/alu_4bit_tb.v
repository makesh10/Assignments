`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 11:44:19 AM
// Design Name: 
// Module Name: alu_4bit_tb
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


module alu_4bit_tb;
reg a,b,c;
wire sum,carry,difference,borrow;
alu_4bit uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
alu_4bit1 uut_1(.a(a),.b(b),.c(c),.difference(difference),.borrow(borrow));
initial begin
a=1'b0;b=1'b1;c=1'b1;#20;
a=1'b1;b=1'b0;c=1'b0;#20;
a=1'b0;b=1'b1;c=1'b1;#20;
a=1'b0;b=1'b1;c=1'b0;#20;
$finish;
end
endmodule
