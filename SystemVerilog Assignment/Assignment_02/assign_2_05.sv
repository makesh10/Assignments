//Write a module that converts a numeric string (e.g., "12345") to an integer 
  //and performs arithmetic on it. 
  //For example, add 100 to the integer and display the result
module numeric_string;
  string num_str;
  int num;
  int result;
  
  initial begin
    num_str= "12345";
    $display("Numeric String Value: %s",num_str);
    $sscanf(num_str,"%d",num);
    $display("Converted Value: %0d",num);
    
    result= num+100;
    $display("After Adding 100, Result = %0d",result);
    
  end
endmodule


# Numeric String Value: 12345
# Converted Value: 12345
# After Adding 100, Result = 12445
# exit
