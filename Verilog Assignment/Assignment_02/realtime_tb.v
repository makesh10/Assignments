`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 04:08:07 PM
// Design Name: 
// Module Name: realtime_tb
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
module realtime_tb;
realtime current_time;
real delta_1,delta_2;
initial begin
current_time=$realtime;
$display("time=%0t current_time=%0d delta_1=%0d delta_2=%0d",$time,current_time,delta_1,delta_2);
$monitor("time=%0t current_time=%0d delta_1=%0d delta_2=%0d",$time,current_time,delta_1,delta_2);
delta_1=4e10;#10;
delta_2=2.18;#20;
$finish;#2;
end
endmodule

