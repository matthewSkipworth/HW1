module Mux_2_to_1(S, X, Y, M);
	input S, X, Y;
	output M;
	
	assign M = (~S & X) | (S & Y);
endmodule

module Mux_2_to_1_testbench();

	logic S, X, Y;
	logic M;

	Mux_2_to_1 dut(.S(S), .X(X), .Y(Y), .M(M));
	
	initial begin
	S = 0; X = 0, Y = 0; M = 0; #10;
	S = 0; X = 0, Y = 0; M = 1; #10;
	S = 0; X = 0, Y = 1; M = 0; #10;
	S = 0; X = 0, Y = 1; M = 1; #10;
	S = 0; X = 1, Y = 0; M = 0; #10;
	S = 0; X = 1, Y = 0; M = 1; #10;
	S = 0; X = 1, Y = 1; M = 0; #10;
	S = 0; X = 1, Y = 1; M = 1; #10;
	S = 1; X = 0, Y = 0; M = 0; #10;
	S = 1; X = 0, Y = 0; M = 1; #10;
	S = 1; X = 0, Y = 1; M = 0; #10;
	S = 1; X = 0, Y = 1; M = 1; #10;
	S = 1; X = 1, Y = 0; M = 0; #10;
	S = 1; X = 1, Y = 0; M = 1; #10;
	S = 1; X = 1, Y = 1; M = 0; #10;
	S = 1; X = 1, Y = 1; M = 1; #10;
	end
endmodule