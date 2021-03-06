//Matthew Skipworth
//Friday Session, Due: 20 April 2018

// this module describes a 3 bit wide 5 to 1 multiplexor.
module Mux_3w_5_to_1(S, U, V, W, X, Y, M);
//input/ output assignment.
	input [2:0] S;
	input [2:0] U;
	input [2:0] V;
	input [2:0] W;
	input [2:0] X;
	input [2:0] Y;
	output reg [2:0] M;
//instantiated 5 to 1 multiplexors.
	Mux_5_to_1 M0(.S(S), .U(U[0]), .V(V[0]), .W(W[0]), .X(X[0]), .Y(Y[0]), .M(M[0]));
	Mux_5_to_1 M1(.S(S), .U(U[1]), .V(V[1]), .W(W[1]), .X(X[1]), .Y(Y[1]), .M(M[1]));
	Mux_5_to_1 M2(.S(S), .U(U[2]), .V(V[2]), .W(W[2]), .X(X[2]), .Y(Y[2]), .M(M[2]));
endmodule

//testbench code borrowed from the help sessions canvas files.

//********************************************//
// 			    	 Testbench 			      //
//********************************************//
module MuxN_testbench;
	localparam TESTN = 3;
	logic [2:0] S; // mux select line
	logic [TESTN-1:0] A, B, C, D, E, F, G, H; // mux inputs
	logic [TESTN-1:0] M; // mux output
//S, U, V, W, X, Y, M
Mux_3w_5_to_1 /*#(.N(TESTN))*/ DUT( .S(S), .U(A), .V(B), .W(C), .X(D), .Y(E), .M(M) );

integer unsigned I, RX, RA, RB, RC, RD, RE, RF, RG, RH;
initial begin
	RX = $urandom( 111 ); // set the seed (assignment for compiler)
	for (I=0; I<9; I++ ) begin
		RA = $urandom(); // random number
		A = RA[TESTN-1:0];
		RB = $urandom();
		B = RB[TESTN-1:0];
		RC = $urandom(); // random number
		C = RC[TESTN-1:0];
		RD = $urandom();
		D = RD[TESTN-1:0];
		RE = $urandom(); // random number
		E = RE[TESTN-1:0];
		RF = $urandom();
		F = RF[TESTN-1:0];
		RG = $urandom(); // random number
		G = RG[TESTN-1:0];
		RH = $urandom();
		H = RH[TESTN-1:0];
		S[0] = 0;
		S[1] = 0;
		S[2] = 0;
		#5;
		assert( M == A );
		#10;
		S[0] = 1;
		S[1] = 0;
		S[2] = 0;
		#10;
		assert( M == B );
		S[0] = 0;
		S[1] = 1;
		S[2] = 0;
		#10;
		assert( M == C );
		#10;
		S[0] = 1;
		S[1] = 1;	
		S[2] = 0;
		#10;
		assert( M == D );
		#10;
		S[0] = 0;
		S[1] = 0;
		S[2] = 1;
		assert( M == E );
		#10;
		S[0] = 1;
		S[1] = 0;	
		S[2] = 1;
		#10;
		assert( M == F );
		#10;
		S[0] = 0;
		S[1] = 1;
		S[2] = 1;
		assert( M == G );
		#10;	
		S[0] = 1;
		S[1] = 1;	
		S[2] = 1;
		#10;
		assert( M == H );
		#10;
		end
		$stop;
	end
	
	initial begin
	$display( " I A B C D E F G H S M" );
	$monitor( "%d %4b %4b %4b %4b %4b %4b %4b %4b %b %4b", I, A, B, C, D, E, F, G, H, S, M );
	end
	
endmodule