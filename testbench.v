//testbench
module design_top_tb;
  reg clk , rstn;
  reg signed [4:0]in1;
  reg signed [4:0]in2;
  reg [2:0]opcode;
  wire signed [8:0]out_top;
  
  design_top DUT(clk , rstn , in1 , in2 , opcode , out_top);
  
  initial
    begin
      clk = 1'b1;
      forever
        #5 clk = ~clk;
    end
  
  task initialize;
    begin
      {in1 , in2 , opcode} = 0;
      //clk = 1'b0;
      rstn = 1;
    end
  endtask
  
  task reset_input;
    begin
      @(negedge clk)
      rstn = 1'b0;
      @(negedge clk)
      rstn = 1'b1;
    end
  endtask
  
  task data_input(input [4:0]a , input [4:0]b , input [2:0]c);
    begin
      @(negedge clk)
      in1 = a;
      in2 = b;
      opcode = c;
      if(c == 0)
        $display("ADDITION");
      else if (c == 1)
        $display("SUBTRACTION");
      else if (c == 2)
        $display("MULTIPLICATION");
      else if (c == 3)
        $display("DIVISION");
      else if (c == 4)
        $display("LOGICAL OR");
      else if (c == 5)
        $display("LOGICAL AND");
      else if (c == 6)
        $display("LOGICAL NAND");
      else if (c == 7)
        $display("LOGICAL NOR");
      #6;
      $display($time, " opcode = %d , in1 = %d, in2 = %d, out = %d", opcode , in1 , in2 , out_top);
    end
  endtask
  
  initial
    begin
      $dumpfile("design_top.vcd");
      $dumpvars(0 , design_top_tb);
      //$monitor($time, " opcode = %d , in1 = %d, in2 = %d, out = %d", opcode , in1 , in2 , out_top);
      initialize;
      reset_input;
      data_input(4'd2 , 4'd3 , 0);
      data_input(-4'd2 , 4'd6 , 1);
      //reset_input;
      data_input(4'd2 , 4'd5 , 2);
      data_input(4'd12 , 4'd4 , 3);
      reset_input;
      data_input(4'd6 , -4'd6 , 4);
      data_input(4'd2 , 4'd0 , 5);
      //reset_input;
      data_input(-4'd8 , 4'd5 , 6);
      data_input(4'd0 , 4'd0 , 7);
//       data_input(4'd3 , 4'd6 , 3'b2);
//       data_input(-4'd2 , 4'd4 , 3'b5);
      #200 $finish;
    end
endmodule
