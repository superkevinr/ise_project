`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:04:35 04/02/2018 
// Design Name: 
// Module Name:    aluctr 
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
module aluctr(
    input [1:0] aluop,
    input [5:0] funct,
    output reg [3:0] aluctr
    );
always@(aluop or funct)
casex({aluop,funct})
8'b00xxxxxx: aluctr=4'b0010;//lw&sw
8'b11xxxxxx: aluctr=4'b0010;//addi
8'b01xxxxxx: aluctr=4'b0110;//beq
8'b1xxx0000: aluctr=4'b0010;//add
8'b1xxx0010: aluctr=4'b0110;//sub
8'b1xxx0100: aluctr=4'b0000;//and
8'b1xxx0101: aluctr=4'b0001;//or
8'b1xxx1010: aluctr=4'b0111;//slt
endcase

endmodule
