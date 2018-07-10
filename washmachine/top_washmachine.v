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
    input add,//设置循环次数信号
    input CLK_50,//板载时钟信号
    input start,//开始信号
    input emergency,//紧急情况信号
	 input CLR,//循环次数清零信号
    output reg forward=0,//正转信号灯
    output reg backward=0,//反转信号灯
    output reg off=0,//待机信号灯
    output reg alarm=0,//报警信号灯
    output [6:0] HEX0,//数码管段选信号
	 output [3:0] SEL//数码管位选信号
    );
	 reg EN=1'b1;//计数器是能信号
	 reg nCR=1'b1;//计数器异步清零信号
	 wire [7:0] seconds;//时间记录变量
	 wire CP_1Hz;//分频等得到的1Hz时钟信号
	 reg [3:0] times=0;//循环次数记录变量
	 reg [3:0] loops=1'b0;//循环次数赋值变量
	 reg [1:0] state=2'b00;//洗衣机状态变量
	 parameter S0=2'b00;
	 parameter S1=2'b01;
	 parameter S2=2'b10;
	 parameter S3=2'b11;
//==============分频=============
Divider50MHz U0(.CLK_50M(CLK_50),.nCLR(1),.CLK_1HzOut(CP_1Hz));
defparam U0.N=25,U0.CLK_Freq=50000000,U0.OUT_Freq=1;
//==============================

//=========second counter=======
counter10 C1(.Q(seconds[3:0]),.nCR(nCR),.EN(EN),.CP(CP_1Hz));
counter6 C2(.Q(seconds[7:4]),.nCR(nCR),.EN(seconds[3:0]==4'h9),.CP(CP_1Hz));
//==============================

//============数码显示===========
SEG7_LUT D0(.oSEG(HEX0),.CP(CLK_50),.light(SEL),.seconds(seconds));
//=============================

always@(posedge add or posedge CLR) //设置循环次数
      begin
		  if(CLR) loops<=0;
		  else if(loops<15)
		     loops<=loops+1'b1;
		  else
		     loops<=0;
		end
		
always@(times or emergency)//报警系统
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
        if(emergency==1) //紧急情况
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
