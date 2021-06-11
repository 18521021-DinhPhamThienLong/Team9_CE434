`timescale 1ns/1ps

module ReLU_tb();
	parameter t = 10;
	parameter data_width = 32;

	reg clk;
	reg signed[data_width - 1: 0] data_in;
	wire[data_width - 1: 0] out_ReLU;

	initial begin
		clk <= 'b0;
		#t data_in <= 'b1100_0001_0010_0110_0110_0110_0110_0110; // -10.4
		#t data_in <= 'b0100_0000_1011_0011_0011_0011_0011_0011; // 5.6
		#t data_in <= 'b0000_0000_0000_0000_0000_0000_0000_0010; // 2
		#(t*3) $finish;
	end

	always @(clk)
   		 #(t/2) clk <= ~clk;

	ReLU #(data_width) DUT(.out_ReLU(out_ReLU), .data_in(data_in), .clk(clk));

endmodule
