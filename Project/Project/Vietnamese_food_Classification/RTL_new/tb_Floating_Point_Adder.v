`timescale 1ns / 1ps

module tb_Floating_Point_Adder();

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] res;

	// Instantiate the Unit Under Test (UUT)
	Floating_Point_Adder uut (
		.res(res), 
		.a(a), 
		.b(b)
	);

	initial begin
		a = 32'b00000000000000000000000000000000;
		b = 32'b00111101110000000100100001001111;
		#100;
	end
      
endmodule
