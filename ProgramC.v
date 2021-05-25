`timescale 1ns/1ns

module PC(
	input [31:0]Direct1,
	input clk,
	output reg [31:0]Direct2
);

always @(posedge clk)
begin
	Direct2 = Direct1;
end
endmodule
