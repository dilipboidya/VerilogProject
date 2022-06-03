`include "norgate.v"
`timescale 1ns / 1ns
module tb_norgate();
	
reg a,b;
wire y;

norgate DUT (a,b,y);
	
	
initial begin
	$dumpfile("tb_norgate.vcd");
	$dumpvars(0,tb_norgate);
	$monitor($time);
	#5 a=0;b=0;
	#5 a=0;b=1;
	#5 a=1;b=0;
	#5 a=1;b=1;
	
	$display("Yay test completed");
	#5 $finish;
	
end
endmodule