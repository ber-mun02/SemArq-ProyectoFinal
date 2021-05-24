`timescale 1ns/1ns

module ALUControl (
	input [5:0]InData,	//datos de la instruccion
	input [1:0]UCon,	//bits provinientes de la unidad de control
	output reg [3:0]ALUSelect	//selector de operación en ALU
);

always @* begin
	if (UCon == 2'b00) begin
		case (InData)
			6'bxxxxxx:
			begin
				ALUSelect = 4'b0010;
			end
		endcase
	end

	if (UCon == 2'b01) begin
		case (InData)
			6'bxxxxxx:
			begin
				ALUSelect = 4'b0110;
			end
		endcase
	end

	if (UCon == 2'b10) begin
		case (InData)
			6'b100000: //add
			begin
				ALUSelect = 4'b0010;
			end
			6'b100010: //subtract
			begin
				ALUSelect = 4'b0110;
			end
			6'b100100: //and
			begin
				ALUSelect = 4'b0000;
			end
			6'b100101: //or
			begin
				ALUSelect = 4'b0001;
			end
			6'b101010: //slt
			begin
				ALUSelect = 4'b0111;
			end
		endcase
	end
end
	
endmodule
