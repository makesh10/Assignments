//What is the purpose of enum types in SystemVerilog, and how do they improve code readability?

module _enum(
  input logic clk,
  input logic reset,
  input logic start);
  
typedef enum logic [1:0]{
  IDLE=2'b00,
  RUN=2'b01,
  STOP=2'b10
  } state;
state current_state;

always@(posedge clk) begin
  if (reset)
    current_state<=IDLE;
  else if (start)
    current_state<=RUN;
  else
    current_state<=STOP;
end
endmodule
