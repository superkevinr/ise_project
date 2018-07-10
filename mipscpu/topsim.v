`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:47:09 04/05/2018
// Design Name:   top
// Module Name:   C:/Users/Kevin/Documents/ise_project/mipscpu/topsim.v
// Project Name:  mipscpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module topsim;

	// Inputs
	reg clkin;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clkin(clkin), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clkin = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
      reset=0;
     
		// Add stimulus here

	end
      always #10 clkin=~clkin;
endmodule

