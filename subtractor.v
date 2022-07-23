//subtractor
module subtract(in1 , in2 , out_sub);
  
  input signed [4:0]in1;
  input signed [4:0]in2;
  output signed [8:0]out_sub;
  
  assign out_sub = in1 - in2;
  
endmodule
