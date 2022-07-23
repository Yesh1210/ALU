//logical nand
module logical_nand(in1 , in2 , out_nand);
  
  input signed [4:0]in1;
  input signed [4:0]in2;
  output signed[8:0]out_nand;
  
  assign out_nand = !(in1 && in2);
  
endmodule
