`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 04:29:49 PM
// Design Name: 
// Module Name: udp_function_3bit_tb
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


module udp_function_3bit_tb;
reg x,y,z;
wire f;
udp_function_3bit uut(.x(x),.y(y),.z(z),.f(f));
initial begin
x=1'b0;y=1'b0;z=1'b0;#10;
x=1'b0;y=1'b0;z=1'b1;#10;
x=1'b0;y=1'b1;z=1'b0;#10;
x=1'b0;y=1'b1;z=1'b1;#10;
x=1'b1;y=1'b0;z=1'b0;#10;
x=1'b1;y=1'b0;z=1'b1;#10;
x=1'b1;y=1'b1;z=1'b0;#10;
x=1'b1;y=1'b1;z=1'b1;#10;
$finish;
end
endmodule
