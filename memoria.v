`timescale 1ns/1ns

module memoria(
	input MemWrite, 
	input MemRead,
	input [4:0]dir,
	input [31:0]dataIn,
	output reg [31:0]dataOut
);

reg [31:0]mem1[0:31];

always @* begin
	if (MemWrite == 1'b1) begin
		mem1[dir]<=dataIn;
	end
	if (MemRead == 1'b1) begin
		dataOut<=mem1[dir];
	end
end

endmodule
