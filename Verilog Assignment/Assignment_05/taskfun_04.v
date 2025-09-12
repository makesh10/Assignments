`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 11:18:16 AM
// Design Name: 
// Module Name: taskfun_04
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


module taskfun_04;
integer i;
reg mode;
reg [7:0]o[19:0];
reg [7:0]e[19:0];

function [7:0] gen_oe;
input integer index;
input mode;
begin
if (mode)
gen_oe=2*index+1;
else
gen_oe=2*index;
end
endfunction

initial begin
mode=1;
for(i=0;i<20;i=i+1) begin
o[i]=gen_oe(i,mode);
end
mode=0;
for(i=0;i<20;i=i+1) begin
e[i]=gen_oe(i,mode);
end
end

endmodule