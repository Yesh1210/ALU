//logical nor
module logical_nor(in1 , in2 , out_nor);
  
  input signed [4:0]in1;
  input signed [4:0]in2;
  output signed [8:0]out_nor;
  
  assign out_nor = !(in1 || in2);
  
endmodule
