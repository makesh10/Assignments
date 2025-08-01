`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 11:02:37 AM
// Design Name: 
// Module Name: and_udp_tb
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


module and_udp_tb();
reg a,b;
wire y;
and_udp uut (.a(a),.b(b),.y(y));
initial begin
$display("time/ta/tb/ty");
$monitor("%0t/t%b/t%b",$time,a,b,y);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;#2;
end
endmodule
