`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 12:32:31 PM
// Design Name: 
// Module Name: question_19_tb
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


module question_19_tb;
reg a,b;
wire y1,y2,y3,y4,y5,y6;
question_19 uut(.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6));
initial begin
a=1'b0;b=1'b0;#10;
a=1'b0;b=1'b1;#10;
a=1'b1;b=1'b0;#10;
a=1'b1;b=1'b1;#10;
$finish;
end
endmodule
