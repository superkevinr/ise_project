`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:41 03/27/2018 
// Design Name: 
// Module Name:    radio 
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
module radio(
input _1KHz,
input _500Hz,
input [7:0] Minute,
input [7:0] Second,
output reg ALARM
    );

always@(Minute or Second)
if(Minute==8'h59)
case(Second)
8'h51,
8'h53,
8'h55,
8'h55,
8'h57:ALARM<=_500Hz; //前四秒用500Hz的频率报时
8'h59:ALARM<=_1KHz; //第59号用1KHz频率报时
default:ALARM<=1'b0;
endcase

else ALARM<=1'b0;

endmodule
