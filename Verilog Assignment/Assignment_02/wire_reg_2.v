`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 10:21:13 AM
// Design Name: 
// Module Name: wire_reg_2
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


module wire_assign;
wire a,b;
assign a=1'b1;
assign b=a;
initial begin
$display("time/ta/tb");
end
endmodule