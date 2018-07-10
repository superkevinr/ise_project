`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:06 03/07/2018 
// Design Name: 
// Module Name:    top_washmachine 
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
module top_washmachine(
    input add,//����ѭ�������ź�
    input CLK_50,//����ʱ���ź�
    input start,//��ʼ�ź�
    input emergency,//��������ź�
	 input CLR,//ѭ�����������ź�
    output reg forward=0,//��ת�źŵ�
    output reg backward=0,//��ת�źŵ�
    output reg off=0,//�����źŵ�
    output reg alarm=0,//�����źŵ�
    output [6:0] HEX0,//����ܶ�ѡ�ź�
	 output [3:0] SEL//�����λѡ�ź�
    );
	 reg EN=1'b1;//�����������ź�
	 reg nCR=1'b1;//�������첽�����ź�
	 wire [7:0] seconds;//ʱ���¼����
	 wire CP_1Hz;//��Ƶ�ȵõ���1Hzʱ���ź�
	 reg [3:0] times=0;//ѭ��������¼����
	 reg [3:0] loops=1'b0;//ѭ��������ֵ����
	 reg [1:0] state=2'b00;//ϴ�»�״̬����
	 parameter S0=2'b00;
	 parameter S1=2'b01;
	 parameter S2=2'b10;
	 parameter S3=2'b11;
//==============��Ƶ=============
Divider50MHz U0(.CLK_50M(CLK_50),.nCLR(1),.CLK_1HzOut(CP_1Hz));
defparam U0.N=25,U0.CLK_Freq=50000000,U0.OUT_Freq=1;
//==============================

//=========second counter=======
counter10 C1(.Q(seconds[3:0]),.nCR(nCR),.EN(EN),.CP(CP_1Hz));
counter6 C2(.Q(seconds[7:4]),.nCR(nCR),.EN(seconds[3:0]==4'h9),.CP(CP_1Hz));
//==============================

//============������ʾ===========
SEG7_LUT D0(.oSEG(HEX0),.CP(CLK_50),.light(SEL),.seconds(seconds));
//=============================

always@(posedge add or posedge CLR) //����ѭ������
      begin
		  if(CLR) loops<=0;
		  else if(loops<15)
		     loops<=loops+1'b1;
		  else
		     loops<=0;
		end
		
always@(times or emergency)//����ϵͳ
 begin if((times==0)||(emergency==1))
         alarm<=1;
		 else alarm<=0;
 end
 
always@(posedge CLK_50)
begin
 nCR<=1'b1;
 if(start==0)
  begin
   times<=loops;
   EN<=1'b0;
	nCR<=1'b0;
   state<=S0;
	forward<=1'b0;
	backward<=1'b0;
	off<=1'b0;
  end
 else begin
        if(emergency==1) //�������
		    begin
            off<=1'b1;
				forward<=1'b0;
				backward<=1'b0;
            EN<=1'b0;
				nCR<=1'b1;
				state<=state;
          end	
        else	case(state)
        S0:begin if(times==0)
                   begin 
						       EN<=1'b0;
                         nCR<=1'b0;
								 forward<=1'b0;
								 backward<=1'b0;
								 off<=1'b0;
                   end
                 else begin
					             EN<=1'b1;
					             nCR<=1'b1;
                            off<=1'b1;
                            forward<=1'b0;
                            backward<=1'b0;
                            if(seconds[3:0]==4'b0110)
                               begin state<=S1;
                                     forward<=1'b1;
                                     backward<=1'b0;
                                     off<=1'b0;
                                     nCR<=1'b0;
                               end
                      end
            end
    
         S1:begin EN<=1'b1;
			         nCR<=1'b1;
			         forward<=1'b1;
                  backward<=1'b0;
                  off<=1'b0;
                  if(seconds==8'b01011001)
                     begin state<=S2;
                           forward<=1'b0;
                           backward<=1'b0;
                           off<=1'b1;
                     end
				end
				 
			S2:begin	 
			          EN<=1'b1;
			          nCR<=1'b1;
						 off<=1'b1;
						 forward<=1'b0;
						 backward<=1'b0;
						 if(seconds[3:0]==4'b0100)
						   begin state<=S3;
							      backward<=1'b1;
									forward<=1'b0;
									off<=1'b0;
									nCR<=1'b0;
							end
				end
				
			S3:begin 
			         EN<=1'b1;
			         nCR<=1'b1;
						backward<=1'b1;
						forward<=1'b0;
						off<=1'b0;
						if(seconds==8'b01011001)
						  begin times<=times-1'b1;
						        state<=S0;
								  forward<=1'b0;
								  backward<=1'b0;
								  off<=1'b0;
							end
				end
			
			default:begin state<=S0; end
		      endcase
	   end
end
endmodule                        
