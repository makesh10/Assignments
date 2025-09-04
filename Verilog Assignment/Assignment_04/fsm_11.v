`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 03:31:34 PM
// Design Name: 
// Module Name: fsm_11
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


module fsm_11(input clk,rst,j,k,
output out);

parameter[1:0]
ON=2'b00,
OFF=2'b01;

reg[1:0]state,nextstate;

always@(posedge clk or posedge rst)begin
if(rst)
state<=OFF;
else
state<=nextstate;
end

always@(*)begin
case(state)
OFF:nextstate=(j)?ON:OFF;
ON:nextstate=(k)?OFF:ON;
default:nextstate=OFF;
endcase
end

assign out=(state==ON);

endmodule
