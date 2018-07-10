`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:16:23 04/05/2018
// Design Name:   ctr
// Module Name:   C:/Users/Kevin/Documents/ise_project/mipscpu/ctrsim.v
// Project Name:  mipscpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ctr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ctrsim;

	// Inputs
	reg [5:0] opCode;

	// Outputs
	wire regDst;
	wire aluSrc;
	wire memToReg;
	wire regWrite;
	wire memRead;
	wire memWrite;
	wire branch;
	wire [1:0] aluop;
	wire jmp;

	// Instantiate the Unit Under Test (UUT)
	ctr uut (
		.opCode(opCode), 
		.regDst(regDst), 
		.aluSrc(aluSrc), 
		.memToReg(memToReg), 
		.regWrite(regWrite), 
		.memRead(memRead), 
		.memWrite(memWrite), 
		.branch(branch), 
		.aluop(aluop), 
		.jmp(jmp)
	);

	initial begin
		// Initialize Inputs
		opCode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
   opCode=6'b000010;
	#100;
	opCode=6'b001000;
	#100;
	opCode=6'b100011;
	#100;
	opCode=6'b101011;
	#100;
	opCode=6'b000100;
	end
      
endmodule

