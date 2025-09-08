`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 12:23:07 PM
// Design Name: 
// Module Name: traffic_controller_traffic_tb
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


module traffic_controller_traffic_tb();
reg clk,rst;
wire [4:0]light;
wire ON;

traffic_light_controller dut(.clk(clk),.rst(rst),.light(light),.ON(ON));
//Clock generation(10ns period = 100MHz)
initial begin
clk=0;
forever #5 clk=~clk; 
end

initial begin
rst=1;#20;
rst=0;#2000;
$monitor("Time=%0t light=%b ON=%",$time,light,ON);
$finish;
end

endmodule