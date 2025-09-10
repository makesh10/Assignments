`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 05:28:37 PM
// Design Name: 
// Module Name: taskfun_02_tb
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


module taskfun_02_tb();
reg [7:0]a,b;
wire [8:0]sum;

taskfun_02 dut(
               .a(a),
               .b(b),
               .sum(sum)
               );
               
initial begin
  a=8'd10;b=8'd15;#10;
  a=8'd100;b=8'd55;#10;
  a=8'd127;b=8'd120;#10;
  a=8'd255;b=8'd255;#10;
$monitor("Time=%0t a=%d b=%d sum=%d",$time,a,b,sum);
$finish;
end

endmodule
