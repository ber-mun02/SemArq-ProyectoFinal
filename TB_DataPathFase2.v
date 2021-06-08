`timescale 1ns/1ns

module TB_DataPathFase2 ();
    
reg clk = 1'b0;     
      
DataPathFase2 DUV(
	.Eclk(clk)
);   
	
always @* #100 begin      
	if (clk == 1'b1) begin
		clk <= 1'b0;       
        end
	else begin
		clk <= 1'b1;
	end      
end
