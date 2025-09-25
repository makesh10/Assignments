`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 02:37:06 PM
// Design Name: 
// Module Name: verilogtest_04_tb
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


module verilogtest_04_tb();
reg a,b,c,d,e;
wire y;
verilogtest_04 uut(.a(a),.b(b),.c(c),.d(d),.e(e),.y(y));
initial begin
$monitor("t=%0t a=%b b=%b c=%b d=%b e=%b y=%b",$time,a,b,c,d,e,y);
a=1;b=1;c=1;d=1;e=1;#20;
a=0;b=0;c=0;d=1;e=1;#10;
$monitoroff;#50;
$monitoron;
a=1;b=0;c=1;d=1;e=1;#10;
a=1;b=1;c=1;d=1;e=1;#10;
#10 $finish;
end
endmodule
