`timescale 1ns/1ns

module add_4 (
	input [31:0]instruccionIn,
	output [31:0]instruccionOut
);

assign instruccionOut = instruccionIn + 4;

endmodule
