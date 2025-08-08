`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 04:00:40 PM
// Design Name: 
// Module Name: question_22_tb
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


module question_22_tb;
reg [3:0]x;
initial begin
x=4'b0011;
fork
#5 x=x+4'b0001;
#10 x=x+4'b0010;
join
end
endmodule
