`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 12:21:41 PM
// Design Name: 
// Module Name: nand_switch
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


module nand_switch(input a,b,output y);
wire w1;
supply0 gnd;
supply1 vdd;
pmos p1(y,vdd,a);
pmos p2(y,vdd,b);
nmos n1(w1,gnd,b);
nmos n2(y,w1,a);
endmodule
