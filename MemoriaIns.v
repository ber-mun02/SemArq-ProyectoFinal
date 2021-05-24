`timescale 1ns/1ns

module InsMemory(
	input Direccion,
	output reg [31:0]Instruc
);

reg [7:0]memins[0:399];

initial 
begin
	$readmemb("TestF1_MemInst", memins);
end

always @* 
begin
	Instruc = {memins[Direccion], memins[Direccion+1], memins[Direccion+2],memins[Direccion+3]};
end

endmodule
