//Write a module that extracts a substring from a given string. 
  //For example, extract the substring "Hello" from "Hello, World!" and display it.

module substring_extraction;
   string str = "Hello, World!";
   string substring;

  initial begin
    substring = str.substr(0,4);
    $display("Extracted Substring: %s",substring);
  end
endmodule


# Extracted Substring: Hello
# exit
