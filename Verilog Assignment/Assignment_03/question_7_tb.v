`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 12:20:59 PM
// Design Name: 
// Module Name: question_7_tb
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


module test;
parameter WIDTH=8;
endmodule

module top;
test OUT ( );
initial begin
OUT.WIDTH=10;#30;
end
endmodule
