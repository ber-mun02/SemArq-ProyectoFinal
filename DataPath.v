`timescale 1ns/1ns

module DataPathFase1 (
	input Eclk
);

wire [31:0]Instruccion, C3, C4, C5, 
wire [2:0] ALUOp;
wire [4:0] C2; 
wire C0, C1, C6, C7, C8 C9;

assign C1 = C0 + 4;
assign C5 = C1 + C4;
assign C8 = C6 & C7;

PC DUV1(
	.Direct1(C9),
	.clk(Eclk),
	.Direct2(C0)
);

InsMemory DUV2(
	.Direccion(C0),
	.Instruc(Instruccion)
);

UnidadControl DUV3(
	.OP(Instruccion[31:26]),
	.MemRead(),
	.Branch(),
	.MemToReg(),
	.RegWrite(),
	.ALUSrc(),
	.RegDst(),
	.MemToWrite(),
	.ALUOp()
);

mux_5 DUV4(
	.in_0(Instruccion[20:16]),
	.in_1(Instruccion[15:11]),
	.regule(RegDst),
	.res(C2)
);

banco DUV5(
	.RegEn(RegWrite),
	.ra1(Instruccion[25:21]),
	.ra2(Instruccion[20:16]),
	.aw(C2),
	.dataIn_b, //32b
	.dr1,
	.dr2
);

sign_extend DUV6(
	.instruccionIn(Instruccion[15:0]),
	.instruccionOut(C3)
);

shift_left2 DUV7(
	.instruccionIn(C3),
	.instruccionOut(C4)
);

mux_32 DUV8(
	.in_0(C1),
	.in_1(C5),
	.regule(C8),
	.res(C9)
);

endmodule