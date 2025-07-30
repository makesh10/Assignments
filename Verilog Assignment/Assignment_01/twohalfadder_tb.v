`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 03:03:37 PM
// Design Name: 
// Module Name: twohalfadder_tb
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


module twohalfadder_tb;
reg a,b,c_in;
wire sum,carry;
twohalfadder uut(.a(a),.b(b),.c_in(c_in),.sum(sum),.carry(carry));
initial begin
$display("time/ta/tb/tc_in/tsum/tcarry");
$monitor("%0t/t%b/t%b",$time,a,b,c_in,sum,carry);
a=0;b=0;c_in=1;#20;
a=1;b=1;c_in=1;#20;
a=0;b=1;c_in=0;#20;
a=1;b=0;c_in=0;#20;
$finish;
end
endmodule
