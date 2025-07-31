`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 03:28:02 PM
// Design Name: 
// Module Name: floating_point_tb
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


module floating_point_tb;
real delta_1,delta_2;
integer int_1,int_2;
initial begin
delta_1=4e10;
delta_2=2.18;#20;
$display("time=%0d delta_1=%0d delta_2=%0d",$time,delta_1,delta_2,int_1,int_2);
$monitor("time=%0d delta_1=%0d delta_2=%0d",$time,delta_1,delta_2,int_1,int_2);
int_1=delta_1;
int_2=delta_2;#20;
$finish;#20;
end
endmodule
