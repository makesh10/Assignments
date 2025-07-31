`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 10:30:23 AM
// Design Name: 
// Module Name: net_types_tb
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


module net_types_tb;
reg a,b,c;
wand w;
wor x;
tri y;
triand z;
assign w=a;
assign w=b;
assign x=a;
assign x=c;
assign y=a;
assign z=a;
assign z=b;
assign z=c;
initial begin
a=1;b=0;c=1;#10;
$display("time/ta/tb/tc/tw/tx/ty/tz");
$monitor("%0t/t%b/t%b",$time,a,b,c,w,x,y,z);
$finish;
end
endmodule
