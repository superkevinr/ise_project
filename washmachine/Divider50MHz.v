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
parameter CLK_Freq = 50000000;//50MHzʱ������
parameter OUT_Freq = 1;////1Hzʱ�����
parameter N = 25;//λ�����ݼ�������ģ��ȷ��
reg[N-1:0] Count_DIV=0;

always@(posedge CLK_50M or negedge nCLR)
begin
  if(!nCLR) begin
               CLK_1HzOut<=0;
		          Count_DIV<=0;//��Ƶ�ź��첽����
            end
  else begin
         if (Count_DIV<(CLK_Freq/(2*OUT_Freq)-1))//������ģ
             Count_DIV<=Count_DIV+'b1;//��Ƶ��������1����
         else begin
               Count_DIV<=0;//��Ƶ�������������
		         CLK_1HzOut<=~CLK_1HzOut;//����ź�ȡ��
              end
        end
end
endmodule
