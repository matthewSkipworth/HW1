//Matthew Skipworth
//Friday Session, Due: 20 April 2018

//Module that connects ten switches and lights.

module Part1 (SW, LEDR);

//input/ ouput assignments.
input [17:0] SW; 
output [17:0] LEDR;

assign LEDR[0] = SW[0];
assign LEDR[1] = SW[1];
assign LEDR[2] = SW[2];
assign LEDR[3] = SW[3];
assign LEDR[4] = SW[4];
assign LEDR[5] = SW[5];
assign LEDR[6] = SW[6];
assign LEDR[7] = SW[7];
assign LEDR[8] = SW[8];
assign LEDR[9] = SW[9];
assign LEDR[10] = SW[10];
assign LEDR[11] = SW[11];
assign LEDR[12] = SW[12];
assign LEDR[13] = SW[13];
assign LEDR[14] = SW[14];
assign LEDR[15] = SW[15];
assign LEDR[16] = SW[16];
assign LEDR[17] = SW[17];

endmodule

