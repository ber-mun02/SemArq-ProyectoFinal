`timescale 1ns/1ns

module MEMWB(
	input clkMEMWB,
	input [1:0]WB3,
	output reg RegWrite, 
	output reg MemtoReg
);

always @(posedge clkMEMWB) 
begin
	RegWrite = WB3[1];
	MemtoReg = WB3[0];
end

endmodule