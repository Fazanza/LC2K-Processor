module ALU(in1, in2, func, EQ, outVal);
  input [15:0] in1, in2;
  input func;
  output EQ;
  output [15:0] outVal;

  assign EQ = (in1 == in2);
  assign outVal = func ? ~(in1 | in2) : (in1 + in2);

endmodule