`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:39:23 03/19/2018 
// Design Name: 
// Module Name:    revertableclocktop 
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
module revertableclocktop(
input CLK_50,
input revert,
input nCLR,
output[3:0] SEL,
output[6:0] SEG
    );
reg[3:0] seconds=4'b0000;
wire CP;

Divider50MHz D0(.CLK_50M(CLK_50),.nCLR(1),.CLK_1HzOut(CP));//·ÖÆµÄ£¿é
defparam D0.N=25,
         D0.CLK_Freq=50000000,
			D0.OUT_Freq=1;

always@(posedge CP or negedge nCLR)
  if(~nCLR) seconds<=4'b0000;
  else case(revert)
       1'b0:begin
		          if(seconds==4'b1111) begin seconds<=4'b0000; end
					 else seconds<=seconds+1'b1;
				end
		 
		 1'b1:begin
		          if(seconds==4'b0000) begin seconds<=4'b1111; end
					 else seconds<=seconds-1'b1;
				end
			endcase
				
SEG7_LUT S0(.seconds(seconds),.light(SEL),.oSEG(SEG));


endmodule
