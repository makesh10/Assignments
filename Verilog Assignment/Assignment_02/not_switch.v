`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 12:10:44 PM
// Design Name: 
// Module Name: not_switch
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


module not_switch(input a,output y);
supply0 gnd;
supply1 vdd;
pmos p(y,vdd,a);
nmos n(y,gnd,a);
endmodule
