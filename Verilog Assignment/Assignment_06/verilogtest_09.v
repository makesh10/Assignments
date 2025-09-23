`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:56:02 PM
// Design Name: 
// Module Name: verilogtest_09
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


module verilogtest_09(input clk,rst,x,
output reg y);

 parameter
 S0=3'b000,
 S1=3'b001,
 S2=3'b010,
 S3=3'b011,
 S4=3'b100,
 S5=3'b101;
 
 reg [2:0]state,nextstate;
 
always@(posedge clk or posedge rst)begin
if(rst)
state<=S0;
else
state<=nextstate;
end

always@(*)begin
nextstate=state;
y=1'b0;

case(state)
S0:begin
if (x)
nextstate=S1;
else
nextstate=S0;
end
S1:begin
if (x)
nextstate=S1;
else
nextstate=S2;
end
S2:begin
if (x)
nextstate=S3;
else
nextstate=S0;
end
S3:begin
if (x)
nextstate=S4;
else
nextstate=S2;
end
S4:begin
if (x)
nextstate=S1;
else
nextstate=S5;
y=1'b1;
end
S5:begin
if (x)
nextstate=S3;
else
nextstate=S0;
end
endcase
end
endmodule
