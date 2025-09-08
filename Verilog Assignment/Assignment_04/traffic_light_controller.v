`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 12:09:58 PM
// Design Name: 
// Module Name: traffic_light_controller
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


module traffic_light_controller(input wire clk,
input wire rst,
output reg [4:0]light,
output reg ON);

integer count;
parameter [2:0]
RED=3'b000,
PEDESTRIAN=3'b001,
YELLOW=3'b010,
GREEN=3'b011,
EMERGENCY=3'b100;

reg [2:0]state,nextstate;
always@(posedge clk or posedge rst)
if(rst)begin
state<=RED;
 count<=0;
end
else begin
case(state)
RED:begin
if (count==25)begin
state<=PEDESTRIAN;
count<=0;
end else begin
count<=count+1;
end 
end
PEDESTRIAN:begin
if (count==20)begin
state<=YELLOW;
count<=0;
end else begin
count<=count+1;
end 
end
YELLOW:begin
if(count==15)begin
state<=GREEN;
count<=0;
end else begin
count<=count+1;
end
end
GREEN:begin
if (count==10)begin
state<=EMERGENCY;
count<=0;
end else begin
count<=count+1;
end 
end
EMERGENCY:begin
if (count==5)begin
state<=RED;
count<=0;
end else begin
count<=count+1;
end 
end
endcase
end

always@(*)begin
case(state)
RED:light=3'b000;
PEDESTRIAN:light=3'b001;
GREEN:light=3'b010;
YELLOW:light=3'b011;
EMERGENCY:light=3'b100;
default:light=3'b000;
endcase
ON=1'b1;
end
endmodule