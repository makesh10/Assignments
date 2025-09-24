`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 03:58:41 PM
// Design Name: 
// Module Name: verilogtest_06_tb
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


module verilogtest_06_tb();
reg [7:0]D;
wire [2:0]Q;
verilogtest_06 uut(.D(D),.Q(Q));
initial begin
D=8'b10000000;#10;
D=8'b00010000;#10;
D=8'b00010100;#10;
D=8'b00000010;#10;
D=8'b11111111;#10;
D=8'b00000000;#10;
$finish;
end
endmodule
