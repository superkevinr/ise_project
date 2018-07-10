`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:32:46 03/09/2018
// Design Name:   top_washmachine
// Module Name:   C:/Users/Kevin/Documents/ise_project/washmachine/testofwashmachine.v
// Project Name:  washmachine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_washmachine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofwashmachine;

	// Inputs
	reg add;
	reg CLK_50;
	reg start;
	reg emergency;
	reg CLR;

	// Outputs
	wire forward;
	wire backward;
	wire off;
	wire alarm;
	wire [6:0] HEX0;
	wire [1:0] SEL;

	// Instantiate the Unit Under Test (UUT)
	top_washmachine uut (
		.add(add), 
		.CLK_50(CLK_50), 
		.start(start), 
		.emergency(emergency), 
		.CLR(CLR), 
		.forward(forward), 
		.backward(backward), 
		.off(off), 
		.alarm(alarm), 
		.HEX0(HEX0), 
		.SEL(SEL)
	);

	initial begin
		// Initialize Inputs
		add = 0;
		CLK_50 = 0;
		start = 0;
		emergency =1;
		CLR = 0;

		// Wait 100 ns for global reset to finish
		#100;
		add=1;
		#100;
		add=0;
		CLK_50=1;
		#100;
		start=1;
		#100;
		CLR=1;
		#10;
		CLR=0;
		// Add stimulus here
     
	end
	
	always #20 CLK_50=~CLK_50;
      
endmodule

