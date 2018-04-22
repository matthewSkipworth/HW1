//Matthew Skipworth
//Friday Session, Due: 20 April 2018

// this module implements the 4 bit wide 2 to 1 multiplexor.
module Part2(SW, LEDR, LEDG);

//input/ output assignments.
	input [17:0] SW;
	output [17:0] LEDR;
	output [3:0] LEDG;
	
	wire S;
	
	assign S = SW[17];
	assign LEDR = SW;
	
//4 to 1 mux instatiation.	
	Mux_4w_2_to_1 U1(.S(S), .X(SW[3:0]), .Y(SW[7:4]), .M(LEDG[3:0]));
	
endmodule