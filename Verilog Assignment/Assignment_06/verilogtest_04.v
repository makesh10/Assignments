`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 01:05:42 PM
// Design Name: 
// Module Name: verilogtest_04
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


module verilogtest_04(input a,b,c,d,e,
output y);
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;

not #4(w1,b);
not #4(w2,c);
not #4(w3,d);

and #3(w4,a,w1);
and #3(w5,a,b);
and #3(w6,w1,c);
and #3(w7,c,w3);

and #3(w8,w4,w2);
and #3(w9,w5,e);

or #2(w10,w8,w9);
or #2(w11,w6,w7);

or #2(y,w10,w11);

endmodule
