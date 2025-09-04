`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 03:45:51 PM
// Design Name: 
// Module Name: fsm_11_tb
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


module fsm_11_tb();
reg clk,rst,j,k;
wire out;

fsm_11 uut(.clk(clk),.rst(rst),.j(j),.k(k),.out(out));

always #5 clk=~clk;

initial begin
clk=0;rst=1;j=0;k=0;
#10 rst=0;

#10 j=0;k=0;
#10 j=0;k=1;
#10 j=1;k=0;
#10 j=1;k=1;

#10 $finish;
end
endmodule
