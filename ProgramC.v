`timescale 1ns/1ns

module PC(
	input [31:0]Direct1,
	input clk,
	output reg [31:0]Direct2
);
	
always @(posedge clk)
	if (!Direct1) begin 
		Direct2 <= Direct1;
	end
	else begin
		Direct2 = 0;
	end

endmodule
