`timescale 1ns/1ns

module PC(
	input Direct1,
	input clk,
	output reg Direct2
);

always @(posedge clk)
begin
	Direct2 = Direct1;
end
endmodule
