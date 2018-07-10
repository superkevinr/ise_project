`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:46:07 04/02/2018 
// Design Name: 
// Module Name:    alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
    input [31:0] input1,
    input [31:0] input2,
    input [3:0] aluctr,
    output reg [31:0] alures,
    output reg zero
    );
always@(input1 or input2 or aluctr)
begin
   case(aluctr)
	4'b0110:
	begin
	alures=input1-input2;
	 if(alures==0)
	  zero=1;
	  else
	  zero=0;
	end
	
	4'b0010:
	alures=input1+input2;
	
	4'b0000:
	alures=input1&input2;
	
	4'b0001:
	alures=input1|input2;
	
	4'b0111:
	begin
	  if(input1<input2)
	    alures=1;
	  else
	    alures=0;
	end
	
	default:
	alures=0;
	endcase
end
endmodule
