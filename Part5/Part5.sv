module Part5(SW,/* LEDR,*/ HEX0, HEX1, HEX2, HEX3, HEX4, Mout, Hout, Eout, Lout);
	input [17:0] SW;
	//output [17:0] LEDR;
	output reg [0:6] HEX0, HEX1, HEX2, HEX3, HEX4;

	wire [2:0] S;
	wire [2:0] M;
	wire [2:0] H; 
	wire [2:0] E;
	wire [2:0] L; 
	wire [2:0] O;
	
	/*wire [2:0] Mout;
	wire [2:0] Hout; 
	wire [2:0] Eout;
	wire [2:0] Lout;*/
	
	assign S[0] = SW[15];
	assign S[1] = SW[16];
	assign S[2] = SW[17];
	//assign LEDR = SW;
	
	assign H[2:0] = SW[14:12];
	assign E[2:0] = SW[11:9];
	assign L[2:0] = SW[8:6];
	assign O[2:0] = SW[5:3];
	assign M[2:0] = SW[2:0];
	
	output [2:0] Mout, Hout, Eout, Lout;
	
	
	//Mux_3w_5_to_1 U1(.S(S), .U(SW[14:12]), .V(SW[11:9]), .W(SW[8:6]), .X(SW[8:6]), .Y(SW[5:3]), .M(M));
	//Mux_3w_5_to_1 U1(.S(S), .U(H), .V(E), .W(L), .X(L), .Y(O), .M(M));
	Mux_3w_5_to_1 M1(.S(S), .U(H), .V(E), .W(L), .X(L), .Y(O), .M(Mout));
	HexHELO H0(HEX4, Mout);
	//Mux_3w_5_to_1 M2(.S(S), .U(E), .V(L), .W(L), .X(O), .Y(M), .M(Hout));
	//HexHELO H1(HEX3, H);
	//Mux_3w_5_to_1 M3(.S(S), .U(L), .V(L), .W(O), .X(M), .Y(H), .M(Eout));
	//HexHELO H2(HEX2, E);
	//Mux_3w_5_to_1 M4(.S(S), .U(L), .V(O), .W(M), .X(H), .Y(E), .M(Lout));
	//HexHELO H3(HEX1, L);
	//Mux_3w_5_to_1 M5(.S(S), .U(O), .V(M), .W(H), .X(E), .Y(L), .M(Lout));
	//HexHELO H4(HEX0, L);
	//HexHELO U2(Hex, M);
	
	
	//HexHELO H5(M, HEX5);
	
endmodule