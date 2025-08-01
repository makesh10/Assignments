`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 03:07:16 PM
// Design Name: 
// Module Name: tristate_2_1mux
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


module tristate_2_1mux(
input x,y,s,output f);
bufif0 g1(f,x,s);
bufif1 g2(f,y,s);
endmodule
