module SignExtension(in1, outVal);
  input [15:0] in1;
  output [31:0] outVal;

  assign outVal = {{ 16 { in1[15]}}, in1};
endmodule;