module Part4(SW, HEX0);
	input [17:0] SW;
	//output [17:0] LEDR;
	output [0:6] HEX0;
	
	//assign LEDR = SW;
	//assign C[2] = SW[17];
	//assign C[1] = SW[16];
	//assign C[0] = SW[15];
	//assign HEX0[0:6] = SW[6:0];
	HexHELO helo(.Hex(HEX0), .C(SW[17:15]));
endmodule