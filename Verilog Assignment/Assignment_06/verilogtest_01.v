`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 12:16:57 PM
// Design Name: 
// Module Name: verilogtest_01
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


module verilogtest_01;
integer n,i,j,k;

initial begin
n=5;
for(i=1;i<=n;i=i+1) begin
  for(j=n;j>i;j=j-1)
  $write(" ");
  for(k=1;k<=i;k=k+1)
  $write("%0d",i);
  $display("");
end

for(i=n-1;i>=1;i=i-1) begin
   for(j=n;j>i;j=j-1)
   $write(" ");
   for(k=1;k<=i;k=k+1)
   $write("%0d",i);
   $display("");
end
end
endmodule
