//logical or
module logical_or(in1 , in2 , out_or);
  
  input signed [4:0]in1;
  input signed [4:0]in2;
  output signed [8:0]out_or;
  
  assign out_or = in1 || in2;
  
endmodule
