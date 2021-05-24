`timescale 1ns/1ns

module ALUControl (
	input [5:0]InData,	//datos de la instruccion
	input [1:0]UCon,	//bits provinientes de la unidad de control
	output reg [3:0]ALUSelect	//selector de operación en ALU
);

always @*
begin
if (UCon == 2'b00)
begin
	case (InData)
	6'bxxxxxx:
		ALUSelect = 4'b0010;
	endcase
end

if (UCon == 2'b01)
begin
	case (InData)
	6'bxxxxxx:
		ALUSelect = 0110;
	endcase
end

if (UCon == 2'b10)
begin
	case (InData)
	6'b100000:
		ALUSelect = 0010;
	6'b100010:
		ALUSelect = 0110;
	6'b100100:
		ALUSelect = 0000;
	6'b100000:
		ALUSelect = 0001;
	6'b100000:
		ALUSelect = 0111;
	endcase
end
end
endmodule
