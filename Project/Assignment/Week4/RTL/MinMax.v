module MinMax(Cmax, Cmin, r, g, b); 
	input [31:0] r, g, b;
	output[31:0] Cmax, Cmin;
	
	wire[31:0] sub1, sub2, sub3, t1, t2;
	
	Floating_Point_Sub s1(sub1, b, g);
	assign t1 = sub1[31]? g : b;
	assign t2 = sub1[31]? b : g;
	
	Floating_Point_Sub s2(sub2, t1, r);	
	Floating_Point_Sub s3(sub3, t2, r);
	
	assign Cmax = sub2[31] ? r : t1;
	assign Cmin = sub3[31] ? t2 : r;
endmodule
