`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 06:01:42 PM
// Design Name: 
// Module Name: mux8_1_tb
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


module mux8_1_using_mux4_1_tb;
reg s0,s1,s2,a,b,c,d,e,f,g,h;
wire y;
mux8_1_using_mux4_1 uut(.s0(s0),.s1(s1),.s2(s2),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.h(h),.y(y));
initial begin
$display("time/ts0/ts1/ts2/ta/tb/tc/td/te/tf/tg/th");
$monitor("%0t/t%b/t%b",$time,s0,s1,s2,a,b,c,d,e,f,g,h,y);
s0=0;s1=0;s2=0;a=1;b=0;c=0;d=0;e=0;f=0;g=0;h=0;#10;
s0=1;s1=1;s2=1;a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=1;#10;
$finish;#2;
end
endmodule
