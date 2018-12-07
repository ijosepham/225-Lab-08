`timescale 1ns / 1ps

module HalfAdder(A, B, Cout, S);
	input A, B;
	output Cout, S;
	
	assign Cout = A & B; // carry output equation
	assign S = A ^ B; // Sum equation
	
	
endmodule
