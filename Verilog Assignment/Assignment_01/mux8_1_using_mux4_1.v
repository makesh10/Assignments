`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 12:27:57 PM
// Design Name: 
// Module Name: mux8_1_using_mux4_1
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


module mux8_1_using_mux4_1(input a,b,c,d,e,f,g,h,s0,s1,s2,output y);
wire w1,w2;
assign w1=~s0&~s1&a|~s0&s1&b|s0&~s1&c|s0&s1&d;
assign w2=~s0&~s1&e|~s0&s1&f|s0&~s1&g|s0&s1&h;
assign y=~s2&w1|s2&w2;
endmodule
