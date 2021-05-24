`timescale 1ns/1ns

module UnidadControl (
	input [5:0]OP,
	output reg MemRead,
	output reg Branch,
	output reg MemToReg,
	output reg RegWrite,
	output reg ALUSrc,
	output reg RegDst,
	output reg MemWrite,
	output reg [1:0]ALUOp
);

always @*
begin
	case (OP)
		6'b000000:
		begin
			RegDst = 1;
			ALUSrc = 0;
			MemToReg = 0;
			RegWrite = 1;
			MemRead = 0;
			MemWrite = 0;
			Branch = 0;
			ALUOp = 2'b10;
		end
		
		6'b100011:
		begin
			RegDst = 0;
			ALUSrc = 1;
			MemToReg = 1;
			RegWrite = 1;
			MemRead = 1;
			MemWrite = 0;
			Branch = 0;
			ALUOp = 2'b00;
		end
		
		6'b101011:
		begin
			RegDst = 1'bx;
			ALUSrc = 1;
			MemToReg = 1'bx;
			RegWrite = 0;
			MemRead = 0;
			MemWrite = 1;
			Branch = 0;
			ALUOp = 2'b00;
		end
		
		6'b000100:
		begin
			RegDst = 1'bx;
			ALUSrc = 0;
			MemToReg = 1'bx;
			RegWrite = 0;
			MemRead = 0;
			MemWrite = 0;
			Branch = 1;
			ALUOp = 2'b01;
		end		
	endcase
end
endmodule