


                                                     _____________________________________________
                                                    |                                             |
                                                    |               _______________               |
                                                    |              |               |              |
                                                    |              |   ARTH_TOP    |              |
                                                    |              |               |              |
                                                    |              |               |              |
						    |              |   ADDITION    |              |
						    |              |   SUBTRACTION |              |
					     in1--->|              |   PRODUCT     |              |
				                    |              |   DIVISION    |              |
						    |              |               |              |
					     in2--->|              |               |              |
						    |              |_______________|              |
					            |                                             |
					  opcode--->|                                             |
					            |               _______________               |--->out_top
						    |              |               |              |
				             clk--->|              |   LOGIC_TOP   |              |
						    |              |               |              |
                                                    |              |               |              |
                                            rstn--->|              |      OR       |              |
                                                    |              |      AND      |              |
                                                    |              |      NAND     |              |
                                                    |              |      NOR      |	          |
                                                    |              |               |		  |
                                                    |              |               |		  |
                                                    |              |_______________|		  |
                                                    |                               		  |
                                                    |                               		  |
						    |                                  DESIGN_TOP |
						    |_____________________________________________|


1. ALU(Arthimetic logic unit) is designed in such a way that it contains two sub blocks in it namely Arthimetic unit and logical unit.
2. Arthimetic unit does the operations like Addition , Subtraction , Multiplication , Division.
3. Logical unit does all the logical operations like AND , OR , NAND , NOR.
4. It also has CLK and RESETN(Asynchronous low) signals for controlling the operations.
5. It has an other signal called OPCODE. Various operations are performed based on the value of opcode given.
	OPCODE VALUE        OPERATION
	0					ADDITION
	1					SUBTRACTION
	2					PRODUCT
	3					DIVISION
	4					LOGICAL_OR
	5					LOGICAL_AND
	6					LOGICAL_NAND
	7					LOGICAL_NOR
	
	-------END-------
