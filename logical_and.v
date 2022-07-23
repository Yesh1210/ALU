//logical and
module logical_and(in1 , in2 , out_and);
  
  input signed [4:0]in1;
  input signed [4:0]in2;
  output signed [8:0]out_and;
  
  assign out_and = in1 && in2;
  
endmodule
