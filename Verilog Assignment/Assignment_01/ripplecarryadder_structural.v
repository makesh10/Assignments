`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 01:12:37 PM
// Design Name: 
// Module Name: ripplecarryadder_structural
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


module fulladder(input a,b,c,output sum,carry);
wire w1,w2,w3,w4;
xor g1(w1,a,b);
xor g2(sum,w1,c);
and g3(w2,a,b);
and g4(w3,b,c);
and g5(w4,a,c);
or g6(carry,w2,w3,w4);
endmodule

module ripplecarryadder_structural(input a0,a1,a2,a3,b0,b1,b2,b3,cin,output s0,s1,s2,s3,c3);
wire c0,c1,c2;
fulladder f1(a0,b0,cin,s0,c0);
fulladder f2(a1,b1,c0,s1,c1);
fulladder f3(a2,b2,c1,s2,c2);
fulladder f4(a3,b3,c2,s3,c3);
endmodule
