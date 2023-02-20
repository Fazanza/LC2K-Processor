module Decode(
  input clk,
  input IF_ID_REG if_id_reg_in,

  output ID_EX_REG id_ex_reg_out
);
  wire enable, registerA, registerB, destinationReg;
  
  assign id_ex_reg_out.PCPlusOne = if_id_reg_in.PCPlusOne;
  
  always_comb begin
    swi
  end

  always @(posedge clk) begin
    
  end

  RegisterFile Reg_0(
    regA, regB, Destreg, Data, 
    .en(), 
    .clk(clk), 
    .contRegA(id_ex_reg_out.contRegA), 
    .contRegB(id_ex_reg_out.contRegB)
    );
endmodule