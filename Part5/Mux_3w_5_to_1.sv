module Mux_3w_5_to_1(S, U, V, W, X, Y, M);
	input [2:0] S;
	input [2:0] U;
	input [2:0] V;
	input [2:0] W;
	input [2:0] X;
	input [2:0] Y;
	output reg [2:0] M;
	
	//Mux_4w_2_to_1 U1(.S(S), .X(SW[3:0]), .Y(SW[7:4]), .M(LEDG[3:0]));
	
	
	Mux_5_to_1 M0(.S(S), .U(U[0]), .V(V[0]), .W(W[0]), .X(X[0]), .Y(Y[0]), .M(M[0]));
	Mux_5_to_1 M1(.S(S), .U(U[1]), .V(V[1]), .W(W[1]), .X(X[1]), .Y(Y[1]), .M(M[1]));
	Mux_5_to_1 M2(.S(S), .U(U[2]), .V(V[2]), .W(W[2]), .X(X[2]), .Y(Y[2]), .M(M[2]));
endmodule

//module Mux_3w_5_to_1_testbench(.S(S), .U(U), .V(V), .W(W), .X(X), .Y(Y), .M(M));
//module Mux_3w_5_to_1_testbench(S, U, V, W, X, Y, M);
/*module dut Mux_3w_5_to_1_testbench();
	
	logic [2:0] S;
	logic [2:0] U;
	logic [2:0] V;
	logic [2:0] W; 
	logic [2:0] X;
	logic [2:0] Y; 
	logic [2:0] M;	
	
	//Mux_5_to_1_testbench dut0(.S(S), .U(U[0]), .V(V[0]), .W(W[0]), .X(X[0]), .Y(Y[0]), .M(M[0]));
	//Mux_5_to_1_testbench dut1(.S(S), .U(U[1]), .V(V[1]), .W(W[1]), .X(X[1]), .Y(Y[1]), .M(M[1]));
	//Mux_5_to_1_testbench dut2(.S(S), .U(U[2]), .V(V[2]), .W(W[2]), .X(X[2]), .Y(Y[2]), .M(M[2]));
	dut Mux_5_to_1_testbench();
endmodule	*/