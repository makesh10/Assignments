`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 11:22:24 AM
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit(input a,b,c,output sum,carry);
wire w1,w2,w3,w4;
xor g1(w1,a,b);
xor g2(sum,w1,c);
and g3(w2,a,b);
and g4(w3,b,c);
and g5(w4,a,c);
or g6(carry,w2,w3,w4);
endmodule

module alu_4bit1(input a,b,c,output difference,borrow);
wire w1,w2,w3,w4,w5;
xor g1(w1,a,b);
xor g2(difference,w1,c);
not g3(w2,a);
and g4(w3,w2,b);
and g5(w4,w2,c);
and g6(w5,b,c);
or g7(borrow,w3,w4,w5);
endmodule
