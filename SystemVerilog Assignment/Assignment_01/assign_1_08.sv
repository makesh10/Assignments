//What is the difference between using typedef enum 
//and a simple enum in terms of reuse and code organization? 
//When would each be appropriate?

module typedef_enum_example;
  typedef enum{
    RED, 
    GREEN, 
    YELLOW}traffic_light;
  
  traffic_light current_light,next_light;

  initial begin
    current_light = RED;
    next_light = GREEN;
     $display("Current Light State: %0d",current_light);
     $display("Next Light State: %0d",next_light);
  end
endmodule


# Current Light State: 0
# Next Light State: 1
# exit
