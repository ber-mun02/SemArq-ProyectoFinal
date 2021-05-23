`timescale 1ns/1ns

module shift_left2 (
	input [31:0]instruccionIn,
	output [31:0]instruccionOut
);

assign instruccionOut = instruccionIn << 2;

endmodule