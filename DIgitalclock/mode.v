`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:55 03/27/2018 
// Design Name: 
// Module Name:    mode 
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
module mode(
input mode,
output alarmout,
input ALARM,
input ring,
input[7:0] Hour,
input[7:0] Minute,
input[7:0] sethour,
input[7:0] setmin,
output[15:0] segout
    );
assign alarmout=ALARM||ring;
assign segout[15:8] = mode?sethour:Hour;
assign segout[7:0] = mode?setmin:Minute;


endmodule
