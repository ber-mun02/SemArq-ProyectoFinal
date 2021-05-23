`timescale 1ns/1ns

module sign_extend (
	input [15:0]instruccionIn,
	output reg[31:0]instruccionOut
);

always @* begin
	if (instruccionIn[15] == 1'b0) begin
		instruccionOut <= {16'b0000000000000000, instruccionIn};
	end
	else begin
		instruccionOut <= {16'b1111111111111111, instruccionIn};
	end
end

endmodule