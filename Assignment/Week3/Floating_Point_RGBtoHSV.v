module Floating_Point_RGBtoHSV(output reg [31:0] h, s, v,
                            	output reg data_val_out,
    			       	input [31:0] r, g, b,
   			       	input data_val_in, clk, rst);
	wire [31:0]G_B, B_R, R_G;
	wire [31:0]G_B_60, B_R_60, R_G_60;
	wire [31:0]G_B_div, B_R_div, R_G_div;
	wire [31:0]G_B_360, B_R_120, R_G_240;
	wire [31:0]diff, diff_255;
	wire [31:0]cmax, cmin;
	wire [31:0]S_out, V_out, S_div, V_div;

	always @(posedge clk)
	begin
		if (rst)
			begin
				h = 32'b0;
				s = 32'b0;
				v = 32'b0;
				data_val_out = 1'b0;
			end
		else if(data_val_in == 1'b1)
			begin	
				data_val_out <= 1'b1;
				if (cmax == cmin)
					h = 32'b0;	
				else if (cmax == r) begin
					if(cmax[31] == 1)
						h = G_B_360;
					else
						h = G_B_div;
				end		
				else if (cmax == g)
					h = B_R_120;
				else if (cmax == b)
					h = R_G_240;

				s = S_out;
				v = V_out;
			end
		else 
			begin	
			data_val_out = 1'b0;
			h = 32'dZ;
			s = 32'dZ;
			v = 32'dZ;
			end
	end
	//MinMax
	MinMax mm(cmax, cmin, r, g, b);
	//diff
	Floating_Point_Sub s4(diff, cmax, cmin);
	//Sub
	Floating_Point_Sub s1(G_B, g, b);
	Floating_Point_Sub s2(B_R, b, r);
	Floating_Point_Sub s3(R_G, r, g);
	//Mul 4
	Floating_Point_Mul m1(G_B_60, {1'b0, R_G[30:0]}, 32'b01000010011100000000000000000000);
	Floating_Point_Mul m2(B_R_60, {1'b0, B_R[30:0]}, 32'b01000010011100000000000000000000);
	Floating_Point_Mul m3(R_G_60, {1'b0, R_G[30:0]}, 32'b01000010011100000000000000000000);
	//Div
	Floating_Point_Div d1(G_B_div, G_B_60, diff);
	Floating_Point_Div d2(B_R_div, B_R_60, diff);
	Floating_Point_Div d3(R_G_div, R_G_60, diff);
	//Add
	Floating_Point_Add a5(G_B_360, G_B_div, 32'b01000011101101000000000000000000); 
	Floating_Point_Add a1(B_R_120, B_R_div, 32'b01000010111100000000000000000000);
	Floating_Point_Add a2(R_G_240, R_G_div, 32'b01000011011100000000000000000000);
	//S
	Floating_Point_Div d4(S_out, diff, cmax);
	//Floating_Point_Mul m4(S_out, S_div, 32'b01000010110010000000000000000000);
	//V
	Floating_Point_Div d5(V_out, cmax, 32'b01000011011111110000000000000000);
	//Floating_Point_Mul m5(V_out, V_div, 32'b01000010110010000000000000000000);
	
endmodule	