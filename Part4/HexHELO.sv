//Matthew Skipworth
//Friday Session, Due: 20 April 2018

//This module describes the HexHELO module. This module is used to display
//characters to spell out the word "HELLO".
module HexHELO(Hex, C);
//input/output assignments.
	input [2:0] C;
	output reg [0:6] Hex;
	
//Hex display logic statements.
	assign Hex[0] = ~C[0] | C[2];
	assign Hex[1] = C[2] | ~C[1] & C[0] | C[1] & ~C[0];
	assign Hex[2] = C[2] | ~C[1] & C[0] | C[1] & ~C[0];
	assign Hex[3] = C[2] | ~C[1] & ~C[0];
	assign Hex[4] = C[2];
	assign Hex[5] = C[2];
	assign Hex[6] = C[1] | C[2];
	
	
	/*
	assign Hex[0] = 7b'1001000;
	assign Hex[1] = 7b'0110000;
	assign Hex[2] = 7b'1110001;
	assign Hex[3] = 7b'0000001;
	*/
	//wire A, B, C, D; 
	/*
	assign A = ~C[0] & ~C[1] & ~C[2]; //= Hex[0];
	assign B = ~C[0] & ~C[1] & C[2]; //= Hex[1];
	assign C = ~C[0] & C[1] & ~C[2]; //= Hex[2];
	assign D = ~C[0] & C[1] & C[2]; //= Hex[0];
	
	always @(C or Hex) 
	begin
		if (~C[0] & ~C[1] & ~C[2]) 
			Hex = 7b'1001000;
		else if (~C[0] & ~C[1] & C[2]) 
			Hex = 7b'0110000;
		else if (~C[0] & C[1] & ~C[2]) 
			Hex = 7b'1110001;
		else if (~C[0] & C[1] & C[2]) 
			Hex = 7b'0000001;
		else 
			Hex = 7b'1111111;
		
	end
	*/
endmodule	