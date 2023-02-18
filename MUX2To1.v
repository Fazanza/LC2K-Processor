module MUX2To1(in1, in2, s, outVal);
  input in1, in2, s;
  output outVal;

  assign outVal = s ? in2, in1;
endmodule