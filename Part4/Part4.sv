//Matthew Skipworth
//Friday Session, Due: 20 April 2018

//This module instantiates the HexHELO module to display the word "HELLO"
//on the DE2 board.
module Part4(SW, HEX0);
//input/output assignments.
	input [17:0] SW;
	output [0:6] HEX0;
	
	HexHELO helo(.Hex(HEX0), .C(SW[17:15]));
endmodule