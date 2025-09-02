`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 05:55:52 PM
// Design Name: 
// Module Name: fsm_qn_7
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


module fsm_07(
input clk,reset,din,
output reg detected
);
reg [1:0]state,next_state;
parameter 
a=2'd0,
b=2'd1,
c=2'd2,
d=2'd3;
              
always@(posedge clk or posedge reset)begin
 if(reset) begin
    state<=a;
  end else 
    state<=next_state;
  end
  
always@(*) begin
 next_state=state;
 detected=1'b0;
      
 case(state)
 a:begin
 if(!din)
    next_state=b;
 else
    next_state=c;
 end
 b:begin
 if(!din)
    next_state=a;
 else
    next_state=d;
 end
 c:begin
 if(!din)
    next_state=d;
 else
    next_state=a;
 end
 d:begin
 if(!din)
    next_state=c;
 else
    next_state=b;
    detected=1'b1;
 end
 default:next_state=a;
 endcase
 end    
endmodule

