//Declare two associative arrays "asso_array1" and "asso_array2". 
//Store data to asso_array1, copy the elements to asso_array2 and use a task "compare" to compare both the array
//and provide you the comparison report.

module tb;
  int asso_array1 [string];
  int asso_array2 [string];
  
  task compare();
    string i;
    foreach(asso_array1[i])
        if ((asso_array1[i]) == (asso_array2[i]))
           $display("asso_array1[%s] of %0d is equal to asso_array2[%s] of %0d",i,asso_array1[i],i,asso_array2[i]);
        else
           $display("asso_array1 is not equal to asso_array2");
  endtask
  
  initial begin
    asso_array1 ["MAKESH"]=19;
    asso_array1 ["NIVEDHA"]=13;
   asso_array2 = asso_array1;
    compare();
   end
endmodule


# asso_array1[MAKESH] of 19 is equal to asso_array2[MAKESH] of 19
# asso_array1[NIVEDHA] of 13 is equal to asso_array2[NIVEDHA] of 13
# exit
