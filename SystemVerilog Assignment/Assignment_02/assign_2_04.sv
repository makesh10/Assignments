//What is enumerated type? 
//Define enumerated type for the following set of opcodes -
//ADD=2, SUB=3, JE = 10 JNE-11, LD = 12 ST = 13 with type logic and size 4 bits.
module enum_opcode;
  typedef enum logic[3:0] {
    ADD = 4'd2,
    SUB = 4'd3,
    JE  = 4'd10,
    JNE = 4'd11,
    LD  = 4'd12,
    ST  = 4'd13
  }opcode_t;
  
  opcode_t opcode;
  
  initial begin
    opcode=ADD;
    $display("Opcode = %s, Value: %0d (binary %b)",opcode.name(),opcode,opcode);
    
    opcode=ST;
    $display("Opcode = %s, Value: %0d (binary %b)",opcode.name(),opcode,opcode);
  end
endmodule


# Opcode = ADD, Value: 2 (binary 0010)
# Opcode = ST, Value: 13 (binary 1101)
# exit
