`timescale 1ns/1ns

module banco(
	input RegEn,
	input [4:0]ra1,
	input [4:0]ra2,
	input [4:0]aw,
	input [31:0]dataIn_b,
	output reg [31:0]dr1,
	output reg [31:0]dr2
);

reg [31:0]ban1[0:31];

initial begin
	$readmemb("TestF1_BReg", ban1);
end

always @* begin
	dr1=ban1[ra1];
	dr2=ban1[ra2];
end

always @* begin 
	if (RegEn == 1'b1) begin
		ban1[aw]<=dataIn_b;
	end 
end

endmodule
