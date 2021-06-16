`timescale 1ns/1ns

module InsMemory(
	input [31:0]Direccion,
	output reg [31:0]Instruc
);

reg [7:0]memins[0:399];

initial 
begin
	$readmemb("TestF3_MemInst.mem", memins);
end

always @* 
begin
	Instruc = {memins[Direccion], memins[Direccion+1], memins[Direccion+2],memins[Direccion+3]};
end

endmodule
