`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 06:09:40 PM
// Design Name: 
// Module Name: fsm_08
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


module fsm_08(
input clk,reset,x,
output reg y);

reg[1:0] state,next_state;
parameter[1:0]
s0=00,
s1=01,
s2=10,
s3=11;

always@(posedge clk or posedge reset)begin
if(reset)
  state<=s0;
else
  state<=next_state;
end

always@(*)begin
next_state=state;
y=1'b0;
case(state)
s0:begin
if(x)
next_state=s1;
else next_state=s0;
end
s1:begin
if(x)
next_state=s2;
else next_state=s0;
end
s2:begin
if(x)begin
next_state=s2;
y=1'b1;
end else next_state=s0;
end
default:next_state=s0;
endcase
end
endmodule
