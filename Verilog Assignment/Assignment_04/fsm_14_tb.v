`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 11:22:57 AM
// Design Name: 
// Module Name: fsm_14_tb
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


module fsm_14_tb();
reg clk_in,reset;
wire clk_out;

fsm_14 #(.period(10),.high(6)) uut(.clk_in(clk_in),.reset(reset),.clk_out(clk_out));

initial begin
clk_in=0;
forever #5 clk_in=~clk_in;
end

always begin
reset=1;#20;
reset=0;#100;
reset=1;#20;
reset=0;#100;
#20 $stop;
end

endmodule
