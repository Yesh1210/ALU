//product
module product(in1 , in2 , out_prod);
  
  input signed [4:0]in1;
  input signed [4:0]in2;
  output signed [8:0]out_prod;
  
  assign out_prod = in1 * in2;
  
endmodule
