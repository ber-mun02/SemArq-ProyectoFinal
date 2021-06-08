`timescale 1ns/1ns

module ALUControl (
	input [5:0]InData,	//datos de la instruccion
	input [2:0]UCon,	//bits provinientes de la unidad de control
	output reg [2:0]ALUSelect	//selector de operación en ALU
);

always @* begin
	if (UCon == 3'b000)
		begin
			ALUSelect = 3'b010;				//sw / lw
		end

	if (UCon == 3'b001)						
		begin
			ALUSelect = 3'b110;				//beq
		end

	if (UCon == 3'b011) 
		begin
			ALUSelect = 3'b010;				//addi
		end

	if (UCon == 3'b100) 
		begin
			ALUSelect = 3'b000;				//andi
		end

	if (UCon == 3'b101) 
		begin
			ALUSelect = 3'b001;				//ori
		end

	if (UCon == 3'b110) 
		begin
			ALUSelect = 3'b111;				//slti
		end

	if (UCon == 3'b010) begin
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
			6'b000000: //nop
			begin
				ALUSelect = 3'b011;
			end
		endcase
	end
end
	
endmodule
