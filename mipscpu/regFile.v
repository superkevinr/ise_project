`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:47 04/02/2018 
// Design Name: 
// Module Name:    regFile 
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
module regFile(
    input clk,
    input reset,
    input [31:0] regWriteData,
    input [4:0] regWriteAddr,
    input regWriteEn,
    output [31:0] RsData,
    output [31:0] RtData,
    input [4:0] RsAddr,
    input [4:0] RtAddr
    );

reg [31:0] regs[0:31];
assign RsData = (RsAddr == 5'b0)?32'b0: regs[RsAddr];
assign RtData = (RtAddr == 5'b0)?32'b0: regs[RtAddr];
integer i;
always@(posedge clk)
begin
   if(!reset)
	    begin
		 if(regWriteEn==1)
		    begin
			 regs[regWriteAddr]=regWriteData;
			 end
		 end
   else
	   begin
		   for(i=0;i<32;i=i+1)
			  regs[i]=32'b0;
	   end
end

endmodule
