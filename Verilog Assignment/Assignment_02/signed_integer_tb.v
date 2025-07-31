`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 02:48:03 PM
// Design Name: 
// Module Name: signed_integer_tb
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


module signed_integer_tb;
integer i_pos,i_neg;
initial begin
$monitor("time=%0d i_pos=%0d i_neg=%0d",$time,i_pos,i_neg);
i_pos=25;#10;
i_neg=-12;#10;
$finish;#20;
end
endmodule
