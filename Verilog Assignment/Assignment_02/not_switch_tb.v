`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 12:15:18 PM
// Design Name: 
// Module Name: not_switch_tb
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


module not_switch_tb;
reg a;
wire y;
not_switch uut(.a(a),.y(y));
initial begin
$display("time/ta/ty");
$monitor("%0t/t%b/t%b",$time,a,y);
a=1;#10;
a=0;#10;
$finish;
end
endmodule