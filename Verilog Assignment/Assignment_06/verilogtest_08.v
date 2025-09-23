`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:12:59 PM
// Design Name: 
// Module Name: verilogtest_08
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


module verilogtest_08(input clk,rst,x,
output reg y);

parameter
Z=3'b000,
S0=3'b001,
S1=3'b010,
S2=3'b011,
T0=3'b100,
T1=3'b101,
T2=3'b110;

reg[2:0]state,nextstate;

always@(posedge clk or posedge rst)begin
if(rst)
state<=Z;
else
state<=nextstate;
end

always@(*)begin
nextstate=state;
y=1'b0;

case(state)
Z:begin
if (x)
nextstate=S0;
else
nextstate=T0;
end
S0:begin
if (x)
nextstate=S1;
else
nextstate=T0;
end
S1:begin
if (x) begin
nextstate=S2;
y=1'b1;
end else 
nextstate=T0;
end
S2:begin
if (x) begin
nextstate=S2;
y=1'b1;
end else
nextstate=T0;
end
T0:begin
if (~x)
nextstate=T1;
else
nextstate=S0;
end
T1:begin
if (~x) begin
nextstate=T2;
y=1'b1;
end else
nextstate=S0;
end
T2:begin
if (~x) begin
nextstate=T2;
y=1'b1;
end else
nextstate=S0;
end
endcase
end

endmodule
