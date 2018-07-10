`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:10:22 03/19/2018
// Design Name:   revertableclocktop
// Module Name:   C:/Users/Kevin/Documents/ise_project/revertablecounter/testofrevertableclock.v
// Project Name:  revertablecounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: revertableclocktop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofrevertableclock;

	// Inputs
	reg CLK_50;
	reg revert;
	reg nCLR;

	// Outputs
	wire [3:0] SEL;
	wire [6:0] SEG;

	// Instantiate the Unit Under Test (UUT)
	revertableclocktop uut (
		.CLK_50(CLK_50), 
		.revert(revert), 
		.nCLR(nCLR), 
		.SEL(SEL), 
		.SEG(SEG)
	);

	initial begin
		// Initialize Inputs
		CLK_50 = 0;
		revert = 0;
		nCLR = 1;

		// Wait 100 ns for global reset to finish
		#100;
		revert=1;
        
		// Add stimulus here

	end
	
	always 
	begin
	#10 CLK_50=~CLK_50;
   end
endmodule

