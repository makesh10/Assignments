`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 11:37:15 AM
// Design Name: 
// Module Name: fsm_03_tb
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


module fsm_03_tb();
reg [7:0]binary;
wire [3:0]hundreds,tens,ones;

fsm_03 uut(.binary(binary),.hundreds(hundreds),.tens(tens),.ones(ones));

initial begin
binary=8'd12;#10;
binary=8'd100;#10;
binary=8'd120;#10;
binary=8'd186;#10;
binary=8'd222;#10;
binary=8'd255;#10;
$finish;#20;
end
endmodule
