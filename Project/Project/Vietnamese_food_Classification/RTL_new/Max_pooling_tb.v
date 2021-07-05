`timescale 1ns/1ps

module Max_pooling_tb();
	parameter t = 10;
	parameter data_width = 32;
	parameter width = 4;
	
	reg[data_width - 1:0] data_in;
	reg clk, reset, valid_in;
	wire valid_out;
	wire[data_width - 1:0] data_out;
    //wire valid_op;
    //wire[data_width - 1:0] data_out0, data_out1, data_out2, data_out3;
	
	integer i;
	initial begin
		clk <= 'b0;
		reset <= 'b1;
		valid_in <= 'b0;
		#t reset <= 'b0;
		#(t/2);
		for(i = 0; i < width*width; i = i + 1) begin
			valid_in <= 'b1; data_in <= i + 1; 
			#t;
		end
		#t valid_in <='b0; 
		#(t*15) $finish;
	end

	always @(clk)
		#(t/2) clk <= ~clk;
		
	Max_pooling #(data_width, width) DUT(data_out, /*data_out0, data_out1, data_out2, data_out3, valid_op,*/ valid_out, data_in, valid_in, clk, reset);
endmodule
