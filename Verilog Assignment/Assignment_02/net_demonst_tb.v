`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 01:48:43 PM
// Design Name: 
// Module Name: net_demonst_tb
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


module net_demonst_tb;
reg net1;
wire net2;
net_demonst uut (.net1(net),.net2(net2));
initial begin
$display("time/tnet1/tnet2");
net1=1'b0;#10;
$finish;
end
endmodule
