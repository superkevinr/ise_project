`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:01 03/07/2018 
// Design Name: 
// Module Name:    SEG7_LUT 
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
module SEG7_LUT(
    output reg [6:0] oSEG,
	 input CP,
	 output reg[3:0] light,
	 input[15:0] BCD
    );
	 reg[19:0] count=0;
	 reg[1:0] scan=2'b00;
	 reg clk=0;
	 reg[3:0] iDIG;

always@(posedge CP)
begin if(count==20'd100000)//分频产生扫描信号
        begin count<=30'd00;
		        clk<=~clk;
		  end
		 else count<=count+1'b1;
end

always@(posedge clk)
begin
scan<=scan+1'b1;
end

always@(scan)
begin case(scan)//扫描数码管
      2'b00:light<=4'b1110;
		2'b01:light<=4'b1101;
		2'b10:light<=4'b1011;
		2'b11:light<=4'b0111;
		endcase
end

always@(scan or BCD)
begin case(scan)//显示个位数和十位数
      2'b00:iDIG<=BCD[3:0];
		2'b01:iDIG<=BCD[7:4];
		2'b10:iDIG<=BCD[11:8];
		2'b11:iDIG<=BCD[15:12];
		endcase
end
      
		        
always@(iDIG)
begin
  case(iDIG)//7段译码器
     4'h1:oSEG = 7'b111_1001;
	  4'h2:oSEG = 7'b010_0100;
	  4'h3:oSEG = 7'b011_0000;
	  4'h4:oSEG = 7'b001_1001;
	  4'h5:oSEG = 7'b001_0010;
	  4'h6:oSEG = 7'b000_0010;
	  4'h7:oSEG = 7'b111_1000;
	  4'h8:oSEG = 7'b000_0000;
	  4'h9:oSEG = 7'b001_1000;
	  4'ha:oSEG = 7'b000_1000;
	  4'hb:oSEG = 7'b000_0011;
	  4'hc:oSEG = 7'b100_0110;
	  4'hd:oSEG = 7'b010_0001;
	  4'he:oSEG = 7'b000_0110;
	  4'hf:oSEG = 7'b000_1110;
	  4'h0:oSEG = 7'b100_0000;
  endcase
end
endmodule
