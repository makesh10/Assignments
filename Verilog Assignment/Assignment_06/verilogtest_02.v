`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:52:51 PM
// Design Name: 
// Module Name: verilogtest_02
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


module fulladder(input a,b,cin,
output sum,carry);

assign sum=a^b^cin;
assign carry=(a&b)|(b&cin)|(a&cin);
endmodule

module ripplecarry_adder #(parameter n=4)
(input [n-1:0]A,B,input c,output [n-1:0]sum,output cout);
wire [n:0]w;
assign w[0]=c;
genvar i;
generate
for(i=0;i<n;i=i+1)begin
fulladder uut(.a(A[i]),.b(B[i]),.cin(c),.sum(sum[i]),.carry(w[i+1]));
end
endgenerate
assign cout=w[n];
endmodule
