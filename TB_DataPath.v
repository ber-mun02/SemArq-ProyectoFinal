`timescale 1ns/1ns
module TB_TopLevel;
    
    reg clk;     
      
    DataPathFase1 DUV(
	.Eclk(clk)
	);   
	
    always #100 clk = ~clk;      
    initial begin
        
        clk <= 1;         
        #300 
	$stop;    
	    
    end
endmodule
