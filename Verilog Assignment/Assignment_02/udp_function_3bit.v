`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 04:26:48 PM
// Design Name: 
// Module Name: udp_function_3bit
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


primitive udp_function_3bit(output f,input x,y,z);
table
0 0 0:0;
0 0 1:0;
0 1 0:1;
0 1 1:0;
1 0 0:1;
1 0 1:1;
1 1 0:1;
1 1 1:1;
endtable
endprimitive
