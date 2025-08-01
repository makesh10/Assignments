`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 10:34:58 AM
// Design Name: 
// Module Name: fulladder
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


module fulladder(input a,b,c_in,output sum,carry);
wire w1,w2,w3;
xor g1(w1,a,b);
xor g2(sum,w1,c_in);
and g3(w2,a,b);
and g4(w3,c_in,w1);
or g5(carry,w2,w3);
endmodule
