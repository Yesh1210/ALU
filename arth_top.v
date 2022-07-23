//arthmetic top
`include "adder.v"
`include "subtractor.v"
`include "product.v"
`include "divider.v"

module arth_top(in1 , in2 , opcode , out_arth);

  input signed [4:0]in1;
  input signed [4:0]in2;
  output reg signed [8:0]out_arth;
  input [2:0]opcode;
  wire [8:0]out_add , out_sub , out_prod , out_div;
  
  add      u0_add  (in1 , in2 , out_add);
  subtract u1_sub  (in1 , in2 , out_sub);
  product  u2_prod (in1 , in2 , out_prod);
  divide   u3_div  (in1 , in2 , out_div);
  
  always@(opcode , out_add , out_sub , out_prod , out_div)
    begin
		case(opcode[1:0])
			2'b00 : out_arth <= out_add;
			2'b01 : out_arth <= out_sub;
			2'b10 : out_arth <= out_prod;
			2'b11 : out_arth <= out_div;
		endcase
	end
endmodule
