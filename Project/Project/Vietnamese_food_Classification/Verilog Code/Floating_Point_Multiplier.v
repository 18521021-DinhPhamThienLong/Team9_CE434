module Floating_Point_Multiplier(Out, InA, InB);
	input [31:0] InA, InB;
	output [31:0] Out;
	wire Sign;
	wire [7:0] Exponent_A, Exponent_B, Exponent, Exponent_Temp;
	wire [23:0] Fraction_A, Fraction_B;
	wire [47:0] Fraction_Temp;
	wire [22:0] Fraction;
	
	assign Sign = InA[31] ^ InB[31];
	assign Exponent_A = InA[30:23];
	assign Exponent_B = InB[30:23];
	assign Fraction_A = {1'b1, InA[22:0]};
	assign Fraction_B = {1'b1, InB[22:0]};
	assign Exponent_Temp = (Exponent_A - 8'd127) + (Exponent_B - 8'd127) + 8'd127;
	assign Fraction_Temp = Fraction_A * Fraction_B;
	Normalize N(Fraction, Exponent, Fraction_Temp, Exponent_Temp);
	assign Out = {Sign, Exponent, Fraction};
endmodule

module Normalize(Fraction, Exponent, Fraction_Temp, Exponent_Temp);
	input [47:0] Fraction_Temp;
	input [7:0] Exponent_Temp;
	output reg [22:0] Fraction;
	output reg [7:0] Exponent;
	
	always @ (*)
	begin
		if (Fraction_Temp[47])
		begin
			Exponent <= Exponent_Temp + 8'd1;
			Fraction <= Fraction_Temp[46:24];
		end
		else
		begin
			Exponent <= Exponent_Temp;
			Fraction <= Fraction_Temp[45:23];
		end
	end
 
endmodule