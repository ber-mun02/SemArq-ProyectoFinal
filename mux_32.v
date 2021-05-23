`timescale 1ns/1ns

module mux_32 (
	input [31:0]in_0,
	input [31:0]in_1,
	input regule,
	output reg[31:0]res
);

always @* begin
	case (regule)
		1'b0:
		begin
			res <= in_0;
		end
		1'b1:
		begin
			res <= in_1;
		end
	endcase
end

endmodule