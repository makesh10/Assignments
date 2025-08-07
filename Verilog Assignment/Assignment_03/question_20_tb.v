`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 02:50:45 PM
// Design Name: 
// Module Name: question_20_tb
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


module question_20_tb();
reg i0,i1,i2,i3,s0,s1;
wire y;
assign y=s1?(s0?i3:i2):(s0?i1:i0);
initial begin
i0=1'b0;i1=1'b1;i2=1'b1;i3=1'b0;
s1=1'b0;s0=1'b0;#10;
s1=1'b0;s0=1'b1;#10;
s1=1'b1;s0=1'b0;#10;
s1=1'b1;s0=1'b1;#10;
$finish;
end
endmodule
