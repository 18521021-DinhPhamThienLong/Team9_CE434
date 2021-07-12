module Floating_Point_Multiplier (res, a, b);

	output [31:0] res;
	input [31:0] a, b;
	reg [31:0] res;
	reg sign;
	reg [7:0] expA, expB, PhanMu, expTemp;
	reg [47:0] mantise, mantiseB, mantiseA;
	reg [22:0]mantiseTemp;
	
	always @(*)
	begin
	sign = 1'b0;
	expA = 8'b0; expB = 8'b0; PhanMu = 8'b0; expTemp = 8'b0;
	mantise = 48'b0; mantiseB = 48'b0; mantiseA = 48'b0;
	mantiseTemp = 23'b0;
	
	if (a == 32'b0 || b == 32'b0)
			res = 32'b0;
	else 
	begin
		sign = a[31] ^ b[31];
		expA = a[30:23];
		expB = b[30:23];
		mantiseA = {24'b0, 1'b1, a[22:0]};
		mantiseB = {24'b0, 1'b1, b[22:0]};
		PhanMu = (expA - 8'd127) + (expB - 8'd127) + 8'd127;
		mantise = mantiseA * mantiseB;
		// ---------
		begin
			if (mantise[47] == 1'b1)
			begin
				mantiseTemp = {mantise[46:24]};
				expTemp = PhanMu + 8'b1;
			end
			else
			begin
				mantiseTemp = {mantise[45:23]};
				expTemp = PhanMu;
			end
		end
		
		res = {sign, expTemp, mantiseTemp};
	end
	end
endmodule
