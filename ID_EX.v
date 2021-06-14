`timescale 1ns/1ns

module IDEX(
	input clkIDEX,
	input [1:0]WB1,					//Wb1
	input [2:0]M1,					//Mem1
	input [4:0]EX,					//RegDst / ALUOp / ALUSrc	
	input [31:0]fIFIDa4,					//tAdd
	input [31:0]fBR1,				//tALU
	input [31:0]fBR2,				//tMux32
	input [31:0]fSE,				//tACsl
	input [4:0]fIns1,				//tMux5_1
	input [4:0]fIns2,				//tMux5_2
	input jump_in,
	input [25:0]insad_in,
	output reg[1:0]Wb1,
	output reg[2:0]Mem1,
	output reg RegDst,
	output reg[2:0]ALUOp,
	output reg ALUSrc,
	output reg[31:0]tAdd,
	output reg[31:0]tALU,
	output reg[31:0]tMux32,
	output reg[31:0]tACsl,
	output reg[4:0]tMux5_1,
	output reg[4:0]tMux5_2,
	output reg jump_out,
	output reg [25:0]insad_out
);

always @(posedge clkIDEX) 
begin
	Wb1 = WB1;
	Mem1 = M1;
	RegDst = EX[0];
	ALUOp = EX[3:1];
	ALUSrc = EX[4];
	tAdd = fIFIDa4;
	tALU = fBR1;
	tMux32 = fBR2;
	tACsl = fSE;
	tMux5_1	= fIns1;
	tMux5_2 = fIns2;
	jump_out = jump_in;
	insad_out = insad_in;
end

endmodule
