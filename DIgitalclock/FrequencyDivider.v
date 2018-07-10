`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:38 03/27/2018 
// Design Name: 
// Module Name:    FrequencyDivider 
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
module FrequencyDivider(
input clk,
output reg _1Hz,
output reg _500Hz,
output reg _1KHz
    );
reg[24:0]cnt1=0,cnt2=0;
(*KEEP="TURE"*)reg[24:0] cnt3=0;

always@(posedge clk)
begin
if(cnt1<25'd24999999)
cnt1<=cnt1+1;
else
begin
_1Hz<=~_1Hz;
cnt1<=0;
end
end

always@(posedge clk)
begin
if(cnt2<25'd49999)
cnt2<=cnt2+1;
else 
begin
_500Hz<=~_500Hz;
cnt2<=0;
end
end

always@(posedge clk)
begin
if(cnt3<25'd24999)
cnt3<=cnt3+1;
else;
begin
_1KHz<=~_1KHz;
cnt3<=0;
end
end

endmodule
