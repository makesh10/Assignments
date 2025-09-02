`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 11:40:14 AM
// Design Name: 
// Module Name: fsm_01
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

module fsm_01(
input clk,
input reset,
input x,
output reg y
);

parameter S=3'b000,
A1=3'b001,
A2=3'b010,
A3=3'b011,
B1=3'b100,
B2=3'b101,
B3=3'b110;

reg[2:0]state,next_state;

always@(posedge clk or posedge reset)begin
if(reset)
state<=S;
else
state<=next_state;
end

always@(*)begin
next_state=state;
y=1'b0;

case(state)
S:begin
if(x) next_state=A1;
else next_state=B1;
end

A1:begin
if(x) next_state=A2;
else next_state=B1;
end

A2:begin
if(x) next_state=A3;
else next_state=B1;
end

A3:begin
y=1'b1;
if(x) next_state=A3;
else next_state=B1;
end

B1:begin
if(~x) next_state=B2;
else next_state=A1;
end

B2:begin
if(~x) next_state=B3;
else next_state=A1;
end

B3:begin
y=1'b1;
if(~x) next_state=B3;
else next_state=A1;
end
endcase
end

endmodule
