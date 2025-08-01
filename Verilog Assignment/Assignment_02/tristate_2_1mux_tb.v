`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 03:12:55 PM
// Design Name: 
// Module Name: tristate_2_1mux_tb
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


module tristate_2_1mux_tb;
reg x,y,s;
wire f;
tristate_2_1mux uut (.x(x),.y(y),.s(s),.f(f));
initial begin
$display("time=%0t x=%0b y=%0b s=%0b f=%0b",$time,x,y,s,f);
x=1'b0;y=1'b1;s=1'b0;#10;
x=1'b0;y=1'b1;s=1'b1;#10;
$finish;#10;
end
endmodule
