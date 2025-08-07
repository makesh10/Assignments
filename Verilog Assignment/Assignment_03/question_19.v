`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 02:25:08 PM
// Design Name: 
// Module Name: question_19
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


module question_19(input a,b,output y1,y2,y3,y4,y5,y6);
assign y1=b?a:1'b0;
assign y2=b?1'b1:a;
assign y3=b?~a:1'b1;
assign y4=b?1'b0:~a;
assign y5=b?~a:a;
assign y6=b?a:1'b1;
endmodule
