`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:07 03/07/2018 
// Design Name: 
// Module Name:    Divider50MHz 
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
module Divider50MHz(
    input CLK_50M,
    input nCLR,
    output reg CLK_1HzOut=1'b0
    );
parameter CLK_Freq = 50000000;//50MHz时钟输入
parameter OUT_Freq = 1;////1Hz时钟输出
parameter N = 25;//位宽，根据计数器的模来确定
reg[N-1:0] Count_DIV=0;

always@(posedge CLK_50M or negedge nCLR)
begin
  if(!nCLR) begin
               CLK_1HzOut<=0;
		          Count_DIV<=0;//分频信号异步清零
            end
  else begin
         if (Count_DIV<(CLK_Freq/(2*OUT_Freq)-1))//计数器模
             Count_DIV<=Count_DIV+'b1;//分频计数器增1计数
         else begin
               Count_DIV<=0;//分频器的输出被清零
		         CLK_1HzOut<=~CLK_1HzOut;//输出信号取反
              end
        end
end
endmodule
