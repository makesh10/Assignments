`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 10:18:44 AM
// Design Name: 
// Module Name: question_14_tb
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


module question_14_tb;
reg [3:0]a;
initial begin
a=4'b1101;
if (a==4'b1100)begin
  $display("Matched:a==4'b1100");
  end
else begin 
  $display("Not Matched:a!==4'b1100");
  end
end
endmodule
