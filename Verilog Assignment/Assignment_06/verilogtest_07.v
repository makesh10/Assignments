`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 03:13:01 PM
// Design Name: 
// Module Name: verilogtest_07
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


module verilogtest_07;
reg [13:0]mem[7:0];
integer i;

task fill_memory;
begin
for(i=0;i<8;i=i+1)begin
mem[i]=$random;
end
end
endtask

function integer sum_memory;
input dummy;
integer j;
 begin
 sum_memory=0;
 for (j=0;j<8;j=j+1) begin
  sum_memory=sum_memory+mem[j];
 end
 end
endfunction

function [13:0]max_memory;
input dummy;
integer k;
 begin
 max_memory=mem[0];
 for (k=0;k<8;k=k+1) begin
  if (mem[k] > max_memory)
     max_memory=mem[k];
 end
 end
endfunction

initial begin
 // Fill memory
 fill_memory();
 // Display memory elements
 $display("Memory Elements");
 for (i=0;i<8;i=i+1)
 $display("mem[%0d]=%0d",i,mem[i]);
 // Display sum
 $display("Sum of all memory elements = %0d",sum_memory(0));
 // Display max
 $display("Maximum value in memory = %0d",max_memory(0));
end
endmodule
