//Declare a global queue - "push_data" task should push data into the queue and "remove_data" task should pop data from the queue.

module queue;
int q[$];
  
task push_data;
begin
q.push_front(28);
q.push_back(16);
end
endtask
  
task remove_data;
begin
q.pop_front();
q.pop_back();
end
endtask
  
initial begin
  q = '{12,28,5,16,18};
  $display("Queue is: %0p",q);
  push_data;
  $display("Queue is: %0p",q);
  remove_data;
  $display("Queue is: %0p",q);
end
endmodule


# Queue is: 12 28 5 16 18
# Queue is: 28 12 28 5 16 18 16
# Queue is: 12 28 5 16 18
# exit
