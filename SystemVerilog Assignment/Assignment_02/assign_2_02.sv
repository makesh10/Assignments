//write a code for dynamic array... 
  //give the value of array using foreach.. 
    //display the size.. shuffle the array elements...

module dynamic_array;
  int array[];
  int i;
  
  initial begin
    array=new[7];
    foreach (array[i])
      array[i]=i*10;
    $display("Elements of an Array: %p",array);
    $display("Size of an Array: %0d",array.size());
    array.shuffle();
    $display("Shuffled Array: %p",array);
  end
endmodule


# Elements of an Array: '{0, 10, 20, 30, 40, 50, 60}
# Size of an Array: 7
# Shuffled Array: '{40, 10, 20, 60, 30, 50, 0}
# exit
