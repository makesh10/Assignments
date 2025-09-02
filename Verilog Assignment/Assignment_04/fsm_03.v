`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 10:53:14 AM
// Design Name: 
// Module Name: fsm_03
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


module fsm_03(
input [7:0]binary,
output [3:0]hundreds,[3:0]tens,[3:0]ones
);

integer i;
reg[19:0]shift_reg;
reg[3:0]h,t,o;

always@(*)begin
shift_reg=20'd0;
shift_reg[7:0]=binary;
for(i=0; i<8; i=i+1) begin
   if(shift_reg[11:8]>=5)
   shift_reg[11:8]=shift_reg[11:8]+3;
   if(shift_reg[15:12]>=5)
   shift_reg[15:12]=shift_reg[15:12]+3;
   if(shift_reg[19:16]>=5)
   shift_reg[19:16]=shift_reg[19:16]+3;
   
shift_reg=shift_reg<<1;
end

h=shift_reg[19:16];
t=shift_reg[15:12];
o=shift_reg[11:8];
end

assign hundreds=h;
assign tens=t;
assign ones=o;

endmodule
