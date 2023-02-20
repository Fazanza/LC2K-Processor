typedef struct {
  logic[15:0] PCPlusOne,
  logic[31:0] Instruction,
} IF_ID_REG;

typedef struct {
  logic[15:0] PCPlusOne,
  logic[15:0] contRegA,
  logic[15:0] contRegB,
  logic[15:0] offset, // Instruction bits?
  logic[2:0] destReg,
  logic[2:0] opCode
} ID_EX_REG;

typedef struct {
  logic[15:0] PCTarget,
  logic branchEq,
  logic[15:0] ALUResult,
  logic[15:0] contRegB,
  logic[2:0] destReg,
  logic[2:0] opCode
} EX_MEM_REG;

typedef struct {
  logic[15:0] ALUResult,
  logic [15:0] memData,
  logic[2:0] destReg,
  logic[2:0] opCode
} MEM_WB_REG;