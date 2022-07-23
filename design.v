//top module
`include "logic_top.v"
`include "arth_top.v"

module design_top(clk , rstn , in1 , in2 , opcode , out_top);
	input clk;
	input rstn;
	input [2:0]opcode;
	input signed [4:0]in1;
	input signed [4:0]in2;
	output reg signed [8:0]out_top;
	
	wire [8:0]out_arth , out_logic;
	
	arth_top    u0_arth_top  (in1 , in2 , opcode , out_arth);
	logic_top   u1_logic_top (in1 , in2 , opcode , out_logic);   
	
  	always@(posedge clk , negedge rstn)
		begin
			if(!rstn)
				out_top <= 0;
			else
				begin
					case(opcode[2])
						0 : out_top <= out_arth;
						1 : out_top <= out_logic;
					endcase
				end
		end
  
endmodule
