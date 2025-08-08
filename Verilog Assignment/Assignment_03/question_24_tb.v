`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 04:36:35 PM
// Design Name: 
// Module Name: question_24_tb
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


module question_24_tb;
reg [3:0]acc;
initial begin
acc=4'b0001;
while (acc<4'b1000) begin
acc=acc+1;
end
$display("acc=%b",acc);
end
endmodule
