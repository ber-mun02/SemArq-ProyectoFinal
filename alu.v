`timescale 1ns/1ns

module alu(
	input [31:0]a,
	input [31:0]b,
	input [2:0]sel,
	output reg [31:0]res,
	output reg ZF
);

always @*
begin
	case (sel)
		3'b000: //suma
		begin
			res = a + b;
		end
		3'b001: //resta
		begin
			res = a - b;
		end
		3'b010: //multi
		begin
			res = a * b;
		end
		3'b011: //divi
		begin
			res = a / b;
		end
		3'b100: //and
		begin
			res = a & b;
		end
		3'b101: //or
		begin
			res = a | b;
		end
		3'b110: //slt
		begin
			res = a < b ? 1 : 0;
		end
		3'b111: //nop
		begin
			res = 31'b0;
		end
	endcase
end

always @* 
begin
	if (res != 0) begin
		ZF <= 1'b0;
	end
	else begin
		ZF <= 1'b1;
	end
end

endmodule
