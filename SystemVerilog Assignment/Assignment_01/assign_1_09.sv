//Write systemverilog type declarations for a Memory with 1024 locations. 
//Each location needs to store a struct corresponding to the following instruction format -
  //Double operand instruction: opcode (4 bits), BW (1 bit), Mode (3 bits), Src (4 bits), Destn (4 bits).
  //Create a typdef Instr_t of struct for the instructionand then declare the memory as array of Instr_t.

module memory_example;

  typedef struct{
    logic [3:0]opcode;
    logic BW;
    logic [2:0]Mode;
    logic [3:0]Src,Destn;
  }Instr_t;

  Instr_t MEM [0:1023];

  initial begin
    MEM[0] = '{opcode:4'b1010,BW:1'b1,Mode:3'b010,Src:4'hF,Destn:4'hA};
    $display("MEM[0]=opcode:%b, BW:%b, Mode:%b, Src:%b, Destn:%b",MEM[0].opcode,MEM[0].BW,MEM[0].Mode,MEM[0].Src,MEM[0].Destn);
  end

endmodule

# MEM[0]=opcode:1010, BW:1, Mode:010, Src:1111, Destn:1010
# exit
