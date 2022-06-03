`include "notgate.v"
`timescale 1ns/1ns

module tb_notgate();
	
	reg a;
	wire y;
	
	
	notgate DUT(a,y);
	
	initial begin
		$dumpfile("tb_notgate.vcd");
		$dumpvars(0,tb_notgate);
		$monitor($time);
		#5 a=0;
		#5 a=1;
		
		$display("success");
		#5 $finish;
		
	end
endmodule