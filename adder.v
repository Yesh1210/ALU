//adder
module add(in1 , in2 , out_add);
  
  input signed [4:0]in1;
  input signed [4:0]in2;
  output signed [8:0]out_add;
  
  assign out_add = in1 + in2;
  
endmodule
