//Explain the use of union and its advantages in SystemVerilog.

module _union;
typedef union packed{
   logic [15:0] word;
  struct packed{
   logic [7:0] byte1;
   logic [7:0] byte2;
    }bytes;
}word_t;

word_t my_word;

  initial begin
   my_word.word=16'hA5A5;
    $display("Word: %h",my_word.word);
    $display("Byte 1: %h,Byte 2: %h",my_word.bytes.byte1,my_word.bytes.byte2);
  end
endmodule

# Word: a5a5
# Byte 1: a5,Byte 2: a5
# exit
