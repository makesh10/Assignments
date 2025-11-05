//write a function which computes sum of N Numbers
//a. It should take dynamic array as input.
//b. And it shouldreturn sum of N numbers.
//{int sum_N_Numbers(int ip[]);}

module test_sum_N_Numbers;
  int data[] = '{28,16,12,5,1,2};
  int result;
                 
 initial begin
  result = sum_N_Numbers(data);
   $display("Sum of N numbers is %0d",result);
 end
endmodule
                 
function int sum_N_Numbers(int ip[]);
  int sum;
  int i;
  sum=0;
  foreach (ip[i])
  sum = sum+ip[i];
  return sum;
endfunction


# Sum of N numbers is 64
# exit
