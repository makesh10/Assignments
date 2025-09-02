`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 04:07:13 PM
// Design Name: 
// Module Name: fsm_02
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


module fsm_02(
input clk,reset,x,
output reg y);

parameter 
s0=3'd0,
s1=3'd1,
s2=3'd2,
s3=3'd3,
s4=3'd4;

reg[2:0]state,next_state;

always@(posedge clk or posedge reset)begin
if(reset)
state<=s0;
else
state<=next_state;
end

always@(*)begin
next_state=s0;
y=1'b0;

case(state)
s0:begin
y=1'b1;
next_state=x?s1:s0;
end

s1:next_state=x?s4:s2;
s2:next_state=x?s0:s3;
s3:next_state=x?s3:s4;
s4:next_state=x?s2:s0;
default y=1'b0;

endcase
end
endmodule
