`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 11:59:08 AM
// Design Name: 
// Module Name: verilogtest_02_tb
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


module verilogtest_02_tb();
parameter n=4;
reg [n-1:0]A,B;
reg c;
wire [n-1:0]sum;
wire cout;

ripplecarry_adder uut(.A(A),.B(B),.c(c),.sum(sum),.cout(cout));
initial begin
A=4'b0101;B=4'b0101;c=1'b1;#100;
A=4'b0111;B=4'b1101;c=1'b0;#100;
A=4'b0000;B=4'b1111;c=1'b1;#100;
A=4'b0101;B=4'b0111;c=1'b0;#100;
$finish;
end
endmodule
