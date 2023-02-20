module RegisterFile(regA, regB, Destreg, Data, en, clk, contRegA, contRegB);
  input [2:0] regA, regB, Destreg;
  input en, clk;
  input [15:0] Data;
  output [15:0] contRegA, contRegB;

  // How many bits of data can the registers store
  reg[15:0] registers[2:0];

  always @(posedge clk) begin
    if (en) begin
      registers[destReg] <= Data
  end

  assign contRegA = registers[regA];
  assign contRegB = registers[regB];
  
endmodule