`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 11:04:12 AM
// Design Name: 
// Module Name: question_16_tb
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


module question_16_tb;
reg [3:0]a;
reg y;
initial begin
a=4'b110x;
y=(a===4'b1100)?1'b1:1'b0;
$display("time=%0t a=%0b y=%0b",$time,a,y); 
end
endmodule
