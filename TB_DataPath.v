`timescale 1ns/1ns

module TB_DataPath ();

reg clk = 1'b0;

always @* #100 clk != clk;

DataPathFase1 DUV(
	.Eclk(clk)
);


initial
begin
	//test bench
end
endmodule
