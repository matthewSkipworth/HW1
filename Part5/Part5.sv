//Matthew Skipworth
//Friday Session, Due: 20 April 2018

//This module instantiates the HexHELO module and the Mux_3w_5_to_1 to display
//and scroll the word "HELLO" on 5 displays.
module Part5(SW, HEX0, HEX1, HEX2, HEX3, HEX4);
//input/output statements.
	input [17:0] SW;
	
	output reg [0:6] HEX0, HEX1, HEX2, HEX3, HEX4;

	logic [2:0] S, H, E, L, O, M, M2, M3, M4, M5;
	
	assign S = SW[17:15];
	
	assign H = SW[14:12];
	assign E = SW[11:9];
	assign L = SW[8:6];
	assign O = SW[5:3];
//module instantiations.
	Mux_3w_5_to_1 G1(S, H, E, L, L, O, M);
	HexHELO H0(HEX4, M);
	
	Mux_3w_5_to_1 G2(S, E, L, L, O, H, M2);
	HexHELO H1(HEX3, M2);
	
	Mux_3w_5_to_1 G3(S, L, L, O, H, E, M3);
	HexHELO H2(HEX2, M3);
	
	Mux_3w_5_to_1 G4(S, L, O, H, E, L, M4);
	HexHELO H3(HEX1, M4);
	
	Mux_3w_5_to_1 G5(S, O, H, E, L, L, M5);
	HexHELO H4(HEX0, M5);
	
endmodule