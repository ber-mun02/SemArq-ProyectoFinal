`timescale 1ns/1ns

module IFID(
    input [31:0]FAdd4,
    input [31:0]FMi,
    input clkIFID,
    output reg[31:0]Instruccion,
    output reg[31:0]tIFID
);

always @(posedge clkIFID) 
begin
	tIFID = FAdd4;

    Instruccion = FMi;
end

endmodule