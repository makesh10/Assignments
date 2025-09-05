`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 10:50:33 AM
// Design Name: 
// Module Name: fsm_14
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


module fsm_14(
input wire clk_in,
input wire reset,
output reg clk_out
);

parameter
period=10,
high=6,
low=(period-high);
reg [3:0]counter;

always@(posedge clk_in or posedge reset)begin
if(reset)begin
counter<=0;
clk_out<=0;
end else
if (counter<period-1)
counter<=counter+1;
else
counter<=0;
if(counter<high)
clk_out<=1;
else
clk_out<=0;
end

endmodule 
