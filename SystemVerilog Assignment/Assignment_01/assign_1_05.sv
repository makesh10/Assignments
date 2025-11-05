//How do you use the new and delete operators with dynamic objects in SystemVerilog?

class packet;
  logic [7:0]addr;
  logic [15:0]data;
  
  function new();
  // Constructor code
    $display("Packet Created");
  endfunction
endclass

module _packet;
  packet pkt;

 initial begin
   pkt = new();
   pkt.addr = 8'hA5;
   pkt.data = 16'hFFFF;
   #20 pkt = null;
 if (pkt == null)
   $display("packet deleted and handle is null");
 end
endmodule


# Packet Created
# packet deleted and handle is null
# exit
