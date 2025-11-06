//write a code for queue array with 4 elements... 
  //insert 1in the 1st index.. delete element in 3rd index... 
  //insert 9 as the last element... shuffle, reverse the elements
module queue_methods;
  int q[$];
  
  initial begin
    q='{10,20,30,40};
    $display("Queue Elements: %p",q);
    $display("Size of Queue: %0d",q.size());
    
    q.insert(1,1);
    $display("After Inserting 1 in 1st Index: %p",q);
    
    q.delete(3);
    $display("After Deleting 3rd Index: %p",q);
    
    q.push_back(9);
    $display("After Inserting 9 in last Index: %p",q);
    
    q.shuffle();
    $display("Shuffled Queue: %p",q);
    
    q.reverse();
    $display("Reversed Queue: %p",q);
    
  end
endmodule


# Queue Elements: '{10, 20, 30, 40}
# Size of Queue: 4
# After Inserting 1 in 1st Index: '{10, 1, 20, 30, 40}
# After Deleting 3rd Index: '{10, 1, 20, 40}
# After Inserting 9 in last Index: '{10, 1, 20, 40, 9}
# Shuffled Queue: '{1, 9, 10, 40, 20}
# Reversed Queue: '{20, 40, 10, 9, 1}
# exit
