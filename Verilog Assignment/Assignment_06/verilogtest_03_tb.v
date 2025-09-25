`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:41:20 PM
// Design Name: 
// Module Name: verilogtest_03_tb
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


module verilogtest_03_tb();
//8 bit fulladder
reg [7:0]A8,B8;
reg Cin8;
wire [7:0]Sum8;
wire Cout8;
verilogtest_03 #(8) uut(.A(A8),.B(B8),.Cin(Cin8),.Sum(Sum8),.Cout(Cout8));

//16 bit fulladder
reg [15:0]A16,B16;
reg Cin16;
wire [15:0]Sum16;
wire Cout16;
verilogtest_03 #(16) uut1(.A(A16),.B(B16),.Cin(Cin16),.Sum(Sum16),.Cout(Cout16));

initial begin
A8=8'd10;B8=8'd12;Cin8=1'b1;#2;
$strobe("Time=%0t 8bit:A=%0d B=%0d Cin=%0b Sum=%0d Cout=%0b",$time,A8,B8,Cin8,Sum8,Cout8);
A16=16'd12;B16=16'd24;Cin16=1'b1;#10;
$strobe("Time=%0t 16bit:A=%0d B=%0d Cin=%0b Sum=%0d Cout=%0b",$time,A16,B16,Cin16,Sum16,Cout16);
#10 $finish;
end
endmodule
