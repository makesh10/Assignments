//Write a module that reverses a given string. 
//For example, reverse "SystemVerilog" to get "golireVmetsyS
module string_reverse;
  string str= "SystemVerilog";
  string rev_str;
  int i;
  
  initial begin
    rev_str="";
    for(i=str.len()-1;i>=0;i--)
    begin
      rev_str={rev_str,str[i]};
    end
    
    $display("Original String: %s",str);
    $display("Reversed String: %s",rev_str);
    
  end
endmodule


# Original String: SystemVerilog
# Reversed String: golireVmetsyS
# exit
