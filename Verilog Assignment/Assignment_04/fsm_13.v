`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 04:06:05 PM
// Design Name: 
// Module Name: fsm_13
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


module fsm_13(input clk,rst,x,
output reg y);

reg[1:0]state,nextstate;

parameter [1:0]
a=2'b00,
b=2'b01,
c=2'b10,
d=2'b11;

always@(posedge clk or posedge rst)begin
if(rst)
  state<=a;
else
  state<=nextstate;
end

always@(*)begin
nextstate=state;
y=1'b0;

case(state)
a:begin
if(x)
  nextstate=b;
else
  nextstate=a;
end
b:begin
if(x)
  nextstate=b;
else
  nextstate=c;
  y=1'b1;
end
b:begin
if(x)
  nextstate=d;
else
  nextstate=c;
end
d:begin
if(x)
  nextstate=d;
else
  nextstate=c;
end
c:begin
if(x)begin
  nextstate=b;
  y=1'b1;
end else
  nextstate=a;
end
endcase
end

endmodule
