`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 02:52:50 PM
// Design Name: 
// Module Name: twohalfadder
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


module twohalfadder(input a,b,c_in,output sum,carry);
wire w1,w2,w3;
xor g1(w1,a,b);
xor g2(sum,w1,c_in);
and g3(w2,a,b);
and g4(w3,w1,c_in);
or g5(carry,w3,w2);     
endmodule