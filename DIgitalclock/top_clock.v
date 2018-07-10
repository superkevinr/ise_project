`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:51 03/21/2018 
// Design Name: 
// Module Name:    top_clock 
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
module top_clock(
input CLK_50,
input nCR,
input EN,
input Adj_Min,
input Adj_Hour,
output[6:0] SEG,
output[3:0] SEL,
output reg secLED,
output alarmout,
input sethkey,
input setmkey,
input CtrRing,
input mode
    );
wire[7:0] Hour;
wire[7:0] Minute;
wire[7:0] Second;
wire ALARM,ring;
wire[7:0] sethour,setmin;
wire[15:0] segout;
supply1 Vdd;
(*S="YES"*)wire MinL_EN,MinH_EN,Hour_EN;
(*S="YES"*)wire CP_1Hz,CP_500Hz,CP_1KHz;
//============分频===============
FrequencyDivider U0(.clk(CLK_50),._1Hz(CP_1Hz),._500Hz(CP_500Hz),._1KHz(CP_1KHz));
//==============================

//============放电台报时模块========
(*KEEP_HIERARCHY="TRUE"*)radio R1(._1KHz(CP_1KHz),._500Hz(CP_500Hz),.Minute(Minute),.Second(Second),.ALARM(ALARM));
//================================

//==========闹钟模块================
Alarm A1(ring,sethour,setmin,CP_1Hz,CP_1KHz,Hour,Minute,Second,sethkey,setmkey,CtrRing);
//=================================

//==========闹钟时间模式切换===========
mode SW1(mode,alarmout,ALARM,ring,Hour,Minute,sethour,setmin,segout);
//==================================


//============时间计数器================

(*KEEP_HIERARCHY="TRUE"*)counter10 S0(.Q(Second[3:0]),.CP(CP_1Hz),.nCR(nCR),.EN(EN));
(*KEEP_HIERARCHY="TRUE"*)counter6 S1(.Q(Second[7:4]),.nCR(nCR),.EN(Second[3:0]==4'h9),.CP(CP_1Hz));

(*KEEP_HIERARCHY="TRUE"*)counter10 M0(.Q(Minute[3:0]),.nCR(nCR),.EN(MinL_EN),.CP(CP_1Hz));
(*KEEP_HIERARCHY="TRUE"*)counter6 M1(.Q(Minute[7:4]),.nCR(nCR),.EN(MinH_EN),.CP(CP_1Hz));

assign MinL_EN = Adj_Min? Vdd: (Second==8'h59);
assign MinH_EN = (Adj_Min&&(Minute[3:0]==4'h9))||((Minute[3:0]==4'h9)&&(Second==8'h59));

(*KEEP_HIERARCHY="TRUE"*)counter24 H0(.CntH(Hour[7:4]),.CntL(Hour[3:0]),.nCR(nCR),.EN(Hour_EN),.CP(CP_1Hz));
 assign Hour_EN = Adj_Hour? Vdd:((Minute==8'h59)&&(Second==8'h59));
//=====================================
//============数码管显示=================
SEG7_LUT D0(.oSEG(SEG),.CP(CLK_50),.light(SEL),.BCD(segout));
//=====================================
always@(EN or CP_1Hz)
begin
if(EN) begin secLED<=CP_1Hz; end
else begin secLED<=1'b0;end
end
endmodule
