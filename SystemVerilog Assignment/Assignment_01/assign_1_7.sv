//Declare a dynamic array to store string values
//a) size of the array must be allocated at the run time, size=5
//b) store different string values to the five memory location
//c) resize the array to 15, it must have the previous 5 elements inside it
//d) and thaen delete the entire array
//e) display the size of the array each time

module tb;
  string a[];
  
 initial begin
   $display("size of a is %0d",a.size());
   a=new[5];
   a={"Swetha","Nivedha","Makesh","Vaidegi","Charu"};
   $display("a=%0p",a);
   
   a=new[15](a);
   $display("a=%0p",a);
   $display("size of a is %0d",a.size());
   
   a.delete();
   $display("size of a is %0d",a.size());
 end
endmodule


# size of a is 0
# a={Swetha} {Nivedha} {Makesh} {Vaidegi} {Charu}
# a={Swetha} {Nivedha} {Makesh} {Vaidegi} {Charu} {} {} {} {} {} {} {} {} {} {}
# size of a is 15
# size of a is 0
# exit
