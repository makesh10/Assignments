//Code for queue build-in methods size, insert (n/2 position, n position, n-1 p delete,
//pop_front, pop_back, push_front and push_back.


module queue_methods;
  int q[$];
  int n;
  
  initial begin
    q='{10,20,30,40,50};
    $display("Initialize Queue Elements = %p",q);
    
    n=q.size();
    $display("Size of Queue: %0d",n);
    
    q.insert(n/2,25);
    $display("After Inserting 25 in n/2 position = %p",q);
    
    q.insert(n,45);
    $display("After Inserting 45 in n position = %p",q);
    
    q.insert(n-1,35);
    $display("After Inserting 35 in n-1 position = %p",q);
    
    q.pop_front();
    $display("After Pop Front, Queue = %p",q);
    
    q.pop_back();
    $display("After Pop Back, Queue = %p",q);
    
    q.push_front(10);
    $display("After Push Front, Queue = %p",q);
    
    q.push_back(50);
    $display("After Push Back, Queue = %p",q);

    q.delete();
    $display("After delete, Queue Size = %0d",q.size());

  end
endmodule


# Initialize Queue Elements = '{10, 20, 30, 40, 50}
# Size of Queue: 5
# After Inserting 25 in n/2 position = '{10, 20, 25, 30, 40, 50}
# After Inserting 45 in n position = '{10, 20, 25, 30, 40, 45, 50}
# After Inserting 35 in n-1 position = '{10, 20, 25, 30, 35, 40, 45, 50}
# After Pop Front, Queue = '{20, 25, 30, 35, 40, 45, 50}
# After Pop Back, Queue = '{20, 25, 30, 35, 40, 45}
# After Push Front, Queue = '{10, 20, 25, 30, 35, 40, 45}
# After Push Back, Queue = '{10, 20, 25, 30, 35, 40, 45, 50}
# After delete, Queue Size = 0
# exit
