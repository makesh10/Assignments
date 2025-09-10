`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 10:13:20 AM
// Design Name: 
// Module Name: taskfun_03
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


module taskfun_03;
reg [7:0]a,b;
reg [8:0]sum;

task sum_task;
input [7:0]x,y;
output [8:0]result;
begin
result=x+y;
end
endtask

initial begin
a=8'd7;b=8'd8;#10;
sum_task(a,b,sum);
$display("a=%d,b=%d,sum=%d",a,b,sum);

a=8'd20;b=8'd20;#10;
sum_task(a,b,sum);
$display("a=%d,b=%d,sum=%d",a,b,sum);
end

endmodule