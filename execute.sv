// Size of register A

module ALU(
  input[15:0] inOne.
  input[15:0] inTwo,
  input funcFlag,

  output [31:0] result
);
  always_comb begin
    if (funcFlag) 
      result = ~(inOne | inTwo);
    else 
      result = inOne + inTwo;
  end
endmodule

module branchEQ(
  input[15:0] inOne,
  input[15:0] inTwo,
  
  output result
);
  always_comb begin
    result = (inOne == inTwo);
  end
endmodule

module execute(
  input clock,
  input ID_EX_REG id_ex_reg_in,

  output EX_MEM_REG ex_mem_out
);
  // TODO: Can this just be a wire
  wire ALUSecondInput;

  assign ex_mem_out.PCTarget = id_ex_reg_in.PCPlusOne +
    id_ex_reg_in.offset;
  assign ex_mem_out.contRegB = id_ex_reg_in.contRegB;
  assign ex_mem_out.destReg = id_ex_reg_in.destReg;
  assign ex_mem_out.opCode = id_ex_reg_in.opCode;

  // TODO: inTwo should be muxed based on the opcode value
  assign ALUSecondInput = (/*MUX OPCODE */) ? 
    id_ex_reg_in.contRegB : id_ex_reg_in.offset;

  ALU alu_0(
    .inOne(id_ex_reg_in.contRegA),
    .inTwo(ALUSecondInput),
    .funcFlag(id_ex_reg_in.opCode[2]), // which way does verilog grab code 
      // add 000, nor 001 want to switch on 0th bit

    .result(ex_mem_out.ALUResult)
  );

  branchEQ branchEQ_0(
    .inOne(id_ex_reg_in.contRegA),
    .inTwo(id_ex_reg_in.contRegB),
    
    .result(ex_mem_out.branchEQ)
  );


endmodule