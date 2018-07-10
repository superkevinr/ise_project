`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:10:51 03/28/2018
// Design Name:   top_clock
// Module Name:   C:/Users/Kevin/Documents/ise_project/DIgitalclock/testofDigitalclock.v
// Project Name:  DIgitalclock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofDigitalclock;

	// Inputs
	reg CLK_50;
	reg nCR;
	reg EN;
	reg Adj_Min;
	reg Adj_Hour;
	reg sethkey;
	reg setmkey;
	reg CtrRing;
	reg mode;

	// Outputs
	wire [6:0] SEG;
	wire [3:0] SEL;
	wire secLED;
	wire alarmout;

	// Instantiate the Unit Under Test (UUT)
	top_clock uut (
		.CLK_50(CLK_50), 
		.nCR(nCR), 
		.EN(EN), 
		.Adj_Min(Adj_Min), 
		.Adj_Hour(Adj_Hour), 
		.SEG(SEG), 
		.SEL(SEL), 
		.secLED(secLED), 
		.alarmout(alarmout), 
		.sethkey(sethkey), 
		.setmkey(setmkey), 
		.CtrRing(CtrRing), 
		.mode(mode)
	);

	initial begin
		// Initialize Inputs
		CLK_50 = 0;
		nCR = 0;
		EN = 0;
		Adj_Min = 0;
		Adj_Hour = 0;
		sethkey = 0;
		setmkey = 0;
		CtrRing = 0;
		mode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

