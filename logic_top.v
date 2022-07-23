//logic top
`include "logical_and.v"
`include "logical_nand.v"
`include "logical_nor.v"
`include "logical_or.v"

module logic_top(in1 , in2 , opcode , out_logic);
	
	input signed [4:0]in1;
	input signed [4:0]in2;
	output reg signed [8:0]out_logic;
	input [2:0]opcode;
	wire [8:0]out_and , out_or , out_nand , out_nor;
	
	logical_or     u0_logical_or     (in1 , in2 , out_or);    
	logical_and    u1_logical_and    (in1 , in2 , out_and);   
	logical_nand   u2_logical_nand   (in1 , in2 , out_nand);  
	logical_nor    u3_logical_nor    (in1 , in2 , out_nor);
	
  always@(opcode , out_and , out_or , out_nand , out_nor)
		begin
			case(opcode[1:0])
				2'b00 : out_logic <= out_or;
				2'b01 : out_logic <= out_and;
				2'b10 : out_logic <= out_nand;
				2'b11 : out_logic <= out_nor;
			endcase
		end
endmodule
