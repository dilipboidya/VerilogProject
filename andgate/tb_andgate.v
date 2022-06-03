`include "andgate.v"
`timescale 1ns / 1ns
module tb_andgate();
	
reg a,b;
wire y;

andgate DUT (a,b,y);
	
	
initial begin
	$dumpfile("tb_andgate.vcd");
	$dumpvars(0,tb_andgate);
	//$monitor($time, "a=%b,b=%b,y=%b");
	#5 a=0;b=0;
	#5 a=0;b=1;
	#5 a=1;b=0;
	#5 a=1;b=1;
	#5 $finish;
	$display("Yay test completed");
	
end
endmodule