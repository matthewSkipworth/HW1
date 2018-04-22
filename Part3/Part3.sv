//Matthew Skipworth
//Friday Session, Due: 20 April 2018

//this module instatiates the 3 bit wide 5 to 1 multiplexor.
module Part3(SW, LEDG, LEDR);
//input/output assignment.
	input [17:0] SW;
	output [17:0] LEDR;
	output [2:0] LEDG;
	
	wire [2:0] S;
	
	assign S[0] = SW[15];
	assign S[1] = SW[16];
	assign S[2] = SW[17];
	assign LEDR = SW;
	
	Mux_3w_5_to_1 U1(.S(S), .U(SW[14:12]), .V(SW[11:9]), .W(SW[8:6]), .X(SW[5:3]), .Y(SW[2:0]), .M(LEDG[2:0]));
endmodule	
	
	