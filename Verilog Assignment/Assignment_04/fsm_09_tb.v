`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 11:59:26 AM
// Design Name: 
// Module Name: fsm_09_tb
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


module fsm_9_tb();
    reg clk;
    reg reset;
    reg din;
    wire oddone_detected;
    wire evenzero_detected;

    fsm_09 dut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .oddone_detected(oddone_detected),
        .evenzero_detected(evenzero_detected)
    );

    initial begin
        clk=0;
        forever #5 clk=~clk;   
    end

    initial begin
        reset=1;
        din=0;
        #12;                
        reset=0;
        // 1 0 1 1 0 0 1 0
        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
        din = 1; #10;
        din = 0; #10;
        din = 0; #10;
        din = 1; #10;
        din = 0; #10;
        #40;
        $finish;
    end
    
endmodule