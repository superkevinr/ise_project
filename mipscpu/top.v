`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:33 04/03/2018 
// Design Name: 
// Module Name:    top 
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
module top(
    input clkin,
    input reset
    );
//wire for controller
wire regDst,jmp,branch,memRead,memWrite,memToReg;
wire[1:0] aluop;
wire alusrc,regWrite;
reg[31:0] pc=0;
reg[31:0] add4=32'h4;
wire choose4;
wire[31:0] expand2,mux2,mux3,mux4,mux5,address,jmpaddr,inst;
wire[4:0] mux1;
//wire for aluunit
wire zero;
wire[31:0] alures;
//wire for aluctr
wire[3:0] aluctr;
//wire for memory
wire[31:0] memreaddata;//memory data
//wire for register
wire[31:0] RsData,RtData;
//wire for ext
wire[31:0] expand;

always@(negedge clkin)
begin
  if(!reset)
    begin
	 pc=mux5;
	 add4=pc+4;
	 end
  else
	 begin
	 pc=32'b0;
	 add4=32'h4;
	 end
end
//ʵ������������
ctr mainctr(.opCode(inst[31:26]),
            .regDst(regDst),
				.aluSrc(alusrc),
				.memToReg(memToReg),
				.regWrite(regWrite),
				.memRead(memRead),
				.memWrite(memWrite),
				.branch(branch),
				.aluop(aluop),
				.jmp(jmp));
//ʵ����������Ԫ
alu alu(.input1(RsData),
        .input2(mux2),
		  .aluctr(aluctr),
		  .zero(zero),
		  .alures(alures));
//ʵ��������������
aluctr aluctr1(.aluop(aluop),
               .funct(inst[5:0]),
					.aluctr(aluctr));
//ʵ����ָ��洢��
irom imem(.a(pc[8:2]),
          .clk(clkin),
			 .spo(inst));
//ʵ�������ݴ洢��
dram dram(.a(alures[5:0]),
          .d(RtData),
			 .clk(!clkin),
			 .we(memWrite&(!memRead)),
			 .spo(memreaddata));
//ʵ�����Ĵ�����Ԫ
regFile regfile(.RsAddr(inst[25:21]),
                .RtAddr(inst[20:16]),
					 .clk(!clkin),
					 .reset(reset),
					 .regWriteAddr(mux1),
					 .regWriteData(mux3),
					 .regWriteEn(regWrite),
					 .RsData(RsData),
					 .RtData(RtData));
//ʵ����������չ��Ԫ
signext signext(.inst(inst[15:0]),.data(expand));
//ѡ�����ͼӷ�����������λ������
assign mux1=regDst?inst[15:11]:inst[20:16];
(*KEEP="TRUE"*)assign mux2=alusrc?expand:RtData;
assign mux3=memToReg?memreaddata:alures;
assign mux4=choose4?address:add4;
assign mux5=jmp?jmpaddr:mux4;
assign choose4=branch&zero;
assign expand2=expand<<2;
assign jmpaddr={add4[31:28],inst[25:0],2'b00};
assign address=pc+expand2;

endmodule
