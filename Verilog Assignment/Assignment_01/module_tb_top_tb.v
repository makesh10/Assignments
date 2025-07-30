`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 01:10:26 PM
// Design Name: 
// Module Name: module_tb_top_tb
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


module tb_top_tb;
wire w1;
xmit xmit_i1(w1);
rcv rcv_i1 (w1);
endmodule

module xmit (output reg w);
initial w=1;
endmodule

module rcv (input wire w);
initial begin
$display ("w value is ");
$display(w);
end
endmodule