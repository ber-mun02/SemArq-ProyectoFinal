`timescale 1ns/1ns

module InsMemory(
	input Direccion,
	output reg [31:0]Instruc
);

reg [7:0]mem1[0:399];

always @* begin
	Instruc = {mem1[Direccion], mem1[Direccion+1], mem1[Direccion+2],mem1[Direccion+3]};
end

endmodule