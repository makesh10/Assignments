`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 03:24:05 PM
// Design Name: 
// Module Name: verilogtest_06
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


module verilogtest_06(input [7:0]D,
output reg [2:0]Q);

always@(*)begin
casez (D)
    8'b1??????? : Q=3'b111;
    8'b01?????? : Q=3'b110;
    8'b001????? : Q=3'b101;
    8'b0001???? : Q=3'b100;
    8'b00001??? : Q=3'b011;
    8'b000001?? : Q=3'b010;
    8'b0000001? : Q=3'b001;
    8'b00000001 : Q=3'b000;
    default : Q=3'b000;
endcase
end
endmodule
