`include "orgate.v"
`timescale 1ns / 1ns
module tb_orgate();
	
reg a,b;
wire y;

orgate DUT (a,b,y);
	
	
initial begin
	$dumpfile("tb_orgate.vcd");
	$dumpvars(0,tb_orgate);
	//$monitor($time, "a=%b,b=%b,y=%b");
	#5 a=0;b=0;
	#5 a=0;b=1;
	#5 a=1;b=0;
	#5 a=1;b=1;
	#5 $finish;
	$display("Yay test completed");
	
end
endmodule