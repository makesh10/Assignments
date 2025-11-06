//Write a module that checks if a string is a palindrome 
  //(reads the same forwards and backwards). 
  //For example, check if "racecar" is a palindrome.
module palindrome_check;
  string str = "racecar";
  string rev = "";
  int i;
  
  initial begin
    $display("Original String: %s",str);
    
    for(i=str.len()-1;i>=0;i--)begin
      rev={rev,str[i]};
    end
    $display("Reverse String: %s",rev);
    
    if (str==rev)
      $display("String '%s' is a Palindrome",str);
    else
      $display("String '%s' is not a Palindrome",str);
  end
endmodule


# Original String: racecar
# Reverse String: racecar
# String 'racecar' is a Palindrome
# exit
