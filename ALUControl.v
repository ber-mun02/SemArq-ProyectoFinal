`timescale 1ns/1ns

module ALUControl (
	input [5:0]InData,	//datos de la instruccion
	input [1:0]UCon,	//bits provinientes de la unidad de control
	output reg [2:0]ALUSelect	//selector de operación en ALU
);

always @* begin
	if (UCon == 2'b00) begin
		case (InData)
			6'bxxxxxx:
			begin
				ALUSelect = 3'b010;
			end
		endcase
	end

	if (UCon == 2'b01) begin
		case (InData)
			6'bxxxxxx:
			begin
				ALUSelect = 3'b110;
			end
		endcase
	end

	if (UCon == 2'b10) begin
		case (InData)
			6'b100000: //add
			begin
				ALUSelect = 3'b010;
			end
			6'b100010: //subtract
			begin
				ALUSelect = 3'b110;
			end
			6'b100100: //and
			begin
				ALUSelect = 3'b000;
			end
			6'b100101: //or
			begin
				ALUSelect = 3'b001;
			end
			6'b101010: //slt
			begin
				ALUSelect = 3'b111;
			end
		endcase
	end
end
	
endmodule
