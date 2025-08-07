`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 10:55:29 AM
// Design Name: 
// Module Name: question_15_tb
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


module question_15_tb;
reg [3:0]a;
initial begin
a=4'b1101;
if (a!==4'b1100)begin
   $display("Not Equal");
   end
else begin
   $display("Equal"); 
   end
end
endmodule
