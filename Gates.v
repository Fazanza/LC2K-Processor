module AND2To1(in1, in2, outVal);
  input in1, in2;
  output outVal;

  assign outVal = (in1 && in2);
endmodule