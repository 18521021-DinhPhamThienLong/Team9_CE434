module Floating_Point_Adder(res, a, b);
	input [31:0] a, b;
	output [31:0] res;
	reg [7:0] Exponent, Exponent_A, Exponent_B, Exponent_A_Out, Exponent_B_Out;
	reg  Sign_A, Sign_B, Sign, S, Temp;
	reg [23:0] Fraction_A,  Fraction_B, Fraction, Fraction_A_Out, Fraction_B_Out;
	reg [24:0] Result_Fraction, Fraction_Temp;
	reg [7:0] Ex_Difference;
	
	always @ (a or b)
	begin
		//initial
		Sign_A = a[31];
		Sign_B = b[31];
		Exponent_A = a[30:23];
		Exponent_B = b[30:23];
		Fraction_A = {1'b1,	a[22:0]};
		Fraction_B = {1'b1, b[22:0]};
		//compare Exponent
		if (Exponent_A == Exponent_B)
		begin
			Exponent_A_Out = Exponent_A + 8'd1;
			Exponent_B_Out = Exponent_B + 8'd1;
			Fraction_A_Out = Fraction_A;
			Fraction_B_Out = Fraction_B;
			S = 1'b1;
		end
		else if (Exponent_A > Exponent_B)
		begin
			Ex_Difference = Exponent_A - Exponent_B; 
			Exponent_A_Out = Exponent_A + 8'd1;
			Exponent_B_Out = Exponent_A + 8'd1;
			Fraction_A_Out = Fraction_A;
			Fraction_B_Out = Fraction_B >> Ex_Difference;
			S = 1'b1;
		end
		else
		begin
			Ex_Difference = Exponent_B - Exponent_A;
			Exponent_A_Out = Exponent_B + 8'd1;
			Exponent_B_Out = Exponent_B + 8'd1;
			Fraction_A_Out = Fraction_B;
			Fraction_B_Out = Fraction_A >> Ex_Difference;
			S = 1'b0;
		end
		//Sub Add
		if (Sign_A ^ Sign_B)
			Result_Fraction = Fraction_A_Out - Fraction_B_Out;
		else
			Result_Fraction = Fraction_A_Out + Fraction_B_Out;
		//normalize
		Temp = Sign_A ^ Sign_B;
		Sign = S ? (Sign_A ^ (Result_Fraction[24] & Temp)) : (Sign_B ^ (Result_Fraction[24] & Temp));
		Fraction_Temp = (Result_Fraction[24] & Temp) ? (~Result_Fraction + 25'd1) : Result_Fraction;
		Fraction = Fraction_Temp[24:1];
		Exponent = Exponent_A_Out;
		repeat(24)
		begin
			if (Fraction[23] == 1'b0)
			begin
				Fraction = Fraction << 1'b1;
				Exponent = Exponent - 8'd1;
			end
		end
	end
	assign res = {Sign, Exponent, Fraction[22:0]};
endmodule
