`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:58:26 03/07/2018
// Design Name:   Divider50MHz
// Module Name:   C:/Users/Kevin/Documents/ise_project/washmachine/testofDivider50MHz.v
// Project Name:  washmachine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divider50MHz
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofDivider50MHz;

	// Inputs
	reg CLK_50M;
	reg nCLR;

	// Outputs
	wire CLK_1HzOut;

	// Instantiate the Unit Under Test (UUT)
	Divider50MHz uut (
		.CLK_50M(CLK_50M), 
		.nCLR(nCLR), 
		.CLK_1HzOut(CLK_1HzOut)
	);

	initial begin
		// Initialize Inputs
		CLK_50M = 0;
		nCLR = 1;

		// Wait 100 ns for global reset to finish
		#100;
		while(1)
		  begin CLK_50M=1;
		        #1;
				  CLK_50M=0;
				  #1;
			end
        
		// Add stimulus here

	end
      
endmodule

