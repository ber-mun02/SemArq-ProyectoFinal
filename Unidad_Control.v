`timescale 1ns/1ns

module UnidadControl (
	input [5:0]OP,
	output reg[1:0]tWB,
	output reg[2:0]tM,
	output reg[4:0]tEX,
	output reg jump
	
);

always @*
begin
	case (OP)
		6'b000000:				//Instrucciones tipo R
		begin
			tWB = 2'b10;			//RegWrite / MemToReg
			tM = 3'b000;			//MemToWrite / MemRead / Branch
			tEX = 5'b00101;			//ALUSrc / ALUOp / RegDst  
			jump = 1'b0;
			//RegDst = 1;
			//ALUSrc = 0;
			//MemToReg = 0;
			//RegWrite = 1;
			//MemRead = 0;
			//MemToWrite = 0;
			//Branch = 0;
			//ALUOp = 3'b010;
		end
		
		6'b100011:				//Lw
		begin
			tWB = 2'b11;			//RegWrite / MemToReg
			tM = 3'b010;			//MemToWrite / MemRead / Branch
			tEX = 5'b10000;			//ALUSrc / ALUOp / RegDst
			jump = 1'b0;
			//RegDst = 0;
			//ALUSrc = 1;
			//MemToReg = 1;
			//RegWrite = 1;
			//MemRead = 1;
			//MemToWrite = 0;
			//Branch = 0;
			//ALUOp = 3'b000;
		end
		
		6'b101011:				//Sw
		begin
			tWB = 2'b00;			//RegWrite / MemToReg
			tM = 3'b100;			//MemToWrite / MemRead / Branch
			tEX = 5'b10000;			//ALUSrc / ALUOp / RegDst
			jump = 1'b0;
			//RegDst = 1'b0;
			//ALUSrc = 1;
			//MemToReg = 1'b0;
			//RegWrite = 0;
			//MemRead = 0;
			//MemToWrite = 1;
			//Branch = 0;
			//ALUOp = 3'b000;
		end
		
		6'b000100:				//beq
		begin
			tWB = 2'b00;			//RegWrite / MemToReg
			tM = 3'b001;			//MemToWrite / MemRead / Branch
			tEX = 5'b00010;			//ALUSrc / ALUOp / RegDst
			jump = 1'b0;
			//RegDst = 1'b0;
			//ALUSrc = 0;
			//MemToReg = 1'b0;
			//RegWrite = 0;
			//MemRead = 0;
			//MemToWrite = 0;
			//Branch = 1;
			//ALUOp = 3'b001;
		end	

		6'b001000:					//Addi
		begin
			tWB = 2'b10;			//RegWrite / MemToReg
			tM = 3'b000;			//MemToWrite / MemRead / Branch
			tEX = 5'b10110;			//ALUSrc / ALUOp / RegDst
			jump = 1'b0;
			//RegDst = 0;
			//ALUSrc = 1;
			//MemToReg = 0;
			//RegWrite = 1;
			//MemRead = 0;
			//MemToWrite = 0;
			//Branch = 0;
			//ALUOp = 3'b011;
		end	

		6'b001100:				//Andi
		begin
			tWB = 2'b10;			//RegWrite / MemToReg
			tM = 3'b000;			//MemToWrite / MemRead / Branch
			tEX = 5'b11000;			//ALUSrc / ALUOp / RegDst
			jump = 1'b0;
			//RegDst = 0;
			//ALUSrc = 1;
			//MemToReg = 0;
			//RegWrite = 1;
			//MemRead = 0;
			//MemToWrite = 0;
			//Branch = 0;
			//ALUOp = 3'b100;
		end	

		6'b001101:				//Ori
		begin
			tWB = 2'b10;			//RegWrite / MemToReg
			tM = 3'b000;			//MemToWrite / MemRead / Branch
			tEX = 5'b11010;			//ALUSrc / ALUOp / RegDst
			jump = 1'b0;
			//RegDst = 0;
			//ALUSrc = 1;
			//MemToReg = 0;
			//RegWrite = 1;
			//MemRead = 0;
			//MemToWrite = 0;
			//Branch = 0;
			//ALUOp = 3'b101;
		end	

		6'b001010:				//Slti
		begin
			tWB = 2'b10;			//RegWrite / MemToReg
			tM = 3'b000;			//MemToWrite / MemRead / Branch
			tEX = 5'b11100;			//ALUSrc / ALUOp / RegDst	
			jump = 1'b0;
			//RegDst = 0;
			//ALUSrc = 1;
			//MemToReg = 0;
			//RegWrite = 1;
			//MemRead = 0;
			//MemToWrite = 0;
			//Branch = 0;
			//ALUOp = 3'b110;
		end	
		
		6'b000010:				//Jump
		begin
			tWB = 2'b00;			//RegWrite / MemToReg
			tM = 3'b000;			//MemToWrite / MemRead / Branch
			tEX = 5'b00000;			//ALUSrc / ALUOp / RegDst
			jump = 1'b1;
		end
	endcase
end
endmodule
