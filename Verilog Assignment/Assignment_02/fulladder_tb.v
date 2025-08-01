`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 10:57:05 AM
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb;
reg a,b,c_in;
wire sum,carry;
fulladder uut(.a(a),.b(b),.c_in(c_in),.sum(sum),.carry(carry));
initial begin
$display("time/ta/tb/tc_in/tsum/tcarry");
$monitor("%0t/t%b/t%b",$time,a,b,c_in,sum,carry);
a=0;b=0;c_in=0;#10
a=1;b=1;c_in=1;#10
a=1;b=0;c_in=1;#10
$finish;
end
endmodule
