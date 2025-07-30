`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 01:17:14 PM
// Design Name: 
// Module Name: ripplecarryadder_structural_tb
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


module ripplecarryadder_structural_tb;
reg a0,a1,a2,a3,b0,b1,b2,b3,cin;
wire s0,s1,s2,s3,c3;
ripplecarryadder_structural uut(.a0(a0),.a1(a1),.a2(a2),.a3(a3),.b0(b0),.b1(b1),.b2(b2),.b3(b3),.cin(cin),.s0(s0),.s1(s1),.s2(s2),.s3(s3),.c3(c3));
initial begin
a0=1'b0;b0=1'b0;cin=1'b1;#10;
a1=1'b0;b1=1'b1;#10;
a2=1'b1;b2=1'b0;#10;
a3=1'b1;b3=1'b1;#10;
end
endmodule