`timescale 1ns/1ns

module mux_5 (
	input [4:0]in_0,
	input [4:0]in_1,
	input regule,
	output reg[4:0]res
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