`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 04:54:12 PM
// Design Name: 
// Module Name: comparator_2bit
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


module comparator_2bit(input a,b,output c,d,e);
assign c=~a&~b|a&b;
assign d=~a&b;
assign e=a&~b;
endmodule
