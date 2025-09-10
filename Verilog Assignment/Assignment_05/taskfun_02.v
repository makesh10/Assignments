`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 04:36:42 PM
// Design Name: 
// Module Name: taskfun_02
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


module taskfun_02(
input [7:0]a,b,
output reg [8:0]sum);

function [8:0]add_func;
   input [7:0]x,y;
     begin
       add_func=x+y;
     end
   endfunction
   
always@(*)begin
 sum=add_func(a,b);
end

endmodule