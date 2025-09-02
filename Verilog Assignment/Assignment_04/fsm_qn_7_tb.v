`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 05:57:46 PM
// Design Name: 
// Module Name: fsm_qn_7_tb
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


module fsm_qn_7_tb();
reg clk,reset,din;
wire detected;

fsm_qn_7 dut (.clk(clk),.reset(reset),.din(din),.detected(detected));

always #5 clk=~clk;

initial begin
clk=0;
reset=1;
din=0;

#12 reset=0;
#10 din=1;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=1;
#10 din=1;

#20 $finish;
end

endmodule


