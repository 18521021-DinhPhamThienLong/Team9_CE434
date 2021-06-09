module Max_Data(max_data, In1, In2, In3, In4);
	input[31:0] In1, In2, In3, In4;
	output[31:0] max_data;
	
	wire[31:0] max1, max2;
	
	Max_Value MAX1(max1, In1, In2);
	Max_Value MAX2(max2, In3, In4);
	Max_Value DUT(max_data, max1, max2);
	
endmodule
