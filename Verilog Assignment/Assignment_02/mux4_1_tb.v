`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 04:37:36 PM
// Design Name: 
// Module Name: mux4_1_tb
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


module mux4_1_tb;
reg s0,s1,a,b,c,d;
wire y;
mux4_1 uut(.s0(s0),.s1(s1),.a(a),.b(b),.c(c),.d(d),.y(y));
initial begin
$display("time/ts0/ts1/ta/tb/tc/td/ty");
$monitor("%0t/t%b/t%b",$time,s0,s1,a,b,c,d,y);
s0=0;s1=0;a=1;b=0;c=0;d=0;#20;
s0=0;s1=1;a=0;b=1;c=0;d=0;#20;
s0=1;s1=0;a=0;b=0;c=1;d=0;#20;
s0=1;s1=1;a=0;b=0;c=0;d=1;#20;
$finish;
end
endmodule
