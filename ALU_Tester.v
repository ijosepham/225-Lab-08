`timescale 1ns / 1ps

module ALU_Tester;

	// Inputs
	reg [2:0] ALUControl;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] Result;
	wire Zero_Flag;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUControl(ALUControl), 
		.A(A), 
		.B(B), 
		.Result(Result), 
		.Zero_Flag(Zero_Flag)
	);

	initial begin
		// TestCase 0 - check the AND operation
		// AND(A,B): Result = A and B; Zero_Flag = 0;
		ALUControl = 0;
		A = 32'h00059460;
		B = 32'h00059460+1;
		#10;
		/*********************************************/
		// TestCase 1 - check the OR operation
		// OR(A,B): Result = A or B; Zero_Flag = 0;
		ALUControl = 1;
		A = 32'h00059460;
		B = 32'h00059460+1;
		#10;
		/*********************************************/
		// TestCase 2 - check the ADD operation
		// ADD(A,B): Result = sum; Zero_Flag = 0;
		ALUControl = 2;
		A = 32'h00059460;
		B = 32'h00059460+1;
		#10;
		/*********************************************/
		// TestCase 3 - check the SUB operation
		// SUB(A,B): Result = difference; Zero_Flag = 0;
		ALUControl = 6;
		A = 32'h00059460;
		B = 32'h00059460+1;
		#10;
		/*********************************************/
		// TestCase 4 - check the SLT operation
		// SLT(A,B): Result = AltB; Zero_Flag = 0;
		ALUControl = 7;
		A = 32'h00059460;
		B = 32'h00059460+1;
		#10;
		/*********************************************/
		// TestCase 5 - check the SLT operation
		// SLT(A,B): Result = AltB; Zero_Flag = 1;
		ALUControl = 7;
		A = 32'h00059460+1;
		B = 32'h00059460;
		#10;
		/*********************************************/
		
		$stop;
	end
      
endmodule

