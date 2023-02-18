module DataMemory(Addr, Datain, En, Read_Write, Dataout);
  input [2:0] Addr;
  input [31:0] Datain;
  input En, Read_Write;
  output [31:0] Dataout;

endmodule;