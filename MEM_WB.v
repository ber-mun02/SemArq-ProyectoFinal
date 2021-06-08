`timescale 1ns/1ns

module MEMWB(
	input clkMEMWB,
	input [1:0]WB3,
	input [4:0]fEXMEM,
	input [31:0]fRD,
	input [31:0]fAdd,
	output reg RegWrite, 
	output reg MemtoReg,
	output reg [4:0]toAW,
	output reg [31:0]tMux5_1,
	output reg [31:0]tMux5_0
);

always @(posedge clkMEMWB) 
begin
	RegWrite = WB3[1];
	MemtoReg = WB3[0];
	tMux5_0 = fAdd;
	tMux5_1 = fRD;
	toAW = fEXMEM;
end

endmodule
