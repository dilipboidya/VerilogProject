`include "nandgate.v"
`timescale 1ns / 1ns
module tb_nandgate();
	
reg a,b;
wire y;

nandgate DUT (a,b,y);
	
	
initial begin
	$dumpfile("tb_nandgate.vcd");
	$dumpvars(0,tb_nandgate);
	$monitor($time);
	#5 a=0;b=0;
	#5 a=0;b=1;
	#5 a=1;b=0;
	#5 a=1;b=1;
	
	$display("Yay test completed");
	#5 $finish;
	
end
endmodule