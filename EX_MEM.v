`timescale 1ns/1ns

module EXMEM(
	input clkEXMEM,
	input [1:0]WB2,					//Wb2
	input [2:0]M2, 					//Branch / MemRead / MemWrite
	input [31:0]fAddR,				//tMux32
	input ZF,						//ZFtAND
	input [31:0]fALU,				//AluRes
	input [31:0]fIDEXrd,			//tWriteData
	input [4:0]fMux5,				//toMEMWB
	output reg[1:0]Wb2,
	output reg Branch,
	output reg MemRead,
	output reg MemWrite,
	output reg [31:0]tMux32,
	output reg ZFtAND,
	output reg [31:0]AluRes,
	output reg [31:0]tWriteData,
	output reg [4:0]toMEMWB
);

always @(posedge clkEXMEM) 
begin
	Wb2 = WB2;
	Branch = M2[0];
	MemRead = M2[1];
	MemWrite = M2[2];
	tMux32 = fAddR;
	ZFtAND = ZF;
	AluRes = fALU;
	tWriteData = fIDEXrd;
	toMEMWB = fMux5;
end

endmodule