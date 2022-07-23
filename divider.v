//divide
module divide(in1 , in2 , out_div);
  
  input signed [4:0]in1;
  input signed [4:0]in2;
  output reg signed [8:0]out_div;
  
  always@(in1 , in2)
    begin
      if(in2 != 0)
        out_div <= in1 / in2;
      else
        out_div <= 0;
    end
  
  //assign out_div = in1 / in2;
  
endmodule
