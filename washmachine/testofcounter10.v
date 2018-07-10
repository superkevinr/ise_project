`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:26:36 03/08/2018
// Design Name:   counter10
// Module Name:   C:/Users/Kevin/Documents/ise_project/washmachine/testofcounter10.v
// Project Name:  washmachine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter10
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofcounter10;

	// Inputs
	reg CP;
	reg nCR;
	reg EN;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	counter10 uut (
		.Q(Q), 
		.CP(CP), 
		.nCR(nCR), 
		.EN(EN)
	);

	initial begin
		// Initialize Inputs
		CP = 0;
		nCR = 1;
		EN = 1;

		// Wait 100 ns for global reset to finish
		
		#100;
		CP=1;
		#100;
		CP=0;
		#100;
		CP=1;
		// Add stimulus here

	end
      
endmodule

