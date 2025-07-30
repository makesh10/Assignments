`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 12:29:20 PM
// Design Name: 
// Module Name: nor_switch
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


module nor_switch(input a,b,output y);
wire w1;
supply0 gnd;
supply1 vdd;
pmos p1(w1,vdd,a);
pmos p2(y,w1,b);
nmos n1(y,gnd,a);
nmos n2(y,gnd,b);
endmodule
