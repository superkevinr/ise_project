`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:47:21 03/27/2018 
// Design Name: 
// Module Name:    Alarm 
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
module Alarm(
output ring,
output [7:0] sethour,
output [7:0] setmin,
input _1Hz,
input _1KHz,
input [7:0] Hour,
input [7:0] Minute,
input [7:0] Second,
input sethkey,
input setmkey,
input CtrRing
    );
supply1 Vdd;
wire Hrh_cmp,Minh_cmp,Hrl_cmp,Minl_cmp;
wire equal;

counter10 SU1(setmin[3:0],_1Hz,Vdd,setmkey);
counter6 SU2(setmin[7:4],Vdd,(setmin[3:0]==4'h9),_1Hz);
counter24 SU3(sethour[7:4],sethour[3:0],_1Hz,Vdd,sethkey);

comparator cmp1(Hrh_cmp,sethour[7:4],Hour[7:4]);
comparator cmp2(Hrl_cmp,sethour[3:0],Hour[3:0]);
comparator cmp3(Minh_cmp,setmin[7:4],Minute[7:4]);
comparator cmp4(Minl_cmp,setmin[3:0],Minute[3:0]);

assign equal=(Hrh_cmp&&Hrl_cmp&&Minh_cmp&&Minl_cmp);

assign ring=CtrRing?1'b0:(_1KHz&&equal&&(Second<8'd60));

endmodule
