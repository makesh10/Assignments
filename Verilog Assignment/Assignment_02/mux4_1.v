`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 04:26:58 PM
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(input s0,s1,a,b,c,d,output y);
wire w1,w2,w3,w4,w5,w6;
not g1(w1,s0);
not g2(w2,s1);
and g3(w3,w1,w2,a);
and g4(w4,w1,s1,b);
and g5(w5,s0,w2,c);
and g6(w6,s0,s1,d);
or g7(y,w3,w4,w5,w6);
endmodule
