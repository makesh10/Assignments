`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 12:29:17 PM
// Design Name: 
// Module Name: verilogtest_05
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


module verilogtest_05(input wire clk,input wire reset,
output reg clk_out);
reg [18:0]counter; //2^19=524288
always @(posedge clk or posedge reset) begin
if (reset) begin
 counter<=0;
 clk_out<=0;
end
else begin
if (counter == 249999) begin
 counter<=0;
 clk_out<=~clk_out;
end
else begin
 counter<=counter+1;
end
end
end
endmodule
